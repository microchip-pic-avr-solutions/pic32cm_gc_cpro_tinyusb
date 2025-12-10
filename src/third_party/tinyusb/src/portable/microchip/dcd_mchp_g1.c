/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2018 Scott Shawcroft for Adafruit Industries
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * This file is part of the TinyUSB stack.       
 */

/*
 * Change Logs:
 * By Oct, 2025
 *      a, Import the driver from TinyUSB community and change file name to group based on USB IP;
 *      b, Revised the driver to adopt latest DFP from Microchip;
 *      c, Added and tested PIC32CM GC/SG family support;
 *      d, Implemented & revised some API names;
 *      e, Added ISR entries into driver;
 *      f, Tested with XC32 v4.60 and newer;
 *      g, MISRA C 2023 Compliant (Mandatory and Required)
 */

#include "tusb_option.h"
#include "tusb.h"

#if CFG_TUD_ENABLED && \
    (CFG_TUSB_MCU == OPT_MCU_SAMD11 || CFG_TUSB_MCU == OPT_MCU_SAMD21 || \
     CFG_TUSB_MCU == OPT_MCU_SAMD51 || CFG_TUSB_MCU == OPT_MCU_SAME5X || \
     CFG_TUSB_MCU == OPT_MCU_SAML22 || CFG_TUSB_MCU == OPT_MCU_SAML21 || \
     CFG_TUSB_MCU == OPT_MCU_SAMDA1 || CFG_TUSB_MCU == OPT_MCU_PIC32CM_GC_SG || \
     CFG_TUSB_MCU == OPT_MCU_PIC32CM_LE_LS)

#include <xc.h>
#include "device/dcd.h"

#ifndef TUSB_DIR_COUNT
#define TUSB_DIR_COUNT (2u) /* IN/OUT */
#endif

#ifndef REG_ADDR
/* Casting a pointer to a register address field: documented deviation of MISRA C:2023 Rule 11.x for MMIO */
#define REG_ADDR(ptr_) ((uint32_t)(uintptr_t)(ptr_))
#endif

/* NVM address for USB pad calibration value */
#if (CFG_TUSB_MCU == OPT_MCU_PIC32CM_GC_SG)
  /* PIC32CM5112GC00100 Devices have USB PADCAL values in FCR_CFM_CALOTP_ADDR */
  #define USBFSV1_READ_PADCAL_VALUE (*((const uint32_t *) FCR_CFM_CALOTP_ADDR + 0x190u))
#elif (CFG_TUSB_MCU == OPT_MCU_SAMD21)
  /* ATSAMD21J18A Devices have USB PADCAL values in OTP4_ADDR */
  #define USBFSV1_READ_PADCAL_VALUE (*((const uint32_t *) OTP4_ADDR + 1u) >> 13)
#endif

/*-----------------------------------------------------------------------------*
 * MACRO TYPEDEF CONSTANT ENUM
 *----------------------------------------------------------------------------*/
static TU_ATTR_ALIGNED(4) usb_device_desc_bank_registers_t sram_registers[TUP_DCD_ENDPOINT_MAX][TUSB_DIR_COUNT];

/*
 * Setup packet is only 8 bytes in length. However under certain scenario,
 * USB DMA controller may decide to overwrite/overflow the buffer  with 2 extra 
 * bytes of CRC. From datasheet's "Management of SETUP Transactions" section
 *   If the number of received data bytes is the maximum data payload specified by
 *   PCKSIZE.SIZE minus one, only the first CRC data is written to the data buffer.
 *   If the number of received data is equal or less than the data payload specified
 *   by PCKSIZE.SIZE minus two, both CRC data bytes are written to the data buffer.
 * Therefore we will need to increase it to 10 bytes here.
 */
