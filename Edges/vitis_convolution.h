#ifndef VITIS_CONVOLUTION_H_
#define VITIS_CONVOLUTION_H_

#define IMG_ROWS 128
#define IMG_COLS 128
#define KERNEL_SIZE 3

void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img,
    char kernel[KERNEL_SIZE][KERNEL_SIZE]
);

#endif