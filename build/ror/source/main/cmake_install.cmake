# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ror/source/main

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/a1e/Tests/c1e/C2e/build/deps")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/MinGW/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Game" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/a1e/Tests/c1e/C2e/build/ror/bin/RoR.js")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./RoR.js" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./RoR.js")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/MinGW/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./RoR.js")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Game" OR NOT CMAKE_INSTALL_COMPONENT)
  include("C:/a1e/Tests/c1e/C2e/build/ror/source/main/CMakeFiles/RoR.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Game" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/languages" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/source/ror/resources/fonts/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Game" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/languages" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/source/ror/languages/" FILES_MATCHING REGEX "/[^/]*\\.mo$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Game" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/resources" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/build/ror/bin//resources/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Base_Content" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/content" TYPE DIRECTORY FILES "C:/a1e/Tests/c1e/C2e/build/ror/bin//content/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE RENAME "plugins.cfg" FILES "C:/a1e/Tests/c1e/C2e/build/ror/source/main/plugins-install.cfg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE PROGRAM FILES "C:/a1e/Tests/c1e/C2e/source/ror/tools/linux/RunRoR")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/source/ror/tools/linux/.itch.toml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(GLOB_RECURSE files C:/a1e/Tests/c1e/C2e/build/ror/bin//*.so)
            file(INSTALL ${files} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib FOLLOW_SYMLINK_CHAIN)
endif()

