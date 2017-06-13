# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHybrid-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHybrid-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersHybrid-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersHybrid-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHybrid-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHybrid-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Hybrid/CMakeFiles/vtkFiltersHybrid.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkBSplineTransform.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkDepthSortPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkDSPFilterDefinition.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkDSPFilterGroup.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkEarthSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkFacetReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkGreedyTerrainDecimation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkGridTransform.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkImageToPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkImplicitModeller.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkPCAAnalysisFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkPolyDataSilhouette.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkProcrustesAlignmentFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkProjectedTerrainPath.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkRenderLargeImage.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTemporalDataSetCache.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTemporalFractal.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTemporalInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTemporalShiftScale.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTemporalSnapToTimeStep.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkTransformToGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Hybrid/vtkWeightedTransformFilter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Hybrid/vtkFiltersHybridModule.h"
    )
endif()

