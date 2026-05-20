//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef VITIS_CONVOLUTION_SUBSYSTEM_PKG__SV          
    `define VITIS_CONVOLUTION_SUBSYSTEM_PKG__SV      
                                                     
    package vitis_convolution_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "vitis_convolution_config.sv"           
        `include "vitis_convolution_reference_model.sv"  
        `include "vitis_convolution_scoreboard.sv"       
        `include "vitis_convolution_subsystem_monitor.sv"
        `include "vitis_convolution_virtual_sequencer.sv"
        `include "vitis_convolution_pkg_sequence_lib.sv" 
        `include "vitis_convolution_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
