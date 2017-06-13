# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Infovis/Layout

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInfovisLayout-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInfovisLayout-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Layout/CMakeFiles/vtkInfovisLayout.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkAreaLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkAssignCoordinates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCirclePackLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCirclePackToPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkConeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkEdgeLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkGeoMath.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkGraphLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkIncrementalForceLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSplineGraphEdges.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeMapLayout.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeMapToPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkTreeRingToPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Layout/vtkKCoreLayout.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
endif()

