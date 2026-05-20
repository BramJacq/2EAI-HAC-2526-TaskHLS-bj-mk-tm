// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Edges/vitis_convolution.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 432 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Edges/vitis_convolution.cpp" 2
# 1 "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Edges/vitis_convolution.h" 1







void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img,
    char kernel[3][3]
);
# 2 "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Edges/vitis_convolution.cpp" 2

void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img,
    char kernel[3][3])
{

#pragma HLS INTERFACE m_axi port=input_img offset=slave bundle=gmem_in depth=IMG_ROWS*IMG_COLS
#pragma HLS INTERFACE m_axi port=output_img offset=slave bundle=gmem_out depth=IMG_ROWS*IMG_COLS
#pragma HLS INTERFACE s_axilite port=kernel bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    static unsigned char local_input[128][128];
    static char local_output[128][128];


    Read_Rows: for(int r = 0; r < 128; r++) {
        Read_Cols: for(int c = 0; c < 128; c++) {
#pragma HLS PIPELINE II=1
            local_input[r][c] = input_img[r * 128 + c];
        }
    }


    Conv_Rows: for(int r = 1; r < 128 - 1; r++) {
        Conv_Cols: for(int c = 1; c < 128 - 1; c++) {
#pragma HLS PIPELINE II=1
            int sum = 0;

            Kernel_Rows: for(int kr = 0; kr < 3; kr++) {
                Kernel_Cols: for(int kc = 0; kc < 3; kc++) {
                    int pixel = local_input[r + kr - 1][c + kc - 1];
                    sum += pixel * kernel[kr][kc];
                }
            }
            local_output[r][c] = (char)sum;
        }
    }


    Write_Rows: for(int r = 0; r < 128; r++) {
        Write_Cols: for(int c = 0; c < 128; c++) {
#pragma HLS PIPELINE II=1
            output_img[r * 128 + c] = local_output[r][c];
        }
    }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_vitis_convolution_ir(volatile unsigned char *, volatile char *, char (*)[3]);
#ifdef __cplusplus
extern "C"
#endif
void vitis_convolution_hw_stub(volatile unsigned char *input_img, volatile char *output_img, char (*kernel)[3]){
vitis_convolution(input_img, output_img, kernel);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_vitis_convolution_sw(volatile unsigned char *input_img, volatile char *output_img, char (*kernel)[3]){
refine_signal_handler();
apatb_vitis_convolution_ir(input_img, output_img, kernel);
return ;
}
#endif
# 48 "C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/Edges/vitis_convolution.cpp"

