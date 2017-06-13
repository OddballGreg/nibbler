# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Imaging/General

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingGeneral-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingGeneral-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingGeneral-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/General/CMakeFiles/vtkImagingGeneral.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageCheckerboard.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageCityBlockDistance.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageConvolve.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageCorrelation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageEuclideanDistance.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageEuclideanToPolar.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageGaussianSmooth.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageGradient.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageGradientMagnitude.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageHybridMedian2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageLaplacian.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageMedian3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageNormalize.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageRange3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSeparableConvolution.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSobel2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSobel3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSpatialAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageVariance3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkSimpleImageFilterExample.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSlab.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/General/vtkImageSlabReslice.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/General/vtkImagingGeneralModule.h"
    )
endif()

