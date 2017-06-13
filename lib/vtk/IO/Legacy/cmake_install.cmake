# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/Legacy

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOLegacy-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOLegacy-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Legacy/CMakeFiles/vtkIOLegacy.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkCompositeDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkCompositeDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataObjectReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataObjectWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataSetReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataSetWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkGenericDataObjectReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkGenericDataObjectWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkGraphReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkGraphWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkPixelExtentIO.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkPolyDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkPolyDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkRectilinearGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkRectilinearGridWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkSimplePointsReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkSimplePointsWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkStructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkStructuredGridWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkStructuredPointsReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkStructuredPointsWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkTableReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkTableWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkTreeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkTreeWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkUnstructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Legacy/vtkUnstructuredGridWriter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Legacy/vtkIOLegacyModule.h"
    )
endif()

