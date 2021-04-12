; ModuleID = 'syrk.c'
source_filename = "syrk.c"
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
  %call.i19 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  br label %polly.loop_preheader35

kernel_syrk.exit:                                 ; preds = %polly.loop_exit116
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syrk.exit
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
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %5 = add nuw nsw i64 %indvars.iv.i27, %4
  %6 = trunc i64 %5 to i32
  %rem.i28 = urem i32 %6, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %9 = load double, double* %arrayidx8.i, align 8, !tbaa !6
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %9) #8
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !8

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

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syrk.exit
  tail call void @free(i8* nonnull %call.i) #7
  tail call void @free(i8* %call.i19) #7
  ret i32 0

polly.loop_exit36:                                ; preds = %polly.loop_exit42
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, -32
  %exitcond158.not = icmp eq i64 %polly.indvar_next, 82
  br i1 %exitcond158.not, label %polly.loop_preheader60, label %polly.loop_preheader35

polly.loop_exit42:                                ; preds = %polly.loop_exit48
  %polly.indvar_next38 = add nuw nsw i64 %polly.indvar37, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond157.not = icmp eq i64 %polly.indvar_next38, 63
  br i1 %exitcond157.not, label %polly.loop_exit36, label %polly.loop_preheader41

polly.loop_preheader35:                           ; preds = %polly.loop_preheader, %polly.loop_exit36
  %indvars.iv153 = phi i64 [ 0, %polly.loop_preheader ], [ %indvars.iv.next154, %polly.loop_exit36 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit36 ]
  %smin155 = call i64 @llvm.smin.i64(i64 %indvars.iv153, i64 -2568)
  %13 = shl nsw i64 %polly.indvar, 5
  %14 = add nsw i64 %smin155, 2599
  br label %polly.loop_preheader41

polly.loop_exit48:                                ; preds = %polly.stmt.for.body3.i
  %polly.indvar_next44 = add nuw nsw i64 %polly.indvar43, 1
  %exitcond156.not = icmp eq i64 %polly.indvar43, %14
  br i1 %exitcond156.not, label %polly.loop_exit42, label %polly.loop_preheader47

polly.loop_preheader41:                           ; preds = %polly.loop_preheader35, %polly.loop_exit42
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader35 ], [ %indvars.iv.next, %polly.loop_exit42 ]
  %polly.indvar37 = phi i64 [ 0, %polly.loop_preheader35 ], [ %polly.indvar_next38, %polly.loop_exit42 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %15 = shl nsw i64 %polly.indvar37, 5
  %16 = add nsw i64 %smin, 1999
  br label %polly.loop_preheader47

polly.stmt.for.body3.i:                           ; preds = %polly.loop_preheader47, %polly.stmt.for.body3.i
  %polly.indvar49 = phi i64 [ 0, %polly.loop_preheader47 ], [ %polly.indvar_next50, %polly.stmt.for.body3.i ]
  %17 = add nuw nsw i64 %polly.indvar49, %15
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %18, %25
  %20 = add i32 %19, 1
  %21 = urem i32 %20, 2600
  %p_conv.i = sitofp i32 %21 to double
  %p_div.i = fdiv double %p_conv.i, 2.600000e+03
  %22 = shl i64 %17, 3
  %23 = add nuw nsw i64 %22, %26
  %scevgep = getelementptr i8, i8* %call.i19, i64 %23
  %scevgep52 = bitcast i8* %scevgep to double*
  store double %p_div.i, double* %scevgep52, align 8, !alias.scope !11, !noalias !13
  %polly.indvar_next50 = add nuw nsw i64 %polly.indvar49, 1
  %exitcond.not = icmp eq i64 %polly.indvar49, %16
  br i1 %exitcond.not, label %polly.loop_exit48, label %polly.stmt.for.body3.i

polly.loop_preheader47:                           ; preds = %polly.loop_preheader41, %polly.loop_exit48
  %polly.indvar43 = phi i64 [ 0, %polly.loop_preheader41 ], [ %polly.indvar_next44, %polly.loop_exit48 ]
  %24 = add nuw nsw i64 %polly.indvar43, %13
  %25 = trunc i64 %24 to i32
  %26 = mul nuw nsw i64 %24, 16000
  br label %polly.stmt.for.body3.i

polly.loop_exit61:                                ; preds = %polly.loop_exit67
  %polly.indvar_next57 = add nuw nsw i64 %polly.indvar56, 1
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -32
  %exitcond168.not = icmp eq i64 %polly.indvar_next57, 82
  br i1 %exitcond168.not, label %polly.loop_preheader84, label %polly.loop_preheader60

polly.loop_exit67:                                ; preds = %polly.loop_exit73
  %polly.indvar_next63 = add nuw nsw i64 %polly.indvar62, 1
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -32
  %exitcond167.not = icmp eq i64 %polly.indvar_next63, 82
  br i1 %exitcond167.not, label %polly.loop_exit61, label %polly.loop_preheader66

polly.loop_preheader60:                           ; preds = %polly.loop_exit36, %polly.loop_exit61
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %polly.loop_exit61 ], [ 0, %polly.loop_exit36 ]
  %polly.indvar56 = phi i64 [ %polly.indvar_next57, %polly.loop_exit61 ], [ 0, %polly.loop_exit36 ]
  %smin165 = call i64 @llvm.smin.i64(i64 %indvars.iv163, i64 -2568)
  %27 = shl nsw i64 %polly.indvar56, 5
  %28 = add nsw i64 %smin165, 2599
  br label %polly.loop_preheader66

