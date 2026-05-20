# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten vitis_convolution/Read_Rows
set_directive_array_partition vitis_convolution/vitis_convolution(unsigned char volatile*, char volatile*, char (*) {[3])::local_input} -dim=1 -type=cyclic -factor=3 vitis_convolution(unsigned char volatile*, char volatile*, char (*) {[3])::local_input}
set_directive_loop_flatten vitis_convolution/Conv_Rows
set_directive_loop_flatten vitis_convolution/Write_Rows
