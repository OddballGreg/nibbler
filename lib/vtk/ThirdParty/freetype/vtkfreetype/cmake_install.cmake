# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkfreetype-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkfreetype-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkfreetype-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtkfreetype/include" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/ft2build.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/vtk_freetype_mangle.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/vtk_ftmodule.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/freetype/vtkfreetype/include/vtkFreeTypeConfig.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtkfreetype/include/freetype" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftwinfnt.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftrender.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlzw.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgxval.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftincrem.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/tttags.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsynth.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmm.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsnames.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftstroke.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/t1tables.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbdf.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbzip2.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftxf86.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/fttypes.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmodapi.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgzip.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/fterrdef.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftchapters.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbbox.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/fterrors.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlist.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsizes.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ttunpat.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftsystem.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmoderr.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/freetype.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftlcdfil.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftpfr.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftgasp.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftotval.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/tttables.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftcid.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftimage.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftbitmap.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftglyph.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftoutln.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftadvanc.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/fttrigon.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftmac.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ftcache.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/ttnameid.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtkfreetype/include/freetype/config" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftheader.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftmodule.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftoption.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftstdlib.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftconfig.h"
    )
endif()

