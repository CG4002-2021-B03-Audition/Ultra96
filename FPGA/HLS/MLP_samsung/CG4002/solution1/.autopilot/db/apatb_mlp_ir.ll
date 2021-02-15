; ModuleID = 'F:/CNNproj/Ultra96/FPGA/HLS/MLP_samsung/CG4002/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.hls::axis" = type { %struct.ap_uint, %struct.ap_uint.1, %struct.ap_uint.1, %struct.ap_uint.4, %struct.ap_uint.4, %struct.ap_uint.4, %struct.ap_uint.4 }
%struct.ap_uint = type { %struct.ap_fixed_base.13 }
%struct.ap_fixed_base.13 = type { %struct.ssdm_int.14 }
%struct.ssdm_int.14 = type { i32 }
%struct.ap_uint.1 = type { %struct.ap_int_base.2 }
%struct.ap_int_base.2 = type { %struct.ssdm_int.3 }
%struct.ssdm_int.3 = type { i4 }
%struct.ap_uint.4 = type { %struct.ap_int_base.5 }
%struct.ap_int_base.5 = type { %struct.ssdm_int.6 }
%struct.ssdm_int.6 = type { i1 }

; Function Attrs: noinline
define void @apatb_mlp_ir(%"struct.hls::axis"* %in, %"struct.hls::axis"* %out) local_unnamed_addr #0 {
entry:
  %in_copy = alloca %"struct.hls::axis", align 512
  %out_copy = alloca %"struct.hls::axis", align 512
  call fastcc void @copy_in(%"struct.hls::axis"* %in, %"struct.hls::axis"* nonnull align 512 %in_copy, %"struct.hls::axis"* %out, %"struct.hls::axis"* nonnull align 512 %out_copy)
  call void @apatb_mlp_hw(%"struct.hls::axis"* %in_copy, %"struct.hls::axis"* %out_copy)
  call fastcc void @copy_out(%"struct.hls::axis"* %in, %"struct.hls::axis"* nonnull align 512 %in_copy, %"struct.hls::axis"* %out, %"struct.hls::axis"* nonnull align 512 %out_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"struct.hls::axis"*, %"struct.hls::axis"* noalias align 512, %"struct.hls::axis"*, %"struct.hls::axis"* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.hls::axis"(%"struct.hls::axis"* align 512 %1, %"struct.hls::axis"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.hls::axis"(%"struct.hls::axis"* align 512 %3, %"struct.hls::axis"* %2)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.hls::axis"(%"struct.hls::axis"* noalias align 512, %"struct.hls::axis"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.hls::axis"* %0, null
  %3 = icmp eq %"struct.hls::axis"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 0
  %.01 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 0
  %5 = bitcast %"struct.hls::axis"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01, %struct.ap_uint* %.0)
  br label %16

; <label>:8:                                      ; preds = %copy
  %.0.08 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 0, i32 0
  %.01.09 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_fixed_base.13(%struct.ap_fixed_base.13* align 512 %.01.09, %struct.ap_fixed_base.13* %.0.08)
  br label %16

; <label>:11:                                     ; preds = %8
  %.0.0.010 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.011 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* align 512 %.01.0.011, %struct.ssdm_int.14* %.0.0.010)
  br label %16

; <label>:14:                                     ; preds = %11
  %15 = bitcast %"struct.hls::axis"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %5, i64 4, i1 false)
  br label %16

; <label>:16:                                     ; preds = %14, %13, %10, %7
  %.1 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 1
  %.12 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 1
  %17 = bitcast %struct.ap_uint.1* %.1 to i8*
  %18 = call i1 @fpga_fifo_exist_1(i8* %17)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call fastcc void @streamcpy_hls.p0struct.ap_uint.1(%struct.ap_uint.1* %.12, %struct.ap_uint.1* %.1)
  br label %31

; <label>:20:                                     ; preds = %16
  %.1.014 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 1, i32 0
  %.12.015 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 1, i32 0
  %21 = bitcast %struct.ap_int_base.2* %.1.014 to i8*
  %22 = call i1 @fpga_fifo_exist_1(i8* %21)
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.2(%struct.ap_int_base.2* %.12.015, %struct.ap_int_base.2* %.1.014)
  br label %31

; <label>:24:                                     ; preds = %20
  %.1.0.016 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 1, i32 0, i32 0
  %.12.0.017 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 1, i32 0, i32 0
  %25 = bitcast %struct.ssdm_int.3* %.1.0.016 to i8*
  %26 = call i1 @fpga_fifo_exist_1(i8* %25)
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.3(%struct.ssdm_int.3* %.12.0.017, %struct.ssdm_int.3* %.1.0.016)
  br label %31

