# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/Parallel

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersParallel-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersParallel-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Parallel/CMakeFiles/vtkFiltersParallel.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkCollectGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkCollectPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkCollectTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkCutMaterial.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkDuplicatePolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkExtractCTHPart.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPCellDataToPointData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPExtractArraysOverTime.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPeriodicFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPKdTree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPMaskPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPOutlineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPPolyDataNormals.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPProbeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPProjectSphereFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPReflectionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPResampleFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPSphereSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPassThroughFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPieceRequestFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPieceScalars.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkPipelineSize.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkProcessIdScalars.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Parallel/vtkFiltersParallelModule.h"
    )
endif()

