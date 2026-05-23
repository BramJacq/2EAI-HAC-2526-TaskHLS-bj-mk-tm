# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CONTROL_BUS {
breedte { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
hoogte { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
mode { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CONTROL_BUS $port_CONTROL_BUS


set port_control {
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
}
dict set axilite_register_dict control $port_control


