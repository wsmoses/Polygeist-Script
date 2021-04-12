; ModuleID = '2mm.c'
source_filename = "2mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #8
  %call.i40 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #8
  %call.i41 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i42 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #8
  %call.i43 = tail call noalias dereferenceable_or_null(30720000) i8* @malloc(i64 30720000) #8
  %arraydecay = bitcast i8* %call.i40 to [2200 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry.split
  %indvars.iv11.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next12.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv11.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 1600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.600000e+03
  %arrayidx6.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2200
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 1600
  br i1 %exitcond13.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay5 = bitcast i8* %call.i41 to [1800 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next15.i, %for.body17.i ]
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next15.i, %indvars.iv18.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 1800
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 1.800000e+03
  %arrayidx27.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv18.i, i64 %indvars.iv14.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next15.i, 1800
  br i1 %exitcond17.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, 2200
  br i1 %exitcond20.not.i, label %for.cond38.preheader.i.preheader, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i.preheader:                 ; preds = %for.inc31.i
  %arraydecay6 = bitcast i8* %call.i42 to [2400 x double]*
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.cond38.preheader.i.preheader, %for.inc56.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.inc56.i ], [ 0, %for.cond38.preheader.i.preheader ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next22.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv21.i, 3
  %6 = mul nuw nsw i64 %5, %indvars.iv27.i
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  %rem45.i = urem i32 %8, 2400
  %conv46.i = sitofp i32 %rem45.i to double
  %div48.i = fdiv double %conv46.i, 2.400000e+03
  %arrayidx52.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv27.i, i64 %indvars.iv21.i
  store double %div48.i, double* %arrayidx52.i, align 8, !tbaa !2
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next22.i, 2400
  br i1 %exitcond26.not.i, label %for.inc56.i, label %for.body41.i, !llvm.loop !11

for.inc56.i:                                      ; preds = %for.body41.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next28.i, 1800
  br i1 %exitcond29.not.i, label %for.cond63.preheader.i.preheader, label %for.cond38.preheader.i, !llvm.loop !12

for.cond63.preheader.i.preheader:                 ; preds = %for.inc56.i
  %arraydecay7 = bitcast i8* %call.i43 to [2400 x double]*
  br label %for.cond63.preheader.i

for.cond63.preheader.i:                           ; preds = %for.cond63.preheader.i.preheader, %for.inc80.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc80.i ], [ 0, %for.cond63.preheader.i.preheader ]
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body66.i, %for.cond63.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %for.cond63.preheader.i ], [ %indvars.iv.next31.i, %for.body66.i ]
  %9 = add nuw nsw i64 %indvars.iv30.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv35.i
  %11 = trunc i64 %10 to i32
  %rem69.i = urem i32 %11, 2200
  %conv70.i = sitofp i32 %rem69.i to double
  %div72.i = fdiv double %conv70.i, 2.200000e+03
  %arrayidx76.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv35.i, i64 %indvars.iv30.i
  store double %div72.i, double* %arrayidx76.i, align 8, !tbaa !2
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, 2400
  br i1 %exitcond34.not.i, label %for.inc80.i, label %for.body66.i, !llvm.loop !13

for.inc80.i:                                      ; preds = %for.body66.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next36.i, 1600
  br i1 %exitcond37.not.i, label %polly.loop_preheader, label %for.cond63.preheader.i, !llvm.loop !14

kernel_2mm.exit:                                  ; preds = %polly.loop_exit189
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_2mm.exit
  %12 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %12, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %16 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i57, %if.end.i ]
  %17 = add nuw nsw i64 %indvars.iv.i55, %16
  %18 = trunc i64 %17 to i32
  %rem.i56 = urem i32 %18, 20
  %cmp5.i = icmp eq i32 %rem.i56, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv4.i, i64 %indvars.iv.i55
  %21 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %21) #9
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i55, 1
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 2400
  br i1 %exitcond.not.i58, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc10.i
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %23) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_2mm.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i40) #8
  tail call void @free(i8* %call.i41) #8
  tail call void @free(i8* %call.i42) #8
  tail call void @free(i8* nonnull %call.i43) #8
  ret i32 0

polly.loop_exit63:                                ; preds = %polly.loop_exit69
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond234.not = icmp eq i64 %polly.indvar_next, 50
  br i1 %exitcond234.not, label %polly.loop_preheader87, label %polly.loop_preheader62

polly.loop_preheader:                             ; preds = %for.inc80.i
  tail call void (...) @polybench_timer_start() #8
  %polly.access.cast.call.i43 = bitcast i8* %call.i43 to double*
  br label %polly.loop_preheader62

polly.loop_exit69:                                ; preds = %polly.loop_preheader74
  %polly.indvar_next65 = add nuw nsw i64 %polly.indvar64, 1
  %exitcond233.not = icmp eq i64 %polly.indvar_next65, 75
  br i1 %exitcond233.not, label %polly.loop_exit63, label %polly.loop_preheader68

polly.loop_preheader62:                           ; preds = %polly.loop_preheader, %polly.loop_exit63
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit63 ]
  %25 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_preheader68

polly.loop_preheader68:                           ; preds = %polly.loop_preheader62, %polly.loop_exit69
  %polly.indvar64 = phi i64 [ 0, %polly.loop_preheader62 ], [ %polly.indvar_next65, %polly.loop_exit69 ]
  %26 = shl nsw i64 %polly.indvar64, 5
  %27 = shl i64 %polly.indvar64, 8
  %28 = or i64 %26, 1
  %29 = shl i64 %28, 3
  %30 = or i64 %26, 2
  %31 = shl i64 %30, 3
  %32 = or i64 %26, 3
  %33 = shl i64 %32, 3
  %34 = or i64 %26, 4
  %35 = shl i64 %34, 3
  %36 = or i64 %26, 5
  %37 = shl i64 %36, 3
  %38 = or i64 %26, 6
  %39 = shl i64 %38, 3
  %40 = or i64 %26, 7
  %41 = shl i64 %40, 3
  %42 = or i64 %26, 8
  %43 = shl i64 %42, 3
  %44 = or i64 %26, 9
  %45 = shl i64 %44, 3
  %46 = or i64 %26, 10
  %47 = shl i64 %46, 3
  %48 = or i64 %26, 11
  %49 = shl i64 %48, 3
  %50 = or i64 %26, 12
  %51 = shl i64 %50, 3
  %52 = or i64 %26, 13
  %53 = shl i64 %52, 3
  %54 = or i64 %26, 14
  %55 = shl i64 %54, 3
  %56 = or i64 %26, 15
  %57 = shl i64 %56, 3
  %58 = or i64 %26, 16
  %59 = shl i64 %58, 3
  %60 = or i64 %26, 17
  %61 = shl i64 %60, 3
  %62 = or i64 %26, 18
  %63 = shl i64 %62, 3
  %64 = or i64 %26, 19
  %65 = shl i64 %64, 3
  %66 = or i64 %26, 20
  %67 = shl i64 %66, 3
  %68 = or i64 %26, 21
  %69 = shl i64 %68, 3
  %70 = or i64 %26, 22
  %71 = shl i64 %70, 3
  %72 = or i64 %26, 23
  %73 = shl i64 %72, 3
  %74 = or i64 %26, 24
  %75 = shl i64 %74, 3
  %76 = or i64 %26, 25
  %77 = shl i64 %76, 3
  %78 = or i64 %26, 26
  %79 = shl i64 %78, 3
  %80 = or i64 %26, 27
  %81 = shl i64 %80, 3
  %82 = or i64 %26, 28
  %83 = shl i64 %82, 3
  %84 = or i64 %26, 29
  %85 = shl i64 %84, 3
  %86 = or i64 %26, 30
  %87 = shl i64 %86, 3
  %88 = or i64 %26, 31
  %89 = shl i64 %88, 3
  br label %polly.loop_preheader74

