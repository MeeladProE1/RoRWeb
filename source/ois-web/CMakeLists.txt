cmake_minimum_required(VERSION 3.16)
project(OIS)

add_library(OIS STATIC src/OISWeb.cpp)

target_include_directories(OIS PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/includes>
    $<INSTALL_INTERFACE:include/OIS>
)

install(TARGETS OIS ARCHIVE DESTINATION lib)
install(DIRECTORY includes/ DESTINATION include/OIS FILES_MATCHING PATTERN "*.h")
