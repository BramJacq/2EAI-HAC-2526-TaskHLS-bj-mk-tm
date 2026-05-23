; ModuleID = 'C:/2EAI-HAC-2526-TaskHLS-bj-mk-tm/2D_Convolutie_HLS/2D_Convolutie_HLS/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: noinline
define void @apatb_filter_afbeelding_ir(%"struct.ap_uint<32>"* noalias nocapture nonnull readonly "maxi" %invoer_pixels, %"struct.ap_uint<32>"* noalias nocapture nonnull "maxi" %uitvoer_pixels, i32 %breedte, i32 %hoogte, i32 %kanalen) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_uint<32>"* %invoer_pixels to [65536 x %"struct.ap_uint<32>"]*
  %1 = call i8* @malloc(i64 262144)
  %invoer_pixels_copy = bitcast i8* %1 to [65536 x i32]*
  %2 = bitcast %"struct.ap_uint<32>"* %uitvoer_pixels to [65536 x %"struct.ap_uint<32>"]*
  %3 = call i8* @malloc(i64 262144)
  %uitvoer_pixels_copy = bitcast i8* %3 to [65536 x i32]*
  call fastcc void @copy_in([65536 x %"struct.ap_uint<32>"]* nonnull %0, [65536 x i32]* %invoer_pixels_copy, [65536 x %"struct.ap_uint<32>"]* nonnull %2, [65536 x i32]* %uitvoer_pixels_copy)
  call void @apatb_filter_afbeelding_hw([65536 x i32]* %invoer_pixels_copy, [65536 x i32]* %uitvoer_pixels_copy, i32 %breedte, i32 %hoogte, i32 %kanalen)
  call void @copy_back([65536 x %"struct.ap_uint<32>"]* %0, [65536 x i32]* %invoer_pixels_copy, [65536 x %"struct.ap_uint<32>"]* %2, [65536 x i32]* %uitvoer_pixels_copy)
  call void @free(i8* %1)
  call void @free(i8* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([65536 x %"struct.ap_uint<32>"]* readonly "unpacked"="0", [65536 x i32]* nocapture "unpacked"="1.0", [65536 x %"struct.ap_uint<32>"]* readonly "unpacked"="2", [65536 x i32]* nocapture "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>.12"([65536 x i32]* %1, [65536 x %"struct.ap_uint<32>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>.12"([65536 x i32]* %3, [65536 x %"struct.ap_uint<32>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a65536struct.ap_uint<32>"([65536 x %"struct.ap_uint<32>"]* %dst, [65536 x %"struct.ap_uint<32>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [65536 x %"struct.ap_uint<32>"]* %src, null
  %1 = icmp eq [65536 x %"struct.ap_uint<32>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [65536 x %"struct.ap_uint<32>"], [65536 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [65536 x %"struct.ap_uint<32>"], [65536 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([65536 x %"struct.ap_uint<32>"]* "unpacked"="0", [65536 x i32]* nocapture readonly "unpacked"="1.0", [65536 x %"struct.ap_uint<32>"]* "unpacked"="2", [65536 x i32]* nocapture readonly "unpacked"="3.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>"([65536 x %"struct.ap_uint<32>"]* %0, [65536 x i32]* %1)
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>"([65536 x %"struct.ap_uint<32>"]* %2, [65536 x i32]* %3)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>"([65536 x %"struct.ap_uint<32>"]* "unpacked"="0" %dst, [65536 x i32]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [65536 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a65536struct.ap_uint<32>.8"([65536 x %"struct.ap_uint<32>"]* nonnull %dst, [65536 x i32]* %src, i64 65536)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a65536struct.ap_uint<32>.8"([65536 x %"struct.ap_uint<32>"]* "unpacked"="0" %dst, [65536 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [65536 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [65536 x i32], [65536 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [65536 x %"struct.ap_uint<32>"], [65536 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>.12"([65536 x i32]* nocapture "unpacked"="0.0" %dst, [65536 x %"struct.ap_uint<32>"]* readonly "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [65536 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a65536struct.ap_uint<32>.15"([65536 x i32]* %dst, [65536 x %"struct.ap_uint<32>"]* nonnull %src, i64 65536)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a65536struct.ap_uint<32>.15"([65536 x i32]* nocapture "unpacked"="0.0" %dst, [65536 x %"struct.ap_uint<32>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [65536 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [65536 x %"struct.ap_uint<32>"], [65536 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [65536 x i32], [65536 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_filter_afbeelding_hw([65536 x i32]*, [65536 x i32]*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([65536 x %"struct.ap_uint<32>"]* "unpacked"="0", [65536 x i32]* nocapture readonly "unpacked"="1.0", [65536 x %"struct.ap_uint<32>"]* "unpacked"="2", [65536 x i32]* nocapture readonly "unpacked"="3.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a65536struct.ap_uint<32>"([65536 x %"struct.ap_uint<32>"]* %2, [65536 x i32]* %3)
  ret void
}

declare void @filter_afbeelding_hw_stub(%"struct.ap_uint<32>"* noalias nocapture nonnull readonly, %"struct.ap_uint<32>"* noalias nocapture nonnull, i32, i32, i32)

define void @filter_afbeelding_hw_stub_wrapper([65536 x i32]*, [65536 x i32]*, i32, i32, i32) #5 {
entry:
  %5 = call i8* @malloc(i64 262144)
  %6 = bitcast i8* %5 to [65536 x %"struct.ap_uint<32>"]*
  %7 = call i8* @malloc(i64 262144)
  %8 = bitcast i8* %7 to [65536 x %"struct.ap_uint<32>"]*
  call void @copy_out([65536 x %"struct.ap_uint<32>"]* %6, [65536 x i32]* %0, [65536 x %"struct.ap_uint<32>"]* %8, [65536 x i32]* %1)
  %9 = bitcast [65536 x %"struct.ap_uint<32>"]* %6 to %"struct.ap_uint<32>"*
  %10 = bitcast [65536 x %"struct.ap_uint<32>"]* %8 to %"struct.ap_uint<32>"*
  call void @filter_afbeelding_hw_stub(%"struct.ap_uint<32>"* %9, %"struct.ap_uint<32>"* %10, i32 %2, i32 %3, i32 %4)
  call void @copy_in([65536 x %"struct.ap_uint<32>"]* %6, [65536 x i32]* %0, [65536 x %"struct.ap_uint<32>"]* %8, [65536 x i32]* %1)
  call void @free(i8* %5)
  call void @free(i8* %7)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
