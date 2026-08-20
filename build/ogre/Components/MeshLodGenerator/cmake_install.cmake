# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMeshLodGeneratorStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMeshLodGeneratorStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMeshLodGeneratorStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMeshLodGeneratorStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/MeshLodGenerator" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLod0Stripifier.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapseCost.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapseCostCurvature.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapseCostOutside.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapseCostProfiler.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapseCostQuadric.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodCollapser.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodConfig.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodConfigSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodData.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodInputProvider.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodInputProviderBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodInputProviderMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutputProvider.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutputProviderBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutputProviderCompressedBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutputProviderCompressedMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutputProviderMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodOutsideMarker.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodPrerequisites.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodWorkQueueInjector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodWorkQueueInjectorListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodWorkQueueRequest.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreLodWorkQueueWorker.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreMeshLodGenerator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreSmallVector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreVectorSet.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/Components/MeshLodGenerator/include/OgreVectorSetImpl.h"
    )
endif()