#ifndef SETUP_PACKET_BUF_BYTES
#define SETUP_PACKET_BUF_BYTES (10u) /* 8 B SETUP + up to 2 B CRC (see datasheet) */
#endif
static TU_ATTR_ALIGNED(4) uint8_t setup_packet[SETUP_PACKET_BUF_BYTES];

/* ready for receiving SETUP packet */
static inline void prepare_setup(void)
{
  /* Only make sure the EP0 OUT buffer is ready */
  sram_registers[0][0].USB_ADDR = REG_ADDR(setup_packet);
  /* Clear the multi-packet_size and byte-count fields, then write new setting */
  sram_registers[0][0].USB_PCKSIZE &= ~(USB_DEVICE_PCKSIZE_MULTI_PACKET_SIZE_Msk | USB_DEVICE_PCKSIZE_BYTE_COUNT_Msk); 
  sram_registers[0][0].USB_PCKSIZE |= USB_DEVICE_PCKSIZE_MULTI_PACKET_SIZE(sizeof(tusb_control_request_t));
  sram_registers[0][0].USB_PCKSIZE |= USB_DEVICE_PCKSIZE_BYTE_COUNT(0u);
}

/* Setup the control endpoint 0. */
static void bus_reset(void)
{
  /* Max size of packets is 64 bytes. */
  usb_device_desc_bank_registers_t* bank_out = &sram_registers[0][TUSB_DIR_OUT];
  bank_out->USB_PCKSIZE &= ~USB_DEVICE_PCKSIZE_SIZE_Msk;
  bank_out->USB_PCKSIZE |= USB_DEVICE_PCKSIZE_SIZE(0x3u);
  usb_device_desc_bank_registers_t* bank_in = &sram_registers[0][TUSB_DIR_IN];
  bank_in->USB_PCKSIZE &= ~USB_DEVICE_PCKSIZE_SIZE_Msk;
  bank_in->USB_PCKSIZE |= USB_DEVICE_PCKSIZE_SIZE(0x3u);

  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[0];
  ep->USB_EPCFG = USB_DEVICE_EPCFG_EPTYPE0(0x1u) | USB_DEVICE_EPCFG_EPTYPE1(0x1u); /* EP0 for Control EP */
  ep->USB_EPINTENSET = USB_DEVICE_EPINTENSET_TRCPT0_Msk | USB_DEVICE_EPINTENSET_TRCPT1_Msk | USB_DEVICE_EPINTENSET_RXSTP_Msk;

  /* Prepare for setup packet */
  prepare_setup();
}

/*------------------------------------------------------------------*/
/* Controller API
 *------------------------------------------------------------------*/
bool dcd_init(uint8_t rhport, const tusb_rhport_init_t* rh_init) {
  (void) rhport;
  (void) rh_init;
  
  /* Read calibration data */
  volatile uint32_t usbCalibValue = USBFSV1_READ_PADCAL_VALUE;
  uint16_t usbPadValue = 0u, int_flags = 0u;
  
  /* Reset to get in a clean state. */
  USB_REGS->DEVICE.USB_CTRLA = USB_CTRLA_SWRST_Msk;
  while ((uint8_t)(USB_REGS->DEVICE.USB_SYNCBUSY & USB_SYNCBUSY_SWRST_Msk) == 0u) {}
  while ((USB_REGS->DEVICE.USB_SYNCBUSY & USB_SYNCBUSY_SWRST_Msk) == USB_SYNCBUSY_SWRST_Msk) {}

  /* Write linearity calibration in BIASREFBUF and bias calibration in BIASCOMP */
  usbPadValue = (uint16_t)(usbCalibValue & 0x001FU);
  if(usbPadValue == 0x001FU)
  {
    usbPadValue = 5u;
  }
  USB_REGS->DEVICE.USB_PADCAL |= (uint16_t)((uint16_t)(usbPadValue<<USB_PADCAL_TRANSN_Pos) & (uint16_t)USB_PADCAL_TRANSN_Msk);

  usbPadValue = (uint16_t)((usbCalibValue >> 5) & 0x001FU);
  if(usbPadValue == 0x001FU)
  {
    usbPadValue = 29u;
  }
  USB_REGS->DEVICE.USB_PADCAL |= (uint16_t)((uint16_t)(usbPadValue<<USB_PADCAL_TRANSP_Pos) & (uint16_t)USB_PADCAL_TRANSP_Msk);

  usbPadValue = (uint16_t)((usbCalibValue >> 10) & 0x0007U);
  if(usbPadValue == 0x0007U)
  {
    usbPadValue = 3u;
  }
  USB_REGS->DEVICE.USB_PADCAL |= (uint16_t)((uint16_t)(usbPadValue<<USB_PADCAL_TRIM_Pos) & (uint16_t)USB_PADCAL_TRIM_Msk);
  
  /* Quality Of Service: 0 - DISABLE; 1 - Low; 2 - Medium; 3 - HIGH */
  USB_REGS->DEVICE.USB_QOSCTRL = (USB_QOSCTRL_DQOS(2) | USB_QOSCTRL_CQOS(2)); 

  /* Configure registers */
  USB_REGS->DEVICE.USB_DESCADD = REG_ADDR(&sram_registers);
  /* Can be either FS or LS, while default FS */
  if (rh_init->speed < TUSB_SPEED_HIGH) 
  {
    USB_REGS->DEVICE.USB_CTRLB |= (uint16_t)((uint16_t)(rh_init->speed)<<USB_DEVICE_CTRLB_SPDCONF_Pos);
  }
  USB_REGS->DEVICE.USB_CTRLA = USB_CTRLA_MODE_DEVICE | USB_CTRLA_ENABLE_Msk | USB_CTRLA_RUNSTDBY_Msk;
  while ((USB_REGS->DEVICE.USB_SYNCBUSY & USB_SYNCBUSY_ENABLE_Msk) == USB_SYNCBUSY_ENABLE_Msk) {}

  int_flags = USB_REGS->DEVICE.USB_INTFLAG;
  USB_REGS->DEVICE.USB_INTFLAG |= int_flags; /* clear pending */
  USB_REGS->DEVICE.USB_INTENSET = /* USB_DEVICE_INTENSET_SOF | */ USB_DEVICE_INTENSET_EORST_Msk;

  return true;
}

void dcd_int_enable(uint8_t rhport)
{
  (void) rhport;
#if (CFG_TUSB_MCU == OPT_MCU_SAMD11 || CFG_TUSB_MCU == OPT_MCU_SAMD21 || \
     CFG_TUSB_MCU == OPT_MCU_SAMDA1 || CFG_TUSB_MCU == OPT_MCU_SAML22 || \
     CFG_TUSB_MCU == OPT_MCU_SAML21 || CFG_TUSB_MCU == OPT_MCU_PIC32CM_LE_LS) 
  
  NVIC_EnableIRQ(USB_IRQn);  
  
#elif (CFG_TUSB_MCU == OPT_MCU_PIC32CM_GC_SG)
  
  NVIC_EnableIRQ(USB_EORSMDNRSM_IRQn);
  /* NVIC_EnableIRQ(USB_SOFHSOF_IRQn); */
  NVIC_EnableIRQ(USB_TRCPT00_IRQn);
  NVIC_EnableIRQ(USB_TRCPT10_IRQn);

#elif (CFG_TUSB_MCU == OPT_MCU_SAMD51 || CFG_TUSB_MCU == OPT_MCU_SAME5X)
  
  NVIC_EnableIRQ(USB_TRCPT0_IRQn);
  NVIC_EnableIRQ(USB_TRCPT1_IRQn);  
  NVIC_EnableIRQ(USB_SOF_HSOF_IRQn);
  NVIC_EnableIRQ(USB_OTHER_IRQn);
  
#else
#error "No implementation available for dcd_int_enable / dcd_int_disable"
#endif  
}

void dcd_int_disable(uint8_t rhport)
{
  (void) rhport;
#if (CFG_TUSB_MCU == OPT_MCU_SAMD11 || CFG_TUSB_MCU == OPT_MCU_SAMD21 || \
     CFG_TUSB_MCU == OPT_MCU_SAMDA1 || CFG_TUSB_MCU == OPT_MCU_SAML22 || \
     CFG_TUSB_MCU == OPT_MCU_SAML21 || CFG_TUSB_MCU == OPT_MCU_PIC32CM_LE_LS) 

  NVIC_DisableIRQ(USB_IRQn);
  
#elif (CFG_TUSB_MCU == OPT_MCU_PIC32CM_GC_SG)  
  
  NVIC_DisableIRQ(USB_EORSMDNRSM_IRQn);
  /* NVIC_DisableIRQ(USB_SOFHSOF_IRQn); */
  NVIC_DisableIRQ(USB_TRCPT00_IRQn);
  NVIC_DisableIRQ(USB_TRCPT10_IRQn);

#elif (CFG_TUSB_MCU == OPT_MCU_SAMD51 || CFG_TUSB_MCU == OPT_MCU_SAME5X)
  
  NVIC_DisableIRQ(USB_TRCPT0_IRQn);
  NVIC_DisableIRQ(USB_TRCPT1_IRQn);
  NVIC_DisableIRQ(USB_SOF_HSOF_IRQn);
  NVIC_DisableIRQ(USB_OTHER_IRQn);  
  
#else
#error "No implementation available for dcd_int_enable / dcd_int_disable"
#endif      
}

void dcd_set_address (uint8_t rhport, uint8_t dev_addr)
{
  (void) dev_addr;

  /* Response with zlp status */
  (void)dcd_edpt_xfer(rhport, 0x80u, NULL, 0u);

  /* 
   * DCD can only set address after status for this request is complete
   * So, do it at dcd_edpt0_status_complete()
   */

  /* Enable SUSPEND interrupt since the bus signal D+/D- are stable now. */
  USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTENSET_SUSPEND_Msk; /* clear pending */
  USB_REGS->DEVICE.USB_INTENSET = USB_DEVICE_INTENSET_SUSPEND_Msk;
}

void dcd_remote_wakeup(uint8_t rhport)
{
  (void) rhport;
  USB_REGS->DEVICE.USB_CTRLB |= USB_DEVICE_CTRLB_UPRSM_Msk;
}

/* disconnect by disabling internal pull-up resistor on D+/D- */
void dcd_disconnect(uint8_t rhport)
{
  (void) rhport;
  USB_REGS->DEVICE.USB_INTENCLR = USB_DEVICE_INTENCLR_Msk;
  USB_REGS->DEVICE.USB_DADD = 0u;
  USB_REGS->DEVICE.USB_CTRLB |= USB_DEVICE_CTRLB_DETACH_Msk;
}

/* connect by enabling internal pull-up resistor on D+/D- */
void dcd_connect(uint8_t rhport)
{
  (void) rhport;
  USB_REGS->DEVICE.USB_CTRLB &= ~USB_DEVICE_CTRLB_DETACH_Msk;
}

void dcd_sof_enable(uint8_t rhport, bool en)
{
  (void) rhport;

  if (en) {
    USB_REGS->DEVICE.USB_INTENSET = USB_DEVICE_INTENCLR_SOF_Msk;
  } else {
    USB_REGS->DEVICE.USB_INTENCLR = USB_DEVICE_INTENCLR_SOF_Msk;
  }
}

/*-----------------------------------------------------------------------------*
 * DCD Endpoint port
 *----------------------------------------------------------------------------*/

/*
 * Invoked when a control transfer's status stage is complete.
 * May help DCD to prepare for next control transfer, this API is optional.
 */
