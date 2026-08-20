# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libPlugin_ParticleFXStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libPlugin_ParticleFXStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libPlugin_ParticleFXStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/OGRE" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libPlugin_ParticleFXStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Plugins/ParticleFX" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreAreaEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreBoxEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreBoxEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourFaderAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourFaderAffector2.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory2.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourImageAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourImageAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourInterpolatorAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreColourInterpolatorAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreCylinderEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreCylinderEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreEllipsoidEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreEllipsoidEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreLinearForceAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreLinearForceAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreParticleFXPlugin.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgrePointEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgrePointEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreRingEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreRingEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreRotationAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreRotationAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreScaleAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/PlugIns/ParticleFX/include/OgreScaleAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreParticleFXPrerequisites.h"
    )
endif()