polly.loop_preheader74:                           ; preds = %polly.loop_preheader68, %polly.loop_preheader74
  %polly.indvar70 = phi i64 [ 0, %polly.loop_preheader68 ], [ %polly.indvar_next71, %polly.loop_preheader74 ]
  %90 = add nuw nsw i64 %polly.indvar70, %25
  %91 = mul nuw nsw i64 %90, 19200
  %polly.access.mul.call.i43 = mul nuw nsw i64 %90, 2400
  %92 = add nuw nsw i64 %27, %91
  %scevgep = getelementptr i8, i8* %call.i43, i64 %92
  %scevgep79 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep79, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i = fmul double %_p_scalar_, 1.200000e+00
  %polly.access.add.call.i43 = add nuw nsw i64 %26, %polly.access.mul.call.i43
  %polly.access.call.i43 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43
  store double %p_mul38.i, double* %polly.access.call.i43, align 8, !alias.scope !19, !noalias !21
  %93 = add nuw nsw i64 %29, %91
  %scevgep.1 = getelementptr i8, i8* %call.i43, i64 %93
  %scevgep79.1 = bitcast i8* %scevgep.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep79.1, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.1 = fmul double %_p_scalar_.1, 1.200000e+00
  %polly.access.add.call.i43.1 = add nuw nsw i64 %28, %polly.access.mul.call.i43
  %polly.access.call.i43.1 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.1
  store double %p_mul38.i.1, double* %polly.access.call.i43.1, align 8, !alias.scope !19, !noalias !21
  %94 = add nuw nsw i64 %31, %91
  %scevgep.2 = getelementptr i8, i8* %call.i43, i64 %94
  %scevgep79.2 = bitcast i8* %scevgep.2 to double*
  %_p_scalar_.2 = load double, double* %scevgep79.2, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.2 = fmul double %_p_scalar_.2, 1.200000e+00
  %polly.access.add.call.i43.2 = add nuw nsw i64 %30, %polly.access.mul.call.i43
  %polly.access.call.i43.2 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.2
  store double %p_mul38.i.2, double* %polly.access.call.i43.2, align 8, !alias.scope !19, !noalias !21
  %95 = add nuw nsw i64 %33, %91
  %scevgep.3 = getelementptr i8, i8* %call.i43, i64 %95
  %scevgep79.3 = bitcast i8* %scevgep.3 to double*
  %_p_scalar_.3 = load double, double* %scevgep79.3, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.3 = fmul double %_p_scalar_.3, 1.200000e+00
  %polly.access.add.call.i43.3 = add nuw nsw i64 %32, %polly.access.mul.call.i43
  %polly.access.call.i43.3 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.3
  store double %p_mul38.i.3, double* %polly.access.call.i43.3, align 8, !alias.scope !19, !noalias !21
  %96 = add nuw nsw i64 %35, %91
  %scevgep.4 = getelementptr i8, i8* %call.i43, i64 %96
  %scevgep79.4 = bitcast i8* %scevgep.4 to double*
  %_p_scalar_.4 = load double, double* %scevgep79.4, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.4 = fmul double %_p_scalar_.4, 1.200000e+00
  %polly.access.add.call.i43.4 = add nuw nsw i64 %34, %polly.access.mul.call.i43
  %polly.access.call.i43.4 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.4
  store double %p_mul38.i.4, double* %polly.access.call.i43.4, align 8, !alias.scope !19, !noalias !21
  %97 = add nuw nsw i64 %37, %91
  %scevgep.5 = getelementptr i8, i8* %call.i43, i64 %97
  %scevgep79.5 = bitcast i8* %scevgep.5 to double*
  %_p_scalar_.5 = load double, double* %scevgep79.5, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.5 = fmul double %_p_scalar_.5, 1.200000e+00
  %polly.access.add.call.i43.5 = add nuw nsw i64 %36, %polly.access.mul.call.i43
  %polly.access.call.i43.5 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.5
  store double %p_mul38.i.5, double* %polly.access.call.i43.5, align 8, !alias.scope !19, !noalias !21
  %98 = add nuw nsw i64 %39, %91
  %scevgep.6 = getelementptr i8, i8* %call.i43, i64 %98
  %scevgep79.6 = bitcast i8* %scevgep.6 to double*
  %_p_scalar_.6 = load double, double* %scevgep79.6, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.6 = fmul double %_p_scalar_.6, 1.200000e+00
  %polly.access.add.call.i43.6 = add nuw nsw i64 %38, %polly.access.mul.call.i43
  %polly.access.call.i43.6 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.6
  store double %p_mul38.i.6, double* %polly.access.call.i43.6, align 8, !alias.scope !19, !noalias !21
  %99 = add nuw nsw i64 %41, %91
  %scevgep.7 = getelementptr i8, i8* %call.i43, i64 %99
  %scevgep79.7 = bitcast i8* %scevgep.7 to double*
  %_p_scalar_.7 = load double, double* %scevgep79.7, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.7 = fmul double %_p_scalar_.7, 1.200000e+00
  %polly.access.add.call.i43.7 = add nuw nsw i64 %40, %polly.access.mul.call.i43
  %polly.access.call.i43.7 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.7
  store double %p_mul38.i.7, double* %polly.access.call.i43.7, align 8, !alias.scope !19, !noalias !21
  %100 = add nuw nsw i64 %43, %91
  %scevgep.8 = getelementptr i8, i8* %call.i43, i64 %100
  %scevgep79.8 = bitcast i8* %scevgep.8 to double*
  %_p_scalar_.8 = load double, double* %scevgep79.8, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.8 = fmul double %_p_scalar_.8, 1.200000e+00
  %polly.access.add.call.i43.8 = add nuw nsw i64 %42, %polly.access.mul.call.i43
  %polly.access.call.i43.8 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.8
  store double %p_mul38.i.8, double* %polly.access.call.i43.8, align 8, !alias.scope !19, !noalias !21
  %101 = add nuw nsw i64 %45, %91
  %scevgep.9 = getelementptr i8, i8* %call.i43, i64 %101
  %scevgep79.9 = bitcast i8* %scevgep.9 to double*
  %_p_scalar_.9 = load double, double* %scevgep79.9, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.9 = fmul double %_p_scalar_.9, 1.200000e+00
  %polly.access.add.call.i43.9 = add nuw nsw i64 %44, %polly.access.mul.call.i43
  %polly.access.call.i43.9 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.9
  store double %p_mul38.i.9, double* %polly.access.call.i43.9, align 8, !alias.scope !19, !noalias !21
  %102 = add nuw nsw i64 %47, %91
  %scevgep.10 = getelementptr i8, i8* %call.i43, i64 %102
  %scevgep79.10 = bitcast i8* %scevgep.10 to double*
  %_p_scalar_.10 = load double, double* %scevgep79.10, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.10 = fmul double %_p_scalar_.10, 1.200000e+00
  %polly.access.add.call.i43.10 = add nuw nsw i64 %46, %polly.access.mul.call.i43
  %polly.access.call.i43.10 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.10
  store double %p_mul38.i.10, double* %polly.access.call.i43.10, align 8, !alias.scope !19, !noalias !21
  %103 = add nuw nsw i64 %49, %91
  %scevgep.11 = getelementptr i8, i8* %call.i43, i64 %103
  %scevgep79.11 = bitcast i8* %scevgep.11 to double*
  %_p_scalar_.11 = load double, double* %scevgep79.11, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.11 = fmul double %_p_scalar_.11, 1.200000e+00
  %polly.access.add.call.i43.11 = add nuw nsw i64 %48, %polly.access.mul.call.i43
  %polly.access.call.i43.11 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.11
  store double %p_mul38.i.11, double* %polly.access.call.i43.11, align 8, !alias.scope !19, !noalias !21
  %104 = add nuw nsw i64 %51, %91
  %scevgep.12 = getelementptr i8, i8* %call.i43, i64 %104
  %scevgep79.12 = bitcast i8* %scevgep.12 to double*
  %_p_scalar_.12 = load double, double* %scevgep79.12, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.12 = fmul double %_p_scalar_.12, 1.200000e+00
  %polly.access.add.call.i43.12 = add nuw nsw i64 %50, %polly.access.mul.call.i43
  %polly.access.call.i43.12 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.12
  store double %p_mul38.i.12, double* %polly.access.call.i43.12, align 8, !alias.scope !19, !noalias !21
  %105 = add nuw nsw i64 %53, %91
  %scevgep.13 = getelementptr i8, i8* %call.i43, i64 %105
  %scevgep79.13 = bitcast i8* %scevgep.13 to double*
  %_p_scalar_.13 = load double, double* %scevgep79.13, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.13 = fmul double %_p_scalar_.13, 1.200000e+00
  %polly.access.add.call.i43.13 = add nuw nsw i64 %52, %polly.access.mul.call.i43
  %polly.access.call.i43.13 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.13
  store double %p_mul38.i.13, double* %polly.access.call.i43.13, align 8, !alias.scope !19, !noalias !21
  %106 = add nuw nsw i64 %55, %91
  %scevgep.14 = getelementptr i8, i8* %call.i43, i64 %106
  %scevgep79.14 = bitcast i8* %scevgep.14 to double*
  %_p_scalar_.14 = load double, double* %scevgep79.14, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.14 = fmul double %_p_scalar_.14, 1.200000e+00
  %polly.access.add.call.i43.14 = add nuw nsw i64 %54, %polly.access.mul.call.i43
  %polly.access.call.i43.14 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.14
  store double %p_mul38.i.14, double* %polly.access.call.i43.14, align 8, !alias.scope !19, !noalias !21
  %107 = add nuw nsw i64 %57, %91
  %scevgep.15 = getelementptr i8, i8* %call.i43, i64 %107
  %scevgep79.15 = bitcast i8* %scevgep.15 to double*
  %_p_scalar_.15 = load double, double* %scevgep79.15, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.15 = fmul double %_p_scalar_.15, 1.200000e+00
  %polly.access.add.call.i43.15 = add nuw nsw i64 %56, %polly.access.mul.call.i43
  %polly.access.call.i43.15 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.15
  store double %p_mul38.i.15, double* %polly.access.call.i43.15, align 8, !alias.scope !19, !noalias !21
  %108 = add nuw nsw i64 %59, %91
  %scevgep.16 = getelementptr i8, i8* %call.i43, i64 %108
  %scevgep79.16 = bitcast i8* %scevgep.16 to double*
  %_p_scalar_.16 = load double, double* %scevgep79.16, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.16 = fmul double %_p_scalar_.16, 1.200000e+00
  %polly.access.add.call.i43.16 = add nuw nsw i64 %58, %polly.access.mul.call.i43
  %polly.access.call.i43.16 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.16
  store double %p_mul38.i.16, double* %polly.access.call.i43.16, align 8, !alias.scope !19, !noalias !21
  %109 = add nuw nsw i64 %61, %91
  %scevgep.17 = getelementptr i8, i8* %call.i43, i64 %109
  %scevgep79.17 = bitcast i8* %scevgep.17 to double*
  %_p_scalar_.17 = load double, double* %scevgep79.17, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.17 = fmul double %_p_scalar_.17, 1.200000e+00
  %polly.access.add.call.i43.17 = add nuw nsw i64 %60, %polly.access.mul.call.i43
  %polly.access.call.i43.17 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.17
  store double %p_mul38.i.17, double* %polly.access.call.i43.17, align 8, !alias.scope !19, !noalias !21
  %110 = add nuw nsw i64 %63, %91
  %scevgep.18 = getelementptr i8, i8* %call.i43, i64 %110
  %scevgep79.18 = bitcast i8* %scevgep.18 to double*
  %_p_scalar_.18 = load double, double* %scevgep79.18, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.18 = fmul double %_p_scalar_.18, 1.200000e+00
  %polly.access.add.call.i43.18 = add nuw nsw i64 %62, %polly.access.mul.call.i43
  %polly.access.call.i43.18 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.18
  store double %p_mul38.i.18, double* %polly.access.call.i43.18, align 8, !alias.scope !19, !noalias !21
  %111 = add nuw nsw i64 %65, %91
  %scevgep.19 = getelementptr i8, i8* %call.i43, i64 %111
  %scevgep79.19 = bitcast i8* %scevgep.19 to double*
  %_p_scalar_.19 = load double, double* %scevgep79.19, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.19 = fmul double %_p_scalar_.19, 1.200000e+00
  %polly.access.add.call.i43.19 = add nuw nsw i64 %64, %polly.access.mul.call.i43
  %polly.access.call.i43.19 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.19
  store double %p_mul38.i.19, double* %polly.access.call.i43.19, align 8, !alias.scope !19, !noalias !21
  %112 = add nuw nsw i64 %67, %91
  %scevgep.20 = getelementptr i8, i8* %call.i43, i64 %112
  %scevgep79.20 = bitcast i8* %scevgep.20 to double*
  %_p_scalar_.20 = load double, double* %scevgep79.20, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.20 = fmul double %_p_scalar_.20, 1.200000e+00
  %polly.access.add.call.i43.20 = add nuw nsw i64 %66, %polly.access.mul.call.i43
  %polly.access.call.i43.20 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.20
  store double %p_mul38.i.20, double* %polly.access.call.i43.20, align 8, !alias.scope !19, !noalias !21
  %113 = add nuw nsw i64 %69, %91
  %scevgep.21 = getelementptr i8, i8* %call.i43, i64 %113
  %scevgep79.21 = bitcast i8* %scevgep.21 to double*
  %_p_scalar_.21 = load double, double* %scevgep79.21, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.21 = fmul double %_p_scalar_.21, 1.200000e+00
  %polly.access.add.call.i43.21 = add nuw nsw i64 %68, %polly.access.mul.call.i43
  %polly.access.call.i43.21 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.21
  store double %p_mul38.i.21, double* %polly.access.call.i43.21, align 8, !alias.scope !19, !noalias !21
  %114 = add nuw nsw i64 %71, %91
  %scevgep.22 = getelementptr i8, i8* %call.i43, i64 %114
  %scevgep79.22 = bitcast i8* %scevgep.22 to double*
  %_p_scalar_.22 = load double, double* %scevgep79.22, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.22 = fmul double %_p_scalar_.22, 1.200000e+00
  %polly.access.add.call.i43.22 = add nuw nsw i64 %70, %polly.access.mul.call.i43
  %polly.access.call.i43.22 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.22
  store double %p_mul38.i.22, double* %polly.access.call.i43.22, align 8, !alias.scope !19, !noalias !21
  %115 = add nuw nsw i64 %73, %91
  %scevgep.23 = getelementptr i8, i8* %call.i43, i64 %115
  %scevgep79.23 = bitcast i8* %scevgep.23 to double*
  %_p_scalar_.23 = load double, double* %scevgep79.23, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.23 = fmul double %_p_scalar_.23, 1.200000e+00
  %polly.access.add.call.i43.23 = add nuw nsw i64 %72, %polly.access.mul.call.i43
  %polly.access.call.i43.23 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.23
  store double %p_mul38.i.23, double* %polly.access.call.i43.23, align 8, !alias.scope !19, !noalias !21
  %116 = add nuw nsw i64 %75, %91
  %scevgep.24 = getelementptr i8, i8* %call.i43, i64 %116
  %scevgep79.24 = bitcast i8* %scevgep.24 to double*
  %_p_scalar_.24 = load double, double* %scevgep79.24, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.24 = fmul double %_p_scalar_.24, 1.200000e+00
  %polly.access.add.call.i43.24 = add nuw nsw i64 %74, %polly.access.mul.call.i43
  %polly.access.call.i43.24 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.24
  store double %p_mul38.i.24, double* %polly.access.call.i43.24, align 8, !alias.scope !19, !noalias !21
  %117 = add nuw nsw i64 %77, %91
  %scevgep.25 = getelementptr i8, i8* %call.i43, i64 %117
  %scevgep79.25 = bitcast i8* %scevgep.25 to double*
  %_p_scalar_.25 = load double, double* %scevgep79.25, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.25 = fmul double %_p_scalar_.25, 1.200000e+00
  %polly.access.add.call.i43.25 = add nuw nsw i64 %76, %polly.access.mul.call.i43
  %polly.access.call.i43.25 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.25
  store double %p_mul38.i.25, double* %polly.access.call.i43.25, align 8, !alias.scope !19, !noalias !21
  %118 = add nuw nsw i64 %79, %91
  %scevgep.26 = getelementptr i8, i8* %call.i43, i64 %118
  %scevgep79.26 = bitcast i8* %scevgep.26 to double*
  %_p_scalar_.26 = load double, double* %scevgep79.26, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.26 = fmul double %_p_scalar_.26, 1.200000e+00
  %polly.access.add.call.i43.26 = add nuw nsw i64 %78, %polly.access.mul.call.i43
  %polly.access.call.i43.26 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.26
  store double %p_mul38.i.26, double* %polly.access.call.i43.26, align 8, !alias.scope !19, !noalias !21
  %119 = add nuw nsw i64 %81, %91
  %scevgep.27 = getelementptr i8, i8* %call.i43, i64 %119
  %scevgep79.27 = bitcast i8* %scevgep.27 to double*
  %_p_scalar_.27 = load double, double* %scevgep79.27, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.27 = fmul double %_p_scalar_.27, 1.200000e+00
  %polly.access.add.call.i43.27 = add nuw nsw i64 %80, %polly.access.mul.call.i43
  %polly.access.call.i43.27 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.27
  store double %p_mul38.i.27, double* %polly.access.call.i43.27, align 8, !alias.scope !19, !noalias !21
  %120 = add nuw nsw i64 %83, %91
  %scevgep.28 = getelementptr i8, i8* %call.i43, i64 %120
  %scevgep79.28 = bitcast i8* %scevgep.28 to double*
  %_p_scalar_.28 = load double, double* %scevgep79.28, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.28 = fmul double %_p_scalar_.28, 1.200000e+00
  %polly.access.add.call.i43.28 = add nuw nsw i64 %82, %polly.access.mul.call.i43
  %polly.access.call.i43.28 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.28
  store double %p_mul38.i.28, double* %polly.access.call.i43.28, align 8, !alias.scope !19, !noalias !21
  %121 = add nuw nsw i64 %85, %91
  %scevgep.29 = getelementptr i8, i8* %call.i43, i64 %121
  %scevgep79.29 = bitcast i8* %scevgep.29 to double*
  %_p_scalar_.29 = load double, double* %scevgep79.29, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.29 = fmul double %_p_scalar_.29, 1.200000e+00
  %polly.access.add.call.i43.29 = add nuw nsw i64 %84, %polly.access.mul.call.i43
  %polly.access.call.i43.29 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.29
  store double %p_mul38.i.29, double* %polly.access.call.i43.29, align 8, !alias.scope !19, !noalias !21
  %122 = add nuw nsw i64 %87, %91
  %scevgep.30 = getelementptr i8, i8* %call.i43, i64 %122
  %scevgep79.30 = bitcast i8* %scevgep.30 to double*
  %_p_scalar_.30 = load double, double* %scevgep79.30, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.30 = fmul double %_p_scalar_.30, 1.200000e+00
  %polly.access.add.call.i43.30 = add nuw nsw i64 %86, %polly.access.mul.call.i43
  %polly.access.call.i43.30 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.30
  store double %p_mul38.i.30, double* %polly.access.call.i43.30, align 8, !alias.scope !19, !noalias !21
  %123 = add nuw nsw i64 %89, %91
  %scevgep.31 = getelementptr i8, i8* %call.i43, i64 %123
  %scevgep79.31 = bitcast i8* %scevgep.31 to double*
  %_p_scalar_.31 = load double, double* %scevgep79.31, align 8, !alias.scope !19, !noalias !21
  %p_mul38.i.31 = fmul double %_p_scalar_.31, 1.200000e+00
  %polly.access.add.call.i43.31 = add nuw nsw i64 %88, %polly.access.mul.call.i43
  %polly.access.call.i43.31 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43.31
  store double %p_mul38.i.31, double* %polly.access.call.i43.31, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next71 = add nuw nsw i64 %polly.indvar70, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next71, 32
  br i1 %exitcond.not, label %polly.loop_exit69, label %polly.loop_preheader74

