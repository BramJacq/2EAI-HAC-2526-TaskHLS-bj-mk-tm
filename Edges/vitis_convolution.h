#ifndef _VITIS_CONVOLUTION_H_
#define _VITIS_CONVOLUTION_H_

#define IMG_ROWS 128
#define IMG_COLS 128
#define KERNEL_SIZE 3

// Maak de kernel zichtbaar voor zowel de broncode als de testbench
extern char kernel[KERNEL_SIZE][KERNEL_SIZE];

void vitis_convolution(
    volatile unsigned char *input_img,
    volatile char *output_img
);

#endif