void dcd_edpt0_status_complete(uint8_t rhport, tusb_control_request_t const * request)
{
  (void) rhport;

  if (request->bmRequestType_bit.recipient == (uint8_t)TUSB_REQ_RCPT_DEVICE &&
      request->bmRequestType_bit.type == (uint8_t)TUSB_REQ_TYPE_STANDARD &&
      request->bRequest == (uint8_t)TUSB_REQ_SET_ADDRESS )
  {
    uint8_t const dev_addr = (uint8_t) request->wValue;
    USB_REGS->DEVICE.USB_DADD = (uint8_t)((dev_addr & (uint8_t)USB_DEVICE_DADD_DADD_Msk) | (uint8_t)USB_DEVICE_DADD_ADDEN_Msk);
  }

  /* 
   * Just finished status stage, prepare for next setup packet
   * Note: we may already prepare setup when queueing the control status.
   * but it has no harm to do it again here
   */
  prepare_setup();
}

bool dcd_edpt_open (uint8_t rhport, tusb_desc_endpoint_t const * desc_ep)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(desc_ep->bEndpointAddress);
  tusb_dir_t const dir   = tu_edpt_dir(desc_ep->bEndpointAddress);

  usb_device_desc_bank_registers_t* bank = &sram_registers[epnum][(uint8_t)dir];
  uint32_t size_value = 0u;
  while (size_value < 7u) {
    if ((uint16_t)(1UL << (size_value + 3u)) >= tu_edpt_packet_size(desc_ep)) {
      break;
    }
    size_value++;
  }

  /* unsupported endpoint size */
  if ( size_value == 7u && tu_edpt_packet_size(desc_ep) > 1023u ) 
  {
    return false;
  }

  bank->USB_PCKSIZE &= ~USB_DEVICE_PCKSIZE_SIZE_Msk;
  bank->USB_PCKSIZE |= USB_DEVICE_PCKSIZE_SIZE(size_value); 

  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum];

  if ( dir == TUSB_DIR_OUT )
  {
    ep->USB_EPCFG &= ~USB_DEVICE_EPCFG_EPTYPE0_Msk;
    ep->USB_EPCFG |= (uint8_t)((uint8_t)USB_DEVICE_EPCFG_EPTYPE0_Msk & (desc_ep->bmAttributes.xfer + 1u));
    ep->USB_EPSTATUSCLR = USB_DEVICE_EPSTATUSCLR_STALLRQ0_Msk | USB_DEVICE_EPSTATUSCLR_DTGLOUT_Msk; /* clear stall & dtoggle */
    ep->USB_EPINTENSET = USB_DEVICE_EPINTFLAG_TRCPT0_Msk;
  }else
  {
    ep->USB_EPCFG &= ~USB_DEVICE_EPCFG_EPTYPE1_Msk;
    ep->USB_EPCFG |=  (uint8_t)((uint8_t)((uint8_t)(desc_ep->bmAttributes.xfer + 1u)<<USB_DEVICE_EPCFG_EPTYPE1_Pos) & (uint8_t)USB_DEVICE_EPCFG_EPTYPE1_Msk);
    ep->USB_EPSTATUSCLR = USB_DEVICE_EPSTATUSCLR_STALLRQ1_Msk | USB_DEVICE_EPSTATUSCLR_DTGLIN_Msk; /* clear stall & dtoggle */
    ep->USB_EPINTENSET = USB_DEVICE_EPINTFLAG_TRCPT1_Msk; 
  }

  return true;
}

