#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-device_hid_composite.mk)" "nbproject/Makefile-local-device_hid_composite.mk"
include nbproject/Makefile-local-device_hid_composite.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=device_hid_composite
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/examples/device/hid_composite/hid_composite_example.c ../src/examples/device/hid_composite/usb_descriptors.c ../src/third_party/tinyusb/src/class/audio/audio_device.c ../src/third_party/tinyusb/src/class/bth/bth_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_host.c ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c ../src/third_party/tinyusb/src/class/dfu/dfu_device.c ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c ../src/third_party/tinyusb/src/class/hid/hid_device.c ../src/third_party/tinyusb/src/class/hid/hid_host.c ../src/third_party/tinyusb/src/class/midi/midi_device.c ../src/third_party/tinyusb/src/class/midi/midi_host.c ../src/third_party/tinyusb/src/class/msc/msc_device.c ../src/third_party/tinyusb/src/class/msc/msc_host.c ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c ../src/third_party/tinyusb/src/class/net/ncm_device.c ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_host.c ../src/third_party/tinyusb/src/class/video/video_device.c ../src/third_party/tinyusb/src/common/tusb_fifo.c ../src/third_party/tinyusb/src/device/usbd.c ../src/third_party/tinyusb/src/device/usbd_control.c ../src/third_party/tinyusb/src/host/hub.c ../src/third_party/tinyusb/src/host/usbh.c ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c ../src/third_party/tinyusb/src/typec/usbc.c ../src/third_party/tinyusb/src/tusb.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/724423842/hid_composite_example.o ${OBJECTDIR}/_ext/724423842/usb_descriptors.o ${OBJECTDIR}/_ext/724646478/audio_device.o ${OBJECTDIR}/_ext/1670751538/bth_device.o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ${OBJECTDIR}/_ext/1670746117/hid_device.o ${OBJECTDIR}/_ext/1670746117/hid_host.o ${OBJECTDIR}/_ext/253373015/midi_device.o ${OBJECTDIR}/_ext/253373015/midi_host.o ${OBJECTDIR}/_ext/1670741003/msc_device.o ${OBJECTDIR}/_ext/1670741003/msc_host.o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ${OBJECTDIR}/_ext/743682803/video_device.o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ${OBJECTDIR}/_ext/974966567/usbd.o ${OBJECTDIR}/_ext/974966567/usbd_control.o ${OBJECTDIR}/_ext/2039129785/hub.o ${OBJECTDIR}/_ext/2039129785/usbh.o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ${OBJECTDIR}/_ext/1200109192/usbc.o ${OBJECTDIR}/_ext/1226205790/tusb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1969130078/bsp.o.d ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d ${OBJECTDIR}/_ext/205145811/plib_port.o.d ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d ${OBJECTDIR}/_ext/388649371/sys_int.o.d ${OBJECTDIR}/_ext/1540765102/initialization.o.d ${OBJECTDIR}/_ext/1540765102/interrupts.o.d ${OBJECTDIR}/_ext/1540765102/exceptions.o.d ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d ${OBJECTDIR}/_ext/1540765102/tasks.o.d ${OBJECTDIR}/_ext/724423842/hid_composite_example.o.d ${OBJECTDIR}/_ext/724423842/usb_descriptors.o.d ${OBJECTDIR}/_ext/724646478/audio_device.o.d ${OBJECTDIR}/_ext/1670751538/bth_device.o.d ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d ${OBJECTDIR}/_ext/1670746117/hid_device.o.d ${OBJECTDIR}/_ext/1670746117/hid_host.o.d ${OBJECTDIR}/_ext/253373015/midi_device.o.d ${OBJECTDIR}/_ext/253373015/midi_host.o.d ${OBJECTDIR}/_ext/1670741003/msc_device.o.d ${OBJECTDIR}/_ext/1670741003/msc_host.o.d ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d ${OBJECTDIR}/_ext/743682803/video_device.o.d ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d ${OBJECTDIR}/_ext/974966567/usbd.o.d ${OBJECTDIR}/_ext/974966567/usbd_control.o.d ${OBJECTDIR}/_ext/2039129785/hub.o.d ${OBJECTDIR}/_ext/2039129785/usbh.o.d ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d ${OBJECTDIR}/_ext/1200109192/usbc.o.d ${OBJECTDIR}/_ext/1226205790/tusb.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/724423842/hid_composite_example.o ${OBJECTDIR}/_ext/724423842/usb_descriptors.o ${OBJECTDIR}/_ext/724646478/audio_device.o ${OBJECTDIR}/_ext/1670751538/bth_device.o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ${OBJECTDIR}/_ext/1670746117/hid_device.o ${OBJECTDIR}/_ext/1670746117/hid_host.o ${OBJECTDIR}/_ext/253373015/midi_device.o ${OBJECTDIR}/_ext/253373015/midi_host.o ${OBJECTDIR}/_ext/1670741003/msc_device.o ${OBJECTDIR}/_ext/1670741003/msc_host.o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ${OBJECTDIR}/_ext/743682803/video_device.o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ${OBJECTDIR}/_ext/974966567/usbd.o ${OBJECTDIR}/_ext/974966567/usbd_control.o ${OBJECTDIR}/_ext/2039129785/hub.o ${OBJECTDIR}/_ext/2039129785/usbh.o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ${OBJECTDIR}/_ext/1200109192/usbc.o ${OBJECTDIR}/_ext/1226205790/tusb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/examples/device/hid_composite/hid_composite_example.c ../src/examples/device/hid_composite/usb_descriptors.c ../src/third_party/tinyusb/src/class/audio/audio_device.c ../src/third_party/tinyusb/src/class/bth/bth_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_host.c ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c ../src/third_party/tinyusb/src/class/dfu/dfu_device.c ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c ../src/third_party/tinyusb/src/class/hid/hid_device.c ../src/third_party/tinyusb/src/class/hid/hid_host.c ../src/third_party/tinyusb/src/class/midi/midi_device.c ../src/third_party/tinyusb/src/class/midi/midi_host.c ../src/third_party/tinyusb/src/class/msc/msc_device.c ../src/third_party/tinyusb/src/class/msc/msc_host.c ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c ../src/third_party/tinyusb/src/class/net/ncm_device.c ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_host.c ../src/third_party/tinyusb/src/class/video/video_device.c ../src/third_party/tinyusb/src/common/tusb_fifo.c ../src/third_party/tinyusb/src/device/usbd.c ../src/third_party/tinyusb/src/device/usbd_control.c ../src/third_party/tinyusb/src/host/hub.c ../src/third_party/tinyusb/src/host/usbh.c ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c ../src/third_party/tinyusb/src/typec/usbc.c ../src/third_party/tinyusb/src/tusb.c ../src/main.c ../src/app.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-device_hid_composite.mk ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CM5112GC00100
MP_LINKER_FILE_OPTION=,--script="../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/device_hid_composite/377c5e35a53498ed0fc7bee1165a4e78139f881d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/device_hid_composite/d9528997289cd4c11d34aed27cda90951a5bec86 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/device_hid_composite/a357c58c8bd7008533eaa9843d11f311490043d9 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/device_hid_composite/a4e8e45e2251bfeb5db93fb7c2299e966bcc9a03 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/device_hid_composite/a4ed3f77d77fdbd530408bfd5488b07f0ff586bc .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/device_hid_composite/72b2466b3a0de9d6f48a7bbe3f2b23c179bb564a .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/device_hid_composite/f4b65c1b386a8b0e1cf2c3dc40cc8a8e32de7eb1 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/device_hid_composite/266a4aef6faff29bc60d73b1fdc418dc69f916f8 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/device_hid_composite/2d8ccf6e6c0829d5b752e8f24b7b3f883d2ecaf1 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/device_hid_composite/67aba41c9e22a4274cbfbbb7a89a224e266d7595 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/device_hid_composite/72cd2cb6cf101d7b2dc1e62b2bd0a92b15c04f6a .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/device_hid_composite/22e201ff30071357a34517fce74baf4ee9e2d73f .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/device_hid_composite/4095a97c85686b4645f0e9b5c052deb34831c1d3 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/device_hid_composite/8149076db516852d11a043154041844c8efe4674 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/device_hid_composite/608f100cf72af976956fbc439b3265219d49829e .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/device_hid_composite/fba9a0b634899fb71c0dbd8cecb7bba43850697 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/device_hid_composite/e998ef0ee7c688fadda49f1481ee230291b0e00b .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724423842/hid_composite_example.o: ../src/examples/device/hid_composite/hid_composite_example.c  .generated_files/flags/device_hid_composite/820cb4ae5b04af5cdd0109647fdb30425c0c8027 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724423842" 
	@${RM} ${OBJECTDIR}/_ext/724423842/hid_composite_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/724423842/hid_composite_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724423842/hid_composite_example.o.d" -o ${OBJECTDIR}/_ext/724423842/hid_composite_example.o ../src/examples/device/hid_composite/hid_composite_example.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724423842/usb_descriptors.o: ../src/examples/device/hid_composite/usb_descriptors.c  .generated_files/flags/device_hid_composite/b78e331d6f4b82f8a05cb06eeb3883e33efc6290 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724423842" 
	@${RM} ${OBJECTDIR}/_ext/724423842/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/724423842/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724423842/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/724423842/usb_descriptors.o ../src/examples/device/hid_composite/usb_descriptors.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724646478/audio_device.o: ../src/third_party/tinyusb/src/class/audio/audio_device.c  .generated_files/flags/device_hid_composite/196e7e2a7a280596ecf1243716c73369101392bd .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724646478" 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724646478/audio_device.o.d" -o ${OBJECTDIR}/_ext/724646478/audio_device.o ../src/third_party/tinyusb/src/class/audio/audio_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751538/bth_device.o: ../src/third_party/tinyusb/src/class/bth/bth_device.c  .generated_files/flags/device_hid_composite/530bfa4fb2e7579cb84960974df2168ff55c7868 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751538" 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751538/bth_device.o.d" -o ${OBJECTDIR}/_ext/1670751538/bth_device.o ../src/third_party/tinyusb/src/class/bth/bth_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_device.o: ../src/third_party/tinyusb/src/class/cdc/cdc_device.c  .generated_files/flags/device_hid_composite/5cbcd66e43cd1fc9ba5a859c78eee9410f4af0a2 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_device.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ../src/third_party/tinyusb/src/class/cdc/cdc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_host.c  .generated_files/flags/device_hid_composite/3348ea68e61f94f7bf94026cf58d9d5eb1828c90 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c  .generated_files/flags/device_hid_composite/9154d351b39ba9e2d87664e552d5c381751d7a33 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_device.c  .generated_files/flags/device_hid_composite/6d97a7565e6934543b210df1b32ba3dda35a7d05 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c  .generated_files/flags/device_hid_composite/dee0e316c32cf656ee6c2f607965af11482a36fe .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_device.o: ../src/third_party/tinyusb/src/class/hid/hid_device.c  .generated_files/flags/device_hid_composite/44e9bf2f9dde5086fe53f08dfc03f1967f8c470d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_device.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_device.o ../src/third_party/tinyusb/src/class/hid/hid_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_host.o: ../src/third_party/tinyusb/src/class/hid/hid_host.c  .generated_files/flags/device_hid_composite/c51ceb9239003250dc02085e1262b9ac43db5d3 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_host.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_host.o ../src/third_party/tinyusb/src/class/hid/hid_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_device.o: ../src/third_party/tinyusb/src/class/midi/midi_device.c  .generated_files/flags/device_hid_composite/ae86a9232dce1cde469f5ee7776af9a1c31339f6 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_device.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_device.o ../src/third_party/tinyusb/src/class/midi/midi_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_host.o: ../src/third_party/tinyusb/src/class/midi/midi_host.c  .generated_files/flags/device_hid_composite/36479be61452543e34b09d89f888818ca0939fc9 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_host.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_host.o ../src/third_party/tinyusb/src/class/midi/midi_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_device.o: ../src/third_party/tinyusb/src/class/msc/msc_device.c  .generated_files/flags/device_hid_composite/c07030a99067c370bdac03de0765fae598267b5e .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_device.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_device.o ../src/third_party/tinyusb/src/class/msc/msc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_host.o: ../src/third_party/tinyusb/src/class/msc/msc_host.c  .generated_files/flags/device_hid_composite/160a0200f5d3b94df58afc811a977cdfeeafd09 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_host.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_host.o ../src/third_party/tinyusb/src/class/msc/msc_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o: ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c  .generated_files/flags/device_hid_composite/ed4c98ced07e972c41f1caae91779de4ef78108b .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ncm_device.o: ../src/third_party/tinyusb/src/class/net/ncm_device.c  .generated_files/flags/device_hid_composite/6ce91b2eae3e19b7926449c465192a504ca2aea9 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ncm_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ../src/third_party/tinyusb/src/class/net/ncm_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1559891342/usbtmc_device.o: ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c  .generated_files/flags/device_hid_composite/ba126b3eff588456629b3ea32edcadd55b07ebd4 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1559891342" 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d" -o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_device.o: ../src/third_party/tinyusb/src/class/vendor/vendor_device.c  .generated_files/flags/device_hid_composite/ea2eb6f16f47843b3e30c733f0f9322fea154345 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_device.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ../src/third_party/tinyusb/src/class/vendor/vendor_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_host.o: ../src/third_party/tinyusb/src/class/vendor/vendor_host.c  .generated_files/flags/device_hid_composite/c237f3587177da21bcf85055ae62ccf6d8341175 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_host.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ../src/third_party/tinyusb/src/class/vendor/vendor_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/743682803/video_device.o: ../src/third_party/tinyusb/src/class/video/video_device.c  .generated_files/flags/device_hid_composite/c20119581069b29d713ce03e665bbdc8103dc642 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743682803" 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743682803/video_device.o.d" -o ${OBJECTDIR}/_ext/743682803/video_device.o ../src/third_party/tinyusb/src/class/video/video_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/955308732/tusb_fifo.o: ../src/third_party/tinyusb/src/common/tusb_fifo.c  .generated_files/flags/device_hid_composite/4410ace2f9b1bf7ff818ce11b0a3a06f9d3a4caf .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/955308732" 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d" -o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ../src/third_party/tinyusb/src/common/tusb_fifo.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd.o: ../src/third_party/tinyusb/src/device/usbd.c  .generated_files/flags/device_hid_composite/5d88ddac25adf2b13a8fdc5c8d8eeb88e026044 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd.o ../src/third_party/tinyusb/src/device/usbd.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd_control.o: ../src/third_party/tinyusb/src/device/usbd_control.c  .generated_files/flags/device_hid_composite/705b59c3e07242285977870cac203ed1ea854f2d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd_control.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd_control.o ../src/third_party/tinyusb/src/device/usbd_control.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/hub.o: ../src/third_party/tinyusb/src/host/hub.c  .generated_files/flags/device_hid_composite/c7ac5060f0d87936aa32a50af963eea1a22b6584 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/hub.o.d" -o ${OBJECTDIR}/_ext/2039129785/hub.o ../src/third_party/tinyusb/src/host/hub.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/usbh.o: ../src/third_party/tinyusb/src/host/usbh.c  .generated_files/flags/device_hid_composite/73d023e238bfa0529e197281982dda7e5139b122 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/usbh.o.d" -o ${OBJECTDIR}/_ext/2039129785/usbh.o ../src/third_party/tinyusb/src/host/usbh.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o: ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c  .generated_files/flags/device_hid_composite/f5ea49a946a31fbd206c264963dd33f65019f140 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/766633133" 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d" -o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200109192/usbc.o: ../src/third_party/tinyusb/src/typec/usbc.c  .generated_files/flags/device_hid_composite/8513af93b2cbfc2b96eca6a5993f2c8a788aa45d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200109192" 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200109192/usbc.o.d" -o ${OBJECTDIR}/_ext/1200109192/usbc.o ../src/third_party/tinyusb/src/typec/usbc.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226205790/tusb.o: ../src/third_party/tinyusb/src/tusb.c  .generated_files/flags/device_hid_composite/fcf537c77ebd811cfcea7e81d28280bbb014ca85 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226205790" 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226205790/tusb.o.d" -o ${OBJECTDIR}/_ext/1226205790/tusb.o ../src/third_party/tinyusb/src/tusb.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/device_hid_composite/34900381e17f632d10a5ecd597596291ac7383bd .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/device_hid_composite/3fdc9f9eeffe7daf8f8ed4eeb0b87ed7a838db51 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/device_hid_composite/2a5adc136637083fae463af57630004850b7040d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/device_hid_composite/b1b63368f402597b28c01a90cc9c1af6fde898de .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/device_hid_composite/a25632c4713cdea01a4b6c43d0a6c0e447dd9867 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/device_hid_composite/8a857ac23af4b1df9e7f4a45112ecda94ce5d453 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/device_hid_composite/1ab8ed526e8782c06a839c2b8eba869a3a3ca6b0 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/device_hid_composite/47039474a4766d0df1d4490e9966071253f5dd27 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/device_hid_composite/cf86bdda39e319ec608d3afb6de41cdc33c9c53d .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/device_hid_composite/4b27d5c12b76a0fdc771f82a2ef1f9c7fc0ae265 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/device_hid_composite/cb1c4927f1165318c2f5c69c8133508a9f7d5b60 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/device_hid_composite/b5a598c3f0314779d8825a2b4733c8de3886da86 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/device_hid_composite/ff1d5f6098ca6f3530a603fcf2c6f6dcf5b1951a .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/device_hid_composite/f8ea610d565e9b4ab81a91b499b47276965db95e .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/device_hid_composite/fdd1082055a8c0afdebf316e3e7bf7776cd44b09 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/device_hid_composite/f255c6671d74477a208962f41a597f56a84b465 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/device_hid_composite/c8b3ad665b61591610facf7f0ddb7a63766a3b9a .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/device_hid_composite/e15f6910e9999d34ed7dab7a03c0f6fd1ef8a33b .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/device_hid_composite/2d79809d33e1eadf769c3ecc0b96d51cf5e4f0b6 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724423842/hid_composite_example.o: ../src/examples/device/hid_composite/hid_composite_example.c  .generated_files/flags/device_hid_composite/8fc9e5f066564fa8a32568dd4e8d05d26fd4a06f .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724423842" 
	@${RM} ${OBJECTDIR}/_ext/724423842/hid_composite_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/724423842/hid_composite_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724423842/hid_composite_example.o.d" -o ${OBJECTDIR}/_ext/724423842/hid_composite_example.o ../src/examples/device/hid_composite/hid_composite_example.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724423842/usb_descriptors.o: ../src/examples/device/hid_composite/usb_descriptors.c  .generated_files/flags/device_hid_composite/c1dc67c7d6ad31f330c0b4d14b259c283ba8f315 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724423842" 
	@${RM} ${OBJECTDIR}/_ext/724423842/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/724423842/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724423842/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/724423842/usb_descriptors.o ../src/examples/device/hid_composite/usb_descriptors.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724646478/audio_device.o: ../src/third_party/tinyusb/src/class/audio/audio_device.c  .generated_files/flags/device_hid_composite/8206677609c6f40dec741684f5c0a1d6ff49381b .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724646478" 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724646478/audio_device.o.d" -o ${OBJECTDIR}/_ext/724646478/audio_device.o ../src/third_party/tinyusb/src/class/audio/audio_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751538/bth_device.o: ../src/third_party/tinyusb/src/class/bth/bth_device.c  .generated_files/flags/device_hid_composite/ea8b2be4a779d597d8e1c7db86d50c3f7e9553c4 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751538" 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751538/bth_device.o.d" -o ${OBJECTDIR}/_ext/1670751538/bth_device.o ../src/third_party/tinyusb/src/class/bth/bth_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_device.o: ../src/third_party/tinyusb/src/class/cdc/cdc_device.c  .generated_files/flags/device_hid_composite/5a457820a7f5022c4fe5483173569307e0b9e171 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_device.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ../src/third_party/tinyusb/src/class/cdc/cdc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_host.c  .generated_files/flags/device_hid_composite/9d774ba1fc956a259532d3d31612ad7576190b05 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c  .generated_files/flags/device_hid_composite/c5a310b6bdcd01e84e9d7347ca7985538177e7e8 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_device.c  .generated_files/flags/device_hid_composite/d06871d7cbebe2f64fe5a74e7755ee21389f9de6 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c  .generated_files/flags/device_hid_composite/8b223f56713bdcb1ed04b101c04ed3ca288aa69c .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_device.o: ../src/third_party/tinyusb/src/class/hid/hid_device.c  .generated_files/flags/device_hid_composite/6bce6e313a0b1fbec54f306eaaf4e45f479dd986 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_device.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_device.o ../src/third_party/tinyusb/src/class/hid/hid_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_host.o: ../src/third_party/tinyusb/src/class/hid/hid_host.c  .generated_files/flags/device_hid_composite/17ccf812139eeb87e0bc3858667c3926c4d06faf .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_host.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_host.o ../src/third_party/tinyusb/src/class/hid/hid_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_device.o: ../src/third_party/tinyusb/src/class/midi/midi_device.c  .generated_files/flags/device_hid_composite/263563c5552498401575a9541b3e7b6105bd038b .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_device.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_device.o ../src/third_party/tinyusb/src/class/midi/midi_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_host.o: ../src/third_party/tinyusb/src/class/midi/midi_host.c  .generated_files/flags/device_hid_composite/1dcfff1400f23dfffbd787a140641196257085a9 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_host.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_host.o ../src/third_party/tinyusb/src/class/midi/midi_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_device.o: ../src/third_party/tinyusb/src/class/msc/msc_device.c  .generated_files/flags/device_hid_composite/f26ccc62ccba8c64d726007b40e98fe11a6e70c9 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_device.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_device.o ../src/third_party/tinyusb/src/class/msc/msc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_host.o: ../src/third_party/tinyusb/src/class/msc/msc_host.c  .generated_files/flags/device_hid_composite/f94eb8dff7187bbd5cb2768603d7fb7f26ac4cfc .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_host.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_host.o ../src/third_party/tinyusb/src/class/msc/msc_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o: ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c  .generated_files/flags/device_hid_composite/b2feec3ad5476ea48bd047b0161a331d8b7fd67e .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ncm_device.o: ../src/third_party/tinyusb/src/class/net/ncm_device.c  .generated_files/flags/device_hid_composite/ea628edd9e0636800ebc00a55460df629a2fee22 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ncm_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ../src/third_party/tinyusb/src/class/net/ncm_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1559891342/usbtmc_device.o: ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c  .generated_files/flags/device_hid_composite/a27b5594e690823504ded802f3bfb0acfd171596 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1559891342" 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d" -o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_device.o: ../src/third_party/tinyusb/src/class/vendor/vendor_device.c  .generated_files/flags/device_hid_composite/d39962632c0a54d8fc133fde5979f230843bf362 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_device.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ../src/third_party/tinyusb/src/class/vendor/vendor_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_host.o: ../src/third_party/tinyusb/src/class/vendor/vendor_host.c  .generated_files/flags/device_hid_composite/c04bea2447c0dd25a928da065a0481e4c044be41 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_host.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ../src/third_party/tinyusb/src/class/vendor/vendor_host.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/743682803/video_device.o: ../src/third_party/tinyusb/src/class/video/video_device.c  .generated_files/flags/device_hid_composite/43029af3eb13035a2824432a1f80168290a9f761 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743682803" 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743682803/video_device.o.d" -o ${OBJECTDIR}/_ext/743682803/video_device.o ../src/third_party/tinyusb/src/class/video/video_device.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/955308732/tusb_fifo.o: ../src/third_party/tinyusb/src/common/tusb_fifo.c  .generated_files/flags/device_hid_composite/d17695d32ceeee60743df618daf243e3fc99e189 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/955308732" 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d" -o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ../src/third_party/tinyusb/src/common/tusb_fifo.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd.o: ../src/third_party/tinyusb/src/device/usbd.c  .generated_files/flags/device_hid_composite/51981185170c2f836bc1a85f323e09f34902d46e .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd.o ../src/third_party/tinyusb/src/device/usbd.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd_control.o: ../src/third_party/tinyusb/src/device/usbd_control.c  .generated_files/flags/device_hid_composite/36d86e2d773129f37e533047fe077c63fbb248d1 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd_control.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd_control.o ../src/third_party/tinyusb/src/device/usbd_control.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/hub.o: ../src/third_party/tinyusb/src/host/hub.c  .generated_files/flags/device_hid_composite/d7436c0248ed81364abac01b6021eaf148e8440f .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/hub.o.d" -o ${OBJECTDIR}/_ext/2039129785/hub.o ../src/third_party/tinyusb/src/host/hub.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/usbh.o: ../src/third_party/tinyusb/src/host/usbh.c  .generated_files/flags/device_hid_composite/7f579bb3989e9da2644ff563ad072e5b6249daa1 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/usbh.o.d" -o ${OBJECTDIR}/_ext/2039129785/usbh.o ../src/third_party/tinyusb/src/host/usbh.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o: ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c  .generated_files/flags/device_hid_composite/4c8739e418ecb0d14e83cb7feed4a476ce90ced8 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/766633133" 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d" -o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200109192/usbc.o: ../src/third_party/tinyusb/src/typec/usbc.c  .generated_files/flags/device_hid_composite/fd4692c9d898b963b016117897dda68fd01427ac .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200109192" 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200109192/usbc.o.d" -o ${OBJECTDIR}/_ext/1200109192/usbc.o ../src/third_party/tinyusb/src/typec/usbc.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226205790/tusb.o: ../src/third_party/tinyusb/src/tusb.c  .generated_files/flags/device_hid_composite/b13c9f68f4f74983d36dcf2bc93bdc9812f79974 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226205790" 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226205790/tusb.o.d" -o ${OBJECTDIR}/_ext/1226205790/tusb.o ../src/third_party/tinyusb/src/tusb.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/device_hid_composite/6cc4bbc34763beb0147af8b078ed1dc03fe7b5d0 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/device_hid_composite/10f39d4d732f928bc7a5eba36a879419adefcbf6 .generated_files/flags/device_hid_composite/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/examples/device/hid_composite" -I"../src/third_party/tinyusb/src" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_device_hid_composite=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
