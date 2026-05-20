#ifndef __VITIS_CONVOLUTION_H__
#define __VITIS_CONVOLUTION_H__

#include <ap_int.h>

#define IMG_ROWS 128
#define IMG_COLS 128
#define KERNEL_SIZE 3

void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img,
    char kernel[KERNEL_SIZE][KERNEL_SIZE]
);

#endif