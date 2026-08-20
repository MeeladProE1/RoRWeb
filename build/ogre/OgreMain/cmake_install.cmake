# Install script for directory: C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMainStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMainStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMainStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/a1e/Tests/c1e/C2e/build/ogre/lib/libOgreMainStatic.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Ogre.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreASTCCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAlignedAllocator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAnimable.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAnimation.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAnimationState.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAnimationTrack.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAny.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreArchive.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreArchiveFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreArchiveManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAtomicScalar.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAutoParamDataSource.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreAxisAlignedBox.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBillboard.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBillboardChain.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBillboardParticleRenderer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBillboardSet.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBitwise.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBlendMode.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreBone.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCamera.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreColourValue.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCommon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositionPass.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositionTargetPass.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositionTechnique.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositor.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositorChain.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositorInstance.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositorLogic.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCompositorManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreConfig.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreConfigDialog.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreConfigFile.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreConfigOptionMap.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreController.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreControllerManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreConvexBody.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreCustomCompositionPass.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDataStream.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDefaultDebugDrawer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDefaultHardwareBufferManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDeflate.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDepthBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDistanceLodStrategy.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDualQuaternion.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDynLib.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDynLibManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreEdgeListBuilder.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreEntity.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreException.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreExternalTextureSource.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreExternalTextureSourceManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreFactoryObj.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreFileSystem.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreFileSystemLayer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreFrameListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreFrustum.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreGpuProgram.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreGpuProgramManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreGpuProgramParams.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreGpuProgramUsage.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareBufferManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareCounterBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareIndexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareOcclusionQuery.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwarePixelBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareUniformBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHardwareVertexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHeaderPrefix.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHeaderSuffix.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHighLevelGpuProgram.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreHighLevelGpuProgramManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreImage.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreImageCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceBatch.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceBatchHW.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceBatchHW_VTF.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceBatchShader.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceBatchVTF.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstanceManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreInstancedEntity.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreIteratorWrapper.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreIteratorWrappers.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreKeyFrame.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLight.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLodListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLodStrategy.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLodStrategyManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLog.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreLogManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreManualObject.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMaterial.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMaterialManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMaterialSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMath.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMatrix3.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMatrix4.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMemoryAllocatorConfig.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMeshFileFormat.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMeshManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMeshSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMovableObject.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMovablePlane.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreMurmurHash3.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreNameGenerator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreNode.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreNumerics.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreOptimisedUtil.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticle.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleAffector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleAffectorFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleEmitter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleEmitterFactory.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleIterator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleSystem.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleSystemManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreParticleSystemRenderer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePass.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePatchMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePatchSurface.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePixelCountLodStrategy.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePixelFormat.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePlane.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePlaneBoundedVolume.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePlatform.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePlatformInformation.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePlugin.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePolygon.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePose.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePredefinedControllers.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgrePrerequisites.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreProfiler.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreQuaternion.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRadixSort.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRay.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRectangle2D.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderObjectListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderOperation.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderQueue.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderQueueInvocation.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderQueueListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderQueueSortingGrouping.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderSystem.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderSystemCapabilities.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderSystemCapabilitiesManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderSystemCapabilitiesSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderTarget.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderTargetListener.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderTexture.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderToVertexBuffer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderWindow.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRenderable.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreResource.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreResourceBackgroundQueue.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreResourceGroupManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreResourceManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRibbonTrail.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRoot.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreRotationalSpline.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneLoader.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneLoaderManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneManagerEnumerator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneNode.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSceneQuery.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreScriptCompiler.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreScriptLoader.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreScriptTranslator.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSearchOps.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCameraSetup.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCameraSetupFocused.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCameraSetupLiSPSM.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCameraSetupPSSM.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCameraSetupPlaneOptimal.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreShadowCaster.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSharedPtr.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSimpleRenderable.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSimpleSpline.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSingleton.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSkeleton.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSkeletonFileFormat.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSkeletonInstance.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSkeletonManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSkeletonSerializer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSphere.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStaticFaceGroup.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStaticGeometry.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStdHeaders.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStreamSerialiser.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreString.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStringConverter.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStringInterface.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreStringVector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSubEntity.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreSubMesh.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTagPoint.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTangentSpaceCalc.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTechnique.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTexture.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTextureManager.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTextureUnitState.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreTimer.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreUnifiedHighLevelGpuProgram.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreUserObjectBindings.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVector.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVector2.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVector3.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVector4.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVertexBoneAssignment.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreVertexIndexData.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreViewport.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreWireBoundingBox.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreWorkQueue.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreBuildSettings.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreComponents.h"
    "C:/a1e/Tests/c1e/C2e/build/ogre/include/OgreExports.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Ogre.i"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueue.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefines.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesBoost.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesNone.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesPoco.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesSTD.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeaders.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersBoost.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersPoco.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersSTD.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesNone.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreDDSCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreETCCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreASTCCodec.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/OgreZip.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Threading" TYPE FILE FILES
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueue.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefines.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesBoost.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesNone.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesPoco.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesSTD.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeaders.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersBoost.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersPoco.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersSTD.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadHeadersTBB.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreThreadDefinesNone.h"
    "C:/a1e/Tests/c1e/C2e/source/ogre/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    )
endif()

