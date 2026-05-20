//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef VITIS_CONVOLUTION_REFERENCE_MODEL_SV
`define VITIS_CONVOLUTION_REFERENCE_MODEL_SV
typedef class vitis_convolution_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    vitis_convolution_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="gmem_in") refm.mem_blk_pages_gmem_in.read_elems_pipepage(data, addr, len);
        if(memid=="gmem_out") refm.mem_blk_pages_gmem_out.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class vitis_convolution_reference_model extends uvm_component;
`define TV_IN_gmem_in "../tv/cdatafile/c.vitis_convolution.autotvin_gmem_in.dat"
`define TV_OUT_gmem_in "../tv/rtldatafile/rtl.vitis_convolution.autotvout_gmem_in.dat"
`define TV_IN_OFFSET_input_img "../tv/cdatafile/c.vitis_convolution.autotvin_input_img.dat"
`define TV_IN_gmem_out "../tv/cdatafile/c.vitis_convolution.autotvin_gmem_out.dat"
`define TV_OUT_gmem_out "../tv/rtldatafile/rtl.vitis_convolution.autotvout_gmem_out.dat"
`define TV_IN_OFFSET_output_img "../tv/cdatafile/c.vitis_convolution.autotvin_output_img.dat"
`define TV_IN_input_img "../tv/cdatafile/c.vitis_convolution.autotvin_input_img.dat"
`define TV_OUT_input_img ""
`define TV_IN_output_img "../tv/cdatafile/c.vitis_convolution.autotvin_output_img.dat"
`define TV_OUT_output_img ""
`define TV_IN_kernel "../tv/cdatafile/c.vitis_convolution.autotvin_kernel.dat"
`define TV_OUT_kernel ""
    bit  write_data_finish_control_r;
    bit  write_data_finish_control;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 1;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    vitis_convolution_config vitis_convolution_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(8,8) mem_blk_pages_gmem_in;
    int blk_id_gmem_in = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_in;

    mem_model_pages_with_diffofst#(8,8) mem_blk_pages_gmem_out;
    int blk_id_gmem_out = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_out;

    mem_model_pages#(8,8) mem_blk_pages_control_kernel;
    
    `uvm_component_utils_begin(vitis_convolution_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_gmem_in = new;
        axi_memaccess_cb_gmem_in.refm = this;
        axi_memaccess_cb_gmem_in.memid = "gmem_in";
        axi_memaccess_cb_gmem_out = new;
        axi_memaccess_cb_gmem_out.refm = this;
        axi_memaccess_cb_gmem_out.memid = "gmem_out";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        fpath.push_back(`TV_IN_kernel);
        mem_blk_pages_control_kernel = mem_model_pages#(8,8)::type_id::create("mem_blk_pages_control_kernel");
        mem_blk_pages_control_kernel.set_binary(1);
        mem_blk_pages_control_kernel.tvinload_pagechk_atinit(fpath, 9*((8+7)/8), 0, 16);
        fpath.delete;

        fpath.push_back(`TV_IN_gmem_in);
        mem_blk_pages_gmem_in = mem_model_pages_with_diffofst#(8,8)::type_id::create("mem_blk_pages_gmem_in");
        mem_blk_pages_gmem_in.whole_page_size=16400;
        mem_blk_pages_gmem_in.maxi_bundlevar_fpath["input_img"]=`TV_IN_OFFSET_input_img;
        mem_blk_pages_gmem_in.set_binary(1);
        mem_blk_pages_gmem_in.tvinload_pagechk_atinit(fpath, 16384*((8+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_gmem_out);
        mem_blk_pages_gmem_out = mem_model_pages_with_diffofst#(8,8)::type_id::create("mem_blk_pages_gmem_out");
        mem_blk_pages_gmem_out.whole_page_size=16400;
        mem_blk_pages_gmem_out.maxi_bundlevar_fpath["output_img"]=`TV_IN_OFFSET_output_img;
        mem_blk_pages_gmem_out.set_binary(1);
        mem_blk_pages_gmem_out.tvinload_pagechk_atinit(fpath, 16384*((8+7)/8), 0, 0);
        mem_blk_pages_gmem_out.tvoutdump_atinit(`TV_OUT_gmem_out);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control_r&&write_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control_r = 0;
                write_data_finish_control = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<1; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_gmem_in.incr_rd_page_idx() ;
                mem_blk_pages_gmem_out.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_gmem_in(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_in.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_in(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_gmem_out(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_out.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_out(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control_r(axi_pkg::axi_transfer tr);
    endfunction
    virtual function void write_axi_rtr_control_r(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(0) begin //no block ctrl register processing
        end else begin
        end
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
        end
    endfunction
endclass
`endif
