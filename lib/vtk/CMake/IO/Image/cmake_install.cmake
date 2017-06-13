# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/Image

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOImage-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOImage-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Image/CMakeFiles/vtkIOImage.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkBMPReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkBMPWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkDEMReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkDICOMImageReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkGESignaReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageExport.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageImport.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageImportExecutive.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageReader2.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageReader2Collection.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageReader2Factory.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkImageWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkJPEGReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkJPEGWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkJSONImageWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkMedicalImageProperties.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkMedicalImageReader2.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkMetaImageReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkMetaImageWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkNIFTIImageHeader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkNIFTIImageReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkNIFTIImageWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkNrrdReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkPNGReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkPNGWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkPNMReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkPNMWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkPostScriptWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkSLCReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkTIFFReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkTIFFWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkVolume16Reader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkVolumeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/Image/vtkMRCReader.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/Image/vtkIOImageModule.h"
    )
endif()