void dcd_edpt_close (uint8_t rhport, uint8_t ep_addr) {
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  tusb_dir_t const dir   = tu_edpt_dir(ep_addr);

  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum]; 
  
  if(dir == TUSB_DIR_OUT) {
    ep->USB_EPCFG &= ~USB_DEVICE_EPCFG_EPTYPE0_Msk;
    ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRCPT0_Msk | USB_DEVICE_EPINTFLAG_TRFAIL0_Msk;
    ep->USB_EPINTENCLR = USB_DEVICE_EPINTENCLR_TRCPT0_Msk | USB_DEVICE_EPINTENCLR_TRFAIL0_Msk;    
  } else {
    ep->USB_EPCFG &= ~USB_DEVICE_EPCFG_EPTYPE1_Msk;
    ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRCPT1_Msk | USB_DEVICE_EPINTFLAG_TRFAIL1_Msk;
    ep->USB_EPINTENCLR = USB_DEVICE_EPINTENCLR_TRCPT1_Msk | USB_DEVICE_EPINTENCLR_TRFAIL1_Msk;    
  }  
}

/* 
 * Close all non-control endpoints, cancel all pending transfers if any.
 * Invoked when switching from a non-zero Configuration by SET_CONFIGURE therefore
 * required for multiple configuration support.
*/
void dcd_edpt_close_all (uint8_t rhport)
{
  (void) rhport;
  uint8_t loopIndex = 0u;
  usb_device_endpoint_registers_t* ep = NULL; 
  
  /* EP0 or control endpoint need NOT be closed here */
  for (loopIndex=1u; loopIndex<TUP_DCD_ENDPOINT_MAX; loopIndex++)
  {
    ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[loopIndex]; 
    ep->USB_EPCFG = 0u;
    ep->USB_EPINTENCLR = USB_DEVICE_EPINTENCLR_Msk;
    ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_Msk;      
  }
}

bool dcd_edpt_xfer (uint8_t rhport, uint8_t ep_addr, uint8_t * buffer, uint16_t total_bytes)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  tusb_dir_t const dir   = tu_edpt_dir(ep_addr);

  usb_device_desc_bank_registers_t* bank = &sram_registers[epnum][(uint8_t)dir];
  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum];

  bank->USB_ADDR = REG_ADDR(buffer);

  /*
   * A SETUP token can occur immediately after an ZLP Status.
   * So make sure we have a valid buffer for setup packet.
   * Status = ZLP EP0 with direction opposite to one in the dir bit of current setup
   */
  if ( (epnum == 0u) && (buffer == NULL) && (total_bytes == 0u) && (dir != tu_edpt_dir(setup_packet[0])) ) {
    prepare_setup();
  }

  if ( dir == TUSB_DIR_OUT )
  {
    bank->USB_PCKSIZE &= ~(USB_DEVICE_PCKSIZE_MULTI_PACKET_SIZE_Msk | USB_DEVICE_PCKSIZE_BYTE_COUNT_Msk);
    bank->USB_PCKSIZE |= USB_DEVICE_PCKSIZE_MULTI_PACKET_SIZE(total_bytes) | USB_DEVICE_PCKSIZE_BYTE_COUNT(0);
    ep->USB_EPSTATUSCLR = USB_DEVICE_EPSTATUSCLR_BK0RDY_Msk;
    ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRFAIL0_Msk;
  } else
  {
    bank->USB_PCKSIZE &= ~(USB_DEVICE_PCKSIZE_MULTI_PACKET_SIZE_Msk | USB_DEVICE_PCKSIZE_BYTE_COUNT_Msk); 
    bank->USB_PCKSIZE |= USB_DEVICE_PCKSIZE_BYTE_COUNT(total_bytes); 
    ep->USB_EPSTATUSSET = USB_DEVICE_EPSTATUSSET_BK1RDY_Msk; 
    ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRFAIL1_Msk; 
  }

  return true;
}

void dcd_edpt_stall (uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum];

  if (tu_edpt_dir(ep_addr) == TUSB_DIR_IN) {
      ep->USB_EPSTATUSSET = USB_DEVICE_EPSTATUSSET_STALLRQ1_Msk;
  } else {
      ep->USB_EPSTATUSSET = USB_DEVICE_EPSTATUSSET_STALLRQ0_Msk;
  }
}

