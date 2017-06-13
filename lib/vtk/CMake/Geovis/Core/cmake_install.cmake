# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Geovis/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkGeovisCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkGeovisCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Geovis/Core/CMakeFiles/vtkGeovisCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkCompassRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkCompassWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoAdaptiveArcs.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoAlignedImageSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoArcs.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoAssignCoordinates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoCamera.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoFileImageSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoFileTerrainSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoGlobeSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoGraticule.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoImageNode.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoInteractorStyle.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoProjection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoProjectionSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoRandomGraphSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoSampleArcs.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoSphereTransform.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTerrain.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTerrain2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTerrainNode.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTransform.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTreeNode.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoTreeNodeCache.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGlobeSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Geovis/Core/vtkGeoAlignedImageRepresentation.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Geovis/Core/vtkGeovisCoreModule.h"
    )
endif()

