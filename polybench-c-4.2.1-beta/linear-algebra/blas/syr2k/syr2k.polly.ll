; ModuleID = 'syr2k.c'
source_filename = "syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
polly.loop_preheader:
  %call.i = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #7
  %call.i25 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %call.i26 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  br label %polly.loop_preheader45

kernel_syr2k.exit:                                ; preds = %polly.loop_exit154
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit
  %0 = load i8*, i8** %argv, align 8, !tbaa !2
  %strcmpload = load i8, i8* %0, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %1) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %4 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i38 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i40, %if.end.i ]
  %5 = add nuw nsw i64 %indvars.iv.i38, %4
  %6 = trunc i64 %5 to i32
  %rem.i39 = urem i32 %6, 20
  %cmp5.i = icmp eq i32 %rem.i39, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i63, i64 %indvars.iv4.i, i64 %indvars.iv.i38
  %9 = load double, double* %arrayidx8.i, align 8, !tbaa !6
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %9) #8
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, 2600
  br i1 %exitcond.not.i41, label %for.inc10.i, label %for.body4.i, !llvm.loop !8

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !10

print_array.exit:                                 ; preds = %for.inc10.i
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit
  tail call void @free(i8* nonnull %call.i) #7
  tail call void @free(i8* %call.i25) #7
  tail call void @free(i8* %call.i26) #7
  ret i32 0

polly.loop_exit46:                                ; preds = %polly.loop_exit52
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, -32
  %exitcond200.not = icmp eq i64 %polly.indvar_next, 82
  br i1 %exitcond200.not, label %polly.loop_preheader71, label %polly.loop_preheader45

polly.loop_exit52:                                ; preds = %polly.loop_exit58
  %polly.indvar_next48 = add nuw nsw i64 %polly.indvar47, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond199.not = icmp eq i64 %polly.indvar_next48, 63
  br i1 %exitcond199.not, label %polly.loop_exit46, label %polly.loop_preheader51

polly.loop_preheader45:                           ; preds = %polly.loop_preheader, %polly.loop_exit46
  %indvars.iv195 = phi i64 [ 0, %polly.loop_preheader ], [ %indvars.iv.next196, %polly.loop_exit46 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit46 ]
  %smin197 = call i64 @llvm.smin.i64(i64 %indvars.iv195, i64 -2568)
  %13 = shl nsw i64 %polly.indvar, 5
  %14 = add nsw i64 %smin197, 2599
  br label %polly.loop_preheader51

polly.loop_exit58:                                ; preds = %polly.stmt.for.body3.i
  %polly.indvar_next54 = add nuw nsw i64 %polly.indvar53, 1
  %exitcond198.not = icmp eq i64 %polly.indvar53, %14
  br i1 %exitcond198.not, label %polly.loop_exit52, label %polly.loop_preheader57

