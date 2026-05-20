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
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
output_img { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
}
dict set axilite_register_dict control_r $port_control_r