void dcd_edpt_clear_stall (uint8_t rhport, uint8_t ep_addr)
{
  (void) rhport;

  uint8_t const epnum = tu_edpt_number(ep_addr);
  usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum];

  if (tu_edpt_dir(ep_addr) == TUSB_DIR_IN) {
      ep->USB_EPSTATUSCLR = USB_DEVICE_EPSTATUSCLR_STALLRQ1_Msk | USB_DEVICE_EPSTATUSCLR_DTGLIN_Msk;
  } else {
      ep->USB_EPSTATUSCLR = USB_DEVICE_EPSTATUSCLR_STALLRQ0_Msk | USB_DEVICE_EPSTATUSCLR_DTGLOUT_Msk;
  }
}

static void edpt_xfer_complete_handler(void) {
  uint16_t epints = USB_REGS->DEVICE.USB_EPINTSMRY;

  for (uint8_t epnum = 0u; epnum < TUP_DCD_ENDPOINT_MAX; epnum++) {
    if ((uint16_t)(epints & (uint16_t)((uint16_t)1u << epnum)) == 0u) {
      continue;
    }

    usb_device_endpoint_registers_t* ep = &USB_REGS->DEVICE.DEVICE_ENDPOINT[epnum];
    uint8_t epintflag = ep->USB_EPINTFLAG;

    /* Handle IN completions */
    if ((uint8_t)(epintflag & USB_DEVICE_EPINTFLAG_TRCPT1_Msk) != 0u) {
      usb_device_desc_bank_registers_t* bank = &sram_registers[epnum][TUSB_DIR_IN];
      uint32_t const total_transfer_size = (bank->USB_PCKSIZE & USB_DEVICE_PCKSIZE_BYTE_COUNT_Msk)>>USB_DEVICE_PCKSIZE_BYTE_COUNT_Pos; 

      dcd_event_xfer_complete(0U, epnum | (uint8_t)TUSB_DIR_IN_MASK, total_transfer_size, (uint8_t)XFER_RESULT_SUCCESS, true);
      
      ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRCPT1_Msk;
    }

    /* Handle OUT completions */
    if ((uint8_t)(epintflag & USB_DEVICE_EPINTFLAG_TRCPT0_Msk) != 0u) {
      usb_device_desc_bank_registers_t* bank = &sram_registers[epnum][TUSB_DIR_OUT];
      uint32_t const total_transfer_size = (bank->USB_PCKSIZE & USB_DEVICE_PCKSIZE_BYTE_COUNT_Msk)>>USB_DEVICE_PCKSIZE_BYTE_COUNT_Pos;

      dcd_event_xfer_complete(0U, epnum, total_transfer_size, (uint8_t)XFER_RESULT_SUCCESS, true);
      
      ep->USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_TRCPT0_Msk;
    }
  }
}

/*------------------------------------------------------------------------------
 * Interrupt Handler
 *----------------------------------------------------------------------------*/
