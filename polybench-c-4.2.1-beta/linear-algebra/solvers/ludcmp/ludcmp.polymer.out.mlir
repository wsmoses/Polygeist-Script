#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0)[s0] -> (-d0 + s0)>
#set = affine_set<()[s0] : (s0 - 3 >= 0)>
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
    %c0_i32 = constant 0 : i32
    %0 = memref.alloc() : memref<4000x4000xf64>
    %1 = memref.alloc() : memref<4000xf64>
    %2 = memref.alloc() : memref<4000xf64>
    %3 = memref.alloc() : memref<4000xf64>
    %4 = memref.cast %0 : memref<4000x4000xf64> to memref<?x4000xf64>
    %5 = memref.cast %1 : memref<4000xf64> to memref<?xf64>
    %6 = memref.cast %2 : memref<4000xf64> to memref<?xf64>
    %7 = memref.cast %3 : memref<4000xf64> to memref<?xf64>
    call @init_array(%c4000_i32, %4, %5, %6, %7) : (i32, memref<?x4000xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    call @polybench_timer_start() : () -> ()
    call @kernel_ludcmp_opt(%c4000_i32, %4, %5, %6, %7) : (i32, memref<?x4000xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    call @polybench_timer_stop() : () -> ()
    call @polybench_timer_print() : () -> ()
    %8 = cmpi sgt, %arg0, %c42_i32 : i32
    %9 = scf.if %8 -> (i1) {
      %10 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %11 = llvm.load %10 : !llvm.ptr<ptr<i8>>
      %12 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %13 = llvm.getelementptr %12[%c0_i64, %c0_i64] : (!llvm.ptr<array<1 x i8>>, i64, i64) -> !llvm.ptr<i8>
      %14 = llvm.call @strcmp(%11, %13) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %15 = trunci %14 : i32 to i1
      %16 = xor %15, %true : i1
      scf.yield %16 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %9 {
      call @print_array(%c4000_i32, %6) : (i32, memref<?xf64>) -> ()
    }
    memref.dealloc %0 : memref<4000x4000xf64>
    memref.dealloc %1 : memref<4000xf64>
    memref.dealloc %2 : memref<4000xf64>
    memref.dealloc %3 : memref<4000xf64>
    return %c0_i32 : i32
  }
  func private @init_array(%arg0: i32, %arg1: memref<?x4000xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %cst = constant 2.000000e+00 : f64
    %c4_i32 = constant 4 : i32
    %c1_i32 = constant 1 : i32
    %c0_i32 = constant 0 : i32
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %0 = sitofp %arg0 : i32 to f64
    %1 = index_cast %arg0 : i32 to index
    %2 = scf.for %arg5 = %c0 to %1 step %c1 iter_args(%arg6 = %c0_i32) -> (i32) {
      %6 = index_cast %arg6 : i32 to index
      %7 = sitofp %c0_i32 : i32 to f64
      memref.store %7, %arg3[%6] : memref<?xf64>
      memref.store %7, %arg4[%6] : memref<?xf64>
      %8 = addi %arg6, %c1_i32 : i32
      %9 = sitofp %8 : i32 to f64
      %10 = divf %9, %0 : f64
      %11 = divf %10, %cst : f64
      %12 = sitofp %c4_i32 : i32 to f64
      %13 = addf %11, %12 : f64
      memref.store %13, %arg2[%6] : memref<?xf64>
      scf.yield %8 : i32
    }
    %3 = scf.while (%arg5 = %c0_i32) : (i32) -> i32 {
      %6 = cmpi slt, %arg5, %arg0 : i32
      scf.condition(%6) %arg5 : i32
    } do {
    ^bb0(%arg5: i32):  // no predecessors
      %6 = index_cast %arg5 : i32 to index
      %7 = scf.while (%arg6 = %c0_i32) : (i32) -> i32 {
        %13 = cmpi sle, %arg6, %arg5 : i32
        scf.condition(%13) %arg6 : i32
      } do {
      ^bb0(%arg6: i32):  // no predecessors
        %13 = index_cast %arg6 : i32 to index
        %14 = subi %c0_i32, %arg6 : i32
        %15 = remi_signed %14, %arg0 : i32
        %16 = sitofp %15 : i32 to f64
        %17 = divf %16, %0 : f64
        %18 = sitofp %c1_i32 : i32 to f64
        %19 = addf %17, %18 : f64
        memref.store %19, %arg1[%6, %13] : memref<?x4000xf64>
        %20 = addi %arg6, %c1_i32 : i32
        scf.yield %20 : i32
      }
      %8 = addi %arg5, %c1_i32 : i32
      %9 = index_cast %arg0 : i32 to index
      %10 = addi %6, %c1 : index
      %11 = scf.for %arg6 = %10 to %9 step %c1 iter_args(%arg7 = %8) -> (i32) {
        %13 = index_cast %arg7 : i32 to index
        %14 = sitofp %c0_i32 : i32 to f64
        memref.store %14, %arg1[%6, %13] : memref<?x4000xf64>
        %15 = addi %arg7, %c1_i32 : i32
        scf.yield %15 : i32
      }
      %12 = sitofp %c1_i32 : i32 to f64
      memref.store %12, %arg1[%6, %6] : memref<?x4000xf64>
      scf.yield %8 : i32
    }
    %4 = memref.alloc() : memref<4000x4000xf64>
    %5 = index_cast %arg0 : i32 to index
    scf.for %arg5 = %c0 to %5 step %c1 {
      scf.for %arg6 = %c0 to %5 step %c1 {
        %6 = sitofp %c0_i32 : i32 to f64
        memref.store %6, %4[%arg5, %arg6] : memref<4000x4000xf64>
      }
    }
    scf.for %arg5 = %c0 to %5 step %c1 {
      scf.for %arg6 = %c0 to %5 step %c1 {
        scf.for %arg7 = %c0 to %5 step %c1 {
          %6 = memref.load %arg1[%arg6, %arg5] : memref<?x4000xf64>
          %7 = memref.load %arg1[%arg7, %arg5] : memref<?x4000xf64>
          %8 = mulf %6, %7 : f64
          %9 = memref.load %4[%arg6, %arg7] : memref<4000x4000xf64>
          %10 = addf %9, %8 : f64
          memref.store %10, %4[%arg6, %arg7] : memref<4000x4000xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %5 step %c1 {
      scf.for %arg6 = %c0 to %5 step %c1 {
        %6 = memref.load %4[%arg5, %arg6] : memref<4000x4000xf64>
        memref.store %6, %arg1[%arg5, %arg6] : memref<?x4000xf64>
      }
    }
    memref.dealloc %4 : memref<4000x4000xf64>
    return
  }
  func private @polybench_timer_start()
  func private @kernel_ludcmp(%arg0: i32, %arg1: memref<?x4000xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = index_cast %arg0 : i32 to index
    %1 = memref.alloca() : memref<1xf64>
    affine.for %arg5 = 0 to %0 {
      affine.for %arg6 = 0 to #map0(%arg5) {
        call @S0(%1, %arg1, %arg5, %arg6) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
        affine.for %arg7 = 0 to #map0(%arg6) {
          call @S1(%1, %arg1, %arg7, %arg6, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index, index) -> ()
        }
        call @S2(%arg1, %arg5, %arg6, %1) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
      }
      affine.for %arg6 = #map0(%arg5) to %0 {
        call @S3(%1, %arg1, %arg5, %arg6) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
        affine.for %arg7 = 0 to #map0(%arg5) {
          call @S4(%1, %arg1, %arg7, %arg6, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index, index) -> ()
        }
        call @S5(%arg1, %arg5, %arg6, %1) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
      }
    }
    affine.for %arg5 = 0 to %0 {
      call @S6(%1, %arg2, %arg5) : (memref<1xf64>, memref<?xf64>, index) -> ()
      affine.for %arg6 = 0 to #map0(%arg5) {
        call @S7(%1, %arg4, %arg6, %arg1, %arg5) : (memref<1xf64>, memref<?xf64>, index, memref<?x4000xf64>, index) -> ()
      }
      call @S8(%arg4, %arg5, %1) : (memref<?xf64>, index, memref<1xf64>) -> ()
    }
    affine.for %arg5 = 0 to %0 {
      call @S9(%1, %arg4, %arg5, %0) : (memref<1xf64>, memref<?xf64>, index, index) -> ()
      affine.for %arg6 = #map1(%arg5)[%0] to %0 {
        call @S10(%1, %arg3, %arg6, %arg1, %arg5, %0) : (memref<1xf64>, memref<?xf64>, index, memref<?x4000xf64>, index, index) -> ()
      }
      call @S11(%arg3, %arg5, %0, %arg1, %1) : (memref<?xf64>, index, index, memref<?x4000xf64>, memref<1xf64>) -> ()
    }
    return
  }
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
  func private @kernel_ludcmp_opt(%arg0: i32, %arg1: memref<?x4000xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c1 = constant 1 : index
    %c0 = constant 0 : index
    %0 = memref.alloca() : memref<1xf64>
    %1 = index_cast %arg0 : i32 to index
    affine.if #set()[%1] {
      affine.for %arg5 = 0 to %1 {
        call @S3(%0, %arg1, %c0, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
        call @S5(%arg1, %c0, %arg5, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
      }
      call @S0(%0, %arg1, %c1, %c0) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
      call @S2(%arg1, %c1, %c0, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
      affine.for %arg5 = 1 to %1 {
        call @S3(%0, %arg1, %c1, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
        call @S4(%0, %arg1, %c0, %arg5, %c1) : (memref<1xf64>, memref<?x4000xf64>, index, index, index) -> ()
        call @S5(%arg1, %c1, %arg5, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
      }
      affine.for %arg5 = 2 to %1 {
        call @S0(%0, %arg1, %arg5, %c0) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
        call @S2(%arg1, %arg5, %c0, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
        affine.for %arg6 = 1 to #map0(%arg5) {
          call @S0(%0, %arg1, %arg5, %arg6) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
          affine.for %arg7 = 0 to #map0(%arg6) {
            call @S1(%0, %arg1, %arg7, %arg6, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index, index) -> ()
          }
          call @S2(%arg1, %arg5, %arg6, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
        }
        affine.for %arg6 = #map0(%arg5) to %1 {
          call @S3(%0, %arg1, %arg5, %arg6) : (memref<1xf64>, memref<?x4000xf64>, index, index) -> ()
          affine.for %arg7 = 0 to #map0(%arg5) {
            call @S4(%0, %arg1, %arg7, %arg6, %arg5) : (memref<1xf64>, memref<?x4000xf64>, index, index, index) -> ()
          }
          call @S5(%arg1, %arg5, %arg6, %0) : (memref<?x4000xf64>, index, index, memref<1xf64>) -> ()
        }
      }
      call @S6(%0, %arg2, %c0) : (memref<1xf64>, memref<?xf64>, index) -> ()
      call @S8(%arg4, %c0, %0) : (memref<?xf64>, index, memref<1xf64>) -> ()
      affine.for %arg5 = 1 to %1 {
        call @S6(%0, %arg2, %arg5) : (memref<1xf64>, memref<?xf64>, index) -> ()
        affine.for %arg6 = 0 to #map0(%arg5) {
          call @S7(%0, %arg4, %arg6, %arg1, %arg5) : (memref<1xf64>, memref<?xf64>, index, memref<?x4000xf64>, index) -> ()
        }
        call @S8(%arg4, %arg5, %0) : (memref<?xf64>, index, memref<1xf64>) -> ()
      }
      call @S9(%0, %arg4, %c0, %1) : (memref<1xf64>, memref<?xf64>, index, index) -> ()
      call @S11(%arg3, %c0, %1, %arg1, %0) : (memref<?xf64>, index, index, memref<?x4000xf64>, memref<1xf64>) -> ()
      affine.for %arg5 = 1 to %1 {
        call @S9(%0, %arg4, %arg5, %1) : (memref<1xf64>, memref<?xf64>, index, index) -> ()
        affine.for %arg6 = #map1(%arg5)[%1] to %1 {
          call @S10(%0, %arg3, %arg6, %arg1, %arg5, %1) : (memref<1xf64>, memref<?xf64>, index, memref<?x4000xf64>, index, index) -> ()
        }
        call @S11(%arg3, %arg5, %1, %arg1, %0) : (memref<?xf64>, index, index, memref<?x4000xf64>, memref<1xf64>) -> ()
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

