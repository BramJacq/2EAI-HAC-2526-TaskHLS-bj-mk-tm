//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef VITIS_CONVOLUTION_SUBSYSTEM_MONITOR_SV
`define VITIS_CONVOLUTION_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_axi_wtr_gmem_in)
`uvm_analysis_imp_decl(_axi_rtr_gmem_in)
`uvm_analysis_imp_decl(_axi_wtr_gmem_out)
`uvm_analysis_imp_decl(_axi_rtr_gmem_out)
`uvm_analysis_imp_decl(_axi_wtr_control_r)
`uvm_analysis_imp_decl(_axi_rtr_control_r)
`uvm_analysis_imp_decl(_axi_wtr_control)
`uvm_analysis_imp_decl(_axi_rtr_control)

class vitis_convolution_subsystem_monitor extends uvm_component;

    vitis_convolution_reference_model refm;
    vitis_convolution_scoreboard scbd;

    `uvm_component_utils_begin(vitis_convolution_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_axi_wtr_gmem_in#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) gmem_in_wtr_imp;
    uvm_analysis_imp_axi_rtr_gmem_in#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) gmem_in_rtr_imp;
    uvm_analysis_imp_axi_wtr_gmem_out#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) gmem_out_wtr_imp;
    uvm_analysis_imp_axi_rtr_gmem_out#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) gmem_out_rtr_imp;
    uvm_analysis_imp_axi_wtr_control_r#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) control_r_wtr_imp;
    uvm_analysis_imp_axi_rtr_control_r#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) control_r_rtr_imp;
    uvm_analysis_imp_axi_wtr_control#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) control_wtr_imp;
    uvm_analysis_imp_axi_rtr_control#(axi_pkg::axi_transfer, vitis_convolution_subsystem_monitor) control_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(vitis_convolution_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = vitis_convolution_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        gmem_in_wtr_imp = new("gmem_in_wtr_imp", this);
        gmem_in_rtr_imp = new("gmem_in_rtr_imp", this);
        gmem_out_wtr_imp = new("gmem_out_wtr_imp", this);
        gmem_out_rtr_imp = new("gmem_out_rtr_imp", this);
        control_r_wtr_imp = new("control_r_wtr_imp", this);
        control_r_rtr_imp = new("control_r_rtr_imp", this);
        control_wtr_imp = new("control_wtr_imp", this);
        control_rtr_imp = new("control_rtr_imp", this);
    endfunction

    virtual function void write_axi_wtr_gmem_in(axi_transfer tr);
        refm.write_axi_wtr_gmem_in(tr);
        scbd.write_axi_wtr_gmem_in(tr);
    endfunction

    virtual function void write_axi_rtr_gmem_in(axi_transfer tr);
        refm.write_axi_rtr_gmem_in(tr);
        scbd.write_axi_rtr_gmem_in(tr);
    endfunction

    virtual function void write_axi_wtr_gmem_out(axi_transfer tr);
        refm.write_axi_wtr_gmem_out(tr);
        scbd.write_axi_wtr_gmem_out(tr);
    endfunction

    virtual function void write_axi_rtr_gmem_out(axi_transfer tr);
        refm.write_axi_rtr_gmem_out(tr);
        scbd.write_axi_rtr_gmem_out(tr);
    endfunction

    virtual function void write_axi_wtr_control_r(axi_transfer tr);
        refm.write_axi_wtr_control_r(tr);
        scbd.write_axi_wtr_control_r(tr);
    endfunction

    virtual function void write_axi_rtr_control_r(axi_transfer tr);
        refm.write_axi_rtr_control_r(tr);
        scbd.write_axi_rtr_control_r(tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_transfer tr);
        refm.write_axi_wtr_control(tr);
        scbd.write_axi_wtr_control(tr);
    endfunction

    virtual function void write_axi_rtr_control(axi_transfer tr);
        refm.write_axi_rtr_control(tr);
        scbd.write_axi_rtr_control(tr);
    endfunction
endclass
`endif
