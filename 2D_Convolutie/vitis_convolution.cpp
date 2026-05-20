#include "vitis_convolution.h"

void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img,
    char kernel[KERNEL_SIZE][KERNEL_SIZE]) 
{
    // FIX: Depth toegevoegd aan de m_axi poorten zodat C/RTL Co-simulatie de buffergrootte weet
    #pragma HLS INTERFACE m_axi port=input_img offset=slave bundle=gmem_in depth=IMG_ROWS*IMG_COLS
    #pragma HLS INTERFACE m_axi port=output_img offset=slave bundle=gmem_out depth=IMG_ROWS*IMG_COLS
    #pragma HLS INTERFACE s_axilite port=kernel bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    static unsigned char local_input[IMG_ROWS][IMG_COLS];
    static char local_output[IMG_ROWS][IMG_COLS];

    Read_Rows: for(int r = 0; r < IMG_ROWS; r++) {
        Read_Cols: for(int c = 0; c < IMG_COLS; c++) {
            #pragma HLS PIPELINE II=1
            local_input[r][c] = input_img[r * IMG_COLS + c];
        }
    }

    Conv_Rows: for(int r = 1; r < IMG_ROWS - 1; r++) {
        Conv_Cols: for(int c = 1; c < IMG_COLS - 1; c++) {
            #pragma HLS PIPELINE II=1
            int sum = 0;

            Kernel_Rows: for(int kr = 0; kr < KERNEL_SIZE; kr++) {
                Kernel_Cols: for(int kc = 0; kc < KERNEL_SIZE; kc++) {
                    int pixel = local_input[r + kr - 1][c + kc - 1];
                    sum += pixel * kernel[kr][kc];
                }
            }
            local_output[r][c] = (char)sum;
        }
    }

    Write_Rows: for(int r = 0; r < IMG_ROWS; r++) {
        Write_Cols: for(int c = 0; c < IMG_COLS; c++) {
            #pragma HLS PIPELINE II=1
            output_img[r * IMG_COLS + c] = local_output[r][c];
        }
    }
}