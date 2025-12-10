# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/c14626/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(pic32cm_gc_cpro_tinyusb_device_hid_composite_device_hid_composite_XC32_assemble_rule target)
    set(options
        "-g"
        "${ASSEMBLER_PRE}"
        "-mprocessor=32CM5112GC00100"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--gdwarf-2,-I${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-GC00_DFP/1.0.27")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "__DEBUG=1")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(pic32cm_gc_cpro_tinyusb_device_hid_composite_device_hid_composite_XC32_assembleWithPreprocess_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "${MP_EXTRA_AS_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-GC00_DFP/1.0.27"
        "-mprocessor=32CM5112GC00100"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I${CMAKE_CURRENT_SOURCE_DIR}/../../..")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_device_hid_composite=device_hid_composite")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
endfunction()
function(pic32cm_gc_cpro_tinyusb_device_hid_composite_device_hid_composite_XC32_compile_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "-x"
        "c"
        "-c"
        "-mprocessor=32CM5112GC00100"
        "-ffunction-sections"
        "-fdata-sections"
        "-O1"
        "-fno-common"
        "-Wall"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-GC00_DFP/1.0.27")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_device_hid_composite=device_hid_composite")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro"
        PRIVATE "../src/packs/CMSIS"
        PRIVATE "../src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/packs/PIC32CM5112GC00100_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/examples/device/hid_composite"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/third_party/tinyusb/src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/6.1.0/CMSIS/Core/Include")
endfunction()
function(pic32cm_gc_cpro_tinyusb_device_hid_composite_device_hid_composite_XC32_compile_cpp_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=32CM5112GC00100"
        "-frtti"
        "-fexceptions"
        "-fno-check-new"
        "-fenforce-eh-specs"
        "-ffunction-sections"
        "-O1"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-GC00_DFP/1.0.27")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_device_hid_composite=device_hid_composite")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src"
        PRIVATE "../src/config/device_msc_cdc"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro"
        PRIVATE "../src/packs/CMSIS"
        PRIVATE "../src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/packs/PIC32CM5112GC00100_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../.."
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/6.1.0/CMSIS/Core/Include")
endfunction()
function(pic32cm_gc_cpro_tinyusb_device_hid_composite_link_rule target)
    set(options
        "-g"
        "${MP_EXTRA_LD_PRE}"
        "${DEBUGGER_OPTION_TO_LINKER}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=32CM5112GC00100"
        "-mno-device-startup-code"
        "-Wl,--defsym=__MPLAB_BUILD=1${MP_EXTRA_LD_POST},--script=${pic32cm_gc_cpro_tinyusb_device_hid_composite_LINKER_SCRIPT},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=512,--gc-sections,-L${CMAKE_CURRENT_SOURCE_DIR}/../../..,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-GC00_DFP/1.0.27")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_device_hid_composite=device_hid_composite")
endfunction()
