# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Imaging/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Core/CMakeFiles/vtkImagingCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageStencilIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkExtractVOI.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageAppendComponents.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageBlend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageCacheFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageCast.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageChangeInformation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageClip.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageConstantPad.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageDataStreamer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageDecomposeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageDifference.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageExtractComponents.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageFlip.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageIterateFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageMagnify.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageMapToColors.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageMask.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageMirrorPad.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImagePadFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImagePermute.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageResample.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageReslice.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageResliceToColors.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageShiftScale.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageShrink3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageThreshold.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageTranslateExtent.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageWrapPad.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkRTAnalyticSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageResize.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageBSplineCoefficients.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageStencilData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageStencilAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkAbstractImageInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageBSplineInternals.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageBSplineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageSincInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Core/vtkImageStencilSource.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Core/vtkImagingCoreModule.h"
    )
endif()

