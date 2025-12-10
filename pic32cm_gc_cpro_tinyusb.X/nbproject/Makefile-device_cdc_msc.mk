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
ifeq "$(wildcard nbproject/Makefile-local-device_cdc_msc.mk)" "nbproject/Makefile-local-device_cdc_msc.mk"
include nbproject/Makefile-local-device_cdc_msc.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=device_cdc_msc
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/examples/device/cdc_msc/cdc_msc_example.c ../src/examples/device/cdc_msc/msc_disk.c ../src/examples/device/cdc_msc/usb_descriptors.c ../src/third_party/tinyusb/src/class/audio/audio_device.c ../src/third_party/tinyusb/src/class/bth/bth_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_host.c ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c ../src/third_party/tinyusb/src/class/dfu/dfu_device.c ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c ../src/third_party/tinyusb/src/class/hid/hid_device.c ../src/third_party/tinyusb/src/class/hid/hid_host.c ../src/third_party/tinyusb/src/class/midi/midi_device.c ../src/third_party/tinyusb/src/class/midi/midi_host.c ../src/third_party/tinyusb/src/class/msc/msc_device.c ../src/third_party/tinyusb/src/class/msc/msc_host.c ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c ../src/third_party/tinyusb/src/class/net/ncm_device.c ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_host.c ../src/third_party/tinyusb/src/class/video/video_device.c ../src/third_party/tinyusb/src/common/tusb_fifo.c ../src/third_party/tinyusb/src/device/usbd.c ../src/third_party/tinyusb/src/device/usbd_control.c ../src/third_party/tinyusb/src/host/hub.c ../src/third_party/tinyusb/src/host/usbh.c ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c ../src/third_party/tinyusb/src/typec/usbc.c ../src/third_party/tinyusb/src/tusb.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o ${OBJECTDIR}/_ext/553783987/msc_disk.o ${OBJECTDIR}/_ext/553783987/usb_descriptors.o ${OBJECTDIR}/_ext/724646478/audio_device.o ${OBJECTDIR}/_ext/1670751538/bth_device.o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ${OBJECTDIR}/_ext/1670746117/hid_device.o ${OBJECTDIR}/_ext/1670746117/hid_host.o ${OBJECTDIR}/_ext/253373015/midi_device.o ${OBJECTDIR}/_ext/253373015/midi_host.o ${OBJECTDIR}/_ext/1670741003/msc_device.o ${OBJECTDIR}/_ext/1670741003/msc_host.o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ${OBJECTDIR}/_ext/743682803/video_device.o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ${OBJECTDIR}/_ext/974966567/usbd.o ${OBJECTDIR}/_ext/974966567/usbd_control.o ${OBJECTDIR}/_ext/2039129785/hub.o ${OBJECTDIR}/_ext/2039129785/usbh.o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ${OBJECTDIR}/_ext/1200109192/usbc.o ${OBJECTDIR}/_ext/1226205790/tusb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1969130078/bsp.o.d ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d ${OBJECTDIR}/_ext/205145811/plib_port.o.d ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d ${OBJECTDIR}/_ext/388649371/sys_int.o.d ${OBJECTDIR}/_ext/1540765102/initialization.o.d ${OBJECTDIR}/_ext/1540765102/interrupts.o.d ${OBJECTDIR}/_ext/1540765102/exceptions.o.d ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d ${OBJECTDIR}/_ext/1540765102/tasks.o.d ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o.d ${OBJECTDIR}/_ext/553783987/msc_disk.o.d ${OBJECTDIR}/_ext/553783987/usb_descriptors.o.d ${OBJECTDIR}/_ext/724646478/audio_device.o.d ${OBJECTDIR}/_ext/1670751538/bth_device.o.d ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d ${OBJECTDIR}/_ext/1670746117/hid_device.o.d ${OBJECTDIR}/_ext/1670746117/hid_host.o.d ${OBJECTDIR}/_ext/253373015/midi_device.o.d ${OBJECTDIR}/_ext/253373015/midi_host.o.d ${OBJECTDIR}/_ext/1670741003/msc_device.o.d ${OBJECTDIR}/_ext/1670741003/msc_host.o.d ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d ${OBJECTDIR}/_ext/743682803/video_device.o.d ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d ${OBJECTDIR}/_ext/974966567/usbd.o.d ${OBJECTDIR}/_ext/974966567/usbd_control.o.d ${OBJECTDIR}/_ext/2039129785/hub.o.d ${OBJECTDIR}/_ext/2039129785/usbh.o.d ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d ${OBJECTDIR}/_ext/1200109192/usbc.o.d ${OBJECTDIR}/_ext/1226205790/tusb.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o ${OBJECTDIR}/_ext/553783987/msc_disk.o ${OBJECTDIR}/_ext/553783987/usb_descriptors.o ${OBJECTDIR}/_ext/724646478/audio_device.o ${OBJECTDIR}/_ext/1670751538/bth_device.o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ${OBJECTDIR}/_ext/1670746117/hid_device.o ${OBJECTDIR}/_ext/1670746117/hid_host.o ${OBJECTDIR}/_ext/253373015/midi_device.o ${OBJECTDIR}/_ext/253373015/midi_host.o ${OBJECTDIR}/_ext/1670741003/msc_device.o ${OBJECTDIR}/_ext/1670741003/msc_host.o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ${OBJECTDIR}/_ext/743682803/video_device.o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ${OBJECTDIR}/_ext/974966567/usbd.o ${OBJECTDIR}/_ext/974966567/usbd_control.o ${OBJECTDIR}/_ext/2039129785/hub.o ${OBJECTDIR}/_ext/2039129785/usbh.o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ${OBJECTDIR}/_ext/1200109192/usbc.o ${OBJECTDIR}/_ext/1226205790/tusb.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/examples/device/cdc_msc/cdc_msc_example.c ../src/examples/device/cdc_msc/msc_disk.c ../src/examples/device/cdc_msc/usb_descriptors.c ../src/third_party/tinyusb/src/class/audio/audio_device.c ../src/third_party/tinyusb/src/class/bth/bth_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_device.c ../src/third_party/tinyusb/src/class/cdc/cdc_host.c ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c ../src/third_party/tinyusb/src/class/dfu/dfu_device.c ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c ../src/third_party/tinyusb/src/class/hid/hid_device.c ../src/third_party/tinyusb/src/class/hid/hid_host.c ../src/third_party/tinyusb/src/class/midi/midi_device.c ../src/third_party/tinyusb/src/class/midi/midi_host.c ../src/third_party/tinyusb/src/class/msc/msc_device.c ../src/third_party/tinyusb/src/class/msc/msc_host.c ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c ../src/third_party/tinyusb/src/class/net/ncm_device.c ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_device.c ../src/third_party/tinyusb/src/class/vendor/vendor_host.c ../src/third_party/tinyusb/src/class/video/video_device.c ../src/third_party/tinyusb/src/common/tusb_fifo.c ../src/third_party/tinyusb/src/device/usbd.c ../src/third_party/tinyusb/src/device/usbd_control.c ../src/third_party/tinyusb/src/host/hub.c ../src/third_party/tinyusb/src/host/usbh.c ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c ../src/third_party/tinyusb/src/typec/usbc.c ../src/third_party/tinyusb/src/tusb.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-device_cdc_msc.mk ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/device_cdc_msc/6628112ca98b406557ffb099805b1c06ec023f6 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/device_cdc_msc/228391ab6c492654dc75a45c8563d853902ded6a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/device_cdc_msc/be5ec5825d0345b0be3b1bf0f62f215608358f9c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/device_cdc_msc/9e242144948b7b9bceaaa7d44bb7dde1e5dab92b .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/device_cdc_msc/bf998f5ea9cd39cd07912520d9fe18947c87eae1 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/device_cdc_msc/b3279e8959ad2fbbf686512260306d8a0c933dc3 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/device_cdc_msc/bff0d5a8e1232cf02758895622cd3740a7934b40 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/device_cdc_msc/ca91d1cc0aa9c31db81f6d78b6a257d332862b11 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/device_cdc_msc/47b2267f26e6c5e83694a3d7fe170b72e5504863 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/device_cdc_msc/e5f976aac5ef69997e02477d351b7534201827af .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/device_cdc_msc/747e0ab044184f842861bd75b48cb9e16875ba86 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/device_cdc_msc/37744a0fcf71d9bd8b3455a6740b3b014d18de7f .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/device_cdc_msc/cf72bc27c692fdc4180fa6b2cbcebd27cc1c7572 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/device_cdc_msc/dab1c58a62a44e0f652f303ff7e403b52b77377d .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/device_cdc_msc/eee856529ad70f6370213925d28230d04530e037 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/device_cdc_msc/acc016b030d793693fe8219254e83919232ec2c6 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/device_cdc_msc/b758b42ecd30a7b816be90e78137f9845836878c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/cdc_msc_example.o: ../src/examples/device/cdc_msc/cdc_msc_example.c  .generated_files/flags/device_cdc_msc/28c997fb2892fdbdff77d7a65de1c01b855d28a4 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/cdc_msc_example.o.d" -o ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o ../src/examples/device/cdc_msc/cdc_msc_example.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/msc_disk.o: ../src/examples/device/cdc_msc/msc_disk.c  .generated_files/flags/device_cdc_msc/ffe225b161a0fd02448b3e9de2d6e381d870cba7 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/msc_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/msc_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/msc_disk.o.d" -o ${OBJECTDIR}/_ext/553783987/msc_disk.o ../src/examples/device/cdc_msc/msc_disk.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/usb_descriptors.o: ../src/examples/device/cdc_msc/usb_descriptors.c  .generated_files/flags/device_cdc_msc/db31d85082a5ca12ca1a01a687ef4f9faf1201a3 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/553783987/usb_descriptors.o ../src/examples/device/cdc_msc/usb_descriptors.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724646478/audio_device.o: ../src/third_party/tinyusb/src/class/audio/audio_device.c  .generated_files/flags/device_cdc_msc/847cf1c5e6433750423359425408a79615d357ab .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724646478" 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724646478/audio_device.o.d" -o ${OBJECTDIR}/_ext/724646478/audio_device.o ../src/third_party/tinyusb/src/class/audio/audio_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751538/bth_device.o: ../src/third_party/tinyusb/src/class/bth/bth_device.c  .generated_files/flags/device_cdc_msc/6c43c9e7cfe3586de99fadb9b8dc357f6f0b0f4c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751538" 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751538/bth_device.o.d" -o ${OBJECTDIR}/_ext/1670751538/bth_device.o ../src/third_party/tinyusb/src/class/bth/bth_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_device.o: ../src/third_party/tinyusb/src/class/cdc/cdc_device.c  .generated_files/flags/device_cdc_msc/78fd6253c71c629337dd7d61b40513bc423bb196 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_device.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ../src/third_party/tinyusb/src/class/cdc/cdc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_host.c  .generated_files/flags/device_cdc_msc/12fd49c78097786b9eaae70f8134959c01247864 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c  .generated_files/flags/device_cdc_msc/1b599d95e4f0a0c1e781ad39e270a439e7b4f2cf .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_device.c  .generated_files/flags/device_cdc_msc/ffc3f00d0c11cec22616bf342bd500b7f044db6f .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c  .generated_files/flags/device_cdc_msc/101a0fe3f6cf8f70a9f663578cf8872982af2d5f .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_device.o: ../src/third_party/tinyusb/src/class/hid/hid_device.c  .generated_files/flags/device_cdc_msc/fa66effda4025b41181e7430afb8492dd3c35ed0 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_device.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_device.o ../src/third_party/tinyusb/src/class/hid/hid_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_host.o: ../src/third_party/tinyusb/src/class/hid/hid_host.c  .generated_files/flags/device_cdc_msc/e3c82a789b4de2c117d176f336b8b09530732fb5 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_host.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_host.o ../src/third_party/tinyusb/src/class/hid/hid_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_device.o: ../src/third_party/tinyusb/src/class/midi/midi_device.c  .generated_files/flags/device_cdc_msc/4ef6d22ac694da6ad107c2ee9d10e497d0099c4c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_device.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_device.o ../src/third_party/tinyusb/src/class/midi/midi_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_host.o: ../src/third_party/tinyusb/src/class/midi/midi_host.c  .generated_files/flags/device_cdc_msc/9c158a1481d8534f5aea63fcf8682a1bdfbed407 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_host.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_host.o ../src/third_party/tinyusb/src/class/midi/midi_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_device.o: ../src/third_party/tinyusb/src/class/msc/msc_device.c  .generated_files/flags/device_cdc_msc/34bf5f08f4a2284916967699fe205ceef40b41eb .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_device.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_device.o ../src/third_party/tinyusb/src/class/msc/msc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_host.o: ../src/third_party/tinyusb/src/class/msc/msc_host.c  .generated_files/flags/device_cdc_msc/b394d23b3eaf8ac9a3e30764e9148264dd7f9aff .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_host.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_host.o ../src/third_party/tinyusb/src/class/msc/msc_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o: ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c  .generated_files/flags/device_cdc_msc/4d57336dd706c67ba2720ff79f3367724e9aee81 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ncm_device.o: ../src/third_party/tinyusb/src/class/net/ncm_device.c  .generated_files/flags/device_cdc_msc/bef8281d18e9ca8fd992d438a9adfb715f8b3805 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ncm_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ../src/third_party/tinyusb/src/class/net/ncm_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1559891342/usbtmc_device.o: ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c  .generated_files/flags/device_cdc_msc/d3f35e29b0c40a7a028285f2e4938dc7c911abc3 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1559891342" 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d" -o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_device.o: ../src/third_party/tinyusb/src/class/vendor/vendor_device.c  .generated_files/flags/device_cdc_msc/71ca3db247202be8e3ce2c04d326f11bd6b2c9f4 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_device.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ../src/third_party/tinyusb/src/class/vendor/vendor_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_host.o: ../src/third_party/tinyusb/src/class/vendor/vendor_host.c  .generated_files/flags/device_cdc_msc/274039ee2dd6901ef346d28b18d4cbb2a16e8df9 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_host.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ../src/third_party/tinyusb/src/class/vendor/vendor_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/743682803/video_device.o: ../src/third_party/tinyusb/src/class/video/video_device.c  .generated_files/flags/device_cdc_msc/eaad6795b4ef722e83f5d6aa01a13e142baf3074 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743682803" 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743682803/video_device.o.d" -o ${OBJECTDIR}/_ext/743682803/video_device.o ../src/third_party/tinyusb/src/class/video/video_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/955308732/tusb_fifo.o: ../src/third_party/tinyusb/src/common/tusb_fifo.c  .generated_files/flags/device_cdc_msc/32385ab2d4abafd0dc41798019669dcad45fb550 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/955308732" 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d" -o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ../src/third_party/tinyusb/src/common/tusb_fifo.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd.o: ../src/third_party/tinyusb/src/device/usbd.c  .generated_files/flags/device_cdc_msc/3bf72ed13b1b09de1cc2827dba6740622d99ebe3 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd.o ../src/third_party/tinyusb/src/device/usbd.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd_control.o: ../src/third_party/tinyusb/src/device/usbd_control.c  .generated_files/flags/device_cdc_msc/8f509e1491f178444955d9eae88934f8ae2e015a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd_control.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd_control.o ../src/third_party/tinyusb/src/device/usbd_control.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/hub.o: ../src/third_party/tinyusb/src/host/hub.c  .generated_files/flags/device_cdc_msc/5a0c3923a877edc9e243898753106edbe1b3311a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/hub.o.d" -o ${OBJECTDIR}/_ext/2039129785/hub.o ../src/third_party/tinyusb/src/host/hub.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/usbh.o: ../src/third_party/tinyusb/src/host/usbh.c  .generated_files/flags/device_cdc_msc/b9474f7871ab347d1ab85112298ed4859f1ddcde .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/usbh.o.d" -o ${OBJECTDIR}/_ext/2039129785/usbh.o ../src/third_party/tinyusb/src/host/usbh.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o: ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c  .generated_files/flags/device_cdc_msc/6e60c1f6d4f402a4c16084a25045d73cd97ffa94 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/766633133" 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d" -o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200109192/usbc.o: ../src/third_party/tinyusb/src/typec/usbc.c  .generated_files/flags/device_cdc_msc/2d773eef3b388f5b5093ba72a379e39ce80a1e2a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200109192" 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200109192/usbc.o.d" -o ${OBJECTDIR}/_ext/1200109192/usbc.o ../src/third_party/tinyusb/src/typec/usbc.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226205790/tusb.o: ../src/third_party/tinyusb/src/tusb.c  .generated_files/flags/device_cdc_msc/1eda0ec6bafd830244a430f310e5b17d02e2654a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226205790" 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226205790/tusb.o.d" -o ${OBJECTDIR}/_ext/1226205790/tusb.o ../src/third_party/tinyusb/src/tusb.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/device_cdc_msc/b3198b07730c8c520a561c62fbf5fa5aac895ad0 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/device_cdc_msc/f8c3d4ba6ae36588677df9032be95c5beb1e5c01 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/device_cdc_msc/2e8ec303b6c5e19232b7d5ffb7934a898bdb6ec0 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/device_cdc_msc/f5d3b069fbd43399d698eed8a6ced2dd5042ecec .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/device_cdc_msc/c82ec5b9126a2c168774ea425af2f45fe69b38c4 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/device_cdc_msc/2fe37616172a538961bcaf4f4c565daacbc3914e .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/device_cdc_msc/ecca6997b13ee46275d559ce42bb14d9bd2c1536 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/device_cdc_msc/9b37b8df4228c044ab32b1374de668a7a53c9b05 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/device_cdc_msc/f2a75788c087ea7dfb9661ce2459e5a6a11ca24a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/device_cdc_msc/eb32f0b17a74e6b7b0efdd3ead56415686935570 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/device_cdc_msc/3b82282d681334f8819310ab88f7e37491ebab05 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/device_cdc_msc/4b0ed4c14aa4200978f5369ecbd996eb72c1dc29 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/device_cdc_msc/53f6d1343482a51005dd8d6fb5c06da48bf7c85f .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/device_cdc_msc/e7294107ccc87c9703b8a4a7be9eae2d47f4891f .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/device_cdc_msc/d1f30585a5a80d0ed4c4b08a5e53a1b703c8bb19 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/device_cdc_msc/f50955a30781267298d590e3d33ecb98c9cfd43e .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/device_cdc_msc/cc642d5b8aed58d71c5456ff2664fb8cc17b02f3 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/device_cdc_msc/c13db21c37e1bb9c896f29514afef126ed545631 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/device_cdc_msc/191567749428815063d63e0a92bf892bc78825aa .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/cdc_msc_example.o: ../src/examples/device/cdc_msc/cdc_msc_example.c  .generated_files/flags/device_cdc_msc/c0083935dc7d3988d0b0873040900d09a2dd51ab .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/cdc_msc_example.o.d" -o ${OBJECTDIR}/_ext/553783987/cdc_msc_example.o ../src/examples/device/cdc_msc/cdc_msc_example.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/msc_disk.o: ../src/examples/device/cdc_msc/msc_disk.c  .generated_files/flags/device_cdc_msc/ef2cb8ef1eec23b47e8978285a4292e23f455b3b .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/msc_disk.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/msc_disk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/msc_disk.o.d" -o ${OBJECTDIR}/_ext/553783987/msc_disk.o ../src/examples/device/cdc_msc/msc_disk.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/553783987/usb_descriptors.o: ../src/examples/device/cdc_msc/usb_descriptors.c  .generated_files/flags/device_cdc_msc/c31680bde3f84646321235b22184030d31b1dddc .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553783987" 
	@${RM} ${OBJECTDIR}/_ext/553783987/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/553783987/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553783987/usb_descriptors.o.d" -o ${OBJECTDIR}/_ext/553783987/usb_descriptors.o ../src/examples/device/cdc_msc/usb_descriptors.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/724646478/audio_device.o: ../src/third_party/tinyusb/src/class/audio/audio_device.c  .generated_files/flags/device_cdc_msc/a3bec283a04c4b942e002b4a911bb6d955f5bd95 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/724646478" 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/724646478/audio_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/724646478/audio_device.o.d" -o ${OBJECTDIR}/_ext/724646478/audio_device.o ../src/third_party/tinyusb/src/class/audio/audio_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751538/bth_device.o: ../src/third_party/tinyusb/src/class/bth/bth_device.c  .generated_files/flags/device_cdc_msc/d3c93fcfe4553fbe85b0d4755b9ed4afc556c376 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751538" 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751538/bth_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751538/bth_device.o.d" -o ${OBJECTDIR}/_ext/1670751538/bth_device.o ../src/third_party/tinyusb/src/class/bth/bth_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_device.o: ../src/third_party/tinyusb/src/class/cdc/cdc_device.c  .generated_files/flags/device_cdc_msc/1652a011b4c47c3848e97d59fe7a9a45b1b97227 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_device.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_device.o ../src/third_party/tinyusb/src/class/cdc/cdc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_host.c  .generated_files/flags/device_cdc_msc/bc05888097db863550279dfaacd32b40b1febc1a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o: ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c  .generated_files/flags/device_cdc_msc/b8f3896404ec97ba770cc833e5d3665192e14bfc .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670751078" 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o.d" -o ${OBJECTDIR}/_ext/1670751078/cdc_rndis_host.o ../src/third_party/tinyusb/src/class/cdc/cdc_rndis_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_device.c  .generated_files/flags/device_cdc_msc/4f5a052da10e16d233c0a52146ccb9efc54e9ab0 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o: ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c  .generated_files/flags/device_cdc_msc/5fc757050cb56c82238a5fd9d38a790df41b4af .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670750037" 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o.d" -o ${OBJECTDIR}/_ext/1670750037/dfu_rt_device.o ../src/third_party/tinyusb/src/class/dfu/dfu_rt_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_device.o: ../src/third_party/tinyusb/src/class/hid/hid_device.c  .generated_files/flags/device_cdc_msc/b375928f23e300fa6fe6230f229e4075f51edbce .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_device.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_device.o ../src/third_party/tinyusb/src/class/hid/hid_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670746117/hid_host.o: ../src/third_party/tinyusb/src/class/hid/hid_host.c  .generated_files/flags/device_cdc_msc/b9de8f15e336a40881e958d2f069b0222a49852b .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670746117" 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670746117/hid_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670746117/hid_host.o.d" -o ${OBJECTDIR}/_ext/1670746117/hid_host.o ../src/third_party/tinyusb/src/class/hid/hid_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_device.o: ../src/third_party/tinyusb/src/class/midi/midi_device.c  .generated_files/flags/device_cdc_msc/cfa73a77fb7d744457cc9e589f7168729c32145a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_device.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_device.o ../src/third_party/tinyusb/src/class/midi/midi_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/253373015/midi_host.o: ../src/third_party/tinyusb/src/class/midi/midi_host.c  .generated_files/flags/device_cdc_msc/c3f9c669dd5d77e49e0e09411ba4a25c980deef7 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/253373015" 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/253373015/midi_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253373015/midi_host.o.d" -o ${OBJECTDIR}/_ext/253373015/midi_host.o ../src/third_party/tinyusb/src/class/midi/midi_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_device.o: ../src/third_party/tinyusb/src/class/msc/msc_device.c  .generated_files/flags/device_cdc_msc/ba37cde40e909a390feee37fe5da6aecf68cf4a .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_device.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_device.o ../src/third_party/tinyusb/src/class/msc/msc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670741003/msc_host.o: ../src/third_party/tinyusb/src/class/msc/msc_host.c  .generated_files/flags/device_cdc_msc/175b907474a3f6bb13a21807255255f7644358a9 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670741003" 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670741003/msc_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670741003/msc_host.o.d" -o ${OBJECTDIR}/_ext/1670741003/msc_host.o ../src/third_party/tinyusb/src/class/msc/msc_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o: ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c  .generated_files/flags/device_cdc_msc/9400b4794d2da752f33dc699b2401a3e8b593674 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ecm_rndis_device.o ../src/third_party/tinyusb/src/class/net/ecm_rndis_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1670740459/ncm_device.o: ../src/third_party/tinyusb/src/class/net/ncm_device.c  .generated_files/flags/device_cdc_msc/4ead6f4507cea31733cd1e03d3955748dd8fc33 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1670740459" 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1670740459/ncm_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1670740459/ncm_device.o.d" -o ${OBJECTDIR}/_ext/1670740459/ncm_device.o ../src/third_party/tinyusb/src/class/net/ncm_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1559891342/usbtmc_device.o: ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c  .generated_files/flags/device_cdc_msc/5d1e03c5d07eacc7395bfc276e50779838bae243 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1559891342" 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559891342/usbtmc_device.o.d" -o ${OBJECTDIR}/_ext/1559891342/usbtmc_device.o ../src/third_party/tinyusb/src/class/usbtmc/usbtmc_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_device.o: ../src/third_party/tinyusb/src/class/vendor/vendor_device.c  .generated_files/flags/device_cdc_msc/7c06aafa9a4e15ede17bcc110f649eff6d6eafdf .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_device.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_device.o ../src/third_party/tinyusb/src/class/vendor/vendor_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1575933392/vendor_host.o: ../src/third_party/tinyusb/src/class/vendor/vendor_host.c  .generated_files/flags/device_cdc_msc/49e2c2c83ee9319318e264b4d194c91a003f0a59 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1575933392" 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1575933392/vendor_host.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1575933392/vendor_host.o.d" -o ${OBJECTDIR}/_ext/1575933392/vendor_host.o ../src/third_party/tinyusb/src/class/vendor/vendor_host.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/743682803/video_device.o: ../src/third_party/tinyusb/src/class/video/video_device.c  .generated_files/flags/device_cdc_msc/d6df9b4004e1ee1a9f31d69250af1382dd76c167 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743682803" 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/743682803/video_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743682803/video_device.o.d" -o ${OBJECTDIR}/_ext/743682803/video_device.o ../src/third_party/tinyusb/src/class/video/video_device.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/955308732/tusb_fifo.o: ../src/third_party/tinyusb/src/common/tusb_fifo.c  .generated_files/flags/device_cdc_msc/3afdeb0e80f2b2718f6a1df8fbcfacbee1cf8342 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/955308732" 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/955308732/tusb_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/955308732/tusb_fifo.o.d" -o ${OBJECTDIR}/_ext/955308732/tusb_fifo.o ../src/third_party/tinyusb/src/common/tusb_fifo.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd.o: ../src/third_party/tinyusb/src/device/usbd.c  .generated_files/flags/device_cdc_msc/8e1c4ff5caa8ef74bfae4ed44b44711c5c6e9337 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd.o ../src/third_party/tinyusb/src/device/usbd.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/974966567/usbd_control.o: ../src/third_party/tinyusb/src/device/usbd_control.c  .generated_files/flags/device_cdc_msc/97f2daf2cc8ae72647c20487a60819cbb9afcf0c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/974966567" 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/974966567/usbd_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/974966567/usbd_control.o.d" -o ${OBJECTDIR}/_ext/974966567/usbd_control.o ../src/third_party/tinyusb/src/device/usbd_control.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/hub.o: ../src/third_party/tinyusb/src/host/hub.c  .generated_files/flags/device_cdc_msc/713ae86af7bf1f5fbd94e37d6b114b118ff4936c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/hub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/hub.o.d" -o ${OBJECTDIR}/_ext/2039129785/hub.o ../src/third_party/tinyusb/src/host/hub.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2039129785/usbh.o: ../src/third_party/tinyusb/src/host/usbh.c  .generated_files/flags/device_cdc_msc/8a4ea4f6308d3cc1dcbb72410af0880c5f858531 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2039129785" 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o.d 
	@${RM} ${OBJECTDIR}/_ext/2039129785/usbh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2039129785/usbh.o.d" -o ${OBJECTDIR}/_ext/2039129785/usbh.o ../src/third_party/tinyusb/src/host/usbh.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o: ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c  .generated_files/flags/device_cdc_msc/5f4611828b0cd1a8238242cc7d0e982d36a39096 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/766633133" 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d 
	@${RM} ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o.d" -o ${OBJECTDIR}/_ext/766633133/dcd_mchp_g1.o ../src/third_party/tinyusb/src/portable/microchip/dcd_mchp_g1.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200109192/usbc.o: ../src/third_party/tinyusb/src/typec/usbc.c  .generated_files/flags/device_cdc_msc/66a07152a96019efdddf4c72c86d1862674b14fd .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200109192" 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200109192/usbc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200109192/usbc.o.d" -o ${OBJECTDIR}/_ext/1200109192/usbc.o ../src/third_party/tinyusb/src/typec/usbc.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226205790/tusb.o: ../src/third_party/tinyusb/src/tusb.c  .generated_files/flags/device_cdc_msc/2468033776ca977498d86e6f99fe3bdc3ab28335 .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226205790" 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226205790/tusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1226205790/tusb.o.d" -o ${OBJECTDIR}/_ext/1226205790/tusb.o ../src/third_party/tinyusb/src/tusb.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/device_cdc_msc/902c24fd5e4304c70c57c969b04d97346b8c8e0e .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/device_cdc_msc/d626822889e63f729b470704bdb3982121c31f2c .generated_files/flags/device_cdc_msc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/examples/device/cdc_msc" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -I"../src/third_party/tinyusb/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_device_cdc_msc=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
