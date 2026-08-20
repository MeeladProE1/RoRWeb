# Install script for directory: C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/b/zzip/zziplib.pc"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/b/zzip/zzipmmapped.pc"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/b/zzip/zzipfseeko.pc"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/zzip" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/lib.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/zzip.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/format.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/types.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/conf.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/_msvc.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/file.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/info.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/plugin.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/write.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/fetch.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/stdint.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/zzip32.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/zzip/autoconf.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/b/zzip/_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/zziplib-0.13.71/b/zzip/libzzip-0.a")
endif()

