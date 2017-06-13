# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Infovis/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInfovisCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInfovisCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Core/CMakeFiles/vtkInfovisCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkAddMembershipArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkArrayNorm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkArrayToTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkCollapseGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkCollapseVerticesByArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkDataObjectToTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkDotProductSimilarity.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkExtractSelectedTree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkEdgeCenters.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkExpandSelectedGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkExtractSelectedGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkGenerateIndexArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkGroupLeafVertices.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkMergeColumns.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkMergeGraphs.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkMergeTables.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkMutableGraphHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkNetworkHierarchy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkPipelineGraphSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkPruneTreeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkRandomGraphSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkReduceTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkSparseArrayToTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkStreamGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkStringToCategory.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkStringToNumeric.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTableToArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTableToGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTableToSparseArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTableToTreeFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkThresholdGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkThresholdTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTransferAttributes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTransposeMatrix.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTreeFieldAggregator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTreeDifferenceFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkTreeLevelsFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkVertexDegree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkRemoveHiddenData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Infovis/Core/vtkKCoreDecomposition.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Core/vtkInfovisCoreModule.h"
    )
endif()

