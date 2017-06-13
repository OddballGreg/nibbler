# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonExecutionModel-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonExecutionModel-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Common/ExecutionModel/CMakeFiles/vtkCommonExecutionModel.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkCastToConcrete.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkEnsembleSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkExecutive.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkExtentSplitter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkExtentTranslator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkHyperOctreeAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkImageAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkImageProgressIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkScalarTree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkSpanSpace.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkTableAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkTrivialProducer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkProgressObserver.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
endif()

