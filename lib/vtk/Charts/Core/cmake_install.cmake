# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Charts/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkChartsCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkChartsCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Charts/Core/CMakeFiles/vtkChartsCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkAxis.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkAxisExtended.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkCategoryLegend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChart.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartBox.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartHistogram2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartLegend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartMatrix.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartParallelCoordinates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartPie.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartXY.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkChartXYZ.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkColorLegend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkColorTransferControlPointsItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkColorTransferFunctionItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkCompositeControlPointsItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkContextArea.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkContextPolygon.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkControlPointsItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkLookupTableItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPiecewiseFunctionItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPiecewisePointHandleItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlot.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlot3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotArea.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotBag.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotBar.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotBox.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotFunctionalBag.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotHistogram2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotLine.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotLine3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotParallelCoordinates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotPie.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotPoints3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotStacked.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkPlotSurface.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkScalarsToColorsItem.h"
    "/home/cameron/Downloads/VTK-7.0.0/Charts/Core/vtkScatterPlotMatrix.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Charts/Core/vtkChartsCoreModule.h"
    )
endif()

