dict set slaves control {ports {kernel {type i_ap_memory width 8} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {kernel {width 8}} has_ctrl 1}
set datawidth 32
set addrwidth 32
set intr_clr_mode TOW
