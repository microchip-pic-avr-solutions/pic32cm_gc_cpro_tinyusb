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
ifeq "$(wildcard nbproject/Makefile-local-pic32cm_gc_cpro.mk)" "nbproject/Makefile-local-pic32cm_gc_cpro.mk"
include nbproject/Makefile-local-pic32cm_gc_cpro.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32cm_gc_cpro
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1969130078/bsp.o.d ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d ${OBJECTDIR}/_ext/205145811/plib_port.o.d ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d ${OBJECTDIR}/_ext/388649371/sys_int.o.d ${OBJECTDIR}/_ext/1540765102/initialization.o.d ${OBJECTDIR}/_ext/1540765102/interrupts.o.d ${OBJECTDIR}/_ext/1540765102/exceptions.o.d ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d ${OBJECTDIR}/_ext/1540765102/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1969130078/bsp.o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ${OBJECTDIR}/_ext/205145811/plib_port.o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ${OBJECTDIR}/_ext/388649371/sys_int.o ${OBJECTDIR}/_ext/1540765102/initialization.o ${OBJECTDIR}/_ext/1540765102/interrupts.o ${OBJECTDIR}/_ext/1540765102/exceptions.o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ${OBJECTDIR}/_ext/1540765102/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/pic32cm_gc_cpro/bsp/bsp.c ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c ../src/config/pic32cm_gc_cpro/initialization.c ../src/config/pic32cm_gc_cpro/interrupts.c ../src/config/pic32cm_gc_cpro/exceptions.c ../src/config/pic32cm_gc_cpro/startup_xc32.c ../src/config/pic32cm_gc_cpro/libc_syscalls.c ../src/config/pic32cm_gc_cpro/tasks.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-pic32cm_gc_cpro.mk ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/pic32cm_gc_cpro/1b25c2d7e219ce6643494b00c164001c645cd23f .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_gc_cpro/b3bc97e2ea2f8ebc950982b492ed95334faa9e2e .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/pic32cm_gc_cpro/73a71af304727e5a76b75f67f9ade31274e15870 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_gc_cpro/8442ca702345a2da92322a50c3bc68085c437614 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_gc_cpro/43c660a072a7e4e55c1a1ee47d35a2546b1f93ec .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/pic32cm_gc_cpro/30e6ed926734a69b746fdd197025a9184a932bb2 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_gc_cpro/af0c239c2f319071328fd2426626c758c77aeaef .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/pic32cm_gc_cpro/5d196bbc868adb84d3b8c1807a8fc9ea22a30822 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/pic32cm_gc_cpro/a1bb831731c566dd164118ba6b9ab051df7a41eb .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_gc_cpro/be8d7cc18bc605a5939ab8dcd9f6c1b9076fefa9 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/pic32cm_gc_cpro/2f7a556a2641104ffc0f5399121197c2465c0423 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/pic32cm_gc_cpro/f9d94364c49939226f5464f16fccc44c4d35caff .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/pic32cm_gc_cpro/ae339f3da2f8b1e68ff7a5d0dabe0eaf1b4addf6 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/pic32cm_gc_cpro/88e50b05222a694167f590abfe3728aa01015d99 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/pic32cm_gc_cpro/a3c12b1cbf685b6bf360fa1abac408d53526e677 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/pic32cm_gc_cpro/ea41830ef444baf6361a8b0e776b23dda9010df2 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/pic32cm_gc_cpro/9ea67fa3bb2f2225c12c4750e21219bff957276a .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_gc_cpro/21b0b9fea1cd4644602e9701cfda5a967c748888 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32cm_gc_cpro/bda9f648090430f8ff5849d81c66311e119fef49 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1969130078/bsp.o: ../src/config/pic32cm_gc_cpro/bsp/bsp.c  .generated_files/flags/pic32cm_gc_cpro/11c93ecbee5fed528ba2d32d5a978e822a5dfc6 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1969130078" 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1969130078/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1969130078/bsp.o.d" -o ${OBJECTDIR}/_ext/1969130078/bsp.o ../src/config/pic32cm_gc_cpro/bsp/bsp.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2052454396/plib_clock.o: ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_gc_cpro/7179ad2aa5b7299d739efb4aed28d3346d219b4 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2052454396" 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2052454396/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2052454396/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2052454396/plib_clock.o ../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2084816813/plib_eic.o: ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c  .generated_files/flags/pic32cm_gc_cpro/8fe21c0c7948b23370c374974d8cd4687fc99b43 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084816813" 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084816813/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2084816813/plib_eic.o.d" -o ${OBJECTDIR}/_ext/2084816813/plib_eic.o ../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2054603882/plib_evsys.o: ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_gc_cpro/1725d4f6fbf10fa186b611cca6bbf40f29638ab6 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2054603882" 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2054603882/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2054603882/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2054603882/plib_evsys.o ../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205092660/plib_nvic.o: ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_gc_cpro/3771cf35f9ede9ffa3d68705522e7a1dcaec4847 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205092660" 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/205092660/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205092660/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/205092660/plib_nvic.o ../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2145462479/plib_pm.o: ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c  .generated_files/flags/pic32cm_gc_cpro/525616fd0a7618e684fb6865652e8ca7cb4b9bd9 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2145462479" 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2145462479/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2145462479/plib_pm.o.d" -o ${OBJECTDIR}/_ext/2145462479/plib_pm.o ../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/205145811/plib_port.o: ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_gc_cpro/6f228b341768f4b2c1b19fd1c72018fc1c0eabad .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/205145811" 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205145811/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/205145811/plib_port.o.d" -o ${OBJECTDIR}/_ext/205145811/plib_port.o ../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o: ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c  .generated_files/flags/pic32cm_gc_cpro/bac60a8ea8d28deca1084b7f30f8d17da0236222 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1914326249" 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o.d" -o ${OBJECTDIR}/_ext/1914326249/plib_sercom4_usart.o ../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1584743848/plib_systick.o: ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c  .generated_files/flags/pic32cm_gc_cpro/6cbdf5d0cc774f6037b1f3c23d4e990b273978cb .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1584743848" 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1584743848/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1584743848/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1584743848/plib_systick.o ../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1730851096/xc32_monitor.o: ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_gc_cpro/e9c678c8818459122d51801a867ac7e9d9f90043 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1730851096" 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1730851096/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1730851096/xc32_monitor.o ../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/388649371/sys_int.o: ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c  .generated_files/flags/pic32cm_gc_cpro/de1157d6bd87b6569cf2a61e243b9090b972c446 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388649371" 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/388649371/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/388649371/sys_int.o.d" -o ${OBJECTDIR}/_ext/388649371/sys_int.o ../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/initialization.o: ../src/config/pic32cm_gc_cpro/initialization.c  .generated_files/flags/pic32cm_gc_cpro/5ae6cbd415387989c20dd8bcbfe70e68b8ed94e3 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/initialization.o.d" -o ${OBJECTDIR}/_ext/1540765102/initialization.o ../src/config/pic32cm_gc_cpro/initialization.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/interrupts.o: ../src/config/pic32cm_gc_cpro/interrupts.c  .generated_files/flags/pic32cm_gc_cpro/33e7c99e63c601de9a69f4b485c67e5c78b1a645 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/interrupts.o.d" -o ${OBJECTDIR}/_ext/1540765102/interrupts.o ../src/config/pic32cm_gc_cpro/interrupts.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/exceptions.o: ../src/config/pic32cm_gc_cpro/exceptions.c  .generated_files/flags/pic32cm_gc_cpro/f41d39b8c3025e398662bba0aa91fbd57a09b853 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/exceptions.o.d" -o ${OBJECTDIR}/_ext/1540765102/exceptions.o ../src/config/pic32cm_gc_cpro/exceptions.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/startup_xc32.o: ../src/config/pic32cm_gc_cpro/startup_xc32.c  .generated_files/flags/pic32cm_gc_cpro/f74f27618e2d765abdbec0bb8568aa07e41b2401 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1540765102/startup_xc32.o ../src/config/pic32cm_gc_cpro/startup_xc32.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/libc_syscalls.o: ../src/config/pic32cm_gc_cpro/libc_syscalls.c  .generated_files/flags/pic32cm_gc_cpro/a417a1ec52c0d63348471d55406053cd0bea7b8f .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1540765102/libc_syscalls.o ../src/config/pic32cm_gc_cpro/libc_syscalls.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1540765102/tasks.o: ../src/config/pic32cm_gc_cpro/tasks.c  .generated_files/flags/pic32cm_gc_cpro/e3e21c5107eac2f115b48be1b39f4454863208e5 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1540765102" 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1540765102/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1540765102/tasks.o.d" -o ${OBJECTDIR}/_ext/1540765102/tasks.o ../src/config/pic32cm_gc_cpro/tasks.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_gc_cpro/5d1c4ca6f4354a585526c6c3fb4ba05f58d03e41 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32cm_gc_cpro/af382f906b8250dd7eeb8942d3ea8ca5bb8a2eb9 .generated_files/flags/pic32cm_gc_cpro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DEXCLUDE_TINYUSB=1 -I"../src" -I"../src/config/pic32cm_gc_cpro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5112GC00100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_gc_cpro_tinyusb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_gc_cpro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
