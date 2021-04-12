#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (-d0 + 4000)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("x\00")
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
    %cst = constant 2.000000e+00 : f64
    %c4_i32 = constant 4 : i32
    %c1_i32 = constant 1 : i32
    %c0_i32 = constant 0 : i32
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c4000 = constant 4000 : index
    %0 = memref.alloc() : memref<4000x4000xf64>
    %1 = memref.alloc() : memref<4000xf64>
    %2 = memref.alloc() : memref<4000xf64>
    %3 = memref.alloc() : memref<4000xf64>
    %4 = memref.cast %2 : memref<4000xf64> to memref<?xf64>
    %5 = sitofp %c4000_i32 : i32 to f64
    %6 = scf.for %arg2 = %c0 to %c4000 step %c1 iter_args(%arg3 = %c0_i32) -> (i32) {
      %22 = index_cast %arg3 : i32 to index
      %23 = sitofp %c0_i32 : i32 to f64
      memref.store %23, %2[%22] : memref<4000xf64>
      memref.store %23, %3[%22] : memref<4000xf64>
      %24 = addi %arg3, %c1_i32 : i32
      %25 = sitofp %24 : i32 to f64
      %26 = divf %25, %5 : f64
      %27 = divf %26, %cst : f64
      %28 = sitofp %c4_i32 : i32 to f64
      %29 = addf %27, %28 : f64
      memref.store %29, %1[%22] : memref<4000xf64>
      scf.yield %24 : i32
    }
    %7 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %22 = cmpi slt, %arg2, %c4000_i32 : i32
      scf.condition(%22) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %22 = index_cast %arg2 : i32 to index
      %23 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        %28 = cmpi sle, %arg3, %arg2 : i32
        scf.condition(%28) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):  // no predecessors
        %28 = index_cast %arg3 : i32 to index
        %29 = subi %c0_i32, %arg3 : i32
        %30 = remi_signed %29, %c4000_i32 : i32
        %31 = sitofp %30 : i32 to f64
        %32 = divf %31, %5 : f64
        %33 = sitofp %c1_i32 : i32 to f64
        %34 = addf %32, %33 : f64
        memref.store %34, %0[%22, %28] : memref<4000x4000xf64>
        %35 = addi %arg3, %c1_i32 : i32
        scf.yield %35 : i32
      }
      %24 = addi %arg2, %c1_i32 : i32
      %25 = addi %22, %c1 : index
      %26 = scf.for %arg3 = %25 to %c4000 step %c1 iter_args(%arg4 = %24) -> (i32) {
        %28 = index_cast %arg4 : i32 to index
        %29 = sitofp %c0_i32 : i32 to f64
        memref.store %29, %0[%22, %28] : memref<4000x4000xf64>
        %30 = addi %arg4, %c1_i32 : i32
        scf.yield %30 : i32
      }
      %27 = sitofp %c1_i32 : i32 to f64
      memref.store %27, %0[%22, %22] : memref<4000x4000xf64>
      scf.yield %24 : i32
    }
    %8 = memref.alloc() : memref<4000x4000xf64>
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        %22 = sitofp %c0_i32 : i32 to f64
        memref.store %22, %8[%arg2, %arg3] : memref<4000x4000xf64>
      }
    }
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        scf.for %arg4 = %c0 to %c4000 step %c1 {
          %22 = memref.load %0[%arg3, %arg2] : memref<4000x4000xf64>
          %23 = memref.load %0[%arg4, %arg2] : memref<4000x4000xf64>
          %24 = mulf %22, %23 : f64
          %25 = memref.load %8[%arg3, %arg4] : memref<4000x4000xf64>
          %26 = addf %25, %24 : f64
          memref.store %26, %8[%arg3, %arg4] : memref<4000x4000xf64>
        }
      }
    }
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        %22 = memref.load %8[%arg2, %arg3] : memref<4000x4000xf64>
        memref.store %22, %0[%arg2, %arg3] : memref<4000x4000xf64>
      }
    }
    memref.dealloc %8 : memref<4000x4000xf64>
    call @polybench_timer_start() : () -> ()
    %9 = memref.alloca() : memref<1xf64>
    affine.for %arg2 = 0 to 4000 {
      %22 = affine.load %0[0, %arg2] : memref<4000x4000xf64>
      affine.store %22, %9[0] : memref<1xf64>
      %23 = affine.load %9[0] : memref<1xf64>
      affine.store %23, %0[0, %arg2] : memref<4000x4000xf64>
    }
    %10 = affine.load %0[1, 0] : memref<4000x4000xf64>
    affine.store %10, %9[0] : memref<1xf64>
    %11 = affine.load %9[0] : memref<1xf64>
    %12 = affine.load %0[0, 0] : memref<4000x4000xf64>
    %13 = divf %11, %12 : f64
    affine.store %13, %0[1, 0] : memref<4000x4000xf64>
    affine.for %arg2 = 1 to 4000 {
      %22 = affine.load %0[1, %arg2] : memref<4000x4000xf64>
      affine.store %22, %9[0] : memref<1xf64>
      %23 = affine.load %9[0] : memref<1xf64>
      %24 = affine.load %0[1, 0] : memref<4000x4000xf64>
      %25 = affine.load %0[0, %arg2] : memref<4000x4000xf64>
      %26 = mulf %24, %25 : f64
      %27 = subf %23, %26 : f64
      affine.store %27, %9[0] : memref<1xf64>
      %28 = affine.load %9[0] : memref<1xf64>
      affine.store %28, %0[1, %arg2] : memref<4000x4000xf64>
    }
    affine.for %arg2 = 2 to 4000 {
      %22 = affine.load %0[%arg2, 0] : memref<4000x4000xf64>
      affine.store %22, %9[0] : memref<1xf64>
      %23 = affine.load %9[0] : memref<1xf64>
      %24 = affine.load %0[0, 0] : memref<4000x4000xf64>
      %25 = divf %23, %24 : f64
      affine.store %25, %0[%arg2, 0] : memref<4000x4000xf64>
      affine.for %arg3 = 1 to #map0(%arg2) {
        %26 = affine.load %0[%arg2, %arg3] : memref<4000x4000xf64>
        affine.store %26, %9[0] : memref<1xf64>
        affine.for %arg4 = 0 to #map0(%arg3) {
          %30 = affine.load %9[0] : memref<1xf64>
          %31 = affine.load %0[%arg2, %arg4] : memref<4000x4000xf64>
          %32 = affine.load %0[%arg4, %arg3] : memref<4000x4000xf64>
          %33 = mulf %31, %32 : f64
          %34 = subf %30, %33 : f64
          affine.store %34, %9[0] : memref<1xf64>
        }
        %27 = affine.load %9[0] : memref<1xf64>
        %28 = affine.load %0[%arg3, %arg3] : memref<4000x4000xf64>
        %29 = divf %27, %28 : f64
        affine.store %29, %0[%arg2, %arg3] : memref<4000x4000xf64>
      }
      affine.for %arg3 = #map0(%arg2) to 4000 {
        %26 = affine.load %0[%arg2, %arg3] : memref<4000x4000xf64>
        affine.store %26, %9[0] : memref<1xf64>
        affine.for %arg4 = 0 to #map0(%arg2) {
          %28 = affine.load %9[0] : memref<1xf64>
          %29 = affine.load %0[%arg2, %arg4] : memref<4000x4000xf64>
          %30 = affine.load %0[%arg4, %arg3] : memref<4000x4000xf64>
          %31 = mulf %29, %30 : f64
          %32 = subf %28, %31 : f64
          affine.store %32, %9[0] : memref<1xf64>
        }
        %27 = affine.load %9[0] : memref<1xf64>
        affine.store %27, %0[%arg2, %arg3] : memref<4000x4000xf64>
      }
    }
    %14 = affine.load %1[0] : memref<4000xf64>
    affine.store %14, %9[0] : memref<1xf64>
    %15 = affine.load %9[0] : memref<1xf64>
    affine.store %15, %3[0] : memref<4000xf64>
    affine.for %arg2 = 1 to 4000 {
      %22 = affine.load %1[%arg2] : memref<4000xf64>
      affine.store %22, %9[0] : memref<1xf64>
      affine.for %arg3 = 0 to #map0(%arg2) {
        %24 = affine.load %9[0] : memref<1xf64>
        %25 = affine.load %0[%arg2, %arg3] : memref<4000x4000xf64>
        %26 = affine.load %3[%arg3] : memref<4000xf64>
        %27 = mulf %25, %26 : f64
        %28 = subf %24, %27 : f64
        affine.store %28, %9[0] : memref<1xf64>
      }
      %23 = affine.load %9[0] : memref<1xf64>
      affine.store %23, %3[%arg2] : memref<4000xf64>
    }
    %16 = affine.load %3[3999] : memref<4000xf64>
    affine.store %16, %9[0] : memref<1xf64>
    %17 = affine.load %9[0] : memref<1xf64>
    %18 = affine.load %0[3999, 3999] : memref<4000x4000xf64>
    %19 = divf %17, %18 : f64
    affine.store %19, %2[3999] : memref<4000xf64>
    affine.for %arg2 = 1 to 4000 {
      %22 = affine.load %3[-%arg2 + 3999] : memref<4000xf64>
      affine.store %22, %9[0] : memref<1xf64>
      affine.for %arg3 = #map1(%arg2) to 4000 {
        %26 = affine.load %9[0] : memref<1xf64>
        %27 = affine.load %0[-%arg2 + 3999, %arg3] : memref<4000x4000xf64>
        %28 = affine.load %2[%arg3] : memref<4000xf64>
        %29 = mulf %27, %28 : f64
        %30 = subf %26, %29 : f64
        affine.store %30, %9[0] : memref<1xf64>
      }
      %23 = affine.load %9[0] : memref<1xf64>
      %24 = affine.load %0[-%arg2 + 3999, -%arg2 + 3999] : memref<4000x4000xf64>
      %25 = divf %23, %24 : f64
      affine.store %25, %2[-%arg2 + 3999] : memref<4000xf64>
    }
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %20 = cmpi sgt, %arg0, %c42_i32 : i32
    %21 = scf.if %20 -> (i1) {
      %22 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %23 = llvm.load %22 : !llvm.ptr<ptr<i8>>
      %24 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %25 = llvm.getelementptr %24[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %26 = llvm.call @strcmp(%23, %25) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %27 = trunci %26 : i32 to i1
      %28 = xor %27, %true : i1
      scf.yield %28 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %21 {
      call @print_array(%c4000_i32, %4) : (i32, memref<?xf64>) -> ()
    }
    memref.dealloc %0 : memref<4000x4000xf64>
    memref.dealloc %1 : memref<4000xf64>
    memref.dealloc %2 : memref<4000xf64>
    memref.dealloc %3 : memref<4000xf64>
    return %c0_i32 : i32
  }
  func private @polybench_timer_start()
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @S0(%arg0: memref<1xf64>, %arg1: memref<?x4000xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[symbol(%arg2), symbol(%arg3)] : memref<?x4000xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S1(%arg0: memref<1xf64>, %arg1: memref<?x4000xf64>, %arg2: index, %arg3: index, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg1[symbol(%arg4), symbol(%arg2)] : memref<?x4000xf64>
    %2 = affine.load %arg1[symbol(%arg2), symbol(%arg3)] : memref<?x4000xf64>
    %3 = mulf %1, %2 : f64
    %4 = subf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S2(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index, %arg3: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[0] : memref<1xf64>
    %1 = affine.load %arg0[symbol(%arg2), symbol(%arg2)] : memref<?x4000xf64>
    %2 = divf %0, %1 : f64
    affine.store %2, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    return
  }
  func private @S3(%arg0: memref<1xf64>, %arg1: memref<?x4000xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[symbol(%arg2), symbol(%arg3)] : memref<?x4000xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S4(%arg0: memref<1xf64>, %arg1: memref<?x4000xf64>, %arg2: index, %arg3: index, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg1[symbol(%arg4), symbol(%arg2)] : memref<?x4000xf64>
    %2 = affine.load %arg1[symbol(%arg2), symbol(%arg3)] : memref<?x4000xf64>
    %3 = mulf %1, %2 : f64
    %4 = subf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S5(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index, %arg3: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[0] : memref<1xf64>
    affine.store %0, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    return
  }
  func private @S6(%arg0: memref<1xf64>, %arg1: memref<?xf64>, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[symbol(%arg2)] : memref<?xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S7(%arg0: memref<1xf64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?x4000xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg3[symbol(%arg4), symbol(%arg2)] : memref<?x4000xf64>
    %2 = affine.load %arg1[symbol(%arg2)] : memref<?xf64>
    %3 = mulf %1, %2 : f64
    %4 = subf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S8(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[0] : memref<1xf64>
    affine.store %0, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @S9(%arg0: memref<1xf64>, %arg1: memref<?xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[-symbol(%arg2) + symbol(%arg3) - 1] : memref<?xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S10(%arg0: memref<1xf64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?x4000xf64>, %arg4: index, %arg5: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg3[-symbol(%arg4) + symbol(%arg5) - 1, symbol(%arg2)] : memref<?x4000xf64>
    %2 = affine.load %arg1[symbol(%arg2)] : memref<?xf64>
    %3 = mulf %1, %2 : f64
    %4 = subf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S11(%arg0: memref<?xf64>, %arg1: index, %arg2: index, %arg3: memref<?x4000xf64>, %arg4: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[0] : memref<1xf64>
    %1 = affine.load %arg3[-symbol(%arg1) + symbol(%arg2) - 1, -symbol(%arg1) + symbol(%arg2) - 1] : memref<?x4000xf64>
    %2 = divf %0, %1 : f64
    affine.store %2, %arg0[-symbol(%arg1) + symbol(%arg2) - 1] : memref<?xf64>
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