polly.loop_preheader51:                           ; preds = %polly.loop_preheader45, %polly.loop_exit52
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader45 ], [ %indvars.iv.next, %polly.loop_exit52 ]
  %polly.indvar47 = phi i64 [ 0, %polly.loop_preheader45 ], [ %polly.indvar_next48, %polly.loop_exit52 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %15 = shl nsw i64 %polly.indvar47, 5
  %16 = add nsw i64 %smin, 1999
  br label %polly.loop_preheader57

polly.stmt.for.body3.i:                           ; preds = %polly.loop_preheader57, %polly.stmt.for.body3.i
  %polly.indvar59 = phi i64 [ 0, %polly.loop_preheader57 ], [ %polly.indvar_next60, %polly.stmt.for.body3.i ]
  %17 = add nuw nsw i64 %polly.indvar59, %15
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %18, %25
  %20 = add i32 %19, 2
  %21 = urem i32 %20, 2000
  %p_conv10.i = sitofp i32 %21 to double
  %p_div12.i = fdiv double %p_conv10.i, 2.000000e+03
  %22 = shl i64 %17, 3
  %23 = add nuw nsw i64 %22, %26
  %scevgep = getelementptr i8, i8* %call.i26, i64 %23
  %scevgep62 = bitcast i8* %scevgep to double*
  store double %p_div12.i, double* %scevgep62, align 8, !alias.scope !11, !noalias !13
  %polly.indvar_next60 = add nuw nsw i64 %polly.indvar59, 1
  %exitcond.not = icmp eq i64 %polly.indvar59, %16
  br i1 %exitcond.not, label %polly.loop_exit58, label %polly.stmt.for.body3.i

polly.loop_preheader57:                           ; preds = %polly.loop_preheader51, %polly.loop_exit58
  %polly.indvar53 = phi i64 [ 0, %polly.loop_preheader51 ], [ %polly.indvar_next54, %polly.loop_exit58 ]
  %24 = add nuw nsw i64 %polly.indvar53, %13
  %25 = trunc i64 %24 to i32
  %26 = mul nuw nsw i64 %24, 16000
  br label %polly.stmt.for.body3.i

polly.loop_exit72:                                ; preds = %polly.loop_exit78
  %polly.indvar_next68 = add nuw nsw i64 %polly.indvar67, 1
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, -32
  %exitcond210.not = icmp eq i64 %polly.indvar_next68, 82
  br i1 %exitcond210.not, label %polly.loop_preheader98, label %polly.loop_preheader71

polly.loop_exit78:                                ; preds = %polly.loop_exit84
  %polly.indvar_next74 = add nuw nsw i64 %polly.indvar73, 1
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, -32
  %exitcond209.not = icmp eq i64 %polly.indvar_next74, 63
  br i1 %exitcond209.not, label %polly.loop_exit72, label %polly.loop_preheader77

polly.loop_preheader71:                           ; preds = %polly.loop_exit46, %polly.loop_exit72
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %polly.loop_exit72 ], [ 0, %polly.loop_exit46 ]
  %polly.indvar67 = phi i64 [ %polly.indvar_next68, %polly.loop_exit72 ], [ 0, %polly.loop_exit46 ]
  %smin207 = call i64 @llvm.smin.i64(i64 %indvars.iv205, i64 -2568)
  %27 = shl nsw i64 %polly.indvar67, 5
  %28 = add nsw i64 %smin207, 2599
  br label %polly.loop_preheader77

polly.loop_exit84:                                ; preds = %polly.stmt.for.body3.i88
  %polly.indvar_next80 = add nuw nsw i64 %polly.indvar79, 1
  %exitcond208.not = icmp eq i64 %polly.indvar79, %28
  br i1 %exitcond208.not, label %polly.loop_exit78, label %polly.loop_preheader83

polly.loop_preheader77:                           ; preds = %polly.loop_preheader71, %polly.loop_exit78
  %indvars.iv201 = phi i64 [ 0, %polly.loop_preheader71 ], [ %indvars.iv.next202, %polly.loop_exit78 ]
  %polly.indvar73 = phi i64 [ 0, %polly.loop_preheader71 ], [ %polly.indvar_next74, %polly.loop_exit78 ]
  %smin203 = call i64 @llvm.smin.i64(i64 %indvars.iv201, i64 -1968)
  %29 = shl nsw i64 %polly.indvar73, 5
  %30 = add nsw i64 %smin203, 1999
  br label %polly.loop_preheader83

polly.stmt.for.body3.i88:                         ; preds = %polly.loop_preheader83, %polly.stmt.for.body3.i88
  %polly.indvar85 = phi i64 [ 0, %polly.loop_preheader83 ], [ %polly.indvar_next86, %polly.stmt.for.body3.i88 ]
  %31 = add nuw nsw i64 %polly.indvar85, %29
  %32 = trunc i64 %31 to i32
  %33 = mul i32 %32, %39
  %34 = add i32 %33, 1
  %35 = urem i32 %34, 2600
  %p_conv.i = sitofp i32 %35 to double
  %p_div.i = fdiv double %p_conv.i, 2.600000e+03
  %36 = shl i64 %31, 3
  %37 = add nuw nsw i64 %36, %40
  %scevgep89 = getelementptr i8, i8* %call.i25, i64 %37
  %scevgep8990 = bitcast i8* %scevgep89 to double*
  store double %p_div.i, double* %scevgep8990, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next86 = add nuw nsw i64 %polly.indvar85, 1
  %exitcond204.not = icmp eq i64 %polly.indvar85, %30
  br i1 %exitcond204.not, label %polly.loop_exit84, label %polly.stmt.for.body3.i88

