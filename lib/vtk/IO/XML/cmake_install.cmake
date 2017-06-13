# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/IO/XML

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOXML-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkIOXML-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/IO/XML/CMakeFiles/vtkIOXML.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkRTXMLPolyDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLCompositeDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLCompositeDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLDataSetWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLFileReadTester.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLGenericDataObjectReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHierarchicalDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHyperOctreeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLHyperOctreeWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLImageDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLImageDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLMultiBlockDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLMultiGroupDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPImageDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPolyDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPolyDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPPolyDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPRectilinearGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPStructuredDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPStructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLRectilinearGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLRectilinearGridWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLStructuredDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLStructuredDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLStructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLStructuredGridWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUniformGridAMRReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUnstructuredDataReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUnstructuredGridReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLWriterC.h"
    "/home/cameron/Downloads/VTK-7.0.0/IO/XML/vtkXMLWriter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/IO/XML/vtkIOXMLModule.h"
    )
endif()

