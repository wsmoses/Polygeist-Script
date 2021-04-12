#map0 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>
#map1 = affine_map<(d0) -> (d0 * 32)>
#map2 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#set = affine_set<()[s0] : (s0 - 1 >= 0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("w\00")
  llvm.mlir.global internal constant @str2("begin dump: %s\00")
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c4000_i32 = constant 4000 : i32
    %c42_i32 = constant 42 : i32
    %c0_i64 = constant 0 : i64
    %true = constant true
    %false = constant false
    %c0_i32 = constant 0 : i32
    %0 = memref.alloca() : memref<1xf64>
    %1 = memref.alloca() : memref<1xf64>
    %2 = memref.alloc() : memref<4000x4000xf64>
    %3 = memref.alloc() : memref<4000xf64>
    %4 = memref.alloc() : memref<4000xf64>
    %5 = memref.alloc() : memref<4000xf64>
    %6 = memref.alloc() : memref<4000xf64>
    %7 = memref.alloc() : memref<4000xf64>
    %8 = memref.alloc() : memref<4000xf64>
    %9 = memref.alloc() : memref<4000xf64>
    %10 = memref.alloc() : memref<4000xf64>
    %11 = memref.cast %0 : memref<1xf64> to memref<?xf64>
    %12 = memref.cast %1 : memref<1xf64> to memref<?xf64>
    %13 = memref.cast %2 : memref<4000x4000xf64> to memref<?x4000xf64>
    %14 = memref.cast %3 : memref<4000xf64> to memref<?xf64>
    %15 = memref.cast %4 : memref<4000xf64> to memref<?xf64>
    %16 = memref.cast %5 : memref<4000xf64> to memref<?xf64>
    %17 = memref.cast %6 : memref<4000xf64> to memref<?xf64>
    %18 = memref.cast %7 : memref<4000xf64> to memref<?xf64>
    %19 = memref.cast %8 : memref<4000xf64> to memref<?xf64>
    %20 = memref.cast %9 : memref<4000xf64> to memref<?xf64>
    %21 = memref.cast %10 : memref<4000xf64> to memref<?xf64>
    call @init_array(%c4000_i32, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (i32, memref<?xf64>, memref<?xf64>, memref<?x4000xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    call @polybench_timer_start() : () -> ()
    %22 = affine.load %0[0] : memref<1xf64>
    %23 = affine.load %1[0] : memref<1xf64>
    call @kernel_gemver_opt(%c4000_i32, %22, %23, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (i32, f64, f64, memref<?x4000xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %24 = cmpi sgt, %arg0, %c42_i32 : i32
    %25 = scf.if %24 -> (i1) {
      %26 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %27 = llvm.load %26 : !llvm.ptr<ptr<i8>>
      %28 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %29 = llvm.getelementptr %28[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %30 = llvm.call @strcmp(%27, %29) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %31 = trunci %30 : i32 to i1
      %32 = xor %31, %true : i1
      scf.yield %32 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %25 {
      call @print_array(%c4000_i32, %18) : (i32, memref<?xf64>) -> ()
    }
    memref.dealloc %2 : memref<4000x4000xf64>
    memref.dealloc %3 : memref<4000xf64>
    memref.dealloc %4 : memref<4000xf64>
    memref.dealloc %5 : memref<4000xf64>
    memref.dealloc %6 : memref<4000xf64>
    memref.dealloc %7 : memref<4000xf64>
    memref.dealloc %8 : memref<4000xf64>
    memref.dealloc %9 : memref<4000xf64>
    memref.dealloc %10 : memref<4000xf64>
    return %c0_i32 : i32
  }
  func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?x4000xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %cst = constant 1.500000e+00 : f64
    %cst_0 = constant 1.200000e+00 : f64
    %c0_i32 = constant 0 : i32
    %cst_1 = constant 2.000000e+00 : f64
    %cst_2 = constant 4.000000e+00 : f64
    %cst_3 = constant 6.000000e+00 : f64
    %cst_4 = constant 8.000000e+00 : f64
    %cst_5 = constant 9.000000e+00 : f64
    %cst_6 = constant 0.000000e+00 : f64
    %c1_i32 = constant 1 : i32
    affine.store %cst, %arg1[0] : memref<?xf64>
    affine.store %cst_0, %arg2[0] : memref<?xf64>
    %0 = sitofp %arg0 : i32 to f64
    %1 = scf.while (%arg12 = %c0_i32) : (i32) -> i32 {
      %2 = cmpi slt, %arg12, %arg0 : i32
      scf.condition(%2) %arg12 : i32
    } do {
    ^bb0(%arg12: i32):  // no predecessors
      %2 = index_cast %arg12 : i32 to index
      %3 = sitofp %arg12 : i32 to f64
      memref.store %3, %arg4[%2] : memref<?xf64>
      %4 = addi %arg12, %c1_i32 : i32
      %5 = sitofp %4 : i32 to f64
      %6 = divf %5, %0 : f64
      %7 = divf %6, %cst_1 : f64
      memref.store %7, %arg6[%2] : memref<?xf64>
      %8 = divf %6, %cst_2 : f64
      memref.store %8, %arg5[%2] : memref<?xf64>
      %9 = divf %6, %cst_3 : f64
      memref.store %9, %arg7[%2] : memref<?xf64>
      %10 = divf %6, %cst_4 : f64
      memref.store %10, %arg10[%2] : memref<?xf64>
      %11 = divf %6, %cst_5 : f64
      memref.store %11, %arg11[%2] : memref<?xf64>
      memref.store %cst_6, %arg9[%2] : memref<?xf64>
      memref.store %cst_6, %arg8[%2] : memref<?xf64>
      %12 = scf.while (%arg13 = %c0_i32) : (i32) -> i32 {
        %13 = cmpi slt, %arg13, %arg0 : i32
        scf.condition(%13) %arg13 : i32
      } do {
      ^bb0(%arg13: i32):  // no predecessors
        %13 = index_cast %arg13 : i32 to index
        %14 = muli %arg12, %arg13 : i32
        %15 = remi_signed %14, %arg0 : i32
        %16 = sitofp %15 : i32 to f64
        %17 = divf %16, %0 : f64
        memref.store %17, %arg3[%2, %13] : memref<?x4000xf64>
        %18 = addi %arg13, %c1_i32 : i32
        scf.yield %18 : i32
      }
      scf.yield %4 : i32
    }
    return
  }
  func private @polybench_timer_start()
  func private @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x4000xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %0 = index_cast %arg0 : i32 to index
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S0(%arg3, %arg12, %arg13, %arg7, %arg6, %arg5, %arg4) : (memref<?x4000xf64>, index, index, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S1(%arg9, %arg12, %arg10, %arg13, %arg2, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x4000xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to %0 {
      call @S2(%arg9, %arg12, %arg11) : (memref<?xf64>, index, memref<?xf64>) -> ()
    }
    affine.for %arg12 = 0 to %0 {
      affine.for %arg13 = 0 to %0 {
        call @S3(%arg8, %arg12, %arg9, %arg13, %arg1, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x4000xf64>) -> ()
      }
    }
    return
  }
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @S0(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    %1 = affine.load %arg6[symbol(%arg1)] : memref<?xf64>
    %2 = affine.load %arg5[symbol(%arg2)] : memref<?xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    %5 = affine.load %arg4[symbol(%arg1)] : memref<?xf64>
    %6 = affine.load %arg3[symbol(%arg2)] : memref<?xf64>
    %7 = mulf %5, %6 : f64
    %8 = addf %4, %7 : f64
    affine.store %8, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    return
  }
  func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: f64, %arg5: memref<?x4000xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1)] : memref<?xf64>
    %1 = affine.load %arg5[symbol(%arg3), symbol(%arg1)] : memref<?x4000xf64>
    %2 = mulf %arg4, %1 : f64
    %3 = affine.load %arg2[symbol(%arg3)] : memref<?xf64>
    %4 = mulf %2, %3 : f64
    %5 = addf %0, %4 : f64
    affine.store %5, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1)] : memref<?xf64>
    %1 = affine.load %arg2[symbol(%arg1)] : memref<?xf64>
    %2 = addf %0, %1 : f64
    affine.store %2, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @S3(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: f64, %arg5: memref<?x4000xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1)] : memref<?xf64>
    %1 = affine.load %arg5[symbol(%arg1), symbol(%arg3)] : memref<?x4000xf64>
    %2 = mulf %arg4, %1 : f64
    %3 = affine.load %arg2[symbol(%arg3)] : memref<?xf64>
    %4 = mulf %2, %3 : f64
    %5 = addf %0, %4 : f64
    affine.store %5, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @kernel_gemver_opt(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x4000xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %0 = index_cast %arg0 : i32 to index
    affine.if #set()[%0] {
      affine.for %arg12 = 0 to #map0()[%0] {
        affine.for %arg13 = 0 to #map0()[%0] {
          affine.for %arg14 = #map1(%arg13) to min #map2(%arg13)[%0] {
            affine.for %arg15 = #map1(%arg12) to min #map2(%arg12)[%0] {
              call @S0(%arg3, %arg14, %arg15, %arg7, %arg6, %arg5, %arg4) : (memref<?x4000xf64>, index, index, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
              call @S1(%arg9, %arg15, %arg10, %arg14, %arg2, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x4000xf64>) -> ()
            }
          }
        }
      }
      affine.for %arg12 = 0 to #map0()[%0] {
        affine.for %arg13 = #map1(%arg12) to min #map2(%arg12)[%0] {
          call @S2(%arg9, %arg13, %arg11) : (memref<?xf64>, index, memref<?xf64>) -> ()
        }
      }
      affine.for %arg12 = 0 to #map0()[%0] {
        affine.for %arg13 = 0 to #map0()[%0] {
          affine.for %arg14 = #map1(%arg12) to min #map2(%arg12)[%0] {
            affine.for %arg15 = #map1(%arg13) to min #map2(%arg13)[%0] {
              call @S3(%arg8, %arg14, %arg9, %arg15, %arg1, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x4000xf64>) -> ()
            }
          }
        }
      }
    }
    return
  }
  func private @print_array(%arg0: i32, %arg1: memref<?xf64>) {
    %c0_i64 = constant 0 : i64
    %c0_i32 = constant 0 : i32
    %c20_i32 = constant 20 : i32
    %c1_i32 = constant 1 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %2 = llvm.mlir.addressof @str1 : !llvm.ptr<array<23 x i8>>
    %3 = llvm.getelementptr %2[%c0_i64, %c0_i64] : (!llvm.ptr<array<23 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.call @fprintf(%1, %3) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
    %5 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %7 = llvm.mlir.addressof @str2 : !llvm.ptr<array<15 x i8>>
    %8 = llvm.getelementptr %7[%c0_i64, %c0_i64] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %9 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %10 = llvm.getelementptr %9[%c0_i64, %c0_i64] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %11 = llvm.call @fprintf(%6, %8, %10) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %12 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %25 = cmpi slt, %arg2, %arg0 : i32
      scf.condition(%25) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %25 = index_cast %arg2 : i32 to index
      %26 = remi_signed %arg2, %c20_i32 : i32
      %27 = cmpi eq, %26, %c0_i32 : i32
      scf.if %27 {
        %35 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %37 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
        %38 = llvm.getelementptr %37[%c0_i64, %c0_i64] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
        %39 = llvm.call @fprintf(%36, %38) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
      }
      %28 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %29 = llvm.load %28 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %30 = llvm.mlir.addressof @str5 : !llvm.ptr<array<8 x i8>>
      %31 = llvm.getelementptr %30[%c0_i64, %c0_i64] : (!llvm.ptr<array<8 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %32 = memref.load %arg1[%25] : memref<?xf64>
      %33 = llvm.call @fprintf(%29, %31, %32) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
      %34 = addi %arg2, %c1_i32 : i32
      scf.yield %34 : i32
    }
    %13 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %15 = llvm.mlir.addressof @str6 : !llvm.ptr<array<17 x i8>>
    %16 = llvm.getelementptr %15[%c0_i64, %c0_i64] : (!llvm.ptr<array<17 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %17 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %18 = llvm.getelementptr %17[%c0_i64, %c0_i64] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %19 = llvm.call @fprintf(%14, %16, %18) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %20 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %22 = llvm.mlir.addressof @str7 : !llvm.ptr<array<23 x i8>>
    %23 = llvm.getelementptr %22[%c0_i64, %c0_i64] : (!llvm.ptr<array<23 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %24 = llvm.call @fprintf(%21, %23) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
    return
  }
}

