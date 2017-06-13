# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Utilities/KWSys/vtksys

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Directory.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/DynamicLoader.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Encoding.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Glob.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/RegularExpression.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/SystemTools.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/CommandLineArguments.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/FStream.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/SystemInformation.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Configure.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/SharedForward.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Process.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Base64.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Encoding.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/FundamentalType.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/MD5.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/System.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/Configure.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/String.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/hashtable.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/hash_fun.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/hash_map.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/hash_set.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0/vtksys" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/vtksys/auto_ptr.hxx")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtksys-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtksys-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtksys-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtksys-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtksys-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtksys-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

