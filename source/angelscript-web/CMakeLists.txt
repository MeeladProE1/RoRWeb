cmake_minimum_required(VERSION 3.16)
project(Angelscript)

set(AS_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../angelscript/sdk/angelscript/source")
set(AS_INC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../angelscript/sdk/angelscript/include")

file(GLOB AS_SOURCES "${AS_SRC_DIR}/*.cpp")

# Remove platform-specific calling-convention implementations.
# as_callfunc.cpp pulls in the right one via #include; on WebAssembly we use
# the generic calling convention (AS_MAX_PORTABILITY).
list(FILTER AS_SOURCES EXCLUDE REGEX "as_callfunc_(arm|arm64|e2k|mips|ppc|riscv64|sh4|x64|x86|xenon)\\.cpp$")

add_library(angelscript STATIC ${AS_SOURCES})
target_include_directories(angelscript PUBLIC ${AS_INC_DIR})
target_compile_definitions(angelscript PUBLIC AS_MAX_PORTABILITY)

set_target_properties(angelscript PROPERTIES OUTPUT_NAME angelscript)

install(TARGETS angelscript ARCHIVE DESTINATION lib)
install(DIRECTORY ${AS_INC_DIR}/ DESTINATION include FILES_MATCHING PATTERN "*.h")

# Minimal config package for find_package(Angelscript) used by Rigs of Rods.
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/AngelscriptConfig.cmake" [[
if(NOT TARGET Angelscript::angelscript)
    add_library(Angelscript::angelscript STATIC IMPORTED)
    set_target_properties(Angelscript::angelscript PROPERTIES
        IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/../../../lib/libangelscript.a"
        INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/../../../include")
endif()
set(Angelscript_FOUND TRUE)
set(Angelscript_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../include")
set(Angelscript_LIBRARIES Angelscript::angelscript)
]])
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/AngelscriptConfig.cmake" DESTINATION lib/cmake/Angelscript)