polly.loop_exit88:                                ; preds = %polly.loop_preheader93
  %polly.indvar_next84 = add nuw nsw i64 %polly.indvar83, 1
  %exitcond238.not = icmp eq i64 %polly.indvar_next84, 50
  br i1 %exitcond238.not, label %polly.loop_preheader113, label %polly.loop_preheader87

polly.loop_preheader87:                           ; preds = %polly.loop_exit63, %polly.loop_exit88
  %polly.indvar83 = phi i64 [ %polly.indvar_next84, %polly.loop_exit88 ], [ 0, %polly.loop_exit63 ]
  %124 = mul nuw nsw i64 %polly.indvar83, 460800
  br label %polly.loop_preheader93

polly.loop_preheader93:                           ; preds = %polly.loop_preheader87, %polly.loop_preheader93
  %polly.indvar89 = phi i64 [ 0, %polly.loop_preheader87 ], [ %polly.indvar_next90, %polly.loop_preheader93 ]
  %125 = shl nuw nsw i64 %polly.indvar89, 8
  %126 = add nuw nsw i64 %124, %125
  %127 = mul nsw i64 %polly.indvar89, -32
  %smin = call i64 @llvm.smin.i64(i64 %127, i64 -1768)
  %128 = shl nsw i64 %smin, 3
  %129 = add nsw i64 %128, 14400
  %scevgep235 = getelementptr i8, i8* %call.i, i64 %126
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235, i8 0, i64 %129, i1 false)
  %130 = add nuw nsw i64 %126, 14400
  %scevgep235.1 = getelementptr i8, i8* %call.i, i64 %130
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.1, i8 0, i64 %129, i1 false)
  %131 = add nuw nsw i64 %126, 28800
  %scevgep235.2 = getelementptr i8, i8* %call.i, i64 %131
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.2, i8 0, i64 %129, i1 false)
  %132 = add nuw nsw i64 %126, 43200
  %scevgep235.3 = getelementptr i8, i8* %call.i, i64 %132
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.3, i8 0, i64 %129, i1 false)
  %133 = add nuw nsw i64 %126, 57600
  %scevgep235.4 = getelementptr i8, i8* %call.i, i64 %133
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.4, i8 0, i64 %129, i1 false)
  %134 = add nuw nsw i64 %126, 72000
  %scevgep235.5 = getelementptr i8, i8* %call.i, i64 %134
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.5, i8 0, i64 %129, i1 false)
  %135 = add nuw nsw i64 %126, 86400
  %scevgep235.6 = getelementptr i8, i8* %call.i, i64 %135
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.6, i8 0, i64 %129, i1 false)
  %136 = add nuw nsw i64 %126, 100800
  %scevgep235.7 = getelementptr i8, i8* %call.i, i64 %136
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.7, i8 0, i64 %129, i1 false)
  %137 = add nuw nsw i64 %126, 115200
  %scevgep235.8 = getelementptr i8, i8* %call.i, i64 %137
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.8, i8 0, i64 %129, i1 false)
  %138 = add nuw nsw i64 %126, 129600
  %scevgep235.9 = getelementptr i8, i8* %call.i, i64 %138
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.9, i8 0, i64 %129, i1 false)
  %139 = add nuw nsw i64 %126, 144000
  %scevgep235.10 = getelementptr i8, i8* %call.i, i64 %139
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.10, i8 0, i64 %129, i1 false)
  %140 = add nuw nsw i64 %126, 158400
  %scevgep235.11 = getelementptr i8, i8* %call.i, i64 %140
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.11, i8 0, i64 %129, i1 false)
  %141 = add nuw nsw i64 %126, 172800
  %scevgep235.12 = getelementptr i8, i8* %call.i, i64 %141
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.12, i8 0, i64 %129, i1 false)
  %142 = add nuw nsw i64 %126, 187200
  %scevgep235.13 = getelementptr i8, i8* %call.i, i64 %142
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.13, i8 0, i64 %129, i1 false)
  %143 = add nuw nsw i64 %126, 201600
  %scevgep235.14 = getelementptr i8, i8* %call.i, i64 %143
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.14, i8 0, i64 %129, i1 false)
  %144 = add nuw nsw i64 %126, 216000
  %scevgep235.15 = getelementptr i8, i8* %call.i, i64 %144
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.15, i8 0, i64 %129, i1 false)
  %145 = add nuw nsw i64 %126, 230400
  %scevgep235.16 = getelementptr i8, i8* %call.i, i64 %145
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.16, i8 0, i64 %129, i1 false)
  %146 = add nuw nsw i64 %126, 244800
  %scevgep235.17 = getelementptr i8, i8* %call.i, i64 %146
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.17, i8 0, i64 %129, i1 false)
  %147 = add nuw nsw i64 %126, 259200
  %scevgep235.18 = getelementptr i8, i8* %call.i, i64 %147
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.18, i8 0, i64 %129, i1 false)
  %148 = add nuw nsw i64 %126, 273600
  %scevgep235.19 = getelementptr i8, i8* %call.i, i64 %148
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.19, i8 0, i64 %129, i1 false)
  %149 = add nuw nsw i64 %126, 288000
  %scevgep235.20 = getelementptr i8, i8* %call.i, i64 %149
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.20, i8 0, i64 %129, i1 false)
  %150 = add nuw nsw i64 %126, 302400
  %scevgep235.21 = getelementptr i8, i8* %call.i, i64 %150
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.21, i8 0, i64 %129, i1 false)
  %151 = add nuw nsw i64 %126, 316800
  %scevgep235.22 = getelementptr i8, i8* %call.i, i64 %151
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.22, i8 0, i64 %129, i1 false)
  %152 = add nuw nsw i64 %126, 331200
  %scevgep235.23 = getelementptr i8, i8* %call.i, i64 %152
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.23, i8 0, i64 %129, i1 false)
  %153 = add nuw nsw i64 %126, 345600
  %scevgep235.24 = getelementptr i8, i8* %call.i, i64 %153
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.24, i8 0, i64 %129, i1 false)
  %154 = add nuw nsw i64 %126, 360000
  %scevgep235.25 = getelementptr i8, i8* %call.i, i64 %154
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.25, i8 0, i64 %129, i1 false)
  %155 = add nuw nsw i64 %126, 374400
  %scevgep235.26 = getelementptr i8, i8* %call.i, i64 %155
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.26, i8 0, i64 %129, i1 false)
  %156 = add nuw nsw i64 %126, 388800
  %scevgep235.27 = getelementptr i8, i8* %call.i, i64 %156
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.27, i8 0, i64 %129, i1 false)
  %157 = add nuw nsw i64 %126, 403200
  %scevgep235.28 = getelementptr i8, i8* %call.i, i64 %157
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.28, i8 0, i64 %129, i1 false)
  %158 = add nuw nsw i64 %126, 417600
  %scevgep235.29 = getelementptr i8, i8* %call.i, i64 %158
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.29, i8 0, i64 %129, i1 false)
  %159 = add nuw nsw i64 %126, 432000
  %scevgep235.30 = getelementptr i8, i8* %call.i, i64 %159
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.30, i8 0, i64 %129, i1 false)
  %160 = add nuw nsw i64 %126, 446400
  %scevgep235.31 = getelementptr i8, i8* %call.i, i64 %160
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep235.31, i8 0, i64 %129, i1 false)
  %polly.indvar_next90 = add nuw nsw i64 %polly.indvar89, 1
  %exitcond237.not = icmp eq i64 %polly.indvar_next90, 57
  br i1 %exitcond237.not, label %polly.loop_exit88, label %polly.loop_preheader93