polly.loop_exit73:                                ; preds = %polly.stmt.for.body17.i
  %polly.indvar_next69 = add nuw nsw i64 %polly.indvar68, 1
  %exitcond166.not = icmp eq i64 %polly.indvar68, %28
  br i1 %exitcond166.not, label %polly.loop_exit67, label %polly.loop_preheader72

polly.loop_preheader66:                           ; preds = %polly.loop_preheader60, %polly.loop_exit67
  %indvars.iv159 = phi i64 [ 0, %polly.loop_preheader60 ], [ %indvars.iv.next160, %polly.loop_exit67 ]
  %polly.indvar62 = phi i64 [ 0, %polly.loop_preheader60 ], [ %polly.indvar_next63, %polly.loop_exit67 ]
  %smin161 = call i64 @llvm.smin.i64(i64 %indvars.iv159, i64 -2568)
  %29 = shl nsw i64 %polly.indvar62, 5
  %30 = add nsw i64 %smin161, 2599
  br label %polly.loop_preheader72

polly.stmt.for.body17.i:                          ; preds = %polly.loop_preheader72, %polly.stmt.for.body17.i
  %polly.indvar74 = phi i64 [ 0, %polly.loop_preheader72 ], [ %polly.indvar_next75, %polly.stmt.for.body17.i ]
  %31 = add nuw nsw i64 %polly.indvar74, %29
  %32 = trunc i64 %31 to i32
  %33 = mul i32 %32, %39
  %34 = add i32 %33, 2
  %35 = urem i32 %34, 2000
  %p_conv21.i = sitofp i32 %35 to double
  %p_div23.i = fdiv double %p_conv21.i, 2.000000e+03
  %36 = shl i64 %31, 3
  %37 = add nuw nsw i64 %36, %40
  %scevgep77 = getelementptr i8, i8* %call.i, i64 %37
  %scevgep7778 = bitcast i8* %scevgep77 to double*
  store double %p_div23.i, double* %scevgep7778, align 8, !alias.scope !14, !noalias !15
  %polly.indvar_next75 = add nuw nsw i64 %polly.indvar74, 1
  %exitcond162.not = icmp eq i64 %polly.indvar74, %30
  br i1 %exitcond162.not, label %polly.loop_exit73, label %polly.stmt.for.body17.i

polly.loop_preheader72:                           ; preds = %polly.loop_preheader66, %polly.loop_exit73
  %polly.indvar68 = phi i64 [ 0, %polly.loop_preheader66 ], [ %polly.indvar_next69, %polly.loop_exit73 ]
  %38 = add nuw nsw i64 %polly.indvar68, %27
  %39 = trunc i64 %38 to i32
  %40 = mul nuw nsw i64 %38, 20800
  br label %polly.stmt.for.body17.i

polly.loop_exit91:                                ; preds = %polly.loop_exit97
  %polly.indvar_next87 = add nuw nsw i64 %polly.indvar86, 1
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 32
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, -32
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond184.not = icmp eq i64 %polly.indvar_next87, 82
  br i1 %exitcond184.not, label %polly.loop_preheader115.preheader, label %polly.loop_preheader90

polly.loop_preheader115.preheader:                ; preds = %polly.loop_exit91
  %polly.access.cast.call.i19 = bitcast i8* %call.i19 to double*
  br label %polly.loop_preheader115

