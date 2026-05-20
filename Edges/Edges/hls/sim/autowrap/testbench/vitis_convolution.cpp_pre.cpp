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
