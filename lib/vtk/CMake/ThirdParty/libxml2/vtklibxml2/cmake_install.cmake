# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/ThirdParty/libxml2/vtklibxml2

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtklibxml2-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtklibxml2-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtklibxml2/libxml" TYPE FILE FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlversion.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/parser.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemastypes.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/schematron.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/HTMLtree.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlwriter.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/nanohttp.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/relaxng.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlIO.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/uri.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/parserInternals.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlschemas.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/chvalid.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/valid.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/HTMLparser.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlerror.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/pattern.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlsave.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlregexp.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/dict.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlautomata.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xpointer.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/hash.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/nanoftp.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xinclude.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xpathInternals.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/entities.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xpath.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/tree.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/globals.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlunicode.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/SAX.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/threads.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlreader.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/list.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/c14n.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlmemory.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/catalog.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/SAX2.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlmodule.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlstring.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xlink.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/encoding.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/schemasInternals.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/vtk_libxml2_mangle.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/debugXML.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/DOCBparser.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/vtklibxml2/libxml/xmlexports.h"
    )
endif()

