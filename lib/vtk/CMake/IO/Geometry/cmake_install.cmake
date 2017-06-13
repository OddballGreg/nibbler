# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/Geometry

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOGeometry-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOGeometry-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Geometry/CMakeFiles/vtkIOGeometry.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkAVSucdReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkBYUReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkBYUWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkChacoReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkFacetWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkFLUENTReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkGAMBITReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkGaussianCubeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkIVWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkMCubesReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkMCubesWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkMFIXReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkMoleculeReaderBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkOBJReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkOpenFOAMReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkParticleReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkPDBReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkProStarReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkPTSReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkSTLReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkSTLWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkTecplotReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkUGFacetReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkWindBladeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Geometry/vtkXYZMolReader.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Geometry/vtkIOGeometryModule.h"
    )
endif()

