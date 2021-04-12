; ModuleID = 'trmm.c'
source_filename = "trmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #7
  %call.i20 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %arraydecay = bitcast i8* %call.i to [2000 x double]*
  %arraydecay2 = bitcast i8* %call.i20 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %entry.split
  %indvars.iv10.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next11.i, %for.inc27.i ]
  %cmp21.not.i = icmp eq i64 %indvars.iv10.i, 0
  br i1 %cmp21.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %0 = add nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv10.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body3.i, %for.cond1.preheader.i
  %arrayidx10.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv10.i
  store double 1.000000e+00, double* %arrayidx10.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv10.i, 2600
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %for.body14.i ]
  %3 = sub nuw nsw i64 %2, %indvars.iv6.i
  %4 = trunc i64 %3 to i32
  %rem16.urem.i = urem i32 %4, 2600
  %conv17.i = sitofp i32 %rem16.urem.i to double
  %div19.i = fdiv double %conv17.i, 2.600000e+03
  %arrayidx23.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 2600
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body14.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body14.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, 2000
  br i1 %exitcond13.not.i, label %polly.loop_preheader, label %for.cond1.preheader.i, !llvm.loop !9

land.lhs.true:                                    ; preds = %middle.block112
  %5 = load i8*, i8** %argv, align 8, !tbaa !10
  %strcmpload = load i8, i8* %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %9 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %10 = add nuw nsw i64 %indvars.iv.i27, %9
  %11 = trunc i64 %10 to i32
  %rem.i28 = urem i32 %11, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %14 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %14) #8
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !12

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !13

print_array.exit:                                 ; preds = %for.inc10.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %16) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %middle.block112
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* nonnull %call.i20) #7
  ret i32 0

polly.loop_exit37:                                ; preds = %polly.loop_exit43
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond99.not = icmp eq i64 %polly.indvar_next, 2600
  br i1 %exitcond99.not, label %polly.loop_preheader65, label %polly.loop_preheader36

polly.loop_preheader:                             ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #7
  %scevgep = getelementptr i8, i8* %call.i, i64 16000
  %scevgep49 = getelementptr i8, i8* %call.i20, i64 20800
  %polly.access.cast.call.i20 = bitcast i8* %call.i20 to double*
  br label %polly.loop_preheader36

polly.loop_exit43:                                ; preds = %polly.stmt.for.body6.us.i
  %polly.indvar_next39 = add nuw nsw i64 %polly.indvar38, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %polly.indvar_next39, 1999
  br i1 %exitcond98.not, label %polly.loop_exit37, label %polly.loop_preheader42

polly.loop_preheader36:                           ; preds = %polly.loop_preheader, %polly.loop_exit37
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit37 ]
  %18 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep50 = getelementptr i8, i8* %scevgep49, i64 %18
  br label %polly.loop_preheader42

polly.stmt.for.body6.us.i:                        ; preds = %polly.loop_preheader42, %polly.stmt.for.body6.us.i
  %polly.indvar44 = phi i64 [ 0, %polly.loop_preheader42 ], [ %polly.indvar_next45, %polly.stmt.for.body6.us.i ]
  %19 = sub nsw i64 %polly.indvar38, %polly.indvar44
  %polly.access.mul.call.i20 = mul nuw nsw i64 %polly.indvar44, 2600
  %polly.access.add.call.i20 = add nuw nsw i64 %polly.access.mul.call.i20, %polly.indvar
  %polly.access.call.i20 = getelementptr double, double* %polly.access.cast.call.i20, i64 %polly.access.add.call.i20
  %polly.access.call.i20.reload = load double, double* %polly.access.call.i20, align 8, !alias.scope !14, !noalias !16
  %20 = mul nuw nsw i64 %polly.indvar44, 16008
  %21 = mul nsw i64 %19, 16000
  %22 = add nsw i64 %21, %20
  %scevgep47 = getelementptr i8, i8* %scevgep, i64 %22
  %scevgep4748 = bitcast i8* %scevgep47 to double*
  %_p_scalar_ = load double, double* %scevgep4748, align 8, !alias.scope !17, !noalias !18
  %_p_scalar_53 = load double, double* %scevgep5152, align 8, !alias.scope !14, !noalias !16
  %p_mul.us.i = fmul double %_p_scalar_, %_p_scalar_53
  %p_add17.us.i = fadd double %polly.access.call.i20.reload, %p_mul.us.i
  store double %p_add17.us.i, double* %polly.access.call.i20, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next45 = add nuw nsw i64 %polly.indvar44, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next45, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit43, label %polly.stmt.for.body6.us.i

