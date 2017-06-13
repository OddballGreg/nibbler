# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkmetaio-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkmetaio-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtkmetaio" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaForm.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaEvent.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaOutput.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaContour.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaUtils.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaTube.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaTypes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaLine.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaCommand.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaGroup.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaImage.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaArrow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaMesh.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaTransform.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaScene.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaSurface.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaITKUtils.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
    "/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO/vtkmetaio/metaBlob.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
    )
endif()

