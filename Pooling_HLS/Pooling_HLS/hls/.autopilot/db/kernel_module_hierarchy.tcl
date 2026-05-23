set ModuleHierarchy {[{
"Name" : "apply_hardware_pooling", "RefName" : "apply_hardware_pooling","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "Loop_Y","RefName" : "Loop_Y","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_apply_hardware_pooling_Pipeline_Read_Rij0_fu_181", "RefName" : "apply_hardware_pooling_Pipeline_Read_Rij0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Read_Rij0","RefName" : "Read_Rij0","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_apply_hardware_pooling_Pipeline_Read_Rij1_fu_190", "RefName" : "apply_hardware_pooling_Pipeline_Read_Rij1","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Read_Rij1","RefName" : "Read_Rij1","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "grp_apply_hardware_pooling_Pipeline_Pool_X_fu_199", "RefName" : "apply_hardware_pooling_Pipeline_Pool_X","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Pool_X","RefName" : "Pool_X","ID" : "7","Type" : "pipeline"},]},]},]
}]}