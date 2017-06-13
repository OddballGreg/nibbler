# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/Export

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOExport-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOExport-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOExport-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOExport-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOExport-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOExport-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Export/CMakeFiles/vtkIOExport.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkIVExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkOBJExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkOOGLExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkPOVExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkRIBExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkRIBLight.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkRIBProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkVRMLExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkX3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkX3DExporter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkX3DExporterFIWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkX3DExporterWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Export/vtkX3DExporterXMLWriter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Export/vtkIOExportModule.h"
    )
endif()

