//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef VITIS_CONVOLUTION_CONFIG__SV                        
    `define VITIS_CONVOLUTION_CONFIG__SV                    
                                                            
    class vitis_convolution_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        axi_pkg::axi_cfg gmem_in_cfg;
        axi_pkg::axi_cfg gmem_out_cfg;
        axi_pkg::axi_cfg control_r_cfg;
        axi_pkg::axi_cfg control_cfg;

        `uvm_object_utils_begin(vitis_convolution_config)         
        `uvm_field_object(gmem_in_cfg, UVM_DEFAULT);
        `uvm_field_object(gmem_out_cfg, UVM_DEFAULT);
        `uvm_field_object(control_r_cfg, UVM_DEFAULT);
        `uvm_field_object(control_cfg, UVM_DEFAULT);
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "vitis_convolution_config");
            super.new(name);                                
            gmem_in_cfg = new("gmem_in_cfg", 1);
            gmem_out_cfg = new("gmem_out_cfg", 1);
            control_r_cfg = axi_pkg::axi_cfg::type_id::create("control_r_cfg");
            control_cfg = axi_pkg::axi_cfg::type_id::create("control_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
