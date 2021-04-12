#map = affine_map<(d0) -> (d0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("C\00")
  llvm.mlir.global internal constant @str2("begin dump: %s\00")
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c2000_i32 = constant 2000 : i32
    %c2600_i32 = constant 2600 : i32
    %c42_i32 = constant 42 : i32
    %c0_i64 = constant 0 : i64
    %true = constant true
    %false = constant false
    %cst = constant 1.500000e+00 : f64
    %cst_0 = constant 1.200000e+00 : f64
    %c100_i32 = constant 100 : i32
    %c-999_i32 = constant -999 : i32
    %c1_i32 = constant 1 : i32
    %c1 = constant 1 : index
    %c2000 = constant 2000 : index
    %c0_i32 = constant 0 : i32
    %0 = memref.alloca() : memref<1xf64>
    %1 = memref.alloca() : memref<1xf64>
    %2 = memref.alloc() : memref<2000x2600xf64>
    %3 = memref.alloc() : memref<2000x2000xf64>
    %4 = memref.alloc() : memref<2000x2600xf64>
    %5 = memref.cast %2 : memref<2000x2600xf64> to memref<?x2600xf64>
    affine.store %cst, %0[0] : memref<1xf64>
    affine.store %cst_0, %1[0] : memref<1xf64>
    %6:2 = scf.while (%arg2 = %c0_i32) : (i32) -> (i32, i32) {
      %13 = cmpi slt, %arg2, %c2000_i32 : i32
      scf.condition(%13) %c0_i32, %arg2 : i32, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32):  // no predecessors
      %13 = index_cast %arg3 : i32 to index
      %14 = scf.while (%arg4 = %c0_i32) : (i32) -> i32 {
        %16 = cmpi slt, %arg4, %c2600_i32 : i32
        scf.condition(%16) %arg4 : i32
      } do {
      ^bb0(%arg4: i32):  // no predecessors
        %16 = index_cast %arg4 : i32 to index
        %17 = addi %arg3, %arg4 : i32
        %18 = remi_signed %17, %c100_i32 : i32
        %19 = sitofp %18 : i32 to f64
        %20 = sitofp %c2000_i32 : i32 to f64
        %21 = divf %19, %20 : f64
        memref.store %21, %2[%13, %16] : memref<2000x2600xf64>
        %22 = addi %arg3, %c2600_i32 : i32
        %23 = subi %22, %arg4 : i32
        %24 = remi_signed %23, %c100_i32 : i32
        %25 = sitofp %24 : i32 to f64
        %26 = divf %25, %20 : f64
        memref.store %26, %4[%13, %16] : memref<2000x2600xf64>
        %27 = addi %arg4, %c1_i32 : i32
        scf.yield %27 : i32
      }
      %15 = addi %arg3, %c1_i32 : i32
      scf.yield %15 : i32
    }
    %7 = scf.while (%arg2 = %6#0) : (i32) -> i32 {
      %13 = cmpi slt, %arg2, %c2000_i32 : i32
      scf.condition(%13) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %13 = index_cast %arg2 : i32 to index
      %14 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        %18 = cmpi sle, %arg3, %arg2 : i32
        scf.condition(%18) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):  // no predecessors
        %18 = index_cast %arg3 : i32 to index
        %19 = addi %arg2, %arg3 : i32
        %20 = remi_signed %19, %c100_i32 : i32
        %21 = sitofp %20 : i32 to f64
        %22 = sitofp %c2000_i32 : i32 to f64
        %23 = divf %21, %22 : f64
        memref.store %23, %3[%13, %18] : memref<2000x2000xf64>
        %24 = addi %arg3, %c1_i32 : i32
        scf.yield %24 : i32
      }
      %15 = addi %arg2, %c1_i32 : i32
      %16 = addi %13, %c1 : index
      %17 = scf.for %arg3 = %16 to %c2000 step %c1 iter_args(%arg4 = %15) -> (i32) {
        %18 = index_cast %arg4 : i32 to index
        %19 = sitofp %c-999_i32 : i32 to f64
        memref.store %19, %3[%13, %18] : memref<2000x2000xf64>
        %20 = addi %arg4, %c1_i32 : i32
        scf.yield %20 : i32
      }
      scf.yield %15 : i32
    }
    call @polybench_timer_start() : () -> ()
    %8 = affine.load %0[0] : memref<1xf64>
    %9 = affine.load %1[0] : memref<1xf64>
    %10 = memref.alloca() : memref<1xf64>
    affine.for %arg2 = 0 to 2600 {
      %13 = sitofp %c0_i32 : i32 to f64
      affine.store %13, %10[0] : memref<1xf64>
      %14 = affine.load %2[0, %arg2] : memref<2000x2600xf64>
      %15 = mulf %9, %14 : f64
      %16 = affine.load %4[0, %arg2] : memref<2000x2600xf64>
      %17 = mulf %8, %16 : f64
      %18 = affine.load %3[0, 0] : memref<2000x2000xf64>
      %19 = mulf %17, %18 : f64
      %20 = addf %15, %19 : f64
      %21 = affine.load %10[0] : memref<1xf64>
      %22 = mulf %8, %21 : f64
      %23 = addf %20, %22 : f64
      affine.store %23, %2[0, %arg2] : memref<2000x2600xf64>
    }
    affine.for %arg2 = 1 to 2000 {
      affine.for %arg3 = 0 to 2600 {
        %13 = affine.load %2[0, %arg3] : memref<2000x2600xf64>
        %14 = affine.load %4[%arg2, %arg3] : memref<2000x2600xf64>
        %15 = mulf %8, %14 : f64
        %16 = affine.load %3[%arg2, 0] : memref<2000x2000xf64>
        %17 = mulf %15, %16 : f64
        %18 = addf %13, %17 : f64
        affine.store %18, %2[0, %arg3] : memref<2000x2600xf64>
        %19 = sitofp %c0_i32 : i32 to f64
        affine.store %19, %10[0] : memref<1xf64>
        %20 = affine.load %10[0] : memref<1xf64>
        %21 = affine.load %4[0, %arg3] : memref<2000x2600xf64>
        %22 = affine.load %3[%arg2, 0] : memref<2000x2000xf64>
        %23 = mulf %21, %22 : f64
        %24 = addf %20, %23 : f64
        affine.store %24, %10[0] : memref<1xf64>
        affine.for %arg4 = 1 to #map(%arg2) {
          %35 = affine.load %2[%arg4, %arg3] : memref<2000x2600xf64>
          %36 = affine.load %4[%arg2, %arg3] : memref<2000x2600xf64>
          %37 = mulf %8, %36 : f64
          %38 = affine.load %3[%arg2, %arg4] : memref<2000x2000xf64>
          %39 = mulf %37, %38 : f64
          %40 = addf %35, %39 : f64
          affine.store %40, %2[%arg4, %arg3] : memref<2000x2600xf64>
          %41 = affine.load %10[0] : memref<1xf64>
          %42 = affine.load %4[%arg4, %arg3] : memref<2000x2600xf64>
          %43 = affine.load %3[%arg2, %arg4] : memref<2000x2000xf64>
          %44 = mulf %42, %43 : f64
          %45 = addf %41, %44 : f64
          affine.store %45, %10[0] : memref<1xf64>
        }
        %25 = affine.load %2[%arg2, %arg3] : memref<2000x2600xf64>
        %26 = mulf %9, %25 : f64
        %27 = affine.load %4[%arg2, %arg3] : memref<2000x2600xf64>
        %28 = mulf %8, %27 : f64
        %29 = affine.load %3[%arg2, %arg2] : memref<2000x2000xf64>
        %30 = mulf %28, %29 : f64
        %31 = addf %26, %30 : f64
        %32 = affine.load %10[0] : memref<1xf64>
        %33 = mulf %8, %32 : f64
        %34 = addf %31, %33 : f64
        affine.store %34, %2[%arg2, %arg3] : memref<2000x2600xf64>
      }
    }
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %11 = cmpi sgt, %arg0, %c42_i32 : i32
    %12 = scf.if %11 -> (i1) {
      %13 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<i8>>
      %15 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %16 = llvm.getelementptr %15[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %17 = llvm.call @strcmp(%14, %16) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %18 = trunci %17 : i32 to i1
      %19 = xor %18, %true : i1
      scf.yield %19 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %12 {
      call @print_array(%c2000_i32, %c2600_i32, %5) : (i32, i32, memref<?x2600xf64>) -> ()
    }
    memref.dealloc %2 : memref<2000x2600xf64>
    memref.dealloc %3 : memref<2000x2000xf64>
    memref.dealloc %4 : memref<2000x2600xf64>
    return %c0_i32 : i32
  }
  func private @polybench_timer_start()
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @S0(%arg0: memref<1xf64>) attributes {scop.stmt} {
    %c0_i32 = constant 0 : i32
    %0 = sitofp %c0_i32 : i32 to f64
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S1(%arg0: memref<?x2600xf64>, %arg1: index, %arg2: index, %arg3: memref<?x2000xf64>, %arg4: index, %arg5: f64, %arg6: memref<?x2600xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x2600xf64>
    %1 = affine.load %arg6[symbol(%arg4), symbol(%arg2)] : memref<?x2600xf64>
    %2 = mulf %arg5, %1 : f64
    %3 = affine.load %arg3[symbol(%arg4), symbol(%arg1)] : memref<?x2000xf64>
    %4 = mulf %2, %3 : f64
    %5 = addf %0, %4 : f64
    affine.store %5, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x2600xf64>
    return
  }
  func private @S2(%arg0: memref<1xf64>, %arg1: memref<?x2000xf64>, %arg2: index, %arg3: index, %arg4: memref<?x2600xf64>, %arg5: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg4[symbol(%arg3), symbol(%arg5)] : memref<?x2600xf64>
    %2 = affine.load %arg1[symbol(%arg2), symbol(%arg3)] : memref<?x2000xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S3(%arg0: memref<?x2600xf64>, %arg1: index, %arg2: index, %arg3: f64, %arg4: memref<1xf64>, %arg5: memref<?x2000xf64>, %arg6: memref<?x2600xf64>, %arg7: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x2600xf64>
    %1 = mulf %arg7, %0 : f64
    %2 = affine.load %arg6[symbol(%arg1), symbol(%arg2)] : memref<?x2600xf64>
    %3 = mulf %arg3, %2 : f64
    %4 = affine.load %arg5[symbol(%arg1), symbol(%arg1)] : memref<?x2000xf64>
    %5 = mulf %3, %4 : f64
    %6 = addf %1, %5 : f64
    %7 = affine.load %arg4[0] : memref<1xf64>
    %8 = mulf %arg3, %7 : f64
    %9 = addf %6, %8 : f64
    affine.store %9, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x2600xf64>
    return
  }
  func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?x2600xf64>) {
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
    %12 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
      %25 = cmpi slt, %arg3, %arg0 : i32
      scf.condition(%25) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):  // no predecessors
      %25 = index_cast %arg3 : i32 to index
      %26 = scf.while (%arg4 = %c0_i32) : (i32) -> i32 {
        %28 = cmpi slt, %arg4, %arg1 : i32
        scf.condition(%28) %arg4 : i32
      } do {
      ^bb0(%arg4: i32):  // no predecessors
        %28 = index_cast %arg4 : i32 to index
        %29 = muli %arg3, %arg0 : i32
        %30 = addi %29, %arg4 : i32
        %31 = remi_signed %30, %c20_i32 : i32
        %32 = cmpi eq, %31, %c0_i32 : i32
        scf.if %32 {
          %40 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %41 = llvm.load %40 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %42 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
          %43 = llvm.getelementptr %42[%c0_i64, %c0_i64] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
          %44 = llvm.call @fprintf(%41, %43) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
        }
        %33 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %35 = llvm.mlir.addressof @str5 : !llvm.ptr<array<8 x i8>>
        %36 = llvm.getelementptr %35[%c0_i64, %c0_i64] : (!llvm.ptr<array<8 x i8>>, i64, i64) -> !llvm.ptr<i8>
        %37 = memref.load %arg2[%25, %28] : memref<?x2600xf64>
        %38 = llvm.call @fprintf(%34, %36, %37) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
        %39 = addi %arg4, %c1_i32 : i32
        scf.yield %39 : i32
      }
      %27 = addi %arg3, %c1_i32 : i32
      scf.yield %27 : i32
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

