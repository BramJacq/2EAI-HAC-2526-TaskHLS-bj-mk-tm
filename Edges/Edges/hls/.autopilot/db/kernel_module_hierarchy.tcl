set ModuleHierarchy {[{
"Name" : "vitis_convolution", "RefName" : "vitis_convolution","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_vitis_convolution_Pipeline_Read_Rows_Read_Cols_fu_64", "RefName" : "vitis_convolution_Pipeline_Read_Rows_Read_Cols","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Read_Rows_Read_Cols","RefName" : "Read_Rows_Read_Cols","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_vitis_convolution_Pipeline_Write_Rows_Write_Cols_fu_72", "RefName" : "vitis_convolution_Pipeline_Write_Rows_Write_Cols","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "Write_Rows_Write_Cols","RefName" : "Write_Rows_Write_Cols","ID" : "4","Type" : "pipeline"},]},]
}]}