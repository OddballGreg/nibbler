# Install script for directory: /home/cameron/Downloads/VTK-7.0.0

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles/VTKConfig.cmake"
    "/home/cameron/Projects/nibbler-1/lib/vtk/VTKConfigVersion.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/exportheader.cmake.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/GenerateExportHeader.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/pythonmodules.h.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/UseVTK.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/FindTCL.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/TopologicalSort.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkTclTkMacros.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtk-forward.c.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkGroups.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkForwardingExecutable.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkJavaWrapping.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkMakeInstantiator.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkMakeInstantiator.cxx.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkMakeInstantiator.h.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkModuleAPI.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkModuleHeaders.cmake.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkModuleInfo.cmake.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkModuleMacros.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkModuleMacrosPython.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkMPI.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkExternalModuleMacros.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkObjectFactory.cxx.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkObjectFactory.h.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkPythonPackages.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkPythonWrapping.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkTclWrapping.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkThirdParty.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapHierarchy.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapJava.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapperInit.data.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapping.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapPython.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapPythonSIP.cmake"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapPython.sip.in"
    "/home/cameron/Downloads/VTK-7.0.0/CMake/vtkWrapTcl.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/VTKTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/VTKTargets.cmake"
         "/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles/Export/lib/cmake/vtk-7.0/VTKTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/VTKTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/VTKTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles/Export/lib/cmake/vtk-7.0/VTKTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/CMakeFiles/Export/lib/cmake/vtk-7.0/VTKTargets-debug.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Remote/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/Math/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/Misc/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/System/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/Transforms/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/DataModel/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/Color/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/ExecutionModel/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Common/ComputationalGeometry/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/General/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Fourier/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/alglib/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Statistics/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Extraction/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Geometry/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Sources/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/zlib/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/freetype/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/FreeType/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Context2D/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Charts/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Geometry/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/expat/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/XMLParser/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/XML/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Domains/Chemistry/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/MetaIO/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/jpeg/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/png/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/tiff/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Image/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Hybrid/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/EncodeString/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/glew/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/OpenGL2/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Domains/ChemistryOpenGL2/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Legacy/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/HashSource/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Parallel/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/AMR/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/FlowPaths/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Generic/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Sources/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Hybrid/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/HyperTree/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/General/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Imaging/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Modeling/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Parallel/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/ParallelImaging/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Programmable/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/SMP/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Selection/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Texture/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/verdict/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Verdict/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Infovis/Layout/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Interaction/Style/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Color/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Annotation/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Volume/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Interaction/Widgets/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Views/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libproj4/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Geovis/Core/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/hdf5/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/AMR/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/EnSight/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/netcdf/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/exodusII/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Exodus/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Label/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Export/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Import/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/libxml2/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Infovis/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/LSDyna/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/MINC/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/oggtheora/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Movie/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/NetCDF/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/PLY/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/jsoncpp/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Parallel/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/ParallelXML/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/sqlite/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/SQL/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/IO/Video/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Math/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Morphological/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Statistics/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Stencil/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Interaction/Image/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/ContextOpenGL2/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Image/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/LOD/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/VolumeOpenGL2/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Views/Context2D/cmake_install.cmake")
  include("/home/cameron/Projects/nibbler-1/lib/vtk/Views/Infovis/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/cameron/Projects/nibbler-1/lib/vtk/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