polly.loop_preheader42:                           ; preds = %polly.loop_preheader36, %polly.loop_exit43
  %indvars.iv = phi i64 [ 1, %polly.loop_preheader36 ], [ %indvars.iv.next, %polly.loop_exit43 ]
  %polly.indvar38 = phi i64 [ 0, %polly.loop_preheader36 ], [ %polly.indvar_next39, %polly.loop_exit43 ]
  %23 = mul nuw nsw i64 %polly.indvar38, 20800
  %scevgep51 = getelementptr i8, i8* %scevgep50, i64 %23
  %scevgep5152 = bitcast i8* %scevgep51 to double*
  br label %polly.stmt.for.body6.us.i

polly.loop_exit66:                                ; preds = %polly.loop_exit72
  %polly.indvar_next62 = add nuw nsw i64 %polly.indvar61, 1
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -32
  %exitcond108.not = icmp eq i64 %polly.indvar_next62, 63
  br i1 %exitcond108.not, label %polly.loop_preheader89, label %polly.loop_preheader65

polly.loop_exit72:                                ; preds = %polly.loop_exit78
  %polly.indvar_next68 = add nuw nsw i64 %polly.indvar67, 1
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -32
  %exitcond107.not = icmp eq i64 %polly.indvar_next68, 82
  br i1 %exitcond107.not, label %polly.loop_exit66, label %polly.loop_preheader71

polly.loop_preheader65:                           ; preds = %polly.loop_exit37, %polly.loop_exit66
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %polly.loop_exit66 ], [ 0, %polly.loop_exit37 ]
  %polly.indvar61 = phi i64 [ %polly.indvar_next62, %polly.loop_exit66 ], [ 0, %polly.loop_exit37 ]
  %smin105 = call i64 @llvm.smin.i64(i64 %indvars.iv103, i64 -1967)
  %24 = shl nsw i64 %polly.indvar61, 5
  %25 = add nsw i64 %smin105, 1998
  br label %polly.loop_preheader71

polly.loop_exit78:                                ; preds = %vector.body, %polly.stmt.for.cond4.for.end_crit_edge.us.i
  %polly.indvar_next74 = add nuw nsw i64 %polly.indvar73, 1
  %exitcond106.not = icmp eq i64 %polly.indvar73, %25
  br i1 %exitcond106.not, label %polly.loop_exit72, label %polly.loop_preheader77

polly.loop_preheader71:                           ; preds = %polly.loop_preheader65, %polly.loop_exit72
  %indvars.iv100 = phi i64 [ 0, %polly.loop_preheader65 ], [ %indvars.iv.next101, %polly.loop_exit72 ]
  %polly.indvar67 = phi i64 [ 0, %polly.loop_preheader65 ], [ %polly.indvar_next68, %polly.loop_exit72 ]
  %26 = mul nsw i64 %polly.indvar67, -32
  %smin110 = call i64 @llvm.smin.i64(i64 %26, i64 -2568)
  %27 = add nsw i64 %smin110, 2600
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv100, i64 -2568)
  %28 = shl nsw i64 %polly.indvar67, 5
  %29 = add nsw i64 %smin, 2599
  %min.iters.check = icmp eq i64 %27, 0
  br label %polly.loop_preheader77

polly.stmt.for.cond4.for.end_crit_edge.us.i:      ; preds = %polly.loop_preheader77, %polly.stmt.for.cond4.for.end_crit_edge.us.i
  %polly.indvar79 = phi i64 [ %polly.indvar_next80, %polly.stmt.for.cond4.for.end_crit_edge.us.i ], [ 0, %polly.loop_preheader77 ]
  %30 = add nuw nsw i64 %polly.indvar79, %28
  %polly.access.add.call.i2084 = add nuw nsw i64 %30, %polly.access.mul.call.i2083
  %polly.access.call.i2085 = getelementptr double, double* %polly.access.cast.call.i20, i64 %polly.access.add.call.i2084
  %polly.access.call.i2085.reload = load double, double* %polly.access.call.i2085, align 8, !alias.scope !14, !noalias !16
  %p_mul22.us.i = fmul double %polly.access.call.i2085.reload, 1.500000e+00
  %31 = shl i64 %30, 3
  %32 = add nuw nsw i64 %31, %34
  %scevgep86 = getelementptr i8, i8* %call.i20, i64 %32
  %scevgep8687 = bitcast i8* %scevgep86 to double*
  store double %p_mul22.us.i, double* %scevgep8687, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next80 = add nuw nsw i64 %polly.indvar79, 1
  %exitcond102.not = icmp eq i64 %polly.indvar79, %29
  br i1 %exitcond102.not, label %polly.loop_exit78, label %polly.stmt.for.cond4.for.end_crit_edge.us.i, !llvm.loop !19

polly.loop_preheader77:                           ; preds = %polly.loop_preheader71, %polly.loop_exit78
  %polly.indvar73 = phi i64 [ 0, %polly.loop_preheader71 ], [ %polly.indvar_next74, %polly.loop_exit78 ]
  %33 = add nuw nsw i64 %polly.indvar73, %24
  %polly.access.mul.call.i2083 = mul nuw nsw i64 %33, 2600
  %34 = mul nuw nsw i64 %33, 20800
  br i1 %min.iters.check, label %polly.stmt.for.cond4.for.end_crit_edge.us.i, label %vector.body

