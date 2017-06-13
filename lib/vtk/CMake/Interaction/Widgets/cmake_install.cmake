# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInteractionWidgets-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkInteractionWidgets-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Interaction/Widgets/CMakeFiles/vtkInteractionWidgets.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtk3DWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAbstractPolygonalHandleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAbstractWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAffineRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAffineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAffineWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAngleRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAngleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAngleRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAngleWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAxesTransformRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkAxesTransformWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBalloonRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBalloonWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBezierContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBiDimensionalRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBiDimensionalRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBiDimensionalWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBorderRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBorderWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBoundedPlanePointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBoxRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBoxWidget2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBoxWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkBrokenLineWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkButtonRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkButtonWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCameraRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCameraWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCaptionRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCaptionWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCellCentersPointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCenteredSliderRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCenteredSliderWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCheckerboardRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCheckerboardWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkClosedSurfacePointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkConstrainedPointHandleRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkContinuousValueWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkContinuousValueWidgetRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkContourRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkContourWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkCurveRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkDijkstraImageContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkDistanceRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkDistanceRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkDistanceRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkDistanceWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkEllipsoidTensorProbeRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkEvent.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkFixedSizeHandleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkFocalPlaneContourRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkFocalPlanePointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkHandleRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkHandleWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkHoverWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImageActorPointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImageCroppingRegionsWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImageOrthoPlanes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImagePlaneWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImageTracerWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImplicitCylinderRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImplicitCylinderWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImplicitPlaneRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImplicitPlaneWidget2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkImplicitPlaneWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLinearContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLineWidget2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLineWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLogoRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkLogoWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkOrientationMarkerWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkOrientedGlyphContourRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkOrientedGlyphFocalPlaneContourRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkOrientedPolygonalHandleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkParallelopipedRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkParallelopipedWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPlaneWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPlaybackRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPlaybackWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPointHandleRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPointHandleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPointWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolyDataContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolyDataPointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolyDataSourceWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolyLineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolyLineWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolygonalHandleRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolygonalSurfaceContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkPolygonalSurfacePointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkProp3DButtonRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkRectilinearWipeRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkRectilinearWipeWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkScalarBarRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkScalarBarWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSeedRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSeedWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSliderRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSliderRepresentation3D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSliderRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSliderWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSphereHandleRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSphereRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSphereWidget2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSphereWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSplineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSplineWidget2.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkSplineWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTensorProbeRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTensorProbeWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTerrainContourLineInterpolator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTerrainDataPointPlacer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTextRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTexturedButtonRepresentation2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTexturedButtonRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkTextWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkWidgetCallbackMapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkWidgetEvent.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkWidgetEventTranslator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkWidgetRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkWidgetSet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkXYPlotWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorLineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorThickLineRepresentation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorWidget.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorActor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorPicker.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursor.h"
    "/home/cameron/Downloads/VTK-7.0.0/Interaction/Widgets/vtkResliceCursorPolyDataAlgorithm.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Interaction/Widgets/vtkInteractionWidgetsModule.h"
    )
endif()