; <label>:28:                                     ; preds = %24
  %.12.0.0.019.gep51 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %29 = bitcast i4* %.12.0.0.019.gep51 to i8*
  %.1.0.0.018.gep52 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %30 = bitcast i4* %.1.0.0.018.gep52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 1, i1 false)
  br label %31

; <label>:31:                                     ; preds = %28, %27, %23, %19
  %.2 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 2
  %.23 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 2
  %32 = bitcast %struct.ap_uint.1* %.2 to i8*
  %33 = call i1 @fpga_fifo_exist_1(i8* %32)
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  call fastcc void @streamcpy_hls.p0struct.ap_uint.1(%struct.ap_uint.1* %.23, %struct.ap_uint.1* %.2)
  br label %46

; <label>:35:                                     ; preds = %31
  %.2.020 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 2, i32 0
  %.23.021 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 2, i32 0
  %36 = bitcast %struct.ap_int_base.2* %.2.020 to i8*
  %37 = call i1 @fpga_fifo_exist_1(i8* %36)
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.2(%struct.ap_int_base.2* %.23.021, %struct.ap_int_base.2* %.2.020)
  br label %46

; <label>:39:                                     ; preds = %35
  %.2.0.022 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 2, i32 0, i32 0
  %.23.0.023 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 2, i32 0, i32 0
  %40 = bitcast %struct.ssdm_int.3* %.2.0.022 to i8*
  %41 = call i1 @fpga_fifo_exist_1(i8* %40)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.3(%struct.ssdm_int.3* %.23.0.023, %struct.ssdm_int.3* %.2.0.022)
  br label %46

; <label>:43:                                     ; preds = %39
  %.23.0.0.025.gep53 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %44 = bitcast i4* %.23.0.0.025.gep53 to i8*
  %.2.0.0.024.gep54 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 2, i32 0, i32 0, i32 0
  %45 = bitcast i4* %.2.0.0.024.gep54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 %45, i64 1, i1 false)
  br label %46

; <label>:46:                                     ; preds = %43, %42, %38, %34
  %.3 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 3
  %.34 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 3
  %47 = bitcast %struct.ap_uint.4* %.3 to i8*
  %48 = call i1 @fpga_fifo_exist_1(i8* %47)
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  call fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* %.34, %struct.ap_uint.4* %.3)
  br label %61

; <label>:50:                                     ; preds = %46
  %.3.026 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 3, i32 0
  %.34.027 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 3, i32 0
  %51 = bitcast %struct.ap_int_base.5* %.3.026 to i8*
  %52 = call i1 @fpga_fifo_exist_1(i8* %51)
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %50
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* %.34.027, %struct.ap_int_base.5* %.3.026)
  br label %61

; <label>:54:                                     ; preds = %50
  %.3.0.028 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 3, i32 0, i32 0
  %.34.0.029 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 3, i32 0, i32 0
  %55 = bitcast %struct.ssdm_int.6* %.3.0.028 to i8*
  %56 = call i1 @fpga_fifo_exist_1(i8* %55)
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* %.34.0.029, %struct.ssdm_int.6* %.3.0.028)
  br label %61

; <label>:58:                                     ; preds = %54
  %.34.0.0.031.gep55 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %59 = bitcast i1* %.34.0.0.031.gep55 to i8*
  %.3.0.0.030.gep56 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 3, i32 0, i32 0, i32 0
  %60 = bitcast i1* %.3.0.0.030.gep56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %60, i64 1, i1 false)
  br label %61

; <label>:61:                                     ; preds = %58, %57, %53, %49
  %.4 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 4
  %.45 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 4
  %62 = bitcast %struct.ap_uint.4* %.4 to i8*
  %63 = call i1 @fpga_fifo_exist_1(i8* %62)
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  call fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* %.45, %struct.ap_uint.4* %.4)
  br label %76

; <label>:65:                                     ; preds = %61
  %.4.032 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 4, i32 0
  %.45.033 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 4, i32 0
  %66 = bitcast %struct.ap_int_base.5* %.4.032 to i8*
  %67 = call i1 @fpga_fifo_exist_1(i8* %66)
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %65
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* %.45.033, %struct.ap_int_base.5* %.4.032)
  br label %76