polly.loop_exit114:                               ; preds = %polly.loop_preheader119
  %polly.indvar_next110 = add nuw nsw i64 %polly.indvar109, 1
  %exitcond243.not = icmp eq i64 %polly.indvar_next110, 50
  br i1 %exitcond243.not, label %polly.loop_preheader138.preheader, label %polly.loop_preheader113

polly.loop_preheader138.preheader:                ; preds = %polly.loop_exit114
  %polly.access.cast.call.i.le.le.le.le = bitcast i8* %call.i to double*
  br label %polly.loop_preheader138

polly.loop_preheader113:                          ; preds = %polly.loop_exit88, %polly.loop_exit114
  %polly.indvar109 = phi i64 [ %polly.indvar_next110, %polly.loop_exit114 ], [ 0, %polly.loop_exit88 ]
  %161 = mul nuw nsw i64 %polly.indvar109, 460800
  br label %polly.loop_preheader119

polly.loop_preheader119:                          ; preds = %polly.loop_preheader113, %polly.loop_preheader119
  %polly.indvar115 = phi i64 [ 0, %polly.loop_preheader113 ], [ %polly.indvar_next116, %polly.loop_preheader119 ]
  %162 = shl nuw nsw i64 %polly.indvar115, 8
  %163 = add nuw nsw i64 %161, %162
  %164 = mul nsw i64 %polly.indvar115, -32
  %smin240 = call i64 @llvm.smin.i64(i64 %164, i64 -1768)
  %165 = shl nsw i64 %smin240, 3
  %166 = add nsw i64 %165, 14400
  %scevgep239 = getelementptr i8, i8* %call.i, i64 %163
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239, i8 0, i64 %166, i1 false)
  %167 = add nuw nsw i64 %163, 14400
  %scevgep239.1 = getelementptr i8, i8* %call.i, i64 %167
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.1, i8 0, i64 %166, i1 false)
  %168 = add nuw nsw i64 %163, 28800
  %scevgep239.2 = getelementptr i8, i8* %call.i, i64 %168
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.2, i8 0, i64 %166, i1 false)
  %169 = add nuw nsw i64 %163, 43200
  %scevgep239.3 = getelementptr i8, i8* %call.i, i64 %169
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.3, i8 0, i64 %166, i1 false)
  %170 = add nuw nsw i64 %163, 57600
  %scevgep239.4 = getelementptr i8, i8* %call.i, i64 %170
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.4, i8 0, i64 %166, i1 false)
  %171 = add nuw nsw i64 %163, 72000
  %scevgep239.5 = getelementptr i8, i8* %call.i, i64 %171
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.5, i8 0, i64 %166, i1 false)
  %172 = add nuw nsw i64 %163, 86400
  %scevgep239.6 = getelementptr i8, i8* %call.i, i64 %172
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.6, i8 0, i64 %166, i1 false)
  %173 = add nuw nsw i64 %163, 100800
  %scevgep239.7 = getelementptr i8, i8* %call.i, i64 %173
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.7, i8 0, i64 %166, i1 false)
  %174 = add nuw nsw i64 %163, 115200
  %scevgep239.8 = getelementptr i8, i8* %call.i, i64 %174
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.8, i8 0, i64 %166, i1 false)
  %175 = add nuw nsw i64 %163, 129600
  %scevgep239.9 = getelementptr i8, i8* %call.i, i64 %175
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.9, i8 0, i64 %166, i1 false)
  %176 = add nuw nsw i64 %163, 144000
  %scevgep239.10 = getelementptr i8, i8* %call.i, i64 %176
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.10, i8 0, i64 %166, i1 false)
  %177 = add nuw nsw i64 %163, 158400
  %scevgep239.11 = getelementptr i8, i8* %call.i, i64 %177
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.11, i8 0, i64 %166, i1 false)
  %178 = add nuw nsw i64 %163, 172800
  %scevgep239.12 = getelementptr i8, i8* %call.i, i64 %178
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.12, i8 0, i64 %166, i1 false)
  %179 = add nuw nsw i64 %163, 187200
  %scevgep239.13 = getelementptr i8, i8* %call.i, i64 %179
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.13, i8 0, i64 %166, i1 false)
  %180 = add nuw nsw i64 %163, 201600
  %scevgep239.14 = getelementptr i8, i8* %call.i, i64 %180
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.14, i8 0, i64 %166, i1 false)
  %181 = add nuw nsw i64 %163, 216000
  %scevgep239.15 = getelementptr i8, i8* %call.i, i64 %181
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.15, i8 0, i64 %166, i1 false)
  %182 = add nuw nsw i64 %163, 230400
  %scevgep239.16 = getelementptr i8, i8* %call.i, i64 %182
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.16, i8 0, i64 %166, i1 false)
  %183 = add nuw nsw i64 %163, 244800
  %scevgep239.17 = getelementptr i8, i8* %call.i, i64 %183
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.17, i8 0, i64 %166, i1 false)
  %184 = add nuw nsw i64 %163, 259200
  %scevgep239.18 = getelementptr i8, i8* %call.i, i64 %184
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.18, i8 0, i64 %166, i1 false)
  %185 = add nuw nsw i64 %163, 273600
  %scevgep239.19 = getelementptr i8, i8* %call.i, i64 %185
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.19, i8 0, i64 %166, i1 false)
  %186 = add nuw nsw i64 %163, 288000
  %scevgep239.20 = getelementptr i8, i8* %call.i, i64 %186
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.20, i8 0, i64 %166, i1 false)
  %187 = add nuw nsw i64 %163, 302400
  %scevgep239.21 = getelementptr i8, i8* %call.i, i64 %187
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.21, i8 0, i64 %166, i1 false)
  %188 = add nuw nsw i64 %163, 316800
  %scevgep239.22 = getelementptr i8, i8* %call.i, i64 %188
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.22, i8 0, i64 %166, i1 false)
  %189 = add nuw nsw i64 %163, 331200
  %scevgep239.23 = getelementptr i8, i8* %call.i, i64 %189
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.23, i8 0, i64 %166, i1 false)
  %190 = add nuw nsw i64 %163, 345600
  %scevgep239.24 = getelementptr i8, i8* %call.i, i64 %190
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.24, i8 0, i64 %166, i1 false)
  %191 = add nuw nsw i64 %163, 360000
  %scevgep239.25 = getelementptr i8, i8* %call.i, i64 %191
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.25, i8 0, i64 %166, i1 false)
  %192 = add nuw nsw i64 %163, 374400
  %scevgep239.26 = getelementptr i8, i8* %call.i, i64 %192
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.26, i8 0, i64 %166, i1 false)
  %193 = add nuw nsw i64 %163, 388800
  %scevgep239.27 = getelementptr i8, i8* %call.i, i64 %193
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.27, i8 0, i64 %166, i1 false)
  %194 = add nuw nsw i64 %163, 403200
  %scevgep239.28 = getelementptr i8, i8* %call.i, i64 %194
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.28, i8 0, i64 %166, i1 false)
  %195 = add nuw nsw i64 %163, 417600
  %scevgep239.29 = getelementptr i8, i8* %call.i, i64 %195
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.29, i8 0, i64 %166, i1 false)
  %196 = add nuw nsw i64 %163, 432000
  %scevgep239.30 = getelementptr i8, i8* %call.i, i64 %196
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.30, i8 0, i64 %166, i1 false)
  %197 = add nuw nsw i64 %163, 446400
  %scevgep239.31 = getelementptr i8, i8* %call.i, i64 %197
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep239.31, i8 0, i64 %166, i1 false)
  %polly.indvar_next116 = add nuw nsw i64 %polly.indvar115, 1
  %exitcond242.not = icmp eq i64 %polly.indvar_next116, 57
  br i1 %exitcond242.not, label %polly.loop_exit114, label %polly.loop_preheader119

