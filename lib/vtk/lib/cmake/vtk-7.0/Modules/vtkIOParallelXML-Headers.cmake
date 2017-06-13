set(vtkIOParallelXML_HEADERS_LOADED 1)
set(vtkIOParallelXML_HEADERS "vtkXMLPDataSetWriter;vtkXMLPDataWriter;vtkXMLPImageDataWriter;vtkXMLPPolyDataWriter;vtkXMLPRectilinearGridWriter;vtkXMLPStructuredDataWriter;vtkXMLPStructuredGridWriter;vtkXMLPUnstructuredDataWriter;vtkXMLPUnstructuredGridWriter;vtkXMLPHierarchicalBoxDataWriter;vtkXMLPMultiBlockDataWriter;vtkXMLPUniformGridAMRWriter")

foreach(header ${vtkIOParallelXML_HEADERS})
  set(vtkIOParallelXML_HEADER_${header}_EXISTS 1)
endforeach()

set(vtkIOParallelXML_HEADER_vtkXMLPDataWriter_ABSTRACT 1)
set(vtkIOParallelXML_HEADER_vtkXMLPStructuredDataWriter_ABSTRACT 1)
set(vtkIOParallelXML_HEADER_vtkXMLPUnstructuredDataWriter_ABSTRACT 1)



