# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Rendering/Volume

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingVolume-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingVolume-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Volume/CMakeFiles/vtkRenderingVolume.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkDirectionEncoder.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkEncodedGradientShader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeOutlineSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumePicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastCompositeFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastIsosurfaceFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastMIPFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
endif()

