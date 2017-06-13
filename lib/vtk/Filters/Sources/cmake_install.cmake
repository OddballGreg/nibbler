# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Filters/Sources

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersSources-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkFiltersSources-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Sources/CMakeFiles/vtkFiltersSources.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkArcSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkArrowSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkButtonSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkConeSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkCubeSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkCylinderSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkDiskSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkEllipticalButtonSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkFrustumSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkGlyphSource2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkHyperOctreeFractalSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkHyperTreeGridSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkLineSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkOutlineCornerFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkOutlineCornerSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkOutlineSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkParametricFunctionSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkPlaneSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkPlatonicSolidSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkPointSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkPolyLineSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkProgrammableDataObjectSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkProgrammableSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkRectangularButtonSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkRegularPolygonSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkSelectionSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkSphereSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkSuperquadricSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkTessellatedBoxSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkTextSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkTexturedSphereSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkGraphToPolyData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Filters/Sources/vtkDiagonalMatrixSource.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

