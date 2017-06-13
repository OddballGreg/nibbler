# Install script for directory: /home/cameron/Downloads/VTK-7.0.0/Common/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonCore-7.0.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonCore-7.0.so.1"
    "/home/cameron/Projects/nibbler-1/lib/vtk/lib/libvtkCommonCore-7.0.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonCore-7.0.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonCore-7.0.so"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-7.0/Modules" TYPE FILE FILES "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/CMakeFiles/vtkCommonCore.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-7.0" TYPE FILE FILES
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkABI.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAngularPeriodicDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayInterpolate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayInterpolate.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayIteratorIncludes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayIteratorTemplate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayIteratorTemplate.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayIteratorTemplateImplicit.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayPrint.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayPrint.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAtomicTypeConcepts.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAtomicTypes.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAutoInit.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayIteratorMacro.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayTemplateImplicit.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIOStream.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIOStreamFwd.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationInternals.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMappedDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMathUtilities.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkNew.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPeriodicDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSetGet.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSmartPointer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTemplateAliasMacro.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypeTraits.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedDataArrayIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariantCast.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariantCreate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariantExtract.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariantInlineOperators.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkWeakPointer.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkWin32Header.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkWindows.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkToolkits.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAbstractArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAnimationCue.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAngularPeriodicDataArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkAngularPeriodicDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayCoordinates.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayExtents.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayExtentsList.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayRange.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArraySort.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkArrayWeights.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkBitArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkBitArrayIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkBoxMuellerRandomSequence.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkBreakPoint.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkByteSwap.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCallbackCommand.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCharArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCollectionIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCommand.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCommonInformationKeyManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkConditionVariable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkCriticalSection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayCollectionIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArraySelection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDebugLeaks.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDebugLeaksManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDoubleArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDynamicLoader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkEventForwarderCommand.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkFileOutputWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkFloatArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkFloatingPointExceptions.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkGarbageCollector.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkGarbageCollectorManager.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkGaussianRandomSequence.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIdListCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIdList.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIdTypeArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIndent.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationDataObjectKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationDoubleKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationDoubleVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationIdTypeKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationInformationKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationInformationVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationIntegerKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationIntegerPointerKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationIntegerVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationIterator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationKeyVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationObjectBaseKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationObjectBaseVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationRequestKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationStringKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationStringVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationUnsignedLongKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationVariantKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationVariantVectorKey.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInformationVector.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkInstantiator.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkIntArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkLargeInteger.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkLongArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkLongLongArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkLookupTable.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMappedDataArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMappedDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMath.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMinimalStandardRandomSequence.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMultiThreader.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkMutexLock.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkObjectBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkObject.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkObjectFactoryCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkObjectFactory.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOldStyleCallbackCommand.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOStreamWrapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOStrStreamWrapper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOutputWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOverrideInformationCollection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkOverrideInformation.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPeriodicDataArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPeriodicDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPoints2D.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPoints.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkPriorityQueue.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkRandomSequence.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkReferenceCount.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkScalarsToColors.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkShortArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSignedCharArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSimpleCriticalSection.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSmartPointerBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSortDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkStdString.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkStringArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTimePointUtility.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTimeStamp.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedDataArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedDataArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnicodeStringArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnicodeString.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnsignedCharArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnsignedIntArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnsignedLongArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnsignedLongLongArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkUnsignedShortArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariantArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVariant.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVersion.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkVoidArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkWeakPointerBase.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkXMLFileOutputWindow.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayTemplate.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayTemplate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDataArrayTemplateHelper.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDenseArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkDenseArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSparseArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSparseArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedArray.txx"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypedArray.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkTypeTemplate.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkType.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSystemIncludes.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkAtomic.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkSMPToolsInternal.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkSMPThreadLocal.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSMPTools.h"
    "/home/cameron/Downloads/VTK-7.0.0/Common/Core/vtkSMPThreadLocalObject.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkConfigure.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkMathConfigure.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkVersionMacros.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeInt8Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeInt16Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeInt32Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeInt64Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeUInt8Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeUInt16Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeUInt32Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeUInt64Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeFloat32Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkTypeFloat64Array.h"
    "/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core/vtkCommonCoreModule.h"
    )
endif()