polly.loop_exit139:                               ; preds = %polly.loop_exit145
  %polly.indvar_next135 = add nuw nsw i64 %polly.indvar134, 1
  %exitcond253.not = icmp eq i64 %polly.indvar_next135, 50
  br i1 %exitcond253.not, label %polly.loop_preheader188, label %polly.loop_preheader138

polly.loop_exit145:                               ; preds = %polly.loop_exit151
  %polly.indvar_next141 = add nuw nsw i64 %polly.indvar140, 1
  %indvars.iv.next247 = add nsw i64 %indvars.iv246, -32
  %exitcond252.not = icmp eq i64 %polly.indvar_next141, 57
  br i1 %exitcond252.not, label %polly.loop_exit139, label %polly.loop_preheader144

polly.loop_preheader138:                          ; preds = %polly.loop_preheader138.preheader, %polly.loop_exit139
  %polly.indvar134 = phi i64 [ %polly.indvar_next135, %polly.loop_exit139 ], [ 0, %polly.loop_preheader138.preheader ]
  %198 = shl nsw i64 %polly.indvar134, 5
  br label %polly.loop_preheader144

polly.loop_exit151:                               ; preds = %polly.loop_exit157
  %polly.indvar_next147 = add nuw nsw i64 %polly.indvar146, 1
  %exitcond251.not = icmp eq i64 %polly.indvar_next147, 69
  br i1 %exitcond251.not, label %polly.loop_exit145, label %polly.loop_preheader150