; <label>:69:                                     ; preds = %65
  %.4.0.034 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 4, i32 0, i32 0
  %.45.0.035 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 4, i32 0, i32 0
  %70 = bitcast %struct.ssdm_int.6* %.4.0.034 to i8*
  %71 = call i1 @fpga_fifo_exist_1(i8* %70)
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %69
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* %.45.0.035, %struct.ssdm_int.6* %.4.0.034)
  br label %76

; <label>:73:                                     ; preds = %69
  %.45.0.0.037.gep57 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 4, i32 0, i32 0, i32 0
  %74 = bitcast i1* %.45.0.0.037.gep57 to i8*
  %.4.0.0.036.gep58 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 4, i32 0, i32 0, i32 0
  %75 = bitcast i1* %.4.0.0.036.gep58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 1, i1 false)
  br label %76

; <label>:76:                                     ; preds = %73, %72, %68, %64
  %.5 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 5
  %.56 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 5
  %77 = bitcast %struct.ap_uint.4* %.5 to i8*
  %78 = call i1 @fpga_fifo_exist_1(i8* %77)
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %76
  call fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* %.56, %struct.ap_uint.4* %.5)
  br label %91

; <label>:80:                                     ; preds = %76
  %.5.038 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 5, i32 0
  %.56.039 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 5, i32 0
  %81 = bitcast %struct.ap_int_base.5* %.5.038 to i8*
  %82 = call i1 @fpga_fifo_exist_1(i8* %81)
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %80
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* %.56.039, %struct.ap_int_base.5* %.5.038)
  br label %91

; <label>:84:                                     ; preds = %80
  %.5.0.040 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 5, i32 0, i32 0
  %.56.0.041 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 5, i32 0, i32 0
  %85 = bitcast %struct.ssdm_int.6* %.5.0.040 to i8*
  %86 = call i1 @fpga_fifo_exist_1(i8* %85)
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* %.56.0.041, %struct.ssdm_int.6* %.5.0.040)
  br label %91

; <label>:88:                                     ; preds = %84
  %.56.0.0.043.gep59 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 5, i32 0, i32 0, i32 0
  %89 = bitcast i1* %.56.0.0.043.gep59 to i8*
  %.5.0.0.042.gep60 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 5, i32 0, i32 0, i32 0
  %90 = bitcast i1* %.5.0.0.042.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 1 %90, i64 1, i1 false)
  br label %91

; <label>:91:                                     ; preds = %88, %87, %83, %79
  %.6 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 6
  %.67 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 6
  %92 = bitcast %struct.ap_uint.4* %.6 to i8*
  %93 = call i1 @fpga_fifo_exist_1(i8* %92)
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %91
  call fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* %.67, %struct.ap_uint.4* %.6)
  br label %ret

; <label>:95:                                     ; preds = %91
  %.6.044 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 6, i32 0
  %.67.045 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 6, i32 0
  %96 = bitcast %struct.ap_int_base.5* %.6.044 to i8*
  %97 = call i1 @fpga_fifo_exist_1(i8* %96)
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %95
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* %.67.045, %struct.ap_int_base.5* %.6.044)
  br label %ret

; <label>:99:                                     ; preds = %95
  %.6.0.046 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 6, i32 0, i32 0
  %.67.0.047 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 6, i32 0, i32 0
  %100 = bitcast %struct.ssdm_int.6* %.6.0.046 to i8*
  %101 = call i1 @fpga_fifo_exist_1(i8* %100)
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %99
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* %.67.0.047, %struct.ssdm_int.6* %.6.0.046)
  br label %ret