vector.body:                                      ; preds = %polly.loop_preheader77, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polly.loop_preheader77 ]
  %35 = add nuw nsw i64 %index, %28
  %36 = add nuw nsw i64 %35, %polly.access.mul.call.i2083
  %37 = getelementptr double, double* %polly.access.cast.call.i20, i64 %36
  %38 = bitcast double* %37 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %38, align 8, !alias.scope !14, !noalias !16
  %39 = getelementptr double, double* %37, i64 2
  %40 = bitcast double* %39 to <2 x double>*
  %wide.load111 = load <2 x double>, <2 x double>* %40, align 8, !alias.scope !14, !noalias !16
  %41 = fmul <2 x double> %wide.load, <double 1.500000e+00, double 1.500000e+00>
  %42 = fmul <2 x double> %wide.load111, <double 1.500000e+00, double 1.500000e+00>
  %43 = shl i64 %35, 3
  %44 = add nuw nsw i64 %43, %34
  %45 = getelementptr i8, i8* %call.i20, i64 %44
  %46 = bitcast i8* %45 to <2 x double>*
  store <2 x double> %41, <2 x double>* %46, align 8, !alias.scope !14, !noalias !16
  %47 = getelementptr i8, i8* %45, i64 16
  %48 = bitcast i8* %47 to <2 x double>*
  store <2 x double> %42, <2 x double>* %48, align 8, !alias.scope !14, !noalias !16
  %index.next = add i64 %index, 4
  %49 = icmp eq i64 %index.next, %27
  br i1 %49, label %polly.loop_exit78, label %vector.body, !llvm.loop !22

polly.loop_preheader89:                           ; preds = %polly.loop_exit66
  %scevgep94 = getelementptr i8, i8* %call.i20, i64 41579200
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %polly.loop_preheader89
  %index116 = phi i64 [ 0, %polly.loop_preheader89 ], [ %index.next117.1, %vector.body114 ]
  %50 = shl nuw nsw i64 %index116, 3
  %51 = getelementptr i8, i8* %scevgep94, i64 %50
  %52 = bitcast i8* %51 to <2 x double>*
  %wide.load120 = load <2 x double>, <2 x double>* %52, align 8, !alias.scope !14, !noalias !16
  %53 = getelementptr i8, i8* %51, i64 16
  %54 = bitcast i8* %53 to <2 x double>*
  %wide.load121 = load <2 x double>, <2 x double>* %54, align 8, !alias.scope !14, !noalias !16
  %55 = fmul <2 x double> %wide.load120, <double 1.500000e+00, double 1.500000e+00>
  %56 = fmul <2 x double> %wide.load121, <double 1.500000e+00, double 1.500000e+00>
  %57 = bitcast i8* %51 to <2 x double>*
  store <2 x double> %55, <2 x double>* %57, align 8, !alias.scope !14, !noalias !16
  %58 = bitcast i8* %53 to <2 x double>*
  store <2 x double> %56, <2 x double>* %58, align 8, !alias.scope !14, !noalias !16
  %index.next117 = shl i64 %index116, 3
  %59 = or i64 %index.next117, 32
  %60 = getelementptr i8, i8* %scevgep94, i64 %59
  %61 = bitcast i8* %60 to <2 x double>*
  %wide.load120.1 = load <2 x double>, <2 x double>* %61, align 8, !alias.scope !14, !noalias !16
  %62 = getelementptr i8, i8* %60, i64 16
  %63 = bitcast i8* %62 to <2 x double>*
  %wide.load121.1 = load <2 x double>, <2 x double>* %63, align 8, !alias.scope !14, !noalias !16
  %64 = fmul <2 x double> %wide.load120.1, <double 1.500000e+00, double 1.500000e+00>
  %65 = fmul <2 x double> %wide.load121.1, <double 1.500000e+00, double 1.500000e+00>
  %66 = bitcast i8* %60 to <2 x double>*
  store <2 x double> %64, <2 x double>* %66, align 8, !alias.scope !14, !noalias !16
  %67 = bitcast i8* %62 to <2 x double>*
  store <2 x double> %65, <2 x double>* %67, align 8, !alias.scope !14, !noalias !16
  %index.next117.1 = add nuw nsw i64 %index116, 8
  %68 = icmp eq i64 %index.next117.1, 2600
  br i1 %68, label %middle.block112, label %vector.body114, !llvm.loop !23

middle.block112:                                  ; preds = %vector.body114
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end
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
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !15, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !"polly.alias.scope.domain"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"polly.alias.scope.MemRef2"}
!18 = !{!14}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
