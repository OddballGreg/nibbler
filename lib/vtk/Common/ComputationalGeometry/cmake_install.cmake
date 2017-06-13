# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonComputationalGeometry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonComputationalGeometry-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonComputationalGeometry-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonComputationalGeometry-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonComputationalGeometry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonComputationalGeometry-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Common/ComputationalGeometry/CMakeFiles/vtkCommonComputationalGeometry.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkCardinalSpline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkKochanekSpline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricBoy.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricCrossCap.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricDini.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricEnneper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricKlein.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricMobius.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricRandomHills.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricRoman.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricSpline.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricTorus.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricKuen.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricHenneberg.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricBour.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h"
    )
endif()

