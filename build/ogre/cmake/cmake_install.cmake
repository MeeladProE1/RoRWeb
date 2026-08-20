# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/CMake

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Utils/FindPkgMacros.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE/cmake" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindCg.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindDirectX.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindDirectX11.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindFreeImage.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindOpenGLES2.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindZZip.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindSoftimage.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindGLSLOptimizer.cmake"
    "C:/a1e/Tests/c1e/C2e/source/ogre/CMake/Packages/FindHLSL2GLSL.cmake"
    )
endif()

