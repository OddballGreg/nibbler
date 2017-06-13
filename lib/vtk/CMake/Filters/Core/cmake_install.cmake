# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Core/CMakeFiles/vtkFiltersCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAppendFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAppendPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAppendSelection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkArrayCalculator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAssignAttribute.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCellDataToPointData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCleanPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkClipPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCompositeDataProbeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkConnectivityFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkContourFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkContourGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkContourHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDataObjectGenerator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDecimatePolylineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDecimatePro.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDelaunay2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkDelaunay3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkElevationFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkExecutionTimer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkFeatureEdges.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkFlyingEdges2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkFlyingEdges3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkFlyingEdgesPlaneCutter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkGlyph2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkGlyph3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkHedgeHog.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkHull.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkIdFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMarchingCubes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMarchingSquares.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMaskFields.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMaskPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMaskPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMassProperties.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMergeDataObjectFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMergeFields.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkMergeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkPointDataToCellData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkPolyDataNormals.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkProbeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkQuadricClustering.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkQuadricDecimation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkRearrangeFields.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkReverseSense.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkSimpleElevationFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkSmoothPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkStripper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkSynchronizedTemplates2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkSynchronizedTemplates3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkTensorGlyph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkThreshold.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkThresholdPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkTransposeTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkTriangleFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkTubeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkVectorDot.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkVectorNorm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCutter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCompositeCutter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkStreamingTessellator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkImplicitPolyDataDistance.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkStreamerBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkCenterOfMass.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkImageAppend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkStructuredGridAppend.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Core/vtkFiltersCoreModule.h"
    )
endif()

