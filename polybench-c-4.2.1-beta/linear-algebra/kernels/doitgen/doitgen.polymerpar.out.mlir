#map0 = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (270, d0 * 32 + 32)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%0.2lf \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("A\00")
  llvm.mlir.global internal constant @str2("begin dump: %s\00")
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("\00")
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c250_i32 = constant 250 : i32
    %c220_i32 = constant 220 : i32
    %c270_i32 = constant 270 : i32
    %c42_i32 = constant 42 : i32
    %c0_i64 = constant 0 : i64
    %true = constant true
    %false = constant false
    %c1_i32 = constant 1 : i32
    %c0_i32 = constant 0 : i32
    %cst = constant 0.000000e+00 : f64
    %0 = memref.alloc() : memref<250x220x270xf64>
    %1 = memref.alloc() : memref<270xf64>
    %2 = memref.alloc() : memref<270x270xf64>
    %3 = memref.cast %0 : memref<250x220x270xf64> to memref<?x220x270xf64>
    %4:2 = scf.while (%arg2 = %c0_i32) : (i32) -> (i32, i32) {
      %8 = cmpi slt, %arg2, %c250_i32 : i32
      scf.condition(%8) %c0_i32, %arg2 : i32, i32
    } do {
    ^bb0(%arg2: i32, %arg3: i32):  // no predecessors
      %8 = index_cast %arg3 : i32 to index
      %9 = scf.while (%arg4 = %c0_i32) : (i32) -> i32 {
        %11 = cmpi slt, %arg4, %c220_i32 : i32
        scf.condition(%11) %arg4 : i32
      } do {
      ^bb0(%arg4: i32):  // no predecessors
        %11 = index_cast %arg4 : i32 to index
        %12 = scf.while (%arg5 = %c0_i32) : (i32) -> i32 {
          %14 = cmpi slt, %arg5, %c270_i32 : i32
          scf.condition(%14) %arg5 : i32
        } do {
        ^bb0(%arg5: i32):  // no predecessors
          %14 = index_cast %arg5 : i32 to index
          %15 = muli %arg3, %arg4 : i32
          %16 = addi %15, %arg5 : i32
          %17 = remi_signed %16, %c270_i32 : i32
          %18 = sitofp %17 : i32 to f64
          %19 = sitofp %c270_i32 : i32 to f64
          %20 = divf %18, %19 : f64
          memref.store %20, %0[%8, %11, %14] : memref<250x220x270xf64>
          %21 = addi %arg5, %c1_i32 : i32
          scf.yield %21 : i32
        }
        %13 = addi %arg4, %c1_i32 : i32
        scf.yield %13 : i32
      }
      %10 = addi %arg3, %c1_i32 : i32
      scf.yield %10 : i32
    }
    %5 = scf.while (%arg2 = %4#0) : (i32) -> i32 {
      %8 = cmpi slt, %arg2, %c270_i32 : i32
      scf.condition(%8) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %8 = index_cast %arg2 : i32 to index
      %9 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        %11 = cmpi slt, %arg3, %c270_i32 : i32
        scf.condition(%11) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):  // no predecessors
        %11 = index_cast %arg3 : i32 to index
        %12 = muli %arg2, %arg3 : i32
        %13 = remi_signed %12, %c270_i32 : i32
        %14 = sitofp %13 : i32 to f64
        %15 = sitofp %c270_i32 : i32 to f64
        %16 = divf %14, %15 : f64
        memref.store %16, %2[%8, %11] : memref<270x270xf64>
        %17 = addi %arg3, %c1_i32 : i32
        scf.yield %17 : i32
      }
      %10 = addi %arg2, %c1_i32 : i32
      scf.yield %10 : i32
    }
    call @polybench_timer_start() : () -> ()
    affine.for %arg2 = 0 to 250 {
      affine.for %arg3 = 0 to 220 {
        affine.for %arg4 = 0 to 9 {
          affine.for %arg5 = #map0(%arg4) to min #map1(%arg4) {
            affine.store %cst, %1[%arg5] : memref<270xf64>
          }
        } {scop.parallelizable}
        affine.for %arg4 = 0 to 9 {
          affine.for %arg5 = 0 to 9 {
            affine.for %arg6 = #map0(%arg5) to min #map1(%arg5) {
              affine.for %arg7 = #map0(%arg4) to min #map1(%arg4) {
                %8 = affine.load %1[%arg7] : memref<270xf64>
                %9 = affine.load %0[%arg2, %arg3, %arg6] : memref<250x220x270xf64>
                %10 = affine.load %2[%arg6, %arg7] : memref<270x270xf64>
                %11 = mulf %9, %10 : f64
                %12 = addf %8, %11 : f64
                affine.store %12, %1[%arg7] : memref<270xf64>
              }
            }
          }
        } {scop.parallelizable}
        affine.for %arg4 = 0 to 9 {
          affine.for %arg5 = #map0(%arg4) to min #map1(%arg4) {
            %8 = affine.load %1[%arg5] : memref<270xf64>
            affine.store %8, %0[%arg2, %arg3, %arg5] : memref<250x220x270xf64>
          }
        } {scop.parallelizable}
      }
    }
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %6 = cmpi sgt, %arg0, %c42_i32 : i32
    %7 = scf.if %6 -> (i1) {
      %8 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %9 = llvm.load %8 : !llvm.ptr<ptr<i8>>
      %10 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %11 = llvm.getelementptr %10[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %12 = llvm.call @strcmp(%9, %11) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %13 = trunci %12 : i32 to i1
      %14 = xor %13, %true : i1
      scf.yield %14 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %7 {
      call @print_array(%c250_i32, %c220_i32, %c270_i32, %3) : (i32, i32, i32, memref<?x220x270xf64>) -> ()
    }
    memref.dealloc %0 : memref<250x220x270xf64>
    memref.dealloc %1 : memref<270xf64>
    memref.dealloc %2 : memref<270x270xf64>
    return %c0_i32 : i32
  }
  func private @polybench_timer_start()
  func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x220x270xf64>, %arg4: memref<?x270xf64>, %arg5: memref<?xf64>) {
    %cst = constant 0.000000e+00 : f64
    %0 = index_cast %arg1 : i32 to index
    %1 = index_cast %arg2 : i32 to index
    %2 = index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %2 {
      affine.for %arg7 = 0 to %0 {
        affine.for %arg8 = 0 to %1 {
          affine.store %cst, %arg5[%arg8] : memref<?xf64>
          affine.for %arg9 = 0 to %1 {
            %3 = affine.load %arg5[%arg8] : memref<?xf64>
            %4 = affine.load %arg3[%arg6, %arg7, %arg9] : memref<?x220x270xf64>
            %5 = affine.load %arg4[%arg9, %arg8] : memref<?x270xf64>
            %6 = mulf %4, %5 : f64
            %7 = addf %3, %6 : f64
            affine.store %7, %arg5[%arg8] : memref<?xf64>
          }
        }
        affine.for %arg8 = 0 to %1 {
          %3 = affine.load %arg5[%arg8] : memref<?xf64>
          affine.store %3, %arg3[%arg6, %arg7, %arg8] : memref<?x220x270xf64>
        }
      }
    }
    return
  }
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @print_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x220x270xf64>) {
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
    %12 = scf.while (%arg4 = %c0_i32) : (i32) -> i32 {
      %25 = cmpi slt, %arg4, %arg0 : i32
      scf.condition(%25) %arg4 : i32
    } do {
    ^bb0(%arg4: i32):  // no predecessors
      %25 = index_cast %arg4 : i32 to index
      %26 = scf.while (%arg5 = %c0_i32) : (i32) -> i32 {
        %28 = cmpi slt, %arg5, %arg1 : i32
        scf.condition(%28) %arg5 : i32
      } do {
      ^bb0(%arg5: i32):  // no predecessors
        %28 = index_cast %arg5 : i32 to index
        %29 = scf.while (%arg6 = %c0_i32) : (i32) -> i32 {
          %31 = cmpi slt, %arg6, %arg2 : i32
          scf.condition(%31) %arg6 : i32
        } do {
        ^bb0(%arg6: i32):  // no predecessors
          %31 = index_cast %arg6 : i32 to index
          %32 = muli %arg4, %arg1 : i32
          %33 = muli %32, %arg2 : i32
          %34 = muli %arg5, %arg2 : i32
          %35 = addi %33, %34 : i32
          %36 = addi %35, %arg6 : i32
          %37 = remi_signed %36, %c20_i32 : i32
          %38 = cmpi eq, %37, %c0_i32 : i32
          scf.if %38 {
            %46 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %47 = llvm.load %46 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
            %48 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
            %49 = llvm.getelementptr %48[%c0_i64, %c0_i64] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
            %50 = llvm.call @fprintf(%47, %49) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
          }
          %39 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %40 = llvm.load %39 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %41 = llvm.mlir.addressof @str5 : !llvm.ptr<array<8 x i8>>
          %42 = llvm.getelementptr %41[%c0_i64, %c0_i64] : (!llvm.ptr<array<8 x i8>>, i64, i64) -> !llvm.ptr<i8>
          %43 = memref.load %arg3[%25, %28, %31] : memref<?x220x270xf64>
          %44 = llvm.call @fprintf(%40, %42, %43) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
          %45 = addi %arg6, %c1_i32 : i32
          scf.yield %45 : i32
        }
        %30 = addi %arg5, %c1_i32 : i32
        scf.yield %30 : i32
      }
      %27 = addi %arg4, %c1_i32 : i32
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

