set ModuleHierarchy {[{
"Name" : "vitis_convolution", "RefName" : "vitis_convolution","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_vitis_convolution_Pipeline_Read_Rows_Read_Cols_fu_204", "RefName" : "vitis_convolution_Pipeline_Read_Rows_Read_Cols","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Read_Rows_Read_Cols","RefName" : "Read_Rows_Read_Cols","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_vitis_convolution_Pipeline_Conv_Rows_Conv_Cols_fu_230", "RefName" : "vitis_convolution_Pipeline_Conv_Rows_Conv_Cols","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Conv_Rows_Conv_Cols","RefName" : "Conv_Rows_Conv_Cols","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_vitis_convolution_Pipeline_Write_Rows_Write_Cols_fu_264", "RefName" : "vitis_convolution_Pipeline_Write_Rows_Write_Cols","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Write_Rows_Write_Cols","RefName" : "Write_Rows_Write_Cols","ID" : "6","Type" : "pipeline"},]},]
}]}