polly.loop_preheader144:                          ; preds = %polly.loop_preheader138, %polly.loop_exit145
  %indvars.iv246 = phi i64 [ 0, %polly.loop_preheader138 ], [ %indvars.iv.next247, %polly.loop_exit145 ]
  %polly.indvar140 = phi i64 [ 0, %polly.loop_preheader138 ], [ %polly.indvar_next141, %polly.loop_exit145 ]
  %smin248 = call i64 @llvm.smin.i64(i64 %indvars.iv246, i64 -1768)
  %199 = shl nsw i64 %polly.indvar140, 5
  %200 = add nsw i64 %smin248, 1799
  br label %polly.loop_preheader150

polly.loop_exit157:                               ; preds = %polly.loop_exit163
  %polly.indvar_next153 = add nuw nsw i64 %polly.indvar152, 1
  %exitcond250.not = icmp eq i64 %polly.indvar_next153, 32
  br i1 %exitcond250.not, label %polly.loop_exit151, label %polly.loop_preheader156

polly.loop_preheader150:                          ; preds = %polly.loop_preheader144, %polly.loop_exit151
  %polly.indvar146 = phi i64 [ 0, %polly.loop_preheader144 ], [ %polly.indvar_next147, %polly.loop_exit151 ]
  %201 = mul nsw i64 %polly.indvar146, -32
  %smin263 = call i64 @llvm.smin.i64(i64 %201, i64 -2168)
  %202 = add nsw i64 %smin263, 2200
  %203 = shl nsw i64 %polly.indvar146, 5
  br label %polly.loop_preheader156

