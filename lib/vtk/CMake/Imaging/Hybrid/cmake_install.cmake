# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingHybrid-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingHybrid-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingHybrid-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkImagingHybrid-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingHybrid-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingHybrid-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Hybrid/CMakeFiles/vtkImagingHybrid.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkBooleanTexture.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkShepardMethod.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkVoxelModeller.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkSurfaceReconstructionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkFastSplatter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkGaussianSplatter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkCheckerboardSplatter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkSampleFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkPointLoad.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkImageCursor3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkImageRectilinearWipe.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkTriangularTexture.h"
    "/home/cameron/Downloads/VTK-7.0.0/Imaging/Hybrid/vtkSliceCubes.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Hybrid/vtkImagingHybridModule.h"
    )
endif()