polly.loop_preheader83:                           ; preds = %polly.loop_preheader77, %polly.loop_exit84
  %polly.indvar79 = phi i64 [ 0, %polly.loop_preheader77 ], [ %polly.indvar_next80, %polly.loop_exit84 ]
  %38 = add nuw nsw i64 %polly.indvar79, %27
  %39 = trunc i64 %38 to i32
  %40 = mul nuw nsw i64 %38, 16000
  br label %polly.stmt.for.body3.i88

polly.loop_exit99:                                ; preds = %polly.loop_exit105
  %polly.indvar_next95 = add nuw nsw i64 %polly.indvar94, 1
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, -32
  %exitcond220.not = icmp eq i64 %polly.indvar_next95, 82
  br i1 %exitcond220.not, label %polly.loop_preheader122, label %polly.loop_preheader98

polly.loop_exit105:                               ; preds = %polly.loop_exit111
  %polly.indvar_next101 = add nuw nsw i64 %polly.indvar100, 1
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -32
  %exitcond219.not = icmp eq i64 %polly.indvar_next101, 82
  br i1 %exitcond219.not, label %polly.loop_exit99, label %polly.loop_preheader104

polly.loop_preheader98:                           ; preds = %polly.loop_exit72, %polly.loop_exit99
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %polly.loop_exit99 ], [ 0, %polly.loop_exit72 ]
  %polly.indvar94 = phi i64 [ %polly.indvar_next95, %polly.loop_exit99 ], [ 0, %polly.loop_exit72 ]
  %smin217 = call i64 @llvm.smin.i64(i64 %indvars.iv215, i64 -2568)
  %41 = shl nsw i64 %polly.indvar94, 5
  %42 = add nsw i64 %smin217, 2599
  br label %polly.loop_preheader104

polly.loop_exit111:                               ; preds = %polly.stmt.for.body27.i
  %polly.indvar_next107 = add nuw nsw i64 %polly.indvar106, 1
  %exitcond218.not = icmp eq i64 %polly.indvar106, %42
  br i1 %exitcond218.not, label %polly.loop_exit105, label %polly.loop_preheader110

polly.loop_preheader104:                          ; preds = %polly.loop_preheader98, %polly.loop_exit105
  %indvars.iv211 = phi i64 [ 0, %polly.loop_preheader98 ], [ %indvars.iv.next212, %polly.loop_exit105 ]
  %polly.indvar100 = phi i64 [ 0, %polly.loop_preheader98 ], [ %polly.indvar_next101, %polly.loop_exit105 ]
  %smin213 = call i64 @llvm.smin.i64(i64 %indvars.iv211, i64 -2568)
  %43 = shl nsw i64 %polly.indvar100, 5
  %44 = add nsw i64 %smin213, 2599
  br label %polly.loop_preheader110

