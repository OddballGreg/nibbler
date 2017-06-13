# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHyperTree-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHyperTree-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersHyperTree-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersHyperTree-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHyperTree-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersHyperTree-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/HyperTree/CMakeFiles/vtkFiltersHyperTree.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkClipHyperOctree.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperTreeGridAxisCut.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperTreeGridGeometry.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperTreeGridToUnstructuredGrid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeClipCutPointsGrabber.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeContourFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeCutter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeDepth.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeDualGridContourFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeLimiter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeSampleFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeSurfaceFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/HyperTree/vtkHyperOctreeToUniformGridFilter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/HyperTree/vtkFiltersHyperTreeModule.h"
    )
endif()

