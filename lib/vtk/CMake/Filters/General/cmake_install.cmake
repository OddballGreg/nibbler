# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/General

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersGeneral-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersGeneral-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/General/CMakeFiles/vtkFiltersGeneral.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkAnnotationLink.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkAppendPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkAreaContourSpectrumFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkAxes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBlankStructuredGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBlankStructuredGridWithImage.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBlockIdScalars.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBoxClipDataSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBrownianPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCellCenters.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCellDerivatives.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkClipClosedSurface.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkClipConvexPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkClipDataSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkClipVolume.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCoincidentPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkContourTriangulator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCursor2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCursor3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCurvatures.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDataSetGradient.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDataSetGradientPrecompute.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDataSetTriangleFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDeformPointSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDensifyPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDicer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDiscreteMarchingCubes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkEdgePoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkGradientFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkGraphLayoutFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkGraphToPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkHyperStreamline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkIconGlyphFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkImageMarchingCubes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkInterpolateDataSetAttributes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkLevelIdScalars.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkLinkEdgels.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMergeCells.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMultiBlockMergeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMultiThreshold.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkOBBDicer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkOBBTree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkPassThrough.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkPolyDataStreamer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkProbePolyhedron.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkQuadraturePointInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkQuadraturePointsGenerator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkQuantizePolyDataPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRandomAttributeGenerator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRectilinearGridClip.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRecursiveDividingCubes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkReflectionFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRotationFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkShrinkFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkShrinkPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkSpatialRepresentationFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkSplineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkSplitField.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkStructuredGridClip.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkSubPixelPositionEdgels.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTableBasedClipDataSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTableToPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTableToStructuredGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTemporalPathLineFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTemporalStatistics.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTessellatorFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTimeSourceExample.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTransformFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkTransformPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkUncertaintyTubeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkVertexGlyphFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkWarpLens.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkWarpScalar.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkWarpTo.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkWarpVector.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkYoungsMaterialInterface.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMarchingContourFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkRectilinearGridToPointSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkGraphWeightFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkImageDataToPointSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkIntersectionPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkDistancePolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkExtractArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkMatricizeArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkNormalizeMatrixVectors.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkPassArrays.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkSplitColumnComponents.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/General/vtkCellTreeLocator.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/General/vtkFiltersGeneralModule.h"
    )
endif()