polly.loop_preheader84:                           ; preds = %polly.loop_exit61
  %call.i33 = bitcast i8* %call.i to [2600 x double]*
  tail call void (...) @polybench_timer_start() #7
  br label %polly.loop_preheader90

polly.loop_exit97:                                ; preds = %polly.loop_exit103
  %polly.indvar_next93 = add nuw nsw i64 %polly.indvar92, 1
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -32
  %exitcond183.not = icmp eq i64 %polly.indvar_next93, %indvars.iv181
  br i1 %exitcond183.not, label %polly.loop_exit91, label %polly.loop_preheader96

polly.loop_preheader90:                           ; preds = %polly.loop_preheader84, %polly.loop_exit91
  %indvars.iv181 = phi i64 [ 1, %polly.loop_preheader84 ], [ %indvars.iv.next182, %polly.loop_exit91 ]
  %indvars.iv177 = phi i64 [ 0, %polly.loop_preheader84 ], [ %indvars.iv.next178, %polly.loop_exit91 ]
  %indvars.iv169 = phi i64 [ 0, %polly.loop_preheader84 ], [ %indvars.iv.next170, %polly.loop_exit91 ]
  %polly.indvar86 = phi i64 [ 0, %polly.loop_preheader84 ], [ %polly.indvar_next87, %polly.loop_exit91 ]
  %41 = shl nuw nsw i64 %polly.indvar86, 5
  %42 = shl nuw nsw i64 %polly.indvar86, 5
  %smin179 = call i64 @llvm.smin.i64(i64 %indvars.iv177, i64 -2568)
  %43 = shl nsw i64 %polly.indvar86, 5
  %44 = add nsw i64 %smin179, 2599
  br label %polly.loop_preheader96

polly.loop_exit103:                               ; preds = %polly.stmt.for.body3.i24, %middle.block, %polly.loop_if
  %polly.indvar_next99 = add nuw nsw i64 %polly.indvar98, 1
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1
  %exitcond180.not = icmp eq i64 %polly.indvar98, %44
  br i1 %exitcond180.not, label %polly.loop_exit97, label %polly.loop_if

polly.loop_preheader96:                           ; preds = %polly.loop_preheader90, %polly.loop_exit97
  %indvars.iv171 = phi i64 [ %indvars.iv169, %polly.loop_preheader90 ], [ %indvars.iv.next172, %polly.loop_exit97 ]
  %polly.indvar92 = phi i64 [ 0, %polly.loop_preheader90 ], [ %polly.indvar_next93, %polly.loop_exit97 ]
  %45 = mul nsw i64 %polly.indvar92, -32
  %46 = add i64 %41, %45
  %47 = mul nsw i64 %polly.indvar92, -32
  %48 = add i64 %42, %47
  %49 = shl nsw i64 %polly.indvar92, 5
  %50 = sub nsw i64 %43, %49
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader96, %polly.loop_exit103
  %indvars.iv173 = phi i64 [ %indvars.iv171, %polly.loop_preheader96 ], [ %indvars.iv.next174, %polly.loop_exit103 ]
  %polly.indvar98 = phi i64 [ 0, %polly.loop_preheader96 ], [ %polly.indvar_next99, %polly.loop_exit103 ]
  %51 = add i64 %46, %polly.indvar98
  %smin211 = call i64 @llvm.smin.i64(i64 %51, i64 31)
  %52 = add i64 %smin211, -3
  %53 = lshr i64 %52, 2
  %54 = add nuw nsw i64 %53, 1
  %55 = add i64 %48, %polly.indvar98
  %smin208 = call i64 @llvm.smin.i64(i64 %55, i64 31)
  %56 = add nsw i64 %smin208, 1
  %smin175 = call i64 @llvm.smin.i64(i64 %indvars.iv173, i64 31)
  %57 = add nsw i64 %polly.indvar98, %50
  %polly.loop_guard206 = icmp sgt i64 %57, -1
  br i1 %polly.loop_guard206, label %polly.stmt.for.body3.i24.preheader, label %polly.loop_exit103

