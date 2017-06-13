# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# compile CXX with /usr/bin/c++
CXX_FLAGS =   -g -fPIC   -fvisibility=hidden -fvisibility-inlines-hidden

CXX_DEFINES = -DVTK_IN_VTK -DvtkIOParallel_EXPORTS

CXX_INCLUDES = -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Parallel -I/home/cameron/Downloads/VTK-7.0.0/Filters/Parallel -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Extraction -I/home/cameron/Downloads/VTK-7.0.0/Filters/Extraction -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/DataModel -I/home/cameron/Downloads/VTK-7.0.0/Common/DataModel -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/Math -I/home/cameron/Downloads/VTK-7.0.0/Common/Math -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/Core -I/home/cameron/Downloads/VTK-7.0.0/Common/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/KWSys -I/home/cameron/Downloads/VTK-7.0.0/Utilities/KWSys -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/Misc -I/home/cameron/Downloads/VTK-7.0.0/Common/Misc -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/System -I/home/cameron/Downloads/VTK-7.0.0/Common/System -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/Transforms -I/home/cameron/Downloads/VTK-7.0.0/Common/Transforms -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/ExecutionModel -I/home/cameron/Downloads/VTK-7.0.0/Common/ExecutionModel -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Core -I/home/cameron/Downloads/VTK-7.0.0/Filters/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/General -I/home/cameron/Downloads/VTK-7.0.0/Filters/General -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/ComputationalGeometry -I/home/cameron/Downloads/VTK-7.0.0/Common/ComputationalGeometry -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Statistics -I/home/cameron/Downloads/VTK-7.0.0/Filters/Statistics -I/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Fourier -I/home/cameron/Downloads/VTK-7.0.0/Imaging/Fourier -I/home/cameron/Projects/nibbler-1/lib/vtk/Imaging/Core -I/home/cameron/Downloads/VTK-7.0.0/Imaging/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/alglib -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/alglib -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Geometry -I/home/cameron/Downloads/VTK-7.0.0/Filters/Geometry -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Modeling -I/home/cameron/Downloads/VTK-7.0.0/Filters/Modeling -I/home/cameron/Projects/nibbler-1/lib/vtk/Filters/Sources -I/home/cameron/Downloads/VTK-7.0.0/Filters/Sources -I/home/cameron/Projects/nibbler-1/lib/vtk/Parallel/Core -I/home/cameron/Downloads/VTK-7.0.0/Parallel/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/Legacy -I/home/cameron/Downloads/VTK-7.0.0/IO/Legacy -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/Core -I/home/cameron/Downloads/VTK-7.0.0/IO/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/zlib -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/zlib -I/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/HashSource -I/home/cameron/Downloads/VTK-7.0.0/Utilities/HashSource -I/home/cameron/Projects/nibbler-1/lib/vtk/Rendering/Core -I/home/cameron/Downloads/VTK-7.0.0/Rendering/Core -I/home/cameron/Projects/nibbler-1/lib/vtk/Common/Color -I/home/cameron/Downloads/VTK-7.0.0/Common/Color -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/Image -I/home/cameron/Downloads/VTK-7.0.0/IO/Image -I/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/DICOMParser -I/home/cameron/Downloads/VTK-7.0.0/Utilities/DICOMParser -I/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/MetaIO/vtkmetaio -I/home/cameron/Projects/nibbler-1/lib/vtk/Utilities/MetaIO -I/home/cameron/Downloads/VTK-7.0.0/Utilities/MetaIO -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/jpeg -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/jpeg -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/png -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/png -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/tiff -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/tiff -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/NetCDF -I/home/cameron/Downloads/VTK-7.0.0/IO/NetCDF -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/netcdf/vtknetcdf/include -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/netcdf/vtknetcdf -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/netcdf -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/netcdf -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/hdf5/vtkhdf5 -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/hl/src -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5/vtkhdf5/src -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/hdf5 -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/hdf5 -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/XML -I/home/cameron/Downloads/VTK-7.0.0/IO/XML -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/Geometry -I/home/cameron/Downloads/VTK-7.0.0/IO/Geometry -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/XMLParser -I/home/cameron/Downloads/VTK-7.0.0/IO/XMLParser -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/expat -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/expat -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/exodusII -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/exodusII -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/jsoncpp -I/home/cameron/Downloads/VTK-7.0.0/ThirdParty/jsoncpp -I/home/cameron/Projects/nibbler-1/lib/vtk/IO/Parallel -I/home/cameron/Downloads/VTK-7.0.0/IO/Parallel -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/hdf5/vtkhdf5/hl/src -I/home/cameron/Projects/nibbler-1/lib/vtk/ThirdParty/hdf5/vtkhdf5/src 

