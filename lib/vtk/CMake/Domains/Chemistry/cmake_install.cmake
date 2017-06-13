# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkDomainsChemistry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkDomainsChemistry-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkDomainsChemistry-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkDomainsChemistry-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkDomainsChemistry-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkDomainsChemistry-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Domains/Chemistry/CMakeFiles/vtkDomainsChemistry.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkBlueObeliskData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkBlueObeliskDataParser.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkCMLMoleculeReader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkMoleculeAlgorithm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkMoleculeMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkMoleculeToAtomBallFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkMoleculeToBondStickFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkMoleculeToPolyDataFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkPeriodicTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkProgrammableElectronicData.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkProteinRibbonFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/vtkSimpleBondPerceiver.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Domains/Chemistry/vtkDomainsChemistryModule.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vtk-7.0/vtkDomainsChemistry" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/elements.xml"
    "/home/cameron/Downloads/VTK-7.0.0/Domains/Chemistry/COPYING"
    )
endif()

