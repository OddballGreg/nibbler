# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Core/CMakeFiles/vtkIOCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkAbstractParticleWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkArrayReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkArrayWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkASCIITextCodec.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkBase64InputStream.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkBase64OutputStream.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkBase64Utilities.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkDataCompressor.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkDelimitedTextWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkGlobFileNames.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkInputStream.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkJavaScriptDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkOutputStream.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkSortFileNames.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkTextCodec.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkTextCodecFactory.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkUTF16TextCodec.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkUTF8TextCodec.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkAbstractPolyDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkZLibDataCompressor.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkArrayDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Core/vtkArrayDataWriter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Core/vtkIOCoreModule.h"
    )
endif()

