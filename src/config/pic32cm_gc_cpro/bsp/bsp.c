/*******************************************************************************
  Board Support Package Implementation

  Company:
    Microchip Technology Inc.

  File Name:
    bsp.c

  Summary:
    Board Support Package implementation.

  Description:
    This file contains routines that implement the board support package
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "bsp.h"
#include "definitions.h"

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
// Section: Interface Routines
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Function:
    void BSP_Initialize(void)

  Summary:
    Performs the necessary actions to initialize a board

  Description:
    This function initializes the LED, Switch and other ports on the board.
    This function must be called by the user before using any APIs present in
    this BSP.

  Remarks:
    Refer to bsp.h for usage information.
*/

void BSP_Initialize(void )
{


    /* Switch off LEDs */
    LED_Off();
    LED0_Off();


}

uint32_t board_millis(void) {
  return SYSTICK_GetTickCounter();
}

#define PIC32CM_UID_SIZE 16 // 128bits or 16bytes
size_t board_get_unique_id(uint8_t id[], size_t max_len)
{
    /* Got the Unique ID from its dedicated memory address */
    volatile uint8_t *pMem = (uint8_t *)0x0A0071E0; 
    uint8_t numBytes = (max_len<=PIC32CM_UID_SIZE)?max_len:PIC32CM_UID_SIZE;
    
    /* PIC32CM GC/SG has 128bit(16 bytes) of Unique ID */
    for (uint32_t i = 0; i<numBytes; i++)
    {
        id[i] = *(pMem+i);
    }
    
    return numBytes;
}        

/*******************************************************************************
 End of File
*/
