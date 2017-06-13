# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Rendering/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkRenderingCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Core/CMakeFiles/vtkRenderingCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGPUInfoListArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkNoise200x200.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPythagoreanQuadruples.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRayCastStructures.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderingCoreEnums.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTDxMotionEventInfo.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractMapper3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractVolumeMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkActor2DCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkActor2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkActorCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAssembly.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkBackgroundColorMonitor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCameraActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCamera.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCameraInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCellCenterDepthSort.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkColorTransferFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCompositePolyDataMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCoordinate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCullerCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCuller.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkDataSetMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkDistanceToCamera.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkFollower.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkFrustumCoverageCuller.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGenericRenderWindowInteractor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGlyph3DMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGPUInfo.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGPUInfoList.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGraphicsFactory.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGraphMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkGraphToGlyphs.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkHardwareSelector.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageMapper3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageSlice.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkImageSliceMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkInteractorEventRecorder.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkInteractorObserver.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLabeledContourMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLightActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLightCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLight.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLightKit.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLogLookupTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLookupTableWithEnabling.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkMapArrayValues.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkMapper2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkMapperCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkObserverMediator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPolyDataMapper2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPolyDataMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProp3DCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProp3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProp3DFollower.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPropAssembly.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPropCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProp.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProperty2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRendererCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRendererDelegate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRendererSource.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderWindowCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderWindowInteractor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkSelectVisiblePoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkShaderDeviceAdapter2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextActor3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTexture.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTexturedActor2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTransformCoordinateSystems.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTransformInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTupleInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkViewDependentErrorMetric.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkViewport.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkVisibilitySort.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkVolumeCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkVolume.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkVolumeProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkWindowLevelLookupTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkWindowToImageFilter.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAssemblyNode.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAssemblyPath.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAssemblyPaths.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAreaPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractPropPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPropPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPickingManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkLODProp3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkWorldPointPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkCellPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPointPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderedAreaPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkScenePicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkInteractorStyle.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTDxInteractorStyle.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkStringToImage.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextProperty.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextPropertyCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkTextRenderer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractInteractionDevice.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkAbstractRenderDevice.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkRenderWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Rendering/Core/vtkPointGaussianMapper.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Core/vtkRenderingCoreModule.h"
    )
endif()