; <label>:103:                                    ; preds = %99
  %.67.0.0.049.gep61 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %0, i32 0, i32 6, i32 0, i32 0, i32 0
  %104 = bitcast i1* %.67.0.0.049.gep61 to i8*
  %.6.0.0.048.gep62 = getelementptr %"struct.hls::axis", %"struct.hls::axis"* %1, i32 0, i32 6, i32 0, i32 0, i32 0
  %105 = bitcast i1* %.6.0.0.048.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %104, i8* align 1 %105, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %103, %102, %98, %94, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 512, %struct.ap_uint* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_fixed_base.13(%struct.ap_fixed_base.13* noalias nocapture align 512, %struct.ap_fixed_base.13* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_fixed_base.13
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_fixed_base.13* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_fixed_base.13* %2 to i8*
  %6 = bitcast %struct.ap_fixed_base.13* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_fixed_base.13, %struct.ap_fixed_base.13* %2
  %8 = bitcast %struct.ap_fixed_base.13* %2 to i8*
  %9 = bitcast %struct.ap_fixed_base.13* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_fixed_base.13* %1 to i8*
  %11 = bitcast %struct.ap_fixed_base.13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.14(%struct.ssdm_int.14* noalias nocapture align 512, %struct.ssdm_int.14* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.14
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.14* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.14* %2 to i8*
  %6 = bitcast %struct.ssdm_int.14* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.14, %struct.ssdm_int.14* %2
  %8 = bitcast %struct.ssdm_int.14* %2 to i8*
  %9 = bitcast %struct.ssdm_int.14* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.14* %1 to i8*
  %11 = bitcast %struct.ssdm_int.14* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.1(%struct.ap_uint.1* noalias nocapture, %struct.ap_uint.1* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.1* %2 to i8*
  %6 = bitcast %struct.ap_uint.1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.1, %struct.ap_uint.1* %2
  %8 = bitcast %struct.ap_uint.1* %2 to i8*
  %9 = bitcast %struct.ap_uint.1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.1* %1 to i8*
  %11 = bitcast %struct.ap_uint.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.2(%struct.ap_int_base.2* noalias nocapture, %struct.ap_int_base.2* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.2* %2 to i8*
  %6 = bitcast %struct.ap_int_base.2* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.2, %struct.ap_int_base.2* %2
  %8 = bitcast %struct.ap_int_base.2* %2 to i8*
  %9 = bitcast %struct.ap_int_base.2* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.2* %1 to i8*
  %11 = bitcast %struct.ap_int_base.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.3(%struct.ssdm_int.3* noalias nocapture, %struct.ssdm_int.3* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.3* %2 to i8*
  %6 = bitcast %struct.ssdm_int.3* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.3, %struct.ssdm_int.3* %2
  %8 = bitcast %struct.ssdm_int.3* %2 to i8*
  %9 = bitcast %struct.ssdm_int.3* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.3* %1 to i8*
  %11 = bitcast %struct.ssdm_int.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.4(%struct.ap_uint.4* noalias nocapture, %struct.ap_uint.4* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_uint.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.4* %2 to i8*
  %6 = bitcast %struct.ap_uint.4* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.4, %struct.ap_uint.4* %2
  %8 = bitcast %struct.ap_uint.4* %2 to i8*
  %9 = bitcast %struct.ap_uint.4* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.4* %1 to i8*
  %11 = bitcast %struct.ap_uint.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.5(%struct.ap_int_base.5* noalias nocapture, %struct.ap_int_base.5* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ap_int_base.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.5* %2 to i8*
  %6 = bitcast %struct.ap_int_base.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.5, %struct.ap_int_base.5* %2
  %8 = bitcast %struct.ap_int_base.5* %2 to i8*
  %9 = bitcast %struct.ap_int_base.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.5* %1 to i8*
  %11 = bitcast %struct.ap_int_base.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.6(%struct.ssdm_int.6* noalias nocapture, %struct.ssdm_int.6* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %struct.ssdm_int.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.6* %2 to i8*
  %6 = bitcast %struct.ssdm_int.6* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.6, %struct.ssdm_int.6* %2
  %8 = bitcast %struct.ssdm_int.6* %2 to i8*
  %9 = bitcast %struct.ssdm_int.6* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.6* %1 to i8*
  %11 = bitcast %struct.ssdm_int.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"struct.hls::axis"*, %"struct.hls::axis"* noalias align 512, %"struct.hls::axis"*, %"struct.hls::axis"* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.hls::axis"(%"struct.hls::axis"* %0, %"struct.hls::axis"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.hls::axis"(%"struct.hls::axis"* %2, %"struct.hls::axis"* align 512 %3)
  ret void
}

declare void @apatb_mlp_hw(%"struct.hls::axis"*, %"struct.hls::axis"*)

define void @mlp_hw_stub_wrapper(%"struct.hls::axis"*, %"struct.hls::axis"*) #6 {
entry:
  call void @copy_out(%"struct.hls::axis"* null, %"struct.hls::axis"* %0, %"struct.hls::axis"* null, %"struct.hls::axis"* %1)
  call void @mlp_hw_stub(%"struct.hls::axis"* %0, %"struct.hls::axis"* %1)
  call void @copy_in(%"struct.hls::axis"* null, %"struct.hls::axis"* %0, %"struct.hls::axis"* null, %"struct.hls::axis"* %1)
  ret void
}

declare void @mlp_hw_stub(%"struct.hls::axis"*, %"struct.hls::axis"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
