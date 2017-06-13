# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingOpenGL2-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingOpenGL2-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/cameron/Projects/nibbler-1/lib/vtk/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/CMakeFiles/vtkRenderingOpenGL2.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGL.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/vtkTDxConfigure.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/vtkOpenGLError.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/vtkRenderingOpenGLConfigure.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/vtkRenderingOpenGL2ObjectFactory.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkCameraPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkClearRGBPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkClearZPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkCompositePolyDataMapper2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDefaultPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDepthOfFieldPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDepthImageProcessingPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDepthPeelingPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkEDLShading.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkFrameBufferObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkGaussianBlurPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkGenericCompositePolyDataMapper2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkGenericOpenGLRenderWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkImageProcessingPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkLightingMapPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkLightsPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpaquePass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLBufferObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLCamera.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLGlyph3DHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLGlyph3DMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLHardwareSelector.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLImageMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLImageSliceMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLIndexBufferObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLLabeledContourMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLLight.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLPointGaussianMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLPolyDataMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLPolyDataMapper2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLRenderWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLRenderUtilities.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLRenderer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLShaderCache.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLTexture.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLVertexArrayObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOpenGLVertexBufferObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkOverlayPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkRenderPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkRenderPassCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkRenderState.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkRenderStepsPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkSSAAPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkSequencePass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkShader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkShaderProgram.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkShadowMapBakerPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkShadowMapPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkSobelGradientMagnitudePass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkTextureObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkTextureUnitManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkTranslucentPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkValuePass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkVolumetricPass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDataTransferHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkFrameBufferObject2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkPixelBufferObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkRenderbuffer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkDummyGPUInfoList.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkXRenderWindowInteractor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/OpenGL2/vtkXOpenGLRenderWindow.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/vtkRenderingOpenGL2Module.h"
    )
endif()