polly.stmt.for.body27.i:                          ; preds = %polly.loop_preheader110, %polly.stmt.for.body27.i
  %polly.indvar112 = phi i64 [ 0, %polly.loop_preheader110 ], [ %polly.indvar_next113, %polly.stmt.for.body27.i ]
  %45 = add nuw nsw i64 %polly.indvar112, %43
  %46 = trunc i64 %45 to i32
  %47 = mul i32 %46, %53
  %48 = add i32 %47, 3
  %49 = urem i32 %48, 2600
  %p_conv31.i = sitofp i32 %49 to double
  %p_div33.i = fdiv double %p_conv31.i, 2.000000e+03
  %50 = shl i64 %45, 3
  %51 = add nuw nsw i64 %50, %54
  %scevgep115 = getelementptr i8, i8* %call.i, i64 %51
  %scevgep115116 = bitcast i8* %scevgep115 to double*
  store double %p_div33.i, double* %scevgep115116, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next113 = add nuw nsw i64 %polly.indvar112, 1
  %exitcond214.not = icmp eq i64 %polly.indvar112, %44
  br i1 %exitcond214.not, label %polly.loop_exit111, label %polly.stmt.for.body27.i

polly.loop_preheader110:                          ; preds = %polly.loop_preheader104, %polly.loop_exit111
  %polly.indvar106 = phi i64 [ 0, %polly.loop_preheader104 ], [ %polly.indvar_next107, %polly.loop_exit111 ]
  %52 = add nuw nsw i64 %polly.indvar106, %41
  %53 = trunc i64 %52 to i32
  %54 = mul nuw nsw i64 %52, 20800
  br label %polly.stmt.for.body27.i

polly.loop_exit129:                               ; preds = %polly.loop_exit135
  %polly.indvar_next125 = add nuw nsw i64 %polly.indvar124, 1
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 32
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -32
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %exitcond236.not = icmp eq i64 %polly.indvar_next125, 82
  br i1 %exitcond236.not, label %polly.loop_preheader153.preheader, label %polly.loop_preheader128

polly.loop_preheader153.preheader:                ; preds = %polly.loop_exit129
  %polly.access.cast.call.i25 = bitcast i8* %call.i25 to double*
  %polly.access.cast.call.i26 = bitcast i8* %call.i26 to double*
  br label %polly.loop_preheader153

polly.loop_preheader122:                          ; preds = %polly.loop_exit99
  %call.i63 = bitcast i8* %call.i to [2600 x double]*
  tail call void (...) @polybench_timer_start() #7
  br label %polly.loop_preheader128

polly.loop_exit135:                               ; preds = %polly.loop_exit141
  %polly.indvar_next131 = add nuw nsw i64 %polly.indvar130, 1
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, -32
  %exitcond235.not = icmp eq i64 %polly.indvar_next131, %indvars.iv233
  br i1 %exitcond235.not, label %polly.loop_exit129, label %polly.loop_preheader134

polly.loop_preheader128:                          ; preds = %polly.loop_preheader122, %polly.loop_exit129
  %indvars.iv233 = phi i64 [ 1, %polly.loop_preheader122 ], [ %indvars.iv.next234, %polly.loop_exit129 ]
  %indvars.iv229 = phi i64 [ 0, %polly.loop_preheader122 ], [ %indvars.iv.next230, %polly.loop_exit129 ]
  %indvars.iv221 = phi i64 [ 0, %polly.loop_preheader122 ], [ %indvars.iv.next222, %polly.loop_exit129 ]
  %polly.indvar124 = phi i64 [ 0, %polly.loop_preheader122 ], [ %polly.indvar_next125, %polly.loop_exit129 ]
  %55 = shl nuw nsw i64 %polly.indvar124, 5
  %56 = shl nuw nsw i64 %polly.indvar124, 5
  %smin231 = call i64 @llvm.smin.i64(i64 %indvars.iv229, i64 -2568)
  %57 = shl nsw i64 %polly.indvar124, 5
  %58 = add nsw i64 %smin231, 2599
  br label %polly.loop_preheader134

polly.loop_exit141:                               ; preds = %polly.stmt.for.body3.i32, %middle.block, %polly.loop_if
  %polly.indvar_next137 = add nuw nsw i64 %polly.indvar136, 1
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1
  %exitcond232.not = icmp eq i64 %polly.indvar136, %58
  br i1 %exitcond232.not, label %polly.loop_exit135, label %polly.loop_if