polly.loop_exit163:                               ; preds = %polly.stmt.for.body8.i
  store double %p_add.i.1, double* %polly.access.call.i170, align 8, !alias.scope !26, !noalias !27
  %polly.indvar_next159 = add nuw nsw i64 %polly.indvar158, 1
  %exitcond249.not = icmp eq i64 %polly.indvar158, %200
  br i1 %exitcond249.not, label %polly.loop_exit157, label %polly.loop_preheader162

polly.loop_preheader156:                          ; preds = %polly.loop_preheader150, %polly.loop_exit157
  %polly.indvar152 = phi i64 [ 0, %polly.loop_preheader150 ], [ %polly.indvar_next153, %polly.loop_exit157 ]
  %204 = add nuw nsw i64 %polly.indvar152, %198
  %polly.access.mul.call.i168 = mul nuw nsw i64 %204, 1800
  %205 = mul nuw nsw i64 %204, 17600
  br label %polly.loop_preheader162

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader162
  %p_add.i231 = phi double [ %polly.access.call.i170.promoted, %polly.loop_preheader162 ], [ %p_add.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar164 = phi i64 [ 0, %polly.loop_preheader162 ], [ %polly.indvar_next165.1, %polly.stmt.for.body8.i ]
  %niter = phi i64 [ %202, %polly.loop_preheader162 ], [ %niter.nsub.1, %polly.stmt.for.body8.i ]
  %206 = add nuw nsw i64 %polly.indvar164, %203
  %207 = shl i64 %206, 3
  %208 = add nuw nsw i64 %207, %205
  %scevgep171 = getelementptr i8, i8* %call.i40, i64 %208
  %scevgep171172 = bitcast i8* %scevgep171 to double*
  %_p_scalar_173 = load double, double* %scevgep171172, align 8, !alias.scope !23, !noalias !28
  %p_mul.i = fmul double %_p_scalar_173, 1.500000e+00
  %209 = mul nuw nsw i64 %206, 14400
  %210 = add nuw nsw i64 %209, %217
  %scevgep174 = getelementptr i8, i8* %call.i41, i64 %210
  %scevgep174175 = bitcast i8* %scevgep174 to double*
  %_p_scalar_176 = load double, double* %scevgep174175, align 8, !alias.scope !24, !noalias !29
  %p_mul17.i = fmul double %p_mul.i, %_p_scalar_176
  %p_add.i = fadd double %p_add.i231, %p_mul17.i
  %polly.indvar_next165 = or i64 %polly.indvar164, 1
  %211 = add nuw nsw i64 %polly.indvar_next165, %203
  %212 = shl i64 %211, 3
  %213 = add nuw nsw i64 %212, %205
  %scevgep171.1 = getelementptr i8, i8* %call.i40, i64 %213
  %scevgep171172.1 = bitcast i8* %scevgep171.1 to double*
  %_p_scalar_173.1 = load double, double* %scevgep171172.1, align 8, !alias.scope !23, !noalias !28
  %p_mul.i.1 = fmul double %_p_scalar_173.1, 1.500000e+00
  %214 = mul nuw nsw i64 %211, 14400
  %215 = add nuw nsw i64 %214, %217
  %scevgep174.1 = getelementptr i8, i8* %call.i41, i64 %215
  %scevgep174175.1 = bitcast i8* %scevgep174.1 to double*
  %_p_scalar_176.1 = load double, double* %scevgep174175.1, align 8, !alias.scope !24, !noalias !29
  %p_mul17.i.1 = fmul double %p_mul.i.1, %_p_scalar_176.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul17.i.1
  %polly.indvar_next165.1 = add nuw nsw i64 %polly.indvar164, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit163, label %polly.stmt.for.body8.i

polly.loop_preheader162:                          ; preds = %polly.loop_preheader156, %polly.loop_exit163
  %polly.indvar158 = phi i64 [ 0, %polly.loop_preheader156 ], [ %polly.indvar_next159, %polly.loop_exit163 ]
  %216 = add nuw nsw i64 %polly.indvar158, %199
  %polly.access.add.call.i169 = add nuw nsw i64 %216, %polly.access.mul.call.i168
  %polly.access.call.i170 = getelementptr double, double* %polly.access.cast.call.i.le.le.le.le, i64 %polly.access.add.call.i169
  %217 = shl i64 %216, 3
  %polly.access.call.i170.promoted = load double, double* %polly.access.call.i170, align 8, !alias.scope !26, !noalias !27
  br label %polly.stmt.for.body8.i

polly.loop_exit189:                               ; preds = %polly.loop_exit195
  %polly.indvar_next185 = add nuw nsw i64 %polly.indvar184, 1
  %exitcond262.not = icmp eq i64 %polly.indvar_next185, 50
  br i1 %exitcond262.not, label %kernel_2mm.exit, label %polly.loop_preheader188

polly.loop_exit195:                               ; preds = %polly.loop_exit201
  %polly.indvar_next191 = add nuw nsw i64 %polly.indvar190, 1
  %exitcond261.not = icmp eq i64 %polly.indvar_next191, 75
  br i1 %exitcond261.not, label %polly.loop_exit189, label %polly.loop_preheader194

polly.loop_preheader188:                          ; preds = %polly.loop_exit139, %polly.loop_exit189
  %polly.indvar184 = phi i64 [ %polly.indvar_next185, %polly.loop_exit189 ], [ 0, %polly.loop_exit139 ]
  %218 = shl nsw i64 %polly.indvar184, 5
  br label %polly.loop_preheader194

polly.loop_exit201:                               ; preds = %polly.loop_exit207
  %polly.indvar_next197 = add nuw nsw i64 %polly.indvar196, 1
  %exitcond260.not = icmp eq i64 %polly.indvar_next197, 57
  br i1 %exitcond260.not, label %polly.loop_exit195, label %polly.loop_preheader200

polly.loop_preheader194:                          ; preds = %polly.loop_preheader188, %polly.loop_exit195
  %polly.indvar190 = phi i64 [ 0, %polly.loop_preheader188 ], [ %polly.indvar_next191, %polly.loop_exit195 ]
  %219 = shl nsw i64 %polly.indvar190, 5
  br label %polly.loop_preheader200

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond259.not = icmp eq i64 %polly.indvar_next203, 32
  br i1 %exitcond259.not, label %polly.loop_exit201, label %polly.loop_preheader206

polly.loop_preheader200:                          ; preds = %polly.loop_preheader194, %polly.loop_exit201
  %polly.indvar196 = phi i64 [ 0, %polly.loop_preheader194 ], [ %polly.indvar_next197, %polly.loop_exit201 ]
  %220 = mul nsw i64 %polly.indvar196, -32
  %smin264 = call i64 @llvm.smin.i64(i64 %220, i64 -1768)
  %221 = add nsw i64 %smin264, 1800
  %222 = shl nsw i64 %polly.indvar196, 5
  br label %polly.loop_preheader206

polly.loop_exit213:                               ; preds = %polly.stmt.for.body41.i54
  store double %p_add55.i.1, double* %polly.access.call.i43220, align 8, !alias.scope !30, !noalias !21
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond258.not = icmp eq i64 %polly.indvar_next209, 32
  br i1 %exitcond258.not, label %polly.loop_exit207, label %polly.loop_preheader212

polly.loop_preheader206:                          ; preds = %polly.loop_preheader200, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ 0, %polly.loop_preheader200 ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %223 = add nuw nsw i64 %polly.indvar202, %218
  %polly.access.mul.call.i43218 = mul nuw nsw i64 %223, 2400
  %224 = mul nuw nsw i64 %223, 14400
  br label %polly.loop_preheader212

polly.stmt.for.body41.i54:                        ; preds = %polly.stmt.for.body41.i54, %polly.loop_preheader212
  %p_add55.i232 = phi double [ %polly.access.call.i43220.promoted, %polly.loop_preheader212 ], [ %p_add55.i.1, %polly.stmt.for.body41.i54 ]
  %polly.indvar214 = phi i64 [ 0, %polly.loop_preheader212 ], [ %polly.indvar_next215.1, %polly.stmt.for.body41.i54 ]
  %niter268 = phi i64 [ %221, %polly.loop_preheader212 ], [ %niter268.nsub.1, %polly.stmt.for.body41.i54 ]
  %225 = add nuw nsw i64 %polly.indvar214, %222
  %226 = shl i64 %225, 3
  %227 = add nuw nsw i64 %226, %224
  %scevgep221 = getelementptr i8, i8* %call.i, i64 %227
  %scevgep221222 = bitcast i8* %scevgep221 to double*
  %_p_scalar_223 = load double, double* %scevgep221222, align 8, !alias.scope !22, !noalias !27
  %228 = mul nuw nsw i64 %225, 19200
  %229 = add nuw nsw i64 %228, %236
  %scevgep224 = getelementptr i8, i8* %call.i42, i64 %229
  %scevgep224225 = bitcast i8* %scevgep224 to double*
  %_p_scalar_226 = load double, double* %scevgep224225, align 8, !alias.scope !25, !noalias !31
  %p_mul50.i = fmul double %_p_scalar_223, %_p_scalar_226
  %p_add55.i = fadd double %p_add55.i232, %p_mul50.i
  %polly.indvar_next215 = or i64 %polly.indvar214, 1
  %230 = add nuw nsw i64 %polly.indvar_next215, %222
  %231 = shl i64 %230, 3
  %232 = add nuw nsw i64 %231, %224
  %scevgep221.1 = getelementptr i8, i8* %call.i, i64 %232
  %scevgep221222.1 = bitcast i8* %scevgep221.1 to double*
  %_p_scalar_223.1 = load double, double* %scevgep221222.1, align 8, !alias.scope !22, !noalias !27
  %233 = mul nuw nsw i64 %230, 19200
  %234 = add nuw nsw i64 %233, %236
  %scevgep224.1 = getelementptr i8, i8* %call.i42, i64 %234
  %scevgep224225.1 = bitcast i8* %scevgep224.1 to double*
  %_p_scalar_226.1 = load double, double* %scevgep224225.1, align 8, !alias.scope !25, !noalias !31
  %p_mul50.i.1 = fmul double %_p_scalar_223.1, %_p_scalar_226.1
  %p_add55.i.1 = fadd double %p_add55.i, %p_mul50.i.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214, 2
  %niter268.nsub.1 = add i64 %niter268, -2
  %niter268.ncmp.1 = icmp eq i64 %niter268.nsub.1, 0
  br i1 %niter268.ncmp.1, label %polly.loop_exit213, label %polly.stmt.for.body41.i54

polly.loop_preheader212:                          ; preds = %polly.loop_preheader206, %polly.loop_exit213
  %polly.indvar208 = phi i64 [ 0, %polly.loop_preheader206 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %235 = add nuw nsw i64 %polly.indvar208, %219
  %polly.access.add.call.i43219 = add nuw nsw i64 %235, %polly.access.mul.call.i43218
  %polly.access.call.i43220 = getelementptr double, double* %polly.access.cast.call.i43, i64 %polly.access.add.call.i43219
  %236 = shl i64 %235, 3
  %polly.access.call.i43220.promoted = load double, double* %polly.access.call.i43220, align 8, !alias.scope !30, !noalias !21
  br label %polly.stmt.for.body41.i54
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !20, !"polly.alias.scope.MemRef5"}
!20 = distinct !{!20, !"polly.alias.scope.domain"}
!21 = !{!22, !23, !24, !25}
!22 = distinct !{!22, !20, !"polly.alias.scope.MemRef0"}
!23 = distinct !{!23, !20, !"polly.alias.scope.MemRef2"}
!24 = distinct !{!24, !20, !"polly.alias.scope.MemRef3"}
!25 = distinct !{!25, !20, !"polly.alias.scope.MemRef7"}
!26 = !{!22}
!27 = !{!23, !24, !19, !25}
!28 = !{!22, !24, !19, !25}
!29 = !{!22, !23, !19, !25}
!30 = !{!19}
!31 = !{!22, !23, !24, !19}
