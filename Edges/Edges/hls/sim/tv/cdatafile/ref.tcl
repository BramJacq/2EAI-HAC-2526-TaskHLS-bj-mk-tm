set depth_list {
  {gmem_in 16384}
  {gmem_out 16384}
  {input_img 1}
  {kernel 9}
  {output_img 1}
}
set trans_depth {
  {input_img { 16384 } gmem_in}
  {kernel { 9 } kernel}
  {output_img { 16384 } gmem_out}
}
set containsVLA 0
set trans_num 1
