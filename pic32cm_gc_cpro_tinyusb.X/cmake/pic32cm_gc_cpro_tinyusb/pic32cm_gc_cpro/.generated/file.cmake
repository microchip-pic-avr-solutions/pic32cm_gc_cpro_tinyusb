# The following variables contains the files used by the different stages of the build process.
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assemble)
set_source_files_properties(${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assembleWithPreprocess)
set_source_files_properties(${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assembleWithPreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_assembleWithPreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/app.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/bsp/bsp.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/exceptions.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/initialization.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/interrupts.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/libc_syscalls.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/clock/plib_clock.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/eic/plib_eic.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/evsys/plib_evsys.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/nvic/plib_nvic.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/pm/plib_pm.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/port/plib_port.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/sercom/usart/plib_sercom4_usart.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/peripheral/systick/plib_systick.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/startup_xc32.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/stdio/xc32_monitor.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/system/int/src/sys_int.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/tasks.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/main.c")
set_source_files_properties(${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_compile_cpp)
set_source_files_properties(${pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_compile_cpp} PROPERTIES LANGUAGE CXX)
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_pic32cm_gc_cpro_XC32_FILE_TYPE_link)

# The linker script used for the build.
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../src/config/pic32cm_gc_cpro/PIC32CM5112GC00100.ld")
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_image_name "pic32cm_gc_cpro.elf")
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_image_base_name "pic32cm_gc_cpro")


# The output directory of the final image.
set(pic32cm_gc_cpro_tinyusb_pic32cm_gc_cpro_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/pic32cm_gc_cpro_tinyusb")