polly.loop_preheader134:                          ; preds = %polly.loop_preheader128, %polly.loop_exit135
  %indvars.iv223 = phi i64 [ %indvars.iv221, %polly.loop_preheader128 ], [ %indvars.iv.next224, %polly.loop_exit135 ]
  %polly.indvar130 = phi i64 [ 0, %polly.loop_preheader128 ], [ %polly.indvar_next131, %polly.loop_exit135 ]
  %59 = mul nsw i64 %polly.indvar130, -32
  %60 = add i64 %55, %59
  %61 = mul nsw i64 %polly.indvar130, -32
  %62 = add i64 %56, %61
  %63 = shl nsw i64 %polly.indvar130, 5
  %64 = sub nsw i64 %57, %63
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader134, %polly.loop_exit141
  %indvars.iv225 = phi i64 [ %indvars.iv223, %polly.loop_preheader134 ], [ %indvars.iv.next226, %polly.loop_exit141 ]
  %polly.indvar136 = phi i64 [ 0, %polly.loop_preheader134 ], [ %polly.indvar_next137, %polly.loop_exit141 ]
  %65 = add i64 %60, %polly.indvar136
  %smin263 = call i64 @llvm.smin.i64(i64 %65, i64 31)
  %66 = add i64 %smin263, -3
  %67 = lshr i64 %66, 2
  %68 = add nuw nsw i64 %67, 1
  %69 = add i64 %62, %polly.indvar136
  %smin260 = call i64 @llvm.smin.i64(i64 %69, i64 31)
  %70 = add nsw i64 %smin260, 1
  %smin227 = call i64 @llvm.smin.i64(i64 %indvars.iv225, i64 31)
  %71 = add nsw i64 %polly.indvar136, %64
  %polly.loop_guard258 = icmp sgt i64 %71, -1
  br i1 %polly.loop_guard258, label %polly.stmt.for.body3.i32.preheader, label %polly.loop_exit141

polly.stmt.for.body3.i32.preheader:               ; preds = %polly.loop_if
  %72 = add nuw nsw i64 %polly.indvar136, %57
  %min.iters.check = icmp ult i64 %70, 4
  br i1 %min.iters.check, label %polly.stmt.for.body3.i32.preheader262, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body3.i32.preheader
  %n.vec = and i64 %70, -4
  %xtraiter = and i64 %68, 1
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %68, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %74 = add nuw nsw i64 %index, %63
  %75 = getelementptr [2600 x double], [2600 x double]* %call.i63, i64 %72, i64 %74
  %76 = bitcast double* %75 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %76, align 8, !alias.scope !18, !noalias !20
  %77 = getelementptr double, double* %75, i64 2
  %78 = bitcast double* %77 to <2 x double>*
  %wide.load261 = load <2 x double>, <2 x double>* %78, align 8, !alias.scope !18, !noalias !20
  %79 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %80 = fmul <2 x double> %wide.load261, <double 1.200000e+00, double 1.200000e+00>
  %81 = bitcast double* %75 to <2 x double>*
  store <2 x double> %79, <2 x double>* %81, align 8, !alias.scope !18, !noalias !20
  %82 = bitcast double* %77 to <2 x double>*
  store <2 x double> %80, <2 x double>* %82, align 8, !alias.scope !18, !noalias !20
  %index.next = or i64 %index, 4
  %83 = add nuw nsw i64 %index.next, %63
  %84 = getelementptr [2600 x double], [2600 x double]* %call.i63, i64 %72, i64 %83
  %85 = bitcast double* %84 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %85, align 8, !alias.scope !18, !noalias !20
  %86 = getelementptr double, double* %84, i64 2
  %87 = bitcast double* %86 to <2 x double>*
  %wide.load261.1 = load <2 x double>, <2 x double>* %87, align 8, !alias.scope !18, !noalias !20
  %88 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %89 = fmul <2 x double> %wide.load261.1, <double 1.200000e+00, double 1.200000e+00>
  %90 = bitcast double* %84 to <2 x double>*
  store <2 x double> %88, <2 x double>* %90, align 8, !alias.scope !18, !noalias !20
  %91 = bitcast double* %86 to <2 x double>*
  store <2 x double> %89, <2 x double>* %91, align 8, !alias.scope !18, !noalias !20
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !23

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %92 = add nuw nsw i64 %index.unr, %63
  %93 = getelementptr [2600 x double], [2600 x double]* %call.i63, i64 %72, i64 %92
  %94 = bitcast double* %93 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %94, align 8, !alias.scope !18, !noalias !20
  %95 = getelementptr double, double* %93, i64 2
  %96 = bitcast double* %95 to <2 x double>*
  %wide.load261.epil = load <2 x double>, <2 x double>* %96, align 8, !alias.scope !18, !noalias !20
  %97 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %98 = fmul <2 x double> %wide.load261.epil, <double 1.200000e+00, double 1.200000e+00>
  %99 = bitcast double* %93 to <2 x double>*
  store <2 x double> %97, <2 x double>* %99, align 8, !alias.scope !18, !noalias !20
  %100 = bitcast double* %95 to <2 x double>*
  store <2 x double> %98, <2 x double>* %100, align 8, !alias.scope !18, !noalias !20
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %70, %n.vec
  br i1 %cmp.n, label %polly.loop_exit141, label %polly.stmt.for.body3.i32.preheader262

