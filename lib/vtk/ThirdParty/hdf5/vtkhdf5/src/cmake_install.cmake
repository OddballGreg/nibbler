# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtkhdf5" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/hdf5.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5api_adpt.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5public.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5version.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5overflow.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/vtk_libhdf5_mangle.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Apkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Apublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5ACpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5ACpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5B2pkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5B2public.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Bpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Bpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Dpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Dpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Edefin.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Einit.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Epkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Epubgen.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Epublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Eterm.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Fpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Fpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDcore.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDdirect.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDfamily.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDlog.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmpi.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmpio.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDmulti.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDsec2.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDstdio.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FSpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FSpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Gpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Gpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HFpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HFpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HGpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HGpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HLpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HLpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5MPpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Opkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Opublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Oshared.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Ppkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Ppublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Spkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Spublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5SMpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Tpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Tpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Zpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Zpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Cpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Cpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Ipkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Ipublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Lpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Lpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5MMpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Rpkg.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Rpublic.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5private.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Aprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5ACprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5B2private.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Bprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5CSprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Dprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Eprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FDprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Fprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FLprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FOprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5MFprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5MMprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Cprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5FSprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Gprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HFprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HGprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HLprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5HPprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Iprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Lprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5MPprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Oprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Pprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5RCprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Rprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5RSprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5SLprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5SMprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Sprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5STprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Tprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5TSprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5VMprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5WBprivate.h"
    "/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src/H5Zprivate.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkhdf5-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkhdf5-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-7.0.so"
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

