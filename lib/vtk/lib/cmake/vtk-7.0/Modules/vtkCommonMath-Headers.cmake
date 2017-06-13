set(vtkCommonMath_HEADERS_LOADED 1)
set(vtkCommonMath_HEADERS "vtkAmoebaMinimizer;vtkFunctionSet;vtkInitialValueProblemSolver;vtkMatrix3x3;vtkMatrix4x4;vtkPolynomialSolversUnivariate;vtkQuaternionInterpolator;vtkRungeKutta2;vtkRungeKutta4;vtkRungeKutta45;vtkQuaternion;vtkTuple")

foreach(header ${vtkCommonMath_HEADERS})
  set(vtkCommonMath_HEADER_${header}_EXISTS 1)
endforeach()

set(vtkCommonMath_HEADER_vtkFunctionSet_ABSTRACT 1)
set(vtkCommonMath_HEADER_vtkInitialValueProblemSolver_ABSTRACT 1)

set(vtkCommonMath_HEADER_vtkQuaternion_WRAP_EXCLUDE 1)
set(vtkCommonMath_HEADER_vtkTuple_WRAP_EXCLUDE 1)