polly.stmt.for.body3.i32.preheader262:            ; preds = %polly.stmt.for.body3.i32.preheader, %middle.block
  %polly.indvar142.ph = phi i64 [ 0, %polly.stmt.for.body3.i32.preheader ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body3.i32

polly.stmt.for.body3.i32:                         ; preds = %polly.stmt.for.body3.i32.preheader262, %polly.stmt.for.body3.i32
  %polly.indvar142 = phi i64 [ %polly.indvar_next143, %polly.stmt.for.body3.i32 ], [ %polly.indvar142.ph, %polly.stmt.for.body3.i32.preheader262 ]
  %101 = add nuw nsw i64 %polly.indvar142, %63
  %scevgep145 = getelementptr [2600 x double], [2600 x double]* %call.i63, i64 %72, i64 %101
  %_p_scalar_ = load double, double* %scevgep145, align 8, !alias.scope !18, !noalias !20
  %p_mul.i = fmul double %_p_scalar_, 1.200000e+00
  store double %p_mul.i, double* %scevgep145, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next143 = add nuw nsw i64 %polly.indvar142, 1
  %exitcond228.not = icmp eq i64 %polly.indvar142, %smin227
  br i1 %exitcond228.not, label %polly.loop_exit141, label %polly.stmt.for.body3.i32, !llvm.loop !25

polly.loop_exit154:                               ; preds = %polly.loop_exit160
  %polly.indvar_next150 = add nuw nsw i64 %polly.indvar149, 1
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 32
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, -32
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %exitcond257.not = icmp eq i64 %polly.indvar_next150, 82
  br i1 %exitcond257.not, label %kernel_syr2k.exit, label %polly.loop_preheader153

polly.loop_exit160:                               ; preds = %polly.loop_exit166
  %polly.indvar_next156 = add nuw nsw i64 %polly.indvar155, 1
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, -32
  %exitcond256.not = icmp eq i64 %polly.indvar_next156, %indvars.iv254
  br i1 %exitcond256.not, label %polly.loop_exit154, label %polly.loop_preheader159

polly.loop_preheader153:                          ; preds = %polly.loop_preheader153.preheader, %polly.loop_exit154
  %indvars.iv254 = phi i64 [ 1, %polly.loop_preheader153.preheader ], [ %indvars.iv.next255, %polly.loop_exit154 ]
  %indvars.iv249 = phi i64 [ 0, %polly.loop_preheader153.preheader ], [ %indvars.iv.next250, %polly.loop_exit154 ]
  %indvars.iv241 = phi i64 [ 0, %polly.loop_preheader153.preheader ], [ %indvars.iv.next242, %polly.loop_exit154 ]
  %polly.indvar149 = phi i64 [ 0, %polly.loop_preheader153.preheader ], [ %polly.indvar_next150, %polly.loop_exit154 ]
  %smin251 = call i64 @llvm.smin.i64(i64 %indvars.iv249, i64 -2568)
  %102 = shl nsw i64 %polly.indvar149, 5
  %103 = add nsw i64 %smin251, 2599
  br label %polly.loop_preheader159

polly.loop_exit166:                               ; preds = %polly.loop_exit173
  %polly.indvar_next162 = add nuw nsw i64 %polly.indvar161, 1
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, -32
  %exitcond253.not = icmp eq i64 %polly.indvar_next162, 63
  br i1 %exitcond253.not, label %polly.loop_exit160, label %polly.loop_preheader165

polly.loop_preheader159:                          ; preds = %polly.loop_preheader153, %polly.loop_exit160
  %indvars.iv243 = phi i64 [ %indvars.iv241, %polly.loop_preheader153 ], [ %indvars.iv.next244, %polly.loop_exit160 ]
  %polly.indvar155 = phi i64 [ 0, %polly.loop_preheader153 ], [ %polly.indvar_next156, %polly.loop_exit160 ]
  %104 = shl nsw i64 %polly.indvar155, 5
  %105 = sub nsw i64 %102, %104
  br label %polly.loop_preheader165

polly.loop_exit173:                               ; preds = %polly.loop_exit180, %polly.loop_if170
  %polly.indvar_next168 = add nuw nsw i64 %polly.indvar167, 1
  %indvars.iv.next246 = add nsw i64 %indvars.iv245, 1
  %exitcond252.not = icmp eq i64 %polly.indvar167, %103
  br i1 %exitcond252.not, label %polly.loop_exit166, label %polly.loop_if170

polly.loop_preheader165:                          ; preds = %polly.loop_preheader159, %polly.loop_exit166
  %indvars.iv237 = phi i64 [ 0, %polly.loop_preheader159 ], [ %indvars.iv.next238, %polly.loop_exit166 ]
  %polly.indvar161 = phi i64 [ 0, %polly.loop_preheader159 ], [ %polly.indvar_next162, %polly.loop_exit166 ]
  %smin239 = call i64 @llvm.smin.i64(i64 %indvars.iv237, i64 -1968)
  %106 = shl nsw i64 %polly.indvar161, 5
  %107 = add nsw i64 %smin239, 1999
  br label %polly.loop_if170

polly.loop_if170:                                 ; preds = %polly.loop_preheader165, %polly.loop_exit173
  %indvars.iv245 = phi i64 [ %indvars.iv243, %polly.loop_preheader165 ], [ %indvars.iv.next246, %polly.loop_exit173 ]
  %polly.indvar167 = phi i64 [ 0, %polly.loop_preheader165 ], [ %polly.indvar_next168, %polly.loop_exit173 ]
  %smin247 = call i64 @llvm.smin.i64(i64 %indvars.iv245, i64 31)
  %108 = add nsw i64 %polly.indvar167, %105
  %polly.loop_guard174259 = icmp sgt i64 %108, -1
  br i1 %polly.loop_guard174259, label %polly.loop_preheader179.preheader, label %polly.loop_exit173

polly.loop_preheader179.preheader:                ; preds = %polly.loop_if170
  %109 = add nuw nsw i64 %polly.indvar167, %102
  %polly.access.mul.call.i25 = mul nuw nsw i64 %109, 2000
  br label %polly.loop_preheader179

polly.loop_exit180:                               ; preds = %polly.stmt.for.body11.i
  store double %p_add36.i, double* %scevgep192, align 8, !alias.scope !27, !noalias !20
  %polly.indvar_next176 = add nuw nsw i64 %polly.indvar175, 1
  %exitcond248.not = icmp eq i64 %polly.indvar175, %smin247
  br i1 %exitcond248.not, label %polly.loop_exit173, label %polly.loop_preheader179

polly.stmt.for.body11.i:                          ; preds = %polly.loop_preheader179, %polly.stmt.for.body11.i
  %p_add36.i194 = phi double [ %scevgep192.promoted, %polly.loop_preheader179 ], [ %p_add36.i, %polly.stmt.for.body11.i ]
  %polly.indvar181 = phi i64 [ 0, %polly.loop_preheader179 ], [ %polly.indvar_next182, %polly.stmt.for.body11.i ]
  %110 = add nuw nsw i64 %polly.indvar181, %106
  %polly.access.add.call.i25 = add nuw nsw i64 %110, %polly.access.mul.call.i25
  %polly.access.call.i25 = getelementptr double, double* %polly.access.cast.call.i25, i64 %polly.access.add.call.i25
  %_p_scalar_184 = load double, double* %polly.access.call.i25, align 8, !alias.scope !22, !noalias !28
  %polly.access.call.i26 = getelementptr double, double* %polly.access.cast.call.i26, i64 %polly.access.add.call.i25
  %_p_scalar_185 = load double, double* %polly.access.call.i26, align 8, !alias.scope !21, !noalias !29
  %111 = shl i64 %110, 3
  %112 = add nuw nsw i64 %111, %121
  %scevgep186 = getelementptr i8, i8* %call.i25, i64 %112
  %scevgep186187 = bitcast i8* %scevgep186 to double*
  %_p_scalar_188 = load double, double* %scevgep186187, align 8, !alias.scope !22, !noalias !28
  %scevgep189 = getelementptr i8, i8* %call.i26, i64 %112
  %scevgep189190 = bitcast i8* %scevgep189 to double*
  %_p_scalar_191 = load double, double* %scevgep189190, align 8, !alias.scope !21, !noalias !29
  %113 = insertelement <2 x double> poison, double %_p_scalar_188, i32 0
  %114 = insertelement <2 x double> %113, double %_p_scalar_191, i32 1
  %115 = fmul <2 x double> %114, <double 1.500000e+00, double 1.500000e+00>
  %116 = insertelement <2 x double> poison, double %_p_scalar_185, i32 0
  %117 = insertelement <2 x double> %116, double %_p_scalar_184, i32 1
  %118 = fmul <2 x double> %117, %115
  %shift = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %119 = fadd <2 x double> %118, %shift
  %p_add.i = extractelement <2 x double> %119, i32 0
  %p_add36.i = fadd double %p_add36.i194, %p_add.i
  %polly.indvar_next182 = add nuw nsw i64 %polly.indvar181, 1
  %exitcond240.not = icmp eq i64 %polly.indvar181, %107
  br i1 %exitcond240.not, label %polly.loop_exit180, label %polly.stmt.for.body11.i

polly.loop_preheader179:                          ; preds = %polly.loop_preheader179.preheader, %polly.loop_exit180
  %polly.indvar175 = phi i64 [ %polly.indvar_next176, %polly.loop_exit180 ], [ 0, %polly.loop_preheader179.preheader ]
  %120 = add nuw nsw i64 %polly.indvar175, %104
  %121 = mul nuw nsw i64 %120, 16000
  %scevgep192 = getelementptr [2600 x double], [2600 x double]* %call.i63, i64 %109, i64 %120
  %scevgep192.promoted = load double, double* %scevgep192, align 8, !alias.scope !27, !noalias !20
  br label %polly.stmt.for.body11.i
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef1"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef3"}
!16 = !{!11, !15}
!17 = !{!14, !11}
!18 = distinct !{!18, !19, !"polly.alias.scope.MemRef0"}
!19 = distinct !{!19, !"polly.alias.scope.domain"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19, !"polly.alias.scope.MemRef1"}
!22 = distinct !{!22, !19, !"polly.alias.scope.MemRef3"}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = distinct !{!25, !26, !24}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!18}
!28 = !{!18, !21}
!29 = !{!18, !22}
