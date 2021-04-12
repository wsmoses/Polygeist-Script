#map0 = affine_map<(d0) -> (0, (d0 * 32 - 3999) ceildiv 32)>
#map1 = affine_map<(d0) -> (d0 floordiv 2 + 1)>
#map2 = affine_map<(d0) -> (0, (d0 * 32 - 3998) ceildiv 16)>
#map3 = affine_map<(d0, d1) -> (d0 - d1 + 1)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 32)>
#map5 = affine_map<(d0, d1) -> (4000, d0 * 32 - d1 * 32 + 32)>
#map6 = affine_map<(d0) -> (d0 * 32 + 1)>
#map7 = affine_map<(d0) -> (d0 * 32 + 32)>
#map8 = affine_map<(d0) -> (d0 * 32)>
#map9 = affine_map<(d0) -> (d0)>
#map10 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 32, d1 * 32 + 1)>
#map11 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map12 = affine_map<(d0) -> (d0 * 16 + 2)>
#map13 = affine_map<(d0) -> (4000, d0 * 16 + 32)>
#map14 = affine_map<(d0) -> (d0 * 16 + 1)>
#map15 = affine_map<(d0) -> (d0 * 16)>
#set0 = affine_set<(d0, d1, d2) : (d0 - (d1 * 2 + 1) >= 0, d1 - d2 == 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 + 1) >= 0)>
#set2 = affine_set<(d0, d1, d2) : (d0 - (d1 + d2) == 0, d0 - (d1 * 2 + 1) >= 0)>
#set3 = affine_set<(d0, d1, d2) : (d0 - d1 * 2 == 0, d0 - d2 * 2 == 0)>
#set4 = affine_set<(d0) : (d0 mod 2 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - d1 * 2 == 0, d0 - d2 * 2 == 0, -d0 + 249 >= 0)>
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
    %c4000_i32 = constant 4000 : i32
    %c42_i32 = constant 42 : i32
    %c0_i64 = constant 0 : i64
    %true = constant true
    %false = constant false
    %c1_i32 = constant 1 : i32
    %c0_i32 = constant 0 : i32
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %c4000 = constant 4000 : index
    %0 = memref.alloc() : memref<4000x4000xf64>
    %1 = memref.cast %0 : memref<4000x4000xf64> to memref<?x4000xf64>
    %2 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %6 = cmpi slt, %arg2, %c4000_i32 : i32
      scf.condition(%6) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):  // no predecessors
      %6 = index_cast %arg2 : i32 to index
      %7 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        %12 = cmpi sle, %arg3, %arg2 : i32
        scf.condition(%12) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):  // no predecessors
        %12 = index_cast %arg3 : i32 to index
        %13 = subi %c0_i32, %arg3 : i32
        %14 = remi_signed %13, %c4000_i32 : i32
        %15 = sitofp %14 : i32 to f64
        %16 = sitofp %c4000_i32 : i32 to f64
        %17 = divf %15, %16 : f64
        %18 = sitofp %c1_i32 : i32 to f64
        %19 = addf %17, %18 : f64
        memref.store %19, %0[%6, %12] : memref<4000x4000xf64>
        %20 = addi %arg3, %c1_i32 : i32
        scf.yield %20 : i32
      }
      %8 = addi %arg2, %c1_i32 : i32
      %9 = addi %6, %c1 : index
      %10 = scf.for %arg3 = %9 to %c4000 step %c1 iter_args(%arg4 = %8) -> (i32) {
        %12 = index_cast %arg4 : i32 to index
        %13 = sitofp %c0_i32 : i32 to f64
        memref.store %13, %0[%6, %12] : memref<4000x4000xf64>
        %14 = addi %arg4, %c1_i32 : i32
        scf.yield %14 : i32
      }
      %11 = sitofp %c1_i32 : i32 to f64
      memref.store %11, %0[%6, %6] : memref<4000x4000xf64>
      scf.yield %8 : i32
    }
    %3 = memref.alloc() : memref<4000x4000xf64>
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        %6 = sitofp %c0_i32 : i32 to f64
        memref.store %6, %3[%arg2, %arg3] : memref<4000x4000xf64>
      }
    }
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        scf.for %arg4 = %c0 to %c4000 step %c1 {
          %6 = memref.load %0[%arg3, %arg2] : memref<4000x4000xf64>
          %7 = memref.load %0[%arg4, %arg2] : memref<4000x4000xf64>
          %8 = mulf %6, %7 : f64
          %9 = memref.load %3[%arg3, %arg4] : memref<4000x4000xf64>
          %10 = addf %9, %8 : f64
          memref.store %10, %3[%arg3, %arg4] : memref<4000x4000xf64>
        }
      }
    }
    scf.for %arg2 = %c0 to %c4000 step %c1 {
      scf.for %arg3 = %c0 to %c4000 step %c1 {
        %6 = memref.load %3[%arg2, %arg3] : memref<4000x4000xf64>
        memref.store %6, %0[%arg2, %arg3] : memref<4000x4000xf64>
      }
    }
    memref.dealloc %3 : memref<4000x4000xf64>
    call @polybench_timer_start() : () -> ()
    affine.for %arg2 = -1 to 250 {
      affine.for %arg3 = max #map0(%arg2) to #map1(%arg2) {
        affine.for %arg4 = max #map2(%arg3) to #map3(%arg2, %arg3) {
          affine.if #set0(%arg2, %arg3, %arg4) {
            affine.for %arg5 = #map4(%arg2, %arg3) to min #map5(%arg2, %arg3) {
              %6 = affine.load %0[%arg5, %arg3 * 32] : memref<4000x4000xf64>
              %7 = affine.load %0[%arg3 * 32, %arg3 * 32] : memref<4000x4000xf64>
              %8 = divf %6, %7 : f64
              affine.store %8, %0[%arg5, %arg3 * 32] : memref<4000x4000xf64>
              affine.for %arg6 = #map6(%arg3) to #map7(%arg3) {
                affine.for %arg7 = #map8(%arg3) to #map9(%arg6) {
                  %12 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                  %13 = affine.load %0[%arg5, %arg7] : memref<4000x4000xf64>
                  %14 = affine.load %0[%arg6, %arg7] : memref<4000x4000xf64>
                  %15 = mulf %13, %14 : f64
                  %16 = subf %12, %15 : f64
                  affine.store %16, %0[%arg5, %arg6] : memref<4000x4000xf64>
                }
                %9 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                %10 = affine.load %0[%arg6, %arg6] : memref<4000x4000xf64>
                %11 = divf %9, %10 : f64
                affine.store %11, %0[%arg5, %arg6] : memref<4000x4000xf64>
              }
            }
          }
          affine.if #set1(%arg3, %arg4) {
            affine.for %arg5 = max #map10(%arg2, %arg3) to min #map5(%arg2, %arg3) {
              affine.for %arg6 = #map8(%arg3) to min #map11(%arg3, %arg5) {
                affine.for %arg7 = #map8(%arg4) to #map7(%arg4) {
                  %6 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                  %7 = affine.load %0[%arg5, %arg7] : memref<4000x4000xf64>
                  %8 = affine.load %0[%arg6, %arg7] : memref<4000x4000xf64>
                  %9 = mulf %7, %8 : f64
                  %10 = subf %6, %9 : f64
                  affine.store %10, %0[%arg5, %arg6] : memref<4000x4000xf64>
                }
              }
            }
          }
          affine.if #set2(%arg2, %arg3, %arg4) {
            affine.for %arg5 = #map4(%arg2, %arg3) to min #map5(%arg2, %arg3) {
              affine.for %arg6 = #map8(%arg3) to #map7(%arg3) {
                %6 = affine.load %0[%arg5, %arg5] : memref<4000x4000xf64>
                %7 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                %8 = mulf %7, %7 : f64
                %9 = subf %6, %8 : f64
                affine.store %9, %0[%arg5, %arg5] : memref<4000x4000xf64>
              }
            }
          }
          affine.if #set3(%arg2, %arg3, %arg4) {
            affine.if #set4(%arg2) {
              %6 = affine.load %0[%arg2 * 16, %arg2 * 16] : memref<4000x4000xf64>
              %7 = math.sqrt %6 : f64
              affine.store %7, %0[%arg2 * 16, %arg2 * 16] : memref<4000x4000xf64>
            }
          }
          affine.if #set5(%arg2, %arg3, %arg4) {
            affine.if #set4(%arg2) {
              %6 = affine.load %0[%arg2 * 16 + 1, %arg2 * 16] : memref<4000x4000xf64>
              %7 = affine.load %0[%arg2 * 16, %arg2 * 16] : memref<4000x4000xf64>
              %8 = divf %6, %7 : f64
              affine.store %8, %0[%arg2 * 16 + 1, %arg2 * 16] : memref<4000x4000xf64>
            }
            affine.if #set4(%arg2) {
              %6 = affine.load %0[%arg2 * 16 + 1, %arg2 * 16 + 1] : memref<4000x4000xf64>
              %7 = affine.load %0[%arg2 * 16 + 1, %arg2 * 16] : memref<4000x4000xf64>
              %8 = mulf %7, %7 : f64
              %9 = subf %6, %8 : f64
              affine.store %9, %0[%arg2 * 16 + 1, %arg2 * 16 + 1] : memref<4000x4000xf64>
            }
            affine.if #set4(%arg2) {
              %6 = affine.load %0[%arg2 * 16 + 1, %arg2 * 16 + 1] : memref<4000x4000xf64>
              %7 = math.sqrt %6 : f64
              affine.store %7, %0[%arg2 * 16 + 1, %arg2 * 16 + 1] : memref<4000x4000xf64>
            }
          }
          affine.if #set3(%arg2, %arg3, %arg4) {
            affine.for %arg5 = #map12(%arg2) to min #map13(%arg2) {
              affine.if #set4(%arg2) {
                %6 = affine.load %0[%arg5, %arg2 * 16] : memref<4000x4000xf64>
                %7 = affine.load %0[%arg2 * 16, %arg2 * 16] : memref<4000x4000xf64>
                %8 = divf %6, %7 : f64
                affine.store %8, %0[%arg5, %arg2 * 16] : memref<4000x4000xf64>
              }
              affine.if #set4(%arg2) {
                %6 = affine.load %0[%arg5, %arg5] : memref<4000x4000xf64>
                %7 = affine.load %0[%arg5, %arg2 * 16] : memref<4000x4000xf64>
                %8 = mulf %7, %7 : f64
                %9 = subf %6, %8 : f64
                affine.store %9, %0[%arg5, %arg5] : memref<4000x4000xf64>
              }
              affine.for %arg6 = #map14(%arg2) to #map9(%arg5) {
                affine.for %arg7 = #map15(%arg2) to #map9(%arg6) {
                  affine.if #set4(%arg2) {
                    %6 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                    %7 = affine.load %0[%arg5, %arg7] : memref<4000x4000xf64>
                    %8 = affine.load %0[%arg6, %arg7] : memref<4000x4000xf64>
                    %9 = mulf %7, %8 : f64
                    %10 = subf %6, %9 : f64
                    affine.store %10, %0[%arg5, %arg6] : memref<4000x4000xf64>
                  }
                }
                affine.if #set4(%arg2) {
                  %6 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                  %7 = affine.load %0[%arg6, %arg6] : memref<4000x4000xf64>
                  %8 = divf %6, %7 : f64
                  affine.store %8, %0[%arg5, %arg6] : memref<4000x4000xf64>
                }
                affine.if #set4(%arg2) {
                  %6 = affine.load %0[%arg5, %arg5] : memref<4000x4000xf64>
                  %7 = affine.load %0[%arg5, %arg6] : memref<4000x4000xf64>
                  %8 = mulf %7, %7 : f64
                  %9 = subf %6, %8 : f64
                  affine.store %9, %0[%arg5, %arg5] : memref<4000x4000xf64>
                }
              }
              affine.if #set4(%arg2) {
                %6 = affine.load %0[%arg5, %arg5] : memref<4000x4000xf64>
                %7 = math.sqrt %6 : f64
                affine.store %7, %0[%arg5, %arg5] : memref<4000x4000xf64>
              }
            }
          }
        }
      } {scop.parallelizable}
    }
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
      call @print_array(%c4000_i32, %1) : (i32, memref<?x4000xf64>) -> ()
    }
    memref.dealloc %0 : memref<4000x4000xf64>
    return %c0_i32 : i32
  }
  func private @polybench_timer_start()
  func private @polybench_timer_stop()
  func private @polybench_timer_print()
  func private @S0(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    %1 = affine.load %arg0[symbol(%arg1), symbol(%arg3)] : memref<?x4000xf64>
    %2 = affine.load %arg0[symbol(%arg2), symbol(%arg3)] : memref<?x4000xf64>
    %3 = mulf %1, %2 : f64
    %4 = subf %0, %3 : f64
    affine.store %4, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    return
  }
  func private @S1(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    %1 = affine.load %arg0[symbol(%arg2), symbol(%arg2)] : memref<?x4000xf64>
    %2 = divf %0, %1 : f64
    affine.store %2, %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    return
  }
  func private @S2(%arg0: memref<?x4000xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg1)] : memref<?x4000xf64>
    %1 = affine.load %arg0[symbol(%arg1), symbol(%arg2)] : memref<?x4000xf64>
    %2 = mulf %1, %1 : f64
    %3 = subf %0, %2 : f64
    affine.store %3, %arg0[symbol(%arg1), symbol(%arg1)] : memref<?x4000xf64>
    return
  }
  func private @S3(%arg0: memref<?x4000xf64>, %arg1: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[symbol(%arg1), symbol(%arg1)] : memref<?x4000xf64>
    %1 = math.sqrt %0 : f64
    affine.store %1, %arg0[symbol(%arg1), symbol(%arg1)] : memref<?x4000xf64>
    return
  }
  func private @print_array(%arg0: i32, %arg1: memref<?x4000xf64>) {
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
      %26 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        %28 = cmpi sle, %arg3, %arg2 : i32
        scf.condition(%28) %arg3 : i32
      } do {
      ^bb0(%arg3: i32):  // no predecessors
        %28 = index_cast %arg3 : i32 to index
        %29 = muli %arg2, %arg0 : i32
        %30 = addi %29, %arg3 : i32
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
        %37 = memref.load %arg1[%25, %28] : memref<?x4000xf64>
        %38 = llvm.call @fprintf(%34, %36, %37) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
        %39 = addi %arg3, %c1_i32 : i32
        scf.yield %39 : i32
      }
      %27 = addi %arg2, %c1_i32 : i32
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

