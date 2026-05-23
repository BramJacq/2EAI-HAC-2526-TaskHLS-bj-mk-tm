# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_vitis_control {
invoer_pixels { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
uitvoer_pixels { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
breedte { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
hoogte { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
kanalen { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict vitis_control $port_vitis_control


