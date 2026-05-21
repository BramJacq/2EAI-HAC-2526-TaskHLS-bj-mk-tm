# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
kernel { 
	dir I
	width 8
	depth 9
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


set port_control_r {
input_img { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
output_img { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict control_r $port_control_r