void dcd_int_handler (uint8_t rhport)
{
  (void) rhport;

  uint16_t int_status = USB_REGS->DEVICE.USB_INTFLAG & USB_REGS->DEVICE.USB_INTENSET;

  /* Start of Frame */
  if ((uint16_t)(int_status & USB_DEVICE_INTFLAG_SOF_Msk) != 0u)
  {
    USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTFLAG_SOF_Msk;
    const uint16_t frame = (USB_REGS->DEVICE.USB_FNUM & USB_DEVICE_FNUM_FNUM_Msk)>>USB_DEVICE_FNUM_FNUM_Pos; 
    dcd_event_sof(0u, (uint32_t)frame, true);
    /* dcd_event_bus_signal(0, DCD_EVENT_SOF, true); */
  }

  /* 
   * PIC32CM doesn't distinguish between Suspend and Disconnect state.
   * Both condition will cause SUSPEND interrupt triggered.
   * To prevent being triggered when D+/D- are not stable, SUSPEND interrupt is only
   * enabled when we received SET_ADDRESS request and cleared on Bus Reset
   */
  if ((uint16_t)(int_status & USB_DEVICE_INTFLAG_SUSPEND_Msk) != 0u)
  {
    USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTFLAG_SUSPEND_Msk;

    /* Enable wakeup interrupt */
    USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTFLAG_WAKEUP_Msk; /* clear pending */
    USB_REGS->DEVICE.USB_INTENSET = USB_DEVICE_INTFLAG_WAKEUP_Msk;

    dcd_event_bus_signal(0u, DCD_EVENT_SUSPEND, true);
  }

  /* 
   * Wakeup interrupt is only enabled when we got suspended.
   * Wakeup interrupt will disable itself
   */
  if ((uint16_t)(int_status & USB_DEVICE_INTFLAG_WAKEUP_Msk) != 0u)
  {
    USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTFLAG_WAKEUP_Msk;

    /* disable wakeup interrupt itself */
    USB_REGS->DEVICE.USB_INTENCLR = USB_DEVICE_INTFLAG_WAKEUP_Msk;
    dcd_event_bus_signal(0u, DCD_EVENT_RESUME, true);
  }

  /* Enable of Reset */
  if ((uint16_t)(int_status & USB_DEVICE_INTFLAG_EORST_Msk) != 0u)
  {
    USB_REGS->DEVICE.USB_INTFLAG = USB_DEVICE_INTFLAG_EORST_Msk;

    /* Disable both suspend and wakeup interrupt */
    USB_REGS->DEVICE.USB_INTENCLR = USB_DEVICE_INTFLAG_WAKEUP_Msk | USB_DEVICE_INTFLAG_SUSPEND_Msk;

    bus_reset();
    dcd_event_bus_reset(0u, TUSB_SPEED_FULL, true);
  }

  /* Handle SETUP packet */
  if ((uint8_t)(USB_REGS->DEVICE.DEVICE_ENDPOINT[0].USB_EPINTFLAG & USB_DEVICE_EPINTFLAG_RXSTP_Msk) != 0u) 
  {
    /* This copies the data elsewhere so we can reuse the buffer. */
    dcd_event_setup_received(0u, setup_packet, true);

    /* 
     * Although Setup packet only set RXSTP bit,
     * TRCPT0 bit could already be set by previous ZLP OUT Status (not handled until now).
     * Since control status complete event is optional, we can just clear TRCPT0 and skip the status event
     */
    USB_REGS->DEVICE.DEVICE_ENDPOINT[0].USB_EPINTFLAG = USB_DEVICE_EPINTFLAG_RXSTP_Msk | USB_DEVICE_EPINTFLAG_TRCPT0_Msk;
  }

  /* Handle endpoint complete transfer */
  edpt_xfer_complete_handler();
}

/* ISR Entries */
#if (CFG_TUSB_MCU == OPT_MCU_SAMD11 || CFG_TUSB_MCU == OPT_MCU_SAMD21 || \
     CFG_TUSB_MCU == OPT_MCU_SAMDA1 || CFG_TUSB_MCU == OPT_MCU_SAML22 || \
     CFG_TUSB_MCU == OPT_MCU_SAML21 || CFG_TUSB_MCU == OPT_MCU_PIC32CM_LE_LS) 

void USB_Handler (void)
{
    tud_int_handler(0u);
}

#elif (CFG_TUSB_MCU == OPT_MCU_PIC32CM_GC_SG)

void USB_EORSMDNRSM_Handler (void)
{
    tud_int_handler(0u);
}

void USB_SOFHSOF_Handler (void)
{
    tud_int_handler(0u);
}

void USB_TRCPT00_Handler (void)
{
    tud_int_handler(0u);
}

void USB_TRCPT10_Handler (void)
{
    tud_int_handler(0u);
}

#endif

#endif