polly.stmt.for.body3.i24.preheader:               ; preds = %polly.loop_if
  %58 = add nuw nsw i64 %polly.indvar98, %43
  %min.iters.check = icmp ult i64 %56, 4
  br i1 %min.iters.check, label %polly.stmt.for.body3.i24.preheader210, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body3.i24.preheader
  %n.vec = and i64 %56, -4
  %xtraiter = and i64 %54, 1
  %59 = icmp eq i64 %53, 0
  br i1 %59, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %54, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %60 = add nuw nsw i64 %index, %49
  %61 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 %58, i64 %60
  %62 = bitcast double* %61 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %62, align 8, !alias.scope !16, !noalias !18
  %63 = getelementptr double, double* %61, i64 2
  %64 = bitcast double* %63 to <2 x double>*
  %wide.load209 = load <2 x double>, <2 x double>* %64, align 8, !alias.scope !16, !noalias !18
  %65 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %66 = fmul <2 x double> %wide.load209, <double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %61 to <2 x double>*
  store <2 x double> %65, <2 x double>* %67, align 8, !alias.scope !16, !noalias !18
  %68 = bitcast double* %63 to <2 x double>*
  store <2 x double> %66, <2 x double>* %68, align 8, !alias.scope !16, !noalias !18
  %index.next = or i64 %index, 4
  %69 = add nuw nsw i64 %index.next, %49
  %70 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 %58, i64 %69
  %71 = bitcast double* %70 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %71, align 8, !alias.scope !16, !noalias !18
  %72 = getelementptr double, double* %70, i64 2
  %73 = bitcast double* %72 to <2 x double>*
  %wide.load209.1 = load <2 x double>, <2 x double>* %73, align 8, !alias.scope !16, !noalias !18
  %74 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %75 = fmul <2 x double> %wide.load209.1, <double 1.200000e+00, double 1.200000e+00>
  %76 = bitcast double* %70 to <2 x double>*
  store <2 x double> %74, <2 x double>* %76, align 8, !alias.scope !16, !noalias !18
  %77 = bitcast double* %72 to <2 x double>*
  store <2 x double> %75, <2 x double>* %77, align 8, !alias.scope !16, !noalias !18
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !20

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %78 = add nuw nsw i64 %index.unr, %49
  %79 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 %58, i64 %78
  %80 = bitcast double* %79 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %80, align 8, !alias.scope !16, !noalias !18
  %81 = getelementptr double, double* %79, i64 2
  %82 = bitcast double* %81 to <2 x double>*
  %wide.load209.epil = load <2 x double>, <2 x double>* %82, align 8, !alias.scope !16, !noalias !18
  %83 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %84 = fmul <2 x double> %wide.load209.epil, <double 1.200000e+00, double 1.200000e+00>
  %85 = bitcast double* %79 to <2 x double>*
  store <2 x double> %83, <2 x double>* %85, align 8, !alias.scope !16, !noalias !18
  %86 = bitcast double* %81 to <2 x double>*
  store <2 x double> %84, <2 x double>* %86, align 8, !alias.scope !16, !noalias !18
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %56, %n.vec
  br i1 %cmp.n, label %polly.loop_exit103, label %polly.stmt.for.body3.i24.preheader210

