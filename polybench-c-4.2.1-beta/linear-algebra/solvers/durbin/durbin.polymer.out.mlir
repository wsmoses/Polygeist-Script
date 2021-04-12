#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 * 2)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 * 3)>
#map5 = affine_map<(d0, d1) -> (d0 * -2 + d1)>
#set = affine_set<()[s0] : (s0 - 2 >= 0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("y\00")
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
    %0 = memref.alloc() : memref<4000xf64>
    %1 = memref.alloc() : memref<4000xf64>
    %2 = memref.cast %0 : memref<4000xf64> to memref<?xf64>
    call @init_array(%c4000_i32, %2) : (i32, memref<?xf64>) -> ()
    call @polybench_timer_start() : () -> ()
    %3 = memref.cast %1 : memref<4000xf64> to memref<?xf64>
    call @kernel_durbin_opt(%c4000_i32, %2, %3) : (i32, memref<?xf64>, memref<?xf64>) -> ()
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %4 = cmpi sgt, %arg0, %c42_i32 : i32
    %5 = scf.if %4 -> (i1) {
      %6 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %7 = llvm.load %6 : !llvm.ptr<ptr<i8>>
      %8 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %9 = llvm.getelementptr %8[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %10 = llvm.call @strcmp(%7, %9) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %11 = trunci %10 : i32 to i1
      %12 = xor %11, %true : i1
      scf.yield %12 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %5 {
      call @print_array(%c4000_i32, %3) : (i32, memref<?xf64>) -> ()
    }
    memref.dealloc %0 : memref<4000xf64>
    memref.dealloc %1 : memref<4000xf64>
    return %c0_i32 : i32
  }
  func private @init_array(%arg0: i32, %arg1: memref<?xf64>) {
    %c0_i32 = constant 0 : i32
    %c1_i32 = constant 1 : i32
    %0 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %1 = cmpi slt, %arg2, %arg0 : i32
      scf.condition(%1) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %1 = index_cast %arg2 : i32 to index
      %2 = addi %arg0, %c1_i32 : i32
      %3 = subi %2, %arg2 : i32
      %4 = sitofp %3 : i32 to f64
      memref.store %4, %arg1[%1] : memref<?xf64>
      %5 = addi %arg2, %c1_i32 : i32
      scf.yield %5 : i32
    }
    return
  }
  func private @polybench_timer_start()
  func private @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %0 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %1 = memref.alloca() : memref<4000xf64>
    %2 = memref.alloca() : memref<1xf64>
    %3 = memref.alloca() : memref<1xf64>
    %4 = memref.alloca() : memref<1xf64>
    call @S0(%arg2, %arg1) : (memref<?xf64>, memref<?xf64>) -> ()
    call @S1(%3) : (memref<1xf64>) -> ()
    call @S2(%2, %arg2) : (memref<1xf64>, memref<?xf64>) -> ()
    %5 = index_cast %arg0 : i32 to index
    affine.for %arg3 = 1 to %5 {
      call @S3(%3, %2) : (memref<1xf64>, memref<1xf64>) -> ()
      call @S4(%4) : (memref<1xf64>) -> ()
      affine.for %arg4 = 0 to #map0(%arg3) {
        call @S5(%4, %arg2, %arg4, %arg1, %arg3) : (memref<1xf64>, memref<?xf64>, index, memref<?xf64>, index) -> ()
      }
      call @S6(%0, %3, %4, %arg1, %arg3) : (memref<1xf64>, memref<1xf64>, memref<1xf64>, memref<?xf64>, index) -> ()
      call @S7(%2, %0) : (memref<1xf64>, memref<1xf64>) -> ()
      affine.for %arg4 = 0 to #map0(%arg3) {
        call @S8(%arg4, %1, %arg2, %arg3, %0) : (index, memref<4000xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
      }
      affine.for %arg4 = 0 to #map0(%arg3) {
        call @S9(%arg2, %arg4, %1) : (memref<?xf64>, index, memref<4000xf64>) -> ()
      }
      call @S10(%arg2, %arg3, %2) : (memref<?xf64>, index, memref<1xf64>) -> ()
    }
    return
  }
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @S0(%arg0: memref<?xf64>, %arg1: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<?xf64>
    %1 = negf %0 : f64
    affine.store %1, %arg0[0] : memref<?xf64>
    return
  }
  func private @S1(%arg0: memref<1xf64>) attributes {scop.stmt} {
    %cst = constant 1.000000e+00 : f64
    affine.store %cst, %arg0[0] : memref<1xf64>
    return
  }
  func private @S2(%arg0: memref<1xf64>, %arg1: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<?xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S3(%arg0: memref<1xf64>, %arg1: memref<1xf64>) attributes {scop.stmt} {
    %c1_i32 = constant 1 : i32
    %0 = sitofp %c1_i32 : i32 to f64
    %1 = affine.load %arg1[0] : memref<1xf64>
    %2 = mulf %1, %1 : f64
    %3 = subf %0, %2 : f64
    %4 = affine.load %arg0[0] : memref<1xf64>
    %5 = mulf %3, %4 : f64
    affine.store %5, %arg0[0] : memref<1xf64>
    return
  }
  func private @S4(%arg0: memref<1xf64>) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[0] : memref<1xf64>
    return
  }
  func private @S5(%arg0: memref<1xf64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[0] : memref<1xf64>
    %1 = affine.load %arg3[symbol(%arg4) - symbol(%arg2) - 1] : memref<?xf64>
    %2 = affine.load %arg1[symbol(%arg2)] : memref<?xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[0] : memref<1xf64>
    return
  }
  func private @S6(%arg0: memref<1xf64>, %arg1: memref<1xf64>, %arg2: memref<1xf64>, %arg3: memref<?xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg3[symbol(%arg4)] : memref<?xf64>
    %1 = affine.load %arg2[0] : memref<1xf64>
    %2 = addf %0, %1 : f64
    %3 = negf %2 : f64
    %4 = affine.load %arg1[0] : memref<1xf64>
    %5 = divf %3, %4 : f64
    affine.store %5, %arg0[0] : memref<1xf64>
    return
  }
  func private @S7(%arg0: memref<1xf64>, %arg1: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<1xf64>
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func private @S8(%arg0: index, %arg1: memref<4000xf64>, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[symbol(%arg0)] : memref<?xf64>
    %1 = affine.load %arg4[0] : memref<1xf64>
    %2 = affine.load %arg2[symbol(%arg3) - symbol(%arg0) - 1] : memref<?xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg1[symbol(%arg0)] : memref<4000xf64>
    return
  }
  func private @S9(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<4000xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[symbol(%arg1)] : memref<4000xf64>
    affine.store %0, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @S10(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[0] : memref<1xf64>
    affine.store %0, %arg0[symbol(%arg1)] : memref<?xf64>
    return
  }
  func private @kernel_durbin_opt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c0 = constant 0 : index
    %0 = memref.alloca() : memref<4000xf64>
    %1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %2 = memref.alloca() : memref<1xf64>
    %3 = memref.alloca() : memref<1xf64>
    %4 = memref.alloca() : memref<1xf64>
    %5 = index_cast %arg0 : i32 to index
    affine.if #set()[%5] {
      call @S1(%4) : (memref<1xf64>) -> ()
      call @S0(%arg2, %arg1) : (memref<?xf64>, memref<?xf64>) -> ()
      call @S2(%3, %arg2) : (memref<1xf64>, memref<?xf64>) -> ()
      affine.for %arg3 = 1 to %5 {
        call @S4(%2) : (memref<1xf64>) -> ()
        call @S5(%2, %arg2, %c0, %arg1, %arg3) : (memref<1xf64>, memref<?xf64>, index, memref<?xf64>, index) -> ()
        call @S3(%4, %3) : (memref<1xf64>, memref<1xf64>) -> ()
        affine.for %arg4 = 1 to #map0(%arg3) {
          call @S5(%2, %arg2, %arg4, %arg1, %arg3) : (memref<1xf64>, memref<?xf64>, index, memref<?xf64>, index) -> ()
        }
        call @S6(%1, %4, %2, %arg1, %arg3) : (memref<1xf64>, memref<1xf64>, memref<1xf64>, memref<?xf64>, index) -> ()
        call @S8(%c0, %0, %arg2, %arg3, %1) : (index, memref<4000xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
        call @S7(%3, %1) : (memref<1xf64>, memref<1xf64>) -> ()
        call @S10(%arg2, %arg3, %3) : (memref<?xf64>, index, memref<1xf64>) -> ()
        affine.for %arg4 = #map1(%arg3) to #map2(%arg3) {
          %6 = affine.apply #map3(%arg3, %arg4)
          call @S8(%6, %0, %arg2, %arg3, %1) : (index, memref<4000xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
        }
        affine.for %arg4 = #map2(%arg3) to #map4(%arg3) {
          %6 = affine.apply #map5(%arg3, %arg4)
          call @S9(%arg2, %6, %0) : (memref<?xf64>, index, memref<4000xf64>) -> ()
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

