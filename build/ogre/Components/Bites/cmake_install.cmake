# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites

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
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreBitesStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreBitesStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreBitesStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreBitesStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Bites" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreAdvancedRenderControls.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreApplicationContext.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreApplicationContextBase.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreApplicationContextQt.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreBitesConfigDialog.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreCameraMan.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreImGuiInputListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreInput.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreSGTechniqueResolverListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreStaticPluginLoader.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreTrays.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreWindowEventUtilities.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreBitesPrerequisites.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/Bites/include/OgreBites.i"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OGRE/Media/packs" TYPE FILE FILES "C:/a1e/Tests/c1e/C2e/source/ogre/Media/packs/SdkTrays.zip")
endif()