polly.stmt.for.body3.i24.preheader210:            ; preds = %polly.stmt.for.body3.i24.preheader, %middle.block
  %polly.indvar104.ph = phi i64 [ 0, %polly.stmt.for.body3.i24.preheader ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body3.i24

polly.stmt.for.body3.i24:                         ; preds = %polly.stmt.for.body3.i24.preheader210, %polly.stmt.for.body3.i24
  %polly.indvar104 = phi i64 [ %polly.indvar_next105, %polly.stmt.for.body3.i24 ], [ %polly.indvar104.ph, %polly.stmt.for.body3.i24.preheader210 ]
  %87 = add nuw nsw i64 %polly.indvar104, %49
  %scevgep107 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 %58, i64 %87
  %_p_scalar_ = load double, double* %scevgep107, align 8, !alias.scope !16, !noalias !18
  %p_mul.i = fmul double %_p_scalar_, 1.200000e+00
  store double %p_mul.i, double* %scevgep107, align 8, !alias.scope !16, !noalias !18
  %polly.indvar_next105 = add nuw nsw i64 %polly.indvar104, 1
  %exitcond176.not = icmp eq i64 %polly.indvar104, %smin175
  br i1 %exitcond176.not, label %polly.loop_exit103, label %polly.stmt.for.body3.i24, !llvm.loop !22

polly.loop_exit116:                               ; preds = %polly.loop_exit122
  %polly.indvar_next112 = add nuw nsw i64 %polly.indvar111, 1
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 32
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, -32
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  %exitcond205.not = icmp eq i64 %polly.indvar_next112, 82
  br i1 %exitcond205.not, label %kernel_syrk.exit, label %polly.loop_preheader115

polly.loop_exit122:                               ; preds = %polly.loop_exit128
  %polly.indvar_next118 = add nuw nsw i64 %polly.indvar117, 1
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, -32
  %exitcond204.not = icmp eq i64 %polly.indvar_next118, %indvars.iv202
  br i1 %exitcond204.not, label %polly.loop_exit116, label %polly.loop_preheader121

polly.loop_preheader115:                          ; preds = %polly.loop_preheader115.preheader, %polly.loop_exit116
  %indvars.iv202 = phi i64 [ 1, %polly.loop_preheader115.preheader ], [ %indvars.iv.next203, %polly.loop_exit116 ]
  %indvars.iv197 = phi i64 [ 0, %polly.loop_preheader115.preheader ], [ %indvars.iv.next198, %polly.loop_exit116 ]
  %indvars.iv189 = phi i64 [ 0, %polly.loop_preheader115.preheader ], [ %indvars.iv.next190, %polly.loop_exit116 ]
  %polly.indvar111 = phi i64 [ 0, %polly.loop_preheader115.preheader ], [ %polly.indvar_next112, %polly.loop_exit116 ]
  %smin199 = call i64 @llvm.smin.i64(i64 %indvars.iv197, i64 -2568)
  %88 = shl nsw i64 %polly.indvar111, 5
  %89 = add nsw i64 %smin199, 2599
  br label %polly.loop_preheader121

polly.loop_exit128:                               ; preds = %polly.loop_exit135
  %polly.indvar_next124 = add nuw nsw i64 %polly.indvar123, 1
  %exitcond201.not = icmp eq i64 %polly.indvar_next124, 63
  br i1 %exitcond201.not, label %polly.loop_exit122, label %polly.loop_preheader127

polly.loop_preheader121:                          ; preds = %polly.loop_preheader115, %polly.loop_exit122
  %indvars.iv191 = phi i64 [ %indvars.iv189, %polly.loop_preheader115 ], [ %indvars.iv.next192, %polly.loop_exit122 ]
  %polly.indvar117 = phi i64 [ 0, %polly.loop_preheader115 ], [ %polly.indvar_next118, %polly.loop_exit122 ]
  %90 = shl nsw i64 %polly.indvar117, 5
  %91 = sub nsw i64 %88, %90
  br label %polly.loop_preheader127

polly.loop_exit135:                               ; preds = %polly.loop_exit142, %polly.loop_if132
  %polly.indvar_next130 = add nuw nsw i64 %polly.indvar129, 1
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1
  %exitcond200.not = icmp eq i64 %polly.indvar129, %89
  br i1 %exitcond200.not, label %polly.loop_exit128, label %polly.loop_if132

polly.loop_preheader127:                          ; preds = %polly.loop_preheader121, %polly.loop_exit128
  %polly.indvar123 = phi i64 [ 0, %polly.loop_preheader121 ], [ %polly.indvar_next124, %polly.loop_exit128 ]
  %92 = mul nsw i64 %polly.indvar123, -32
  %smin212 = call i64 @llvm.smin.i64(i64 %92, i64 -1968)
  %93 = add nsw i64 %smin212, 2000
  %94 = shl nsw i64 %polly.indvar123, 5
  br label %polly.loop_if132

polly.loop_if132:                                 ; preds = %polly.loop_preheader127, %polly.loop_exit135
  %indvars.iv193 = phi i64 [ %indvars.iv191, %polly.loop_preheader127 ], [ %indvars.iv.next194, %polly.loop_exit135 ]
  %polly.indvar129 = phi i64 [ 0, %polly.loop_preheader127 ], [ %polly.indvar_next130, %polly.loop_exit135 ]
  %smin195 = call i64 @llvm.smin.i64(i64 %indvars.iv193, i64 31)
  %95 = add nsw i64 %polly.indvar129, %91
  %polly.loop_guard136207 = icmp sgt i64 %95, -1
  br i1 %polly.loop_guard136207, label %polly.loop_preheader141.preheader, label %polly.loop_exit135

polly.loop_preheader141.preheader:                ; preds = %polly.loop_if132
  %96 = add nuw nsw i64 %polly.indvar129, %88
  %polly.access.mul.call.i19 = mul nuw nsw i64 %96, 2000
  br label %polly.loop_preheader141

polly.loop_exit142:                               ; preds = %polly.stmt.for.body11.i
  store double %p_add.i.1, double* %scevgep150, align 8, !alias.scope !24, !noalias !18
  %polly.indvar_next138 = add nuw nsw i64 %polly.indvar137, 1
  %exitcond196.not = icmp eq i64 %polly.indvar137, %smin195
  br i1 %exitcond196.not, label %polly.loop_exit135, label %polly.loop_preheader141

polly.stmt.for.body11.i:                          ; preds = %polly.stmt.for.body11.i, %polly.loop_preheader141
  %p_add.i152 = phi double [ %scevgep150.promoted, %polly.loop_preheader141 ], [ %p_add.i.1, %polly.stmt.for.body11.i ]
  %polly.indvar143 = phi i64 [ 0, %polly.loop_preheader141 ], [ %polly.indvar_next144.1, %polly.stmt.for.body11.i ]
  %niter216 = phi i64 [ %93, %polly.loop_preheader141 ], [ %niter216.nsub.1, %polly.stmt.for.body11.i ]
  %97 = add nuw nsw i64 %polly.indvar143, %94
  %polly.access.add.call.i19 = add nuw nsw i64 %97, %polly.access.mul.call.i19
  %polly.access.call.i19 = getelementptr double, double* %polly.access.cast.call.i19, i64 %polly.access.add.call.i19
  %_p_scalar_146 = load double, double* %polly.access.call.i19, align 8, !alias.scope !19, !noalias !24
  %p_mul16.i = fmul double %_p_scalar_146, 1.500000e+00
  %98 = shl i64 %97, 3
  %99 = add nuw nsw i64 %98, %104
  %scevgep147 = getelementptr i8, i8* %call.i19, i64 %99
  %scevgep147148 = bitcast i8* %scevgep147 to double*
  %_p_scalar_149 = load double, double* %scevgep147148, align 8, !alias.scope !19, !noalias !24
  %p_mul21.i = fmul double %p_mul16.i, %_p_scalar_149
  %p_add.i = fadd double %p_add.i152, %p_mul21.i
  %polly.indvar_next144 = or i64 %polly.indvar143, 1
  %100 = add nuw nsw i64 %polly.indvar_next144, %94
  %polly.access.add.call.i19.1 = add nuw nsw i64 %100, %polly.access.mul.call.i19
  %polly.access.call.i19.1 = getelementptr double, double* %polly.access.cast.call.i19, i64 %polly.access.add.call.i19.1
  %_p_scalar_146.1 = load double, double* %polly.access.call.i19.1, align 8, !alias.scope !19, !noalias !24
  %p_mul16.i.1 = fmul double %_p_scalar_146.1, 1.500000e+00
  %101 = shl i64 %100, 3
  %102 = add nuw nsw i64 %101, %104
  %scevgep147.1 = getelementptr i8, i8* %call.i19, i64 %102
  %scevgep147148.1 = bitcast i8* %scevgep147.1 to double*
  %_p_scalar_149.1 = load double, double* %scevgep147148.1, align 8, !alias.scope !19, !noalias !24
  %p_mul21.i.1 = fmul double %p_mul16.i.1, %_p_scalar_149.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul21.i.1
  %polly.indvar_next144.1 = add nuw nsw i64 %polly.indvar143, 2
  %niter216.nsub.1 = add i64 %niter216, -2
  %niter216.ncmp.1 = icmp eq i64 %niter216.nsub.1, 0
  br i1 %niter216.ncmp.1, label %polly.loop_exit142, label %polly.stmt.for.body11.i

polly.loop_preheader141:                          ; preds = %polly.loop_preheader141.preheader, %polly.loop_exit142
  %polly.indvar137 = phi i64 [ %polly.indvar_next138, %polly.loop_exit142 ], [ 0, %polly.loop_preheader141.preheader ]
  %103 = add nuw nsw i64 %polly.indvar137, %90
  %104 = mul nuw nsw i64 %103, 16000
  %scevgep150 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 %96, i64 %103
  %scevgep150.promoted = load double, double* %scevgep150, align 8, !alias.scope !24, !noalias !18
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
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef0"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef2"}
!15 = !{!11}
!16 = distinct !{!16, !17, !"polly.alias.scope.MemRef0"}
!17 = distinct !{!17, !"polly.alias.scope.domain"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"polly.alias.scope.MemRef1"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !23, !21}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!16}
