//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef VITIS_CONVOLUTION_ENV__SV                                                                                   
    `define VITIS_CONVOLUTION_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class vitis_convolution_env extends uvm_env;                                                                          
                                                                                                                    
        vitis_convolution_virtual_sequencer vitis_convolution_virtual_sqr;                                                      
        vitis_convolution_config vitis_convolution_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(32,4,8,3,1) axi_master_gmem_in;
        axi_pkg::axi_env#(32,4,8,3,1) axi_master_gmem_out;
        axi_pkg::axi_env#(5,4,4,3,1) axi_lite_control_r;
        axi_pkg::axi_env#(5,4,4,3,1) axi_lite_control;
                                                                                                                    
        vitis_convolution_reference_model   refm;                                                                         
                                                                                                                    
        vitis_convolution_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(vitis_convolution_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (vitis_convolution_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (vitis_convolution_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "vitis_convolution_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void vitis_convolution_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        vitis_convolution_cfg = vitis_convolution_config::type_id::create("vitis_convolution_cfg", this);                           
                                                                                                                    

        vitis_convolution_cfg.gmem_in_cfg.set_default();
        vitis_convolution_cfg.gmem_in_cfg.drv_type = axi_pkg::SLAVE;
        vitis_convolution_cfg.gmem_in_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        vitis_convolution_cfg.gmem_in_cfg.write_latency_mode = TRANSACTION_FIRST;
        vitis_convolution_cfg.gmem_in_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_in*", "cfg", vitis_convolution_cfg.gmem_in_cfg);
        axi_master_gmem_in = axi_pkg::axi_env#(32,4,8,3,1)::type_id::create("axi_master_gmem_in", this);

        vitis_convolution_cfg.gmem_out_cfg.set_default();
        vitis_convolution_cfg.gmem_out_cfg.drv_type = axi_pkg::SLAVE;
        vitis_convolution_cfg.gmem_out_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        vitis_convolution_cfg.gmem_out_cfg.write_latency_mode = TRANSACTION_FIRST;
        vitis_convolution_cfg.gmem_out_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_out*", "cfg", vitis_convolution_cfg.gmem_out_cfg);
        axi_master_gmem_out = axi_pkg::axi_env#(32,4,8,3,1)::type_id::create("axi_master_gmem_out", this);

        vitis_convolution_cfg.control_r_cfg.set_default();
        vitis_convolution_cfg.control_r_cfg.drv_type = axi_pkg::MASTER;
        vitis_convolution_cfg.control_r_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control_r*", "cfg", vitis_convolution_cfg.control_r_cfg);
        axi_lite_control_r = axi_pkg::axi_env#(5,4,4,3,1)::type_id::create("axi_lite_control_r", this);

        vitis_convolution_cfg.control_cfg.set_default();
        vitis_convolution_cfg.control_cfg.drv_type = axi_pkg::MASTER;
        vitis_convolution_cfg.control_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control*", "cfg", vitis_convolution_cfg.control_cfg);
        axi_lite_control = axi_pkg::axi_env#(5,4,4,3,1)::type_id::create("axi_lite_control", this);



        refm = vitis_convolution_reference_model::type_id::create("refm", this);


        uvm_config_db#(vitis_convolution_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = vitis_convolution_subsystem_monitor::type_id::create("subsys_mon", this);


        vitis_convolution_virtual_sqr = vitis_convolution_virtual_sequencer::type_id::create("vitis_convolution_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void vitis_convolution_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(vitis_convolution_cfg.gmem_in_cfg.drv_type==axi_pkg::MASTER ||vitis_convolution_cfg.gmem_in_cfg.drv_type==axi_pkg::SLAVE)
            vitis_convolution_virtual_sqr.gmem_in_sqr = axi_master_gmem_in.vsqr;
        axi_master_gmem_in.item_wtr_port.connect(subsys_mon.gmem_in_wtr_imp);
        axi_master_gmem_in.item_rtr_port.connect(subsys_mon.gmem_in_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_in.state, refm.axi_memaccess_cb_gmem_in);
        if(vitis_convolution_cfg.gmem_out_cfg.drv_type==axi_pkg::MASTER ||vitis_convolution_cfg.gmem_out_cfg.drv_type==axi_pkg::SLAVE)
            vitis_convolution_virtual_sqr.gmem_out_sqr = axi_master_gmem_out.vsqr;
        axi_master_gmem_out.item_wtr_port.connect(subsys_mon.gmem_out_wtr_imp);
        axi_master_gmem_out.item_rtr_port.connect(subsys_mon.gmem_out_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_out.state, refm.axi_memaccess_cb_gmem_out);
        if(vitis_convolution_cfg.control_r_cfg.drv_type==axi_pkg::MASTER ||vitis_convolution_cfg.control_r_cfg.drv_type==axi_pkg::SLAVE)
            vitis_convolution_virtual_sqr.control_r_sqr = axi_lite_control_r.vsqr;
        axi_lite_control_r.item_wtr_port.connect(subsys_mon.control_r_wtr_imp);
        axi_lite_control_r.item_rtr_port.connect(subsys_mon.control_r_rtr_imp);
        if(vitis_convolution_cfg.control_cfg.drv_type==axi_pkg::MASTER ||vitis_convolution_cfg.control_cfg.drv_type==axi_pkg::SLAVE)
            vitis_convolution_virtual_sqr.control_sqr = axi_lite_control.vsqr;
        axi_lite_control.item_wtr_port.connect(subsys_mon.control_wtr_imp);
        axi_lite_control.item_rtr_port.connect(subsys_mon.control_rtr_imp);
        refm.vitis_convolution_cfg = vitis_convolution_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task vitis_convolution_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "vitis_convolution_env is running", UVM_LOW)
    endtask


`endif
