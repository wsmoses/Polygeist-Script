; ModuleID = '3mm.c'
source_filename = "3mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #8
  %call.i50 = tail call noalias dereferenceable_or_null(25600000) i8* @malloc(i64 25600000) #8
  %call.i51 = tail call noalias dereferenceable_or_null(28800000) i8* @malloc(i64 28800000) #8
  %call.i52 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i53 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #8
  %call.i54 = tail call noalias dereferenceable_or_null(42240000) i8* @malloc(i64 42240000) #8
  %call.i55 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #8
  %arraydecay = bitcast i8* %call.i50 to [2000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc8.i, %entry.split
  %indvars.iv11.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next12.i, %for.inc8.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv11.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 1600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 8.000000e+03
  %arrayidx7.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx7.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.inc8.i, label %for.body3.i, !llvm.loop !6

for.inc8.i:                                       ; preds = %for.body3.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 1600
  br i1 %exitcond13.not.i, label %for.cond15.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond15.preheader.i.preheader:                 ; preds = %for.inc8.i
  %call.i55370 = bitcast i8* %call.i55 to [2200 x double]*
  %arraydecay7 = bitcast i8* %call.i51 to [1800 x double]*
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.cond15.preheader.i.preheader, %for.inc34.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %for.inc34.i ], [ 0, %for.cond15.preheader.i.preheader ]
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i, %for.cond15.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next15.i, %for.body18.i ]
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next15.i, %indvars.iv19.i
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 2
  %rem22.i = urem i32 %5, 1800
  %conv23.i = sitofp i32 %rem22.i to double
  %div26.i = fdiv double %conv23.i, 9.000000e+03
  %arrayidx30.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay7, i64 %indvars.iv19.i, i64 %indvars.iv14.i
  store double %div26.i, double* %arrayidx30.i, align 8, !tbaa !2
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, 1800
  br i1 %exitcond18.not.i, label %for.inc34.i, label %for.body18.i, !llvm.loop !9

for.inc34.i:                                      ; preds = %for.body18.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next20.i, 2000
  br i1 %exitcond21.not.i, label %for.cond41.preheader.i.preheader, label %for.cond15.preheader.i, !llvm.loop !10

for.cond41.preheader.i.preheader:                 ; preds = %for.inc34.i
  %arraydecay8 = bitcast i8* %call.i53 to [2400 x double]*
  br label %for.cond41.preheader.i

for.cond41.preheader.i:                           ; preds = %for.cond41.preheader.i.preheader, %for.inc59.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.inc59.i ], [ 0, %for.cond41.preheader.i.preheader ]
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i, %for.cond41.preheader.i
  %indvars.iv22.i = phi i64 [ 0, %for.cond41.preheader.i ], [ %indvars.iv.next23.i, %for.body44.i ]
  %6 = add nuw nsw i64 %indvars.iv22.i, 3
  %7 = mul nuw nsw i64 %6, %indvars.iv27.i
  %8 = trunc i64 %7 to i32
  %rem47.i = urem i32 %8, 2200
  %conv48.i = sitofp i32 %rem47.i to double
  %div51.i = fdiv double %conv48.i, 1.100000e+04
  %arrayidx55.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay8, i64 %indvars.iv27.i, i64 %indvars.iv22.i
  store double %div51.i, double* %arrayidx55.i, align 8, !tbaa !2
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, 2400
  br i1 %exitcond26.not.i, label %for.inc59.i, label %for.body44.i, !llvm.loop !11

for.inc59.i:                                      ; preds = %for.body44.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next28.i, 1800
  br i1 %exitcond29.not.i, label %for.cond66.preheader.i.preheader, label %for.cond41.preheader.i, !llvm.loop !12

for.cond66.preheader.i.preheader:                 ; preds = %for.inc59.i
  %arraydecay9 = bitcast i8* %call.i54 to [2200 x double]*
  br label %for.cond66.preheader.i

for.cond66.preheader.i:                           ; preds = %for.cond66.preheader.i.preheader, %for.inc85.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %for.inc85.i ], [ 0, %for.cond66.preheader.i.preheader ]
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.body69.i, %for.cond66.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %for.cond66.preheader.i ], [ %indvars.iv.next31.i, %for.body69.i ]
  %9 = add nuw nsw i64 %indvars.iv30.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv36.i
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, 2
  %rem73.i = urem i32 %12, 2000
  %conv74.i = sitofp i32 %rem73.i to double
  %div77.i = fdiv double %conv74.i, 1.000000e+04
  %arrayidx81.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv36.i, i64 %indvars.iv30.i
  store double %div77.i, double* %arrayidx81.i, align 8, !tbaa !2
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next31.i, 2200
  br i1 %exitcond35.not.i, label %for.inc85.i, label %for.body69.i, !llvm.loop !13

for.inc85.i:                                      ; preds = %for.body69.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next37.i, 2400
  br i1 %exitcond38.not.i, label %polly.loop_preheader, label %for.cond66.preheader.i, !llvm.loop !14

kernel_3mm.exit:                                  ; preds = %polly.loop_exit328
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_3mm.exit
  %13 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %13, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %14) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %17 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i71 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i73, %if.end.i ]
  %18 = add nuw nsw i64 %indvars.iv.i71, %17
  %19 = trunc i64 %18 to i32
  %rem.i72 = urem i32 %19, 20
  %cmp5.i = icmp eq i32 %rem.i72, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %20) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2200 x double], [2200 x double]* %call.i55370, i64 %indvars.iv4.i, i64 %indvars.iv.i71
  %22 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %22) #9
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, 2200
  br i1 %exitcond.not.i74, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc10.i
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %24) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_3mm.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i50) #8
  tail call void @free(i8* %call.i51) #8
  tail call void @free(i8* %call.i52) #8
  tail call void @free(i8* %call.i53) #8
  tail call void @free(i8* %call.i54) #8
  tail call void @free(i8* nonnull %call.i55) #8
  ret i32 0

polly.loop_exit77:                                ; preds = %polly.loop_exit83
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond377.not = icmp eq i64 %polly.indvar_next, 57
  br i1 %exitcond377.not, label %polly.loop_preheader101, label %polly.loop_preheader76

polly.loop_preheader:                             ; preds = %for.inc85.i
  tail call void (...) @polybench_timer_start() #8
  br label %polly.loop_preheader76

polly.loop_exit83:                                ; preds = %polly.loop_preheader88
  %polly.indvar_next79 = add nuw nsw i64 %polly.indvar78, 1
  %exitcond376.not = icmp eq i64 %polly.indvar_next79, 69
  br i1 %exitcond376.not, label %polly.loop_exit77, label %polly.loop_preheader82

polly.loop_preheader76:                           ; preds = %polly.loop_preheader, %polly.loop_exit77
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit77 ]
  %26 = mul nsw i64 %polly.indvar, -32
  %smin441 = call i64 @llvm.smin.i64(i64 %26, i64 -1768)
  %27 = add nsw i64 %smin441, 1800
  %28 = mul nuw nsw i64 %polly.indvar, 563200
  br label %polly.loop_preheader82

polly.loop_preheader82:                           ; preds = %polly.loop_preheader76, %polly.loop_exit83
  %polly.indvar78 = phi i64 [ 0, %polly.loop_preheader76 ], [ %polly.indvar_next79, %polly.loop_exit83 ]
  %29 = shl nuw nsw i64 %polly.indvar78, 8
  %30 = add nuw nsw i64 %28, %29
  %31 = mul nsw i64 %polly.indvar78, -32
  %smin = call i64 @llvm.smin.i64(i64 %31, i64 -2168)
  %32 = shl nsw i64 %smin, 3
  %33 = add nsw i64 %32, 17600
  br label %polly.loop_preheader88

polly.loop_preheader88:                           ; preds = %polly.loop_preheader88, %polly.loop_preheader82
  %polly.indvar84 = phi i64 [ 0, %polly.loop_preheader82 ], [ %polly.indvar_next85.3, %polly.loop_preheader88 ]
  %niter = phi i64 [ %27, %polly.loop_preheader82 ], [ %niter.nsub.3, %polly.loop_preheader88 ]
  %34 = mul nuw nsw i64 %polly.indvar84, 17600
  %35 = add nuw nsw i64 %30, %34
  %scevgep374 = getelementptr i8, i8* %call.i52, i64 %35
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep374, i8 0, i64 %33, i1 false)
  %polly.indvar_next85 = or i64 %polly.indvar84, 1
  %36 = mul nuw nsw i64 %polly.indvar_next85, 17600
  %37 = add nuw nsw i64 %30, %36
  %scevgep374.1 = getelementptr i8, i8* %call.i52, i64 %37
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep374.1, i8 0, i64 %33, i1 false)
  %polly.indvar_next85.1 = or i64 %polly.indvar84, 2
  %38 = mul nuw nsw i64 %polly.indvar_next85.1, 17600
  %39 = add nuw nsw i64 %30, %38
  %scevgep374.2 = getelementptr i8, i8* %call.i52, i64 %39
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep374.2, i8 0, i64 %33, i1 false)
  %polly.indvar_next85.2 = or i64 %polly.indvar84, 3
  %40 = mul nuw nsw i64 %polly.indvar_next85.2, 17600
  %41 = add nuw nsw i64 %30, %40
  %scevgep374.3 = getelementptr i8, i8* %call.i52, i64 %41
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep374.3, i8 0, i64 %33, i1 false)
  %polly.indvar_next85.3 = add nuw nsw i64 %polly.indvar84, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %polly.loop_exit83, label %polly.loop_preheader88

polly.loop_exit102:                               ; preds = %polly.loop_exit108
  %polly.indvar_next98 = add nuw nsw i64 %polly.indvar97, 1
  %exitcond384.not = icmp eq i64 %polly.indvar_next98, 57
  br i1 %exitcond384.not, label %polly.loop_preheader126.preheader, label %polly.loop_preheader101

polly.loop_preheader126.preheader:                ; preds = %polly.loop_exit102
  %polly.access.cast.call.i52.le.le.le.le = bitcast i8* %call.i52 to double*
  br label %polly.loop_preheader126

polly.loop_exit108:                               ; preds = %polly.loop_preheader113
  %polly.indvar_next104 = add nuw nsw i64 %polly.indvar103, 1
  %exitcond383.not = icmp eq i64 %polly.indvar_next104, 69
  br i1 %exitcond383.not, label %polly.loop_exit102, label %polly.loop_preheader107

polly.loop_preheader101:                          ; preds = %polly.loop_exit77, %polly.loop_exit102
  %polly.indvar97 = phi i64 [ %polly.indvar_next98, %polly.loop_exit102 ], [ 0, %polly.loop_exit77 ]
  %42 = mul nsw i64 %polly.indvar97, -32
  %smin442 = call i64 @llvm.smin.i64(i64 %42, i64 -1768)
  %43 = add nsw i64 %smin442, 1800
  %44 = mul nuw nsw i64 %polly.indvar97, 563200
  br label %polly.loop_preheader107

polly.loop_preheader107:                          ; preds = %polly.loop_preheader101, %polly.loop_exit108
  %polly.indvar103 = phi i64 [ 0, %polly.loop_preheader101 ], [ %polly.indvar_next104, %polly.loop_exit108 ]
  %45 = shl nuw nsw i64 %polly.indvar103, 8
  %46 = add nuw nsw i64 %44, %45
  %47 = mul nsw i64 %polly.indvar103, -32
  %smin378 = call i64 @llvm.smin.i64(i64 %47, i64 -2168)
  %48 = shl nsw i64 %smin378, 3
  %49 = add nsw i64 %48, 17600
  br label %polly.loop_preheader113

polly.loop_preheader113:                          ; preds = %polly.loop_preheader113, %polly.loop_preheader107
  %polly.indvar109 = phi i64 [ 0, %polly.loop_preheader107 ], [ %polly.indvar_next110.3, %polly.loop_preheader113 ]
  %niter447 = phi i64 [ %43, %polly.loop_preheader107 ], [ %niter447.nsub.3, %polly.loop_preheader113 ]
  %50 = mul nuw nsw i64 %polly.indvar109, 17600
  %51 = add nuw nsw i64 %46, %50
  %scevgep = getelementptr i8, i8* %call.i52, i64 %51
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep, i8 0, i64 %49, i1 false)
  %polly.indvar_next110 = or i64 %polly.indvar109, 1
  %52 = mul nuw nsw i64 %polly.indvar_next110, 17600
  %53 = add nuw nsw i64 %46, %52
  %scevgep.1 = getelementptr i8, i8* %call.i52, i64 %53
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.1, i8 0, i64 %49, i1 false)
  %polly.indvar_next110.1 = or i64 %polly.indvar109, 2
  %54 = mul nuw nsw i64 %polly.indvar_next110.1, 17600
  %55 = add nuw nsw i64 %46, %54
  %scevgep.2 = getelementptr i8, i8* %call.i52, i64 %55
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.2, i8 0, i64 %49, i1 false)
  %polly.indvar_next110.2 = or i64 %polly.indvar109, 3
  %56 = mul nuw nsw i64 %polly.indvar_next110.2, 17600
  %57 = add nuw nsw i64 %46, %56
  %scevgep.3 = getelementptr i8, i8* %call.i52, i64 %57
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.3, i8 0, i64 %49, i1 false)
  %polly.indvar_next110.3 = add nuw nsw i64 %polly.indvar109, 4
  %niter447.nsub.3 = add i64 %niter447, -4
  %niter447.ncmp.3 = icmp eq i64 %niter447.nsub.3, 0
  br i1 %niter447.ncmp.3, label %polly.loop_exit108, label %polly.loop_preheader113

polly.loop_exit127:                               ; preds = %polly.loop_exit133
  %polly.indvar_next123 = add nuw nsw i64 %polly.indvar122, 1
  %indvars.iv.next391 = add nsw i64 %indvars.iv390, -32
  %exitcond396.not = icmp eq i64 %polly.indvar_next123, 57
  br i1 %exitcond396.not, label %polly.loop_preheader175, label %polly.loop_preheader126

polly.loop_exit133:                               ; preds = %polly.loop_exit139
  %polly.indvar_next129 = add nuw nsw i64 %polly.indvar128, 1
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, -32
  %exitcond395.not = icmp eq i64 %polly.indvar_next129, 69
  br i1 %exitcond395.not, label %polly.loop_exit127, label %polly.loop_preheader132

polly.loop_preheader126:                          ; preds = %polly.loop_preheader126.preheader, %polly.loop_exit127
  %indvars.iv390 = phi i64 [ 0, %polly.loop_preheader126.preheader ], [ %indvars.iv.next391, %polly.loop_exit127 ]
  %polly.indvar122 = phi i64 [ 0, %polly.loop_preheader126.preheader ], [ %polly.indvar_next123, %polly.loop_exit127 ]
  %smin392 = call i64 @llvm.smin.i64(i64 %indvars.iv390, i64 -1768)
  %58 = shl nsw i64 %polly.indvar122, 5
  %59 = add nsw i64 %smin392, 1799
  br label %polly.loop_preheader132

polly.loop_exit139:                               ; preds = %polly.loop_exit145
  %polly.indvar_next135 = add nuw nsw i64 %polly.indvar134, 1
  %exitcond394.not = icmp eq i64 %polly.indvar_next135, 75
  br i1 %exitcond394.not, label %polly.loop_exit133, label %polly.loop_preheader138

polly.loop_preheader132:                          ; preds = %polly.loop_preheader126, %polly.loop_exit133
  %indvars.iv386 = phi i64 [ 0, %polly.loop_preheader126 ], [ %indvars.iv.next387, %polly.loop_exit133 ]
  %polly.indvar128 = phi i64 [ 0, %polly.loop_preheader126 ], [ %polly.indvar_next129, %polly.loop_exit133 ]
  %smin388 = call i64 @llvm.smin.i64(i64 %indvars.iv386, i64 -2168)
  %60 = shl nsw i64 %polly.indvar128, 5
  %61 = add nsw i64 %smin388, 2199
  br label %polly.loop_preheader138

polly.loop_exit145:                               ; preds = %polly.loop_exit151
  %polly.indvar_next141 = add nuw nsw i64 %polly.indvar140, 1
  %exitcond393.not = icmp eq i64 %polly.indvar140, %59
  br i1 %exitcond393.not, label %polly.loop_exit139, label %polly.loop_preheader144

polly.loop_preheader138:                          ; preds = %polly.loop_preheader132, %polly.loop_exit139
  %polly.indvar134 = phi i64 [ 0, %polly.loop_preheader132 ], [ %polly.indvar_next135, %polly.loop_exit139 ]
  %62 = shl nsw i64 %polly.indvar134, 5
  br label %polly.loop_preheader144

polly.loop_exit151:                               ; preds = %polly.stmt.for.body39.i
  store double %p_add53.i.1, double* %polly.access.call.i52158, align 8, !alias.scope !19, !noalias !22
  %polly.indvar_next147 = add nuw nsw i64 %polly.indvar146, 1
  %exitcond389.not = icmp eq i64 %polly.indvar146, %61
  br i1 %exitcond389.not, label %polly.loop_exit145, label %polly.loop_preheader150

polly.loop_preheader144:                          ; preds = %polly.loop_preheader138, %polly.loop_exit145
  %polly.indvar140 = phi i64 [ 0, %polly.loop_preheader138 ], [ %polly.indvar_next141, %polly.loop_exit145 ]
  %63 = add nuw nsw i64 %polly.indvar140, %58
  %polly.access.mul.call.i52156 = mul nuw nsw i64 %63, 2200
  %64 = mul nuw nsw i64 %63, 19200
  br label %polly.loop_preheader150

polly.stmt.for.body39.i:                          ; preds = %polly.stmt.for.body39.i, %polly.loop_preheader150
  %p_add53.i371 = phi double [ %polly.access.call.i52158.promoted, %polly.loop_preheader150 ], [ %p_add53.i.1, %polly.stmt.for.body39.i ]
  %polly.indvar152 = phi i64 [ 0, %polly.loop_preheader150 ], [ %polly.indvar_next153.1, %polly.stmt.for.body39.i ]
  %65 = add nuw nsw i64 %polly.indvar152, %62
  %66 = shl i64 %65, 3
  %67 = add nuw nsw i64 %66, %64
  %scevgep159 = getelementptr i8, i8* %call.i53, i64 %67
  %scevgep159160 = bitcast i8* %scevgep159 to double*
  %_p_scalar_ = load double, double* %scevgep159160, align 8, !alias.scope !26, !noalias !29
  %68 = mul nuw nsw i64 %65, 17600
  %69 = add nuw nsw i64 %68, %76
  %scevgep161 = getelementptr i8, i8* %call.i54, i64 %69
  %scevgep161162 = bitcast i8* %scevgep161 to double*
  %_p_scalar_163 = load double, double* %scevgep161162, align 8, !alias.scope !27, !noalias !30
  %p_mul48.i = fmul double %_p_scalar_, %_p_scalar_163
  %p_add53.i = fadd double %p_add53.i371, %p_mul48.i
  %polly.indvar_next153 = or i64 %polly.indvar152, 1
  %70 = add nuw nsw i64 %polly.indvar_next153, %62
  %71 = shl i64 %70, 3
  %72 = add nuw nsw i64 %71, %64
  %scevgep159.1 = getelementptr i8, i8* %call.i53, i64 %72
  %scevgep159160.1 = bitcast i8* %scevgep159.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep159160.1, align 8, !alias.scope !26, !noalias !29
  %73 = mul nuw nsw i64 %70, 17600
  %74 = add nuw nsw i64 %73, %76
  %scevgep161.1 = getelementptr i8, i8* %call.i54, i64 %74
  %scevgep161162.1 = bitcast i8* %scevgep161.1 to double*
  %_p_scalar_163.1 = load double, double* %scevgep161162.1, align 8, !alias.scope !27, !noalias !30
  %p_mul48.i.1 = fmul double %_p_scalar_.1, %_p_scalar_163.1
  %p_add53.i.1 = fadd double %p_add53.i, %p_mul48.i.1
  %polly.indvar_next153.1 = add nuw nsw i64 %polly.indvar152, 2
  %exitcond385.not.1 = icmp eq i64 %polly.indvar_next153.1, 32
  br i1 %exitcond385.not.1, label %polly.loop_exit151, label %polly.stmt.for.body39.i

polly.loop_preheader150:                          ; preds = %polly.loop_preheader144, %polly.loop_exit151
  %polly.indvar146 = phi i64 [ 0, %polly.loop_preheader144 ], [ %polly.indvar_next147, %polly.loop_exit151 ]
  %75 = add nuw nsw i64 %polly.indvar146, %60
  %polly.access.add.call.i52157 = add nuw nsw i64 %75, %polly.access.mul.call.i52156
  %polly.access.call.i52158 = getelementptr double, double* %polly.access.cast.call.i52.le.le.le.le, i64 %polly.access.add.call.i52157
  %76 = shl i64 %75, 3
  %polly.access.call.i52158.promoted = load double, double* %polly.access.call.i52158, align 8, !alias.scope !19, !noalias !22
  br label %polly.stmt.for.body39.i

polly.loop_exit176:                               ; preds = %polly.loop_preheader181
  %polly.indvar_next172 = add nuw nsw i64 %polly.indvar171, 1
  %exitcond401.not = icmp eq i64 %polly.indvar_next172, 50
  br i1 %exitcond401.not, label %polly.loop_preheader201, label %polly.loop_preheader175

polly.loop_preheader175:                          ; preds = %polly.loop_exit127, %polly.loop_exit176
  %polly.indvar171 = phi i64 [ %polly.indvar_next172, %polly.loop_exit176 ], [ 0, %polly.loop_exit127 ]
  %77 = mul nuw nsw i64 %polly.indvar171, 460800
  br label %polly.loop_preheader181

polly.loop_preheader181:                          ; preds = %polly.loop_preheader175, %polly.loop_preheader181
  %polly.indvar177 = phi i64 [ 0, %polly.loop_preheader175 ], [ %polly.indvar_next178, %polly.loop_preheader181 ]
  %78 = shl nuw nsw i64 %polly.indvar177, 8
  %79 = add nuw nsw i64 %77, %78
  %80 = mul nsw i64 %polly.indvar177, -32
  %smin398 = call i64 @llvm.smin.i64(i64 %80, i64 -1768)
  %81 = shl nsw i64 %smin398, 3
  %82 = add nsw i64 %81, 14400
  %scevgep397 = getelementptr i8, i8* %call.i, i64 %79
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397, i8 0, i64 %82, i1 false)
  %83 = add nuw nsw i64 %79, 14400
  %scevgep397.1 = getelementptr i8, i8* %call.i, i64 %83
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.1, i8 0, i64 %82, i1 false)
  %84 = add nuw nsw i64 %79, 28800
  %scevgep397.2 = getelementptr i8, i8* %call.i, i64 %84
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.2, i8 0, i64 %82, i1 false)
  %85 = add nuw nsw i64 %79, 43200
  %scevgep397.3 = getelementptr i8, i8* %call.i, i64 %85
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.3, i8 0, i64 %82, i1 false)
  %86 = add nuw nsw i64 %79, 57600
  %scevgep397.4 = getelementptr i8, i8* %call.i, i64 %86
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.4, i8 0, i64 %82, i1 false)
  %87 = add nuw nsw i64 %79, 72000
  %scevgep397.5 = getelementptr i8, i8* %call.i, i64 %87
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.5, i8 0, i64 %82, i1 false)
  %88 = add nuw nsw i64 %79, 86400
  %scevgep397.6 = getelementptr i8, i8* %call.i, i64 %88
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.6, i8 0, i64 %82, i1 false)
  %89 = add nuw nsw i64 %79, 100800
  %scevgep397.7 = getelementptr i8, i8* %call.i, i64 %89
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.7, i8 0, i64 %82, i1 false)
  %90 = add nuw nsw i64 %79, 115200
  %scevgep397.8 = getelementptr i8, i8* %call.i, i64 %90
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.8, i8 0, i64 %82, i1 false)
  %91 = add nuw nsw i64 %79, 129600
  %scevgep397.9 = getelementptr i8, i8* %call.i, i64 %91
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.9, i8 0, i64 %82, i1 false)
  %92 = add nuw nsw i64 %79, 144000
  %scevgep397.10 = getelementptr i8, i8* %call.i, i64 %92
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.10, i8 0, i64 %82, i1 false)
  %93 = add nuw nsw i64 %79, 158400
  %scevgep397.11 = getelementptr i8, i8* %call.i, i64 %93
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.11, i8 0, i64 %82, i1 false)
  %94 = add nuw nsw i64 %79, 172800
  %scevgep397.12 = getelementptr i8, i8* %call.i, i64 %94
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.12, i8 0, i64 %82, i1 false)
  %95 = add nuw nsw i64 %79, 187200
  %scevgep397.13 = getelementptr i8, i8* %call.i, i64 %95
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.13, i8 0, i64 %82, i1 false)
  %96 = add nuw nsw i64 %79, 201600
  %scevgep397.14 = getelementptr i8, i8* %call.i, i64 %96
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.14, i8 0, i64 %82, i1 false)
  %97 = add nuw nsw i64 %79, 216000
  %scevgep397.15 = getelementptr i8, i8* %call.i, i64 %97
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.15, i8 0, i64 %82, i1 false)
  %98 = add nuw nsw i64 %79, 230400
  %scevgep397.16 = getelementptr i8, i8* %call.i, i64 %98
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.16, i8 0, i64 %82, i1 false)
  %99 = add nuw nsw i64 %79, 244800
  %scevgep397.17 = getelementptr i8, i8* %call.i, i64 %99
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.17, i8 0, i64 %82, i1 false)
  %100 = add nuw nsw i64 %79, 259200
  %scevgep397.18 = getelementptr i8, i8* %call.i, i64 %100
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.18, i8 0, i64 %82, i1 false)
  %101 = add nuw nsw i64 %79, 273600
  %scevgep397.19 = getelementptr i8, i8* %call.i, i64 %101
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.19, i8 0, i64 %82, i1 false)
  %102 = add nuw nsw i64 %79, 288000
  %scevgep397.20 = getelementptr i8, i8* %call.i, i64 %102
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.20, i8 0, i64 %82, i1 false)
  %103 = add nuw nsw i64 %79, 302400
  %scevgep397.21 = getelementptr i8, i8* %call.i, i64 %103
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.21, i8 0, i64 %82, i1 false)
  %104 = add nuw nsw i64 %79, 316800
  %scevgep397.22 = getelementptr i8, i8* %call.i, i64 %104
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.22, i8 0, i64 %82, i1 false)
  %105 = add nuw nsw i64 %79, 331200
  %scevgep397.23 = getelementptr i8, i8* %call.i, i64 %105
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.23, i8 0, i64 %82, i1 false)
  %106 = add nuw nsw i64 %79, 345600
  %scevgep397.24 = getelementptr i8, i8* %call.i, i64 %106
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.24, i8 0, i64 %82, i1 false)
  %107 = add nuw nsw i64 %79, 360000
  %scevgep397.25 = getelementptr i8, i8* %call.i, i64 %107
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.25, i8 0, i64 %82, i1 false)
  %108 = add nuw nsw i64 %79, 374400
  %scevgep397.26 = getelementptr i8, i8* %call.i, i64 %108
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.26, i8 0, i64 %82, i1 false)
  %109 = add nuw nsw i64 %79, 388800
  %scevgep397.27 = getelementptr i8, i8* %call.i, i64 %109
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.27, i8 0, i64 %82, i1 false)
  %110 = add nuw nsw i64 %79, 403200
  %scevgep397.28 = getelementptr i8, i8* %call.i, i64 %110
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.28, i8 0, i64 %82, i1 false)
  %111 = add nuw nsw i64 %79, 417600
  %scevgep397.29 = getelementptr i8, i8* %call.i, i64 %111
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.29, i8 0, i64 %82, i1 false)
  %112 = add nuw nsw i64 %79, 432000
  %scevgep397.30 = getelementptr i8, i8* %call.i, i64 %112
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.30, i8 0, i64 %82, i1 false)
  %113 = add nuw nsw i64 %79, 446400
  %scevgep397.31 = getelementptr i8, i8* %call.i, i64 %113
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep397.31, i8 0, i64 %82, i1 false)
  %polly.indvar_next178 = add nuw nsw i64 %polly.indvar177, 1
  %exitcond400.not = icmp eq i64 %polly.indvar_next178, 57
  br i1 %exitcond400.not, label %polly.loop_exit176, label %polly.loop_preheader181

polly.loop_exit202:                               ; preds = %polly.loop_preheader207
  %polly.indvar_next198 = add nuw nsw i64 %polly.indvar197, 1
  %exitcond406.not = icmp eq i64 %polly.indvar_next198, 50
  br i1 %exitcond406.not, label %polly.loop_preheader226.preheader, label %polly.loop_preheader201

polly.loop_preheader226.preheader:                ; preds = %polly.loop_exit202
  %polly.access.cast.call.i.le.le.le.le = bitcast i8* %call.i to double*
  br label %polly.loop_preheader226

polly.loop_preheader201:                          ; preds = %polly.loop_exit176, %polly.loop_exit202
  %polly.indvar197 = phi i64 [ %polly.indvar_next198, %polly.loop_exit202 ], [ 0, %polly.loop_exit176 ]
  %114 = mul nuw nsw i64 %polly.indvar197, 460800
  br label %polly.loop_preheader207

polly.loop_preheader207:                          ; preds = %polly.loop_preheader201, %polly.loop_preheader207
  %polly.indvar203 = phi i64 [ 0, %polly.loop_preheader201 ], [ %polly.indvar_next204, %polly.loop_preheader207 ]
  %115 = shl nuw nsw i64 %polly.indvar203, 8
  %116 = add nuw nsw i64 %114, %115
  %117 = mul nsw i64 %polly.indvar203, -32
  %smin403 = call i64 @llvm.smin.i64(i64 %117, i64 -1768)
  %118 = shl nsw i64 %smin403, 3
  %119 = add nsw i64 %118, 14400
  %scevgep402 = getelementptr i8, i8* %call.i, i64 %116
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402, i8 0, i64 %119, i1 false)
  %120 = add nuw nsw i64 %116, 14400
  %scevgep402.1 = getelementptr i8, i8* %call.i, i64 %120
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.1, i8 0, i64 %119, i1 false)
  %121 = add nuw nsw i64 %116, 28800
  %scevgep402.2 = getelementptr i8, i8* %call.i, i64 %121
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.2, i8 0, i64 %119, i1 false)
  %122 = add nuw nsw i64 %116, 43200
  %scevgep402.3 = getelementptr i8, i8* %call.i, i64 %122
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.3, i8 0, i64 %119, i1 false)
  %123 = add nuw nsw i64 %116, 57600
  %scevgep402.4 = getelementptr i8, i8* %call.i, i64 %123
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.4, i8 0, i64 %119, i1 false)
  %124 = add nuw nsw i64 %116, 72000
  %scevgep402.5 = getelementptr i8, i8* %call.i, i64 %124
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.5, i8 0, i64 %119, i1 false)
  %125 = add nuw nsw i64 %116, 86400
  %scevgep402.6 = getelementptr i8, i8* %call.i, i64 %125
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.6, i8 0, i64 %119, i1 false)
  %126 = add nuw nsw i64 %116, 100800
  %scevgep402.7 = getelementptr i8, i8* %call.i, i64 %126
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.7, i8 0, i64 %119, i1 false)
  %127 = add nuw nsw i64 %116, 115200
  %scevgep402.8 = getelementptr i8, i8* %call.i, i64 %127
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.8, i8 0, i64 %119, i1 false)
  %128 = add nuw nsw i64 %116, 129600
  %scevgep402.9 = getelementptr i8, i8* %call.i, i64 %128
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.9, i8 0, i64 %119, i1 false)
  %129 = add nuw nsw i64 %116, 144000
  %scevgep402.10 = getelementptr i8, i8* %call.i, i64 %129
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.10, i8 0, i64 %119, i1 false)
  %130 = add nuw nsw i64 %116, 158400
  %scevgep402.11 = getelementptr i8, i8* %call.i, i64 %130
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.11, i8 0, i64 %119, i1 false)
  %131 = add nuw nsw i64 %116, 172800
  %scevgep402.12 = getelementptr i8, i8* %call.i, i64 %131
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.12, i8 0, i64 %119, i1 false)
  %132 = add nuw nsw i64 %116, 187200
  %scevgep402.13 = getelementptr i8, i8* %call.i, i64 %132
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.13, i8 0, i64 %119, i1 false)
  %133 = add nuw nsw i64 %116, 201600
  %scevgep402.14 = getelementptr i8, i8* %call.i, i64 %133
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.14, i8 0, i64 %119, i1 false)
  %134 = add nuw nsw i64 %116, 216000
  %scevgep402.15 = getelementptr i8, i8* %call.i, i64 %134
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.15, i8 0, i64 %119, i1 false)
  %135 = add nuw nsw i64 %116, 230400
  %scevgep402.16 = getelementptr i8, i8* %call.i, i64 %135
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.16, i8 0, i64 %119, i1 false)
  %136 = add nuw nsw i64 %116, 244800
  %scevgep402.17 = getelementptr i8, i8* %call.i, i64 %136
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.17, i8 0, i64 %119, i1 false)
  %137 = add nuw nsw i64 %116, 259200
  %scevgep402.18 = getelementptr i8, i8* %call.i, i64 %137
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.18, i8 0, i64 %119, i1 false)
  %138 = add nuw nsw i64 %116, 273600
  %scevgep402.19 = getelementptr i8, i8* %call.i, i64 %138
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.19, i8 0, i64 %119, i1 false)
  %139 = add nuw nsw i64 %116, 288000
  %scevgep402.20 = getelementptr i8, i8* %call.i, i64 %139
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.20, i8 0, i64 %119, i1 false)
  %140 = add nuw nsw i64 %116, 302400
  %scevgep402.21 = getelementptr i8, i8* %call.i, i64 %140
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.21, i8 0, i64 %119, i1 false)
  %141 = add nuw nsw i64 %116, 316800
  %scevgep402.22 = getelementptr i8, i8* %call.i, i64 %141
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.22, i8 0, i64 %119, i1 false)
  %142 = add nuw nsw i64 %116, 331200
  %scevgep402.23 = getelementptr i8, i8* %call.i, i64 %142
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.23, i8 0, i64 %119, i1 false)
  %143 = add nuw nsw i64 %116, 345600
  %scevgep402.24 = getelementptr i8, i8* %call.i, i64 %143
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.24, i8 0, i64 %119, i1 false)
  %144 = add nuw nsw i64 %116, 360000
  %scevgep402.25 = getelementptr i8, i8* %call.i, i64 %144
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.25, i8 0, i64 %119, i1 false)
  %145 = add nuw nsw i64 %116, 374400
  %scevgep402.26 = getelementptr i8, i8* %call.i, i64 %145
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.26, i8 0, i64 %119, i1 false)
  %146 = add nuw nsw i64 %116, 388800
  %scevgep402.27 = getelementptr i8, i8* %call.i, i64 %146
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.27, i8 0, i64 %119, i1 false)
  %147 = add nuw nsw i64 %116, 403200
  %scevgep402.28 = getelementptr i8, i8* %call.i, i64 %147
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.28, i8 0, i64 %119, i1 false)
  %148 = add nuw nsw i64 %116, 417600
  %scevgep402.29 = getelementptr i8, i8* %call.i, i64 %148
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.29, i8 0, i64 %119, i1 false)
  %149 = add nuw nsw i64 %116, 432000
  %scevgep402.30 = getelementptr i8, i8* %call.i, i64 %149
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.30, i8 0, i64 %119, i1 false)
  %150 = add nuw nsw i64 %116, 446400
  %scevgep402.31 = getelementptr i8, i8* %call.i, i64 %150
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep402.31, i8 0, i64 %119, i1 false)
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond405.not = icmp eq i64 %polly.indvar_next204, 57
  br i1 %exitcond405.not, label %polly.loop_exit202, label %polly.loop_preheader207

polly.loop_exit227:                               ; preds = %polly.loop_exit233
  %polly.indvar_next223 = add nuw nsw i64 %polly.indvar222, 1
  %exitcond418.not = icmp eq i64 %polly.indvar_next223, 50
  br i1 %exitcond418.not, label %polly.loop_preheader276, label %polly.loop_preheader226

polly.loop_exit233:                               ; preds = %polly.loop_exit239
  %polly.indvar_next229 = add nuw nsw i64 %polly.indvar228, 1
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, -32
  %exitcond417.not = icmp eq i64 %polly.indvar_next229, 57
  br i1 %exitcond417.not, label %polly.loop_exit227, label %polly.loop_preheader232

polly.loop_preheader226:                          ; preds = %polly.loop_preheader226.preheader, %polly.loop_exit227
  %polly.indvar222 = phi i64 [ %polly.indvar_next223, %polly.loop_exit227 ], [ 0, %polly.loop_preheader226.preheader ]
  %151 = shl nsw i64 %polly.indvar222, 5
  br label %polly.loop_preheader232

polly.loop_exit239:                               ; preds = %polly.loop_exit245
  %polly.indvar_next235 = add nuw nsw i64 %polly.indvar234, 1
  %exitcond416.not = icmp eq i64 %polly.indvar_next235, 63
  br i1 %exitcond416.not, label %polly.loop_exit233, label %polly.loop_preheader238

polly.loop_preheader232:                          ; preds = %polly.loop_preheader226, %polly.loop_exit233
  %indvars.iv411 = phi i64 [ 0, %polly.loop_preheader226 ], [ %indvars.iv.next412, %polly.loop_exit233 ]
  %polly.indvar228 = phi i64 [ 0, %polly.loop_preheader226 ], [ %polly.indvar_next229, %polly.loop_exit233 ]
  %smin413 = call i64 @llvm.smin.i64(i64 %indvars.iv411, i64 -1768)
  %152 = shl nsw i64 %polly.indvar228, 5
  %153 = add nsw i64 %smin413, 1799
  br label %polly.loop_preheader238

polly.loop_exit245:                               ; preds = %polly.loop_exit251
  %polly.indvar_next241 = add nuw nsw i64 %polly.indvar240, 1
  %exitcond415.not = icmp eq i64 %polly.indvar_next241, 32
  br i1 %exitcond415.not, label %polly.loop_exit239, label %polly.loop_preheader244

polly.loop_preheader238:                          ; preds = %polly.loop_preheader232, %polly.loop_exit239
  %polly.indvar234 = phi i64 [ 0, %polly.loop_preheader232 ], [ %polly.indvar_next235, %polly.loop_exit239 ]
  %154 = mul nsw i64 %polly.indvar234, -32
  %smin448 = call i64 @llvm.smin.i64(i64 %154, i64 -1968)
  %155 = add nsw i64 %smin448, 2000
  %156 = shl nsw i64 %polly.indvar234, 5
  br label %polly.loop_preheader244

polly.loop_exit251:                               ; preds = %polly.stmt.for.body8.i
  store double %p_add.i.1, double* %polly.access.call.i258, align 8, !alias.scope !31, !noalias !32
  %polly.indvar_next247 = add nuw nsw i64 %polly.indvar246, 1
  %exitcond414.not = icmp eq i64 %polly.indvar246, %153
  br i1 %exitcond414.not, label %polly.loop_exit245, label %polly.loop_preheader250

polly.loop_preheader244:                          ; preds = %polly.loop_preheader238, %polly.loop_exit245
  %polly.indvar240 = phi i64 [ 0, %polly.loop_preheader238 ], [ %polly.indvar_next241, %polly.loop_exit245 ]
  %157 = add nuw nsw i64 %polly.indvar240, %151
  %polly.access.mul.call.i256 = mul nuw nsw i64 %157, 1800
  %158 = mul nuw nsw i64 %157, 16000
  br label %polly.loop_preheader250

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader250
  %p_add.i372 = phi double [ %polly.access.call.i258.promoted, %polly.loop_preheader250 ], [ %p_add.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar252 = phi i64 [ 0, %polly.loop_preheader250 ], [ %polly.indvar_next253.1, %polly.stmt.for.body8.i ]
  %niter452 = phi i64 [ %155, %polly.loop_preheader250 ], [ %niter452.nsub.1, %polly.stmt.for.body8.i ]
  %159 = add nuw nsw i64 %polly.indvar252, %156
  %160 = shl i64 %159, 3
  %161 = add nuw nsw i64 %160, %158
  %scevgep259 = getelementptr i8, i8* %call.i50, i64 %161
  %scevgep259260 = bitcast i8* %scevgep259 to double*
  %_p_scalar_261 = load double, double* %scevgep259260, align 8, !alias.scope !24, !noalias !33
  %162 = mul nuw nsw i64 %159, 14400
  %163 = add nuw nsw i64 %162, %170
  %scevgep262 = getelementptr i8, i8* %call.i51, i64 %163
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !25, !noalias !34
  %p_mul.i = fmul double %_p_scalar_261, %_p_scalar_264
  %p_add.i = fadd double %p_add.i372, %p_mul.i
  %polly.indvar_next253 = or i64 %polly.indvar252, 1
  %164 = add nuw nsw i64 %polly.indvar_next253, %156
  %165 = shl i64 %164, 3
  %166 = add nuw nsw i64 %165, %158
  %scevgep259.1 = getelementptr i8, i8* %call.i50, i64 %166
  %scevgep259260.1 = bitcast i8* %scevgep259.1 to double*
  %_p_scalar_261.1 = load double, double* %scevgep259260.1, align 8, !alias.scope !24, !noalias !33
  %167 = mul nuw nsw i64 %164, 14400
  %168 = add nuw nsw i64 %167, %170
  %scevgep262.1 = getelementptr i8, i8* %call.i51, i64 %168
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !25, !noalias !34
  %p_mul.i.1 = fmul double %_p_scalar_261.1, %_p_scalar_264.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul.i.1
  %polly.indvar_next253.1 = add nuw nsw i64 %polly.indvar252, 2
  %niter452.nsub.1 = add i64 %niter452, -2
  %niter452.ncmp.1 = icmp eq i64 %niter452.nsub.1, 0
  br i1 %niter452.ncmp.1, label %polly.loop_exit251, label %polly.stmt.for.body8.i

polly.loop_preheader250:                          ; preds = %polly.loop_preheader244, %polly.loop_exit251
  %polly.indvar246 = phi i64 [ 0, %polly.loop_preheader244 ], [ %polly.indvar_next247, %polly.loop_exit251 ]
  %169 = add nuw nsw i64 %polly.indvar246, %152
  %polly.access.add.call.i257 = add nuw nsw i64 %169, %polly.access.mul.call.i256
  %polly.access.call.i258 = getelementptr double, double* %polly.access.cast.call.i.le.le.le.le, i64 %polly.access.add.call.i257
  %170 = shl i64 %169, 3
  %polly.access.call.i258.promoted = load double, double* %polly.access.call.i258, align 8, !alias.scope !31, !noalias !32
  br label %polly.stmt.for.body8.i

polly.loop_exit277:                               ; preds = %polly.loop_preheader282
  %polly.indvar_next273 = add nuw nsw i64 %polly.indvar272, 1
  %exitcond423.not = icmp eq i64 %polly.indvar_next273, 50
  br i1 %exitcond423.not, label %polly.loop_preheader302, label %polly.loop_preheader276

polly.loop_preheader276:                          ; preds = %polly.loop_exit227, %polly.loop_exit277
  %polly.indvar272 = phi i64 [ %polly.indvar_next273, %polly.loop_exit277 ], [ 0, %polly.loop_exit227 ]
  %171 = mul nuw nsw i64 %polly.indvar272, 563200
  br label %polly.loop_preheader282

polly.loop_preheader282:                          ; preds = %polly.loop_preheader276, %polly.loop_preheader282
  %polly.indvar278 = phi i64 [ 0, %polly.loop_preheader276 ], [ %polly.indvar_next279, %polly.loop_preheader282 ]
  %172 = shl nuw nsw i64 %polly.indvar278, 8
  %173 = add nuw nsw i64 %171, %172
  %174 = mul nsw i64 %polly.indvar278, -32
  %smin420 = call i64 @llvm.smin.i64(i64 %174, i64 -2168)
  %175 = shl nsw i64 %smin420, 3
  %176 = add nsw i64 %175, 17600
  %scevgep419 = getelementptr i8, i8* %call.i55, i64 %173
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419, i8 0, i64 %176, i1 false)
  %177 = add nuw nsw i64 %173, 17600
  %scevgep419.1 = getelementptr i8, i8* %call.i55, i64 %177
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.1, i8 0, i64 %176, i1 false)
  %178 = add nuw nsw i64 %173, 35200
  %scevgep419.2 = getelementptr i8, i8* %call.i55, i64 %178
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.2, i8 0, i64 %176, i1 false)
  %179 = add nuw nsw i64 %173, 52800
  %scevgep419.3 = getelementptr i8, i8* %call.i55, i64 %179
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.3, i8 0, i64 %176, i1 false)
  %180 = add nuw nsw i64 %173, 70400
  %scevgep419.4 = getelementptr i8, i8* %call.i55, i64 %180
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.4, i8 0, i64 %176, i1 false)
  %181 = add nuw nsw i64 %173, 88000
  %scevgep419.5 = getelementptr i8, i8* %call.i55, i64 %181
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.5, i8 0, i64 %176, i1 false)
  %182 = add nuw nsw i64 %173, 105600
  %scevgep419.6 = getelementptr i8, i8* %call.i55, i64 %182
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.6, i8 0, i64 %176, i1 false)
  %183 = add nuw nsw i64 %173, 123200
  %scevgep419.7 = getelementptr i8, i8* %call.i55, i64 %183
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.7, i8 0, i64 %176, i1 false)
  %184 = add nuw nsw i64 %173, 140800
  %scevgep419.8 = getelementptr i8, i8* %call.i55, i64 %184
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.8, i8 0, i64 %176, i1 false)
  %185 = add nuw nsw i64 %173, 158400
  %scevgep419.9 = getelementptr i8, i8* %call.i55, i64 %185
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.9, i8 0, i64 %176, i1 false)
  %186 = add nuw nsw i64 %173, 176000
  %scevgep419.10 = getelementptr i8, i8* %call.i55, i64 %186
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.10, i8 0, i64 %176, i1 false)
  %187 = add nuw nsw i64 %173, 193600
  %scevgep419.11 = getelementptr i8, i8* %call.i55, i64 %187
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.11, i8 0, i64 %176, i1 false)
  %188 = add nuw nsw i64 %173, 211200
  %scevgep419.12 = getelementptr i8, i8* %call.i55, i64 %188
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.12, i8 0, i64 %176, i1 false)
  %189 = add nuw nsw i64 %173, 228800
  %scevgep419.13 = getelementptr i8, i8* %call.i55, i64 %189
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.13, i8 0, i64 %176, i1 false)
  %190 = add nuw nsw i64 %173, 246400
  %scevgep419.14 = getelementptr i8, i8* %call.i55, i64 %190
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.14, i8 0, i64 %176, i1 false)
  %191 = add nuw nsw i64 %173, 264000
  %scevgep419.15 = getelementptr i8, i8* %call.i55, i64 %191
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.15, i8 0, i64 %176, i1 false)
  %192 = add nuw nsw i64 %173, 281600
  %scevgep419.16 = getelementptr i8, i8* %call.i55, i64 %192
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.16, i8 0, i64 %176, i1 false)
  %193 = add nuw nsw i64 %173, 299200
  %scevgep419.17 = getelementptr i8, i8* %call.i55, i64 %193
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.17, i8 0, i64 %176, i1 false)
  %194 = add nuw nsw i64 %173, 316800
  %scevgep419.18 = getelementptr i8, i8* %call.i55, i64 %194
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.18, i8 0, i64 %176, i1 false)
  %195 = add nuw nsw i64 %173, 334400
  %scevgep419.19 = getelementptr i8, i8* %call.i55, i64 %195
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.19, i8 0, i64 %176, i1 false)
  %196 = add nuw nsw i64 %173, 352000
  %scevgep419.20 = getelementptr i8, i8* %call.i55, i64 %196
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.20, i8 0, i64 %176, i1 false)
  %197 = add nuw nsw i64 %173, 369600
  %scevgep419.21 = getelementptr i8, i8* %call.i55, i64 %197
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.21, i8 0, i64 %176, i1 false)
  %198 = add nuw nsw i64 %173, 387200
  %scevgep419.22 = getelementptr i8, i8* %call.i55, i64 %198
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.22, i8 0, i64 %176, i1 false)
  %199 = add nuw nsw i64 %173, 404800
  %scevgep419.23 = getelementptr i8, i8* %call.i55, i64 %199
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.23, i8 0, i64 %176, i1 false)
  %200 = add nuw nsw i64 %173, 422400
  %scevgep419.24 = getelementptr i8, i8* %call.i55, i64 %200
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.24, i8 0, i64 %176, i1 false)
  %201 = add nuw nsw i64 %173, 440000
  %scevgep419.25 = getelementptr i8, i8* %call.i55, i64 %201
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.25, i8 0, i64 %176, i1 false)
  %202 = add nuw nsw i64 %173, 457600
  %scevgep419.26 = getelementptr i8, i8* %call.i55, i64 %202
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.26, i8 0, i64 %176, i1 false)
  %203 = add nuw nsw i64 %173, 475200
  %scevgep419.27 = getelementptr i8, i8* %call.i55, i64 %203
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.27, i8 0, i64 %176, i1 false)
  %204 = add nuw nsw i64 %173, 492800
  %scevgep419.28 = getelementptr i8, i8* %call.i55, i64 %204
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.28, i8 0, i64 %176, i1 false)
  %205 = add nuw nsw i64 %173, 510400
  %scevgep419.29 = getelementptr i8, i8* %call.i55, i64 %205
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.29, i8 0, i64 %176, i1 false)
  %206 = add nuw nsw i64 %173, 528000
  %scevgep419.30 = getelementptr i8, i8* %call.i55, i64 %206
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.30, i8 0, i64 %176, i1 false)
  %207 = add nuw nsw i64 %173, 545600
  %scevgep419.31 = getelementptr i8, i8* %call.i55, i64 %207
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep419.31, i8 0, i64 %176, i1 false)
  %polly.indvar_next279 = add nuw nsw i64 %polly.indvar278, 1
  %exitcond422.not = icmp eq i64 %polly.indvar_next279, 69
  br i1 %exitcond422.not, label %polly.loop_exit277, label %polly.loop_preheader282

polly.loop_exit303:                               ; preds = %polly.loop_preheader308
  %polly.indvar_next299 = add nuw nsw i64 %polly.indvar298, 1
  %exitcond428.not = icmp eq i64 %polly.indvar_next299, 50
  br i1 %exitcond428.not, label %polly.loop_preheader327.preheader, label %polly.loop_preheader302

polly.loop_preheader327.preheader:                ; preds = %polly.loop_exit303
  %polly.access.cast.call.i55.le.le.le.le = bitcast i8* %call.i55 to double*
  br label %polly.loop_preheader327

polly.loop_preheader302:                          ; preds = %polly.loop_exit277, %polly.loop_exit303
  %polly.indvar298 = phi i64 [ %polly.indvar_next299, %polly.loop_exit303 ], [ 0, %polly.loop_exit277 ]
  %208 = mul nuw nsw i64 %polly.indvar298, 563200
  br label %polly.loop_preheader308

polly.loop_preheader308:                          ; preds = %polly.loop_preheader302, %polly.loop_preheader308
  %polly.indvar304 = phi i64 [ 0, %polly.loop_preheader302 ], [ %polly.indvar_next305, %polly.loop_preheader308 ]
  %209 = shl nuw nsw i64 %polly.indvar304, 8
  %210 = add nuw nsw i64 %208, %209
  %211 = mul nsw i64 %polly.indvar304, -32
  %smin425 = call i64 @llvm.smin.i64(i64 %211, i64 -2168)
  %212 = shl nsw i64 %smin425, 3
  %213 = add nsw i64 %212, 17600
  %scevgep424 = getelementptr i8, i8* %call.i55, i64 %210
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424, i8 0, i64 %213, i1 false)
  %214 = add nuw nsw i64 %210, 17600
  %scevgep424.1 = getelementptr i8, i8* %call.i55, i64 %214
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.1, i8 0, i64 %213, i1 false)
  %215 = add nuw nsw i64 %210, 35200
  %scevgep424.2 = getelementptr i8, i8* %call.i55, i64 %215
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.2, i8 0, i64 %213, i1 false)
  %216 = add nuw nsw i64 %210, 52800
  %scevgep424.3 = getelementptr i8, i8* %call.i55, i64 %216
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.3, i8 0, i64 %213, i1 false)
  %217 = add nuw nsw i64 %210, 70400
  %scevgep424.4 = getelementptr i8, i8* %call.i55, i64 %217
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.4, i8 0, i64 %213, i1 false)
  %218 = add nuw nsw i64 %210, 88000
  %scevgep424.5 = getelementptr i8, i8* %call.i55, i64 %218
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.5, i8 0, i64 %213, i1 false)
  %219 = add nuw nsw i64 %210, 105600
  %scevgep424.6 = getelementptr i8, i8* %call.i55, i64 %219
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.6, i8 0, i64 %213, i1 false)
  %220 = add nuw nsw i64 %210, 123200
  %scevgep424.7 = getelementptr i8, i8* %call.i55, i64 %220
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.7, i8 0, i64 %213, i1 false)
  %221 = add nuw nsw i64 %210, 140800
  %scevgep424.8 = getelementptr i8, i8* %call.i55, i64 %221
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.8, i8 0, i64 %213, i1 false)
  %222 = add nuw nsw i64 %210, 158400
  %scevgep424.9 = getelementptr i8, i8* %call.i55, i64 %222
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.9, i8 0, i64 %213, i1 false)
  %223 = add nuw nsw i64 %210, 176000
  %scevgep424.10 = getelementptr i8, i8* %call.i55, i64 %223
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.10, i8 0, i64 %213, i1 false)
  %224 = add nuw nsw i64 %210, 193600
  %scevgep424.11 = getelementptr i8, i8* %call.i55, i64 %224
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.11, i8 0, i64 %213, i1 false)
  %225 = add nuw nsw i64 %210, 211200
  %scevgep424.12 = getelementptr i8, i8* %call.i55, i64 %225
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.12, i8 0, i64 %213, i1 false)
  %226 = add nuw nsw i64 %210, 228800
  %scevgep424.13 = getelementptr i8, i8* %call.i55, i64 %226
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.13, i8 0, i64 %213, i1 false)
  %227 = add nuw nsw i64 %210, 246400
  %scevgep424.14 = getelementptr i8, i8* %call.i55, i64 %227
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.14, i8 0, i64 %213, i1 false)
  %228 = add nuw nsw i64 %210, 264000
  %scevgep424.15 = getelementptr i8, i8* %call.i55, i64 %228
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.15, i8 0, i64 %213, i1 false)
  %229 = add nuw nsw i64 %210, 281600
  %scevgep424.16 = getelementptr i8, i8* %call.i55, i64 %229
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.16, i8 0, i64 %213, i1 false)
  %230 = add nuw nsw i64 %210, 299200
  %scevgep424.17 = getelementptr i8, i8* %call.i55, i64 %230
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.17, i8 0, i64 %213, i1 false)
  %231 = add nuw nsw i64 %210, 316800
  %scevgep424.18 = getelementptr i8, i8* %call.i55, i64 %231
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.18, i8 0, i64 %213, i1 false)
  %232 = add nuw nsw i64 %210, 334400
  %scevgep424.19 = getelementptr i8, i8* %call.i55, i64 %232
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.19, i8 0, i64 %213, i1 false)
  %233 = add nuw nsw i64 %210, 352000
  %scevgep424.20 = getelementptr i8, i8* %call.i55, i64 %233
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.20, i8 0, i64 %213, i1 false)
  %234 = add nuw nsw i64 %210, 369600
  %scevgep424.21 = getelementptr i8, i8* %call.i55, i64 %234
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.21, i8 0, i64 %213, i1 false)
  %235 = add nuw nsw i64 %210, 387200
  %scevgep424.22 = getelementptr i8, i8* %call.i55, i64 %235
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.22, i8 0, i64 %213, i1 false)
  %236 = add nuw nsw i64 %210, 404800
  %scevgep424.23 = getelementptr i8, i8* %call.i55, i64 %236
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.23, i8 0, i64 %213, i1 false)
  %237 = add nuw nsw i64 %210, 422400
  %scevgep424.24 = getelementptr i8, i8* %call.i55, i64 %237
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.24, i8 0, i64 %213, i1 false)
  %238 = add nuw nsw i64 %210, 440000
  %scevgep424.25 = getelementptr i8, i8* %call.i55, i64 %238
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.25, i8 0, i64 %213, i1 false)
  %239 = add nuw nsw i64 %210, 457600
  %scevgep424.26 = getelementptr i8, i8* %call.i55, i64 %239
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.26, i8 0, i64 %213, i1 false)
  %240 = add nuw nsw i64 %210, 475200
  %scevgep424.27 = getelementptr i8, i8* %call.i55, i64 %240
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.27, i8 0, i64 %213, i1 false)
  %241 = add nuw nsw i64 %210, 492800
  %scevgep424.28 = getelementptr i8, i8* %call.i55, i64 %241
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.28, i8 0, i64 %213, i1 false)
  %242 = add nuw nsw i64 %210, 510400
  %scevgep424.29 = getelementptr i8, i8* %call.i55, i64 %242
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.29, i8 0, i64 %213, i1 false)
  %243 = add nuw nsw i64 %210, 528000
  %scevgep424.30 = getelementptr i8, i8* %call.i55, i64 %243
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.30, i8 0, i64 %213, i1 false)
  %244 = add nuw nsw i64 %210, 545600
  %scevgep424.31 = getelementptr i8, i8* %call.i55, i64 %244
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep424.31, i8 0, i64 %213, i1 false)
  %polly.indvar_next305 = add nuw nsw i64 %polly.indvar304, 1
  %exitcond427.not = icmp eq i64 %polly.indvar_next305, 69
  br i1 %exitcond427.not, label %polly.loop_exit303, label %polly.loop_preheader308

polly.loop_exit328:                               ; preds = %polly.loop_exit334
  %polly.indvar_next324 = add nuw nsw i64 %polly.indvar323, 1
  %exitcond440.not = icmp eq i64 %polly.indvar_next324, 50
  br i1 %exitcond440.not, label %kernel_3mm.exit, label %polly.loop_preheader327

polly.loop_exit334:                               ; preds = %polly.loop_exit340
  %polly.indvar_next330 = add nuw nsw i64 %polly.indvar329, 1
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, -32
  %exitcond439.not = icmp eq i64 %polly.indvar_next330, 69
  br i1 %exitcond439.not, label %polly.loop_exit328, label %polly.loop_preheader333

polly.loop_preheader327:                          ; preds = %polly.loop_preheader327.preheader, %polly.loop_exit328
  %polly.indvar323 = phi i64 [ %polly.indvar_next324, %polly.loop_exit328 ], [ 0, %polly.loop_preheader327.preheader ]
  %245 = shl nsw i64 %polly.indvar323, 5
  br label %polly.loop_preheader333

polly.loop_exit340:                               ; preds = %polly.loop_exit346
  %polly.indvar_next336 = add nuw nsw i64 %polly.indvar335, 1
  %exitcond438.not = icmp eq i64 %polly.indvar_next336, 57
  br i1 %exitcond438.not, label %polly.loop_exit334, label %polly.loop_preheader339

polly.loop_preheader333:                          ; preds = %polly.loop_preheader327, %polly.loop_exit334
  %indvars.iv433 = phi i64 [ 0, %polly.loop_preheader327 ], [ %indvars.iv.next434, %polly.loop_exit334 ]
  %polly.indvar329 = phi i64 [ 0, %polly.loop_preheader327 ], [ %polly.indvar_next330, %polly.loop_exit334 ]
  %smin435 = call i64 @llvm.smin.i64(i64 %indvars.iv433, i64 -2168)
  %246 = shl nsw i64 %polly.indvar329, 5
  %247 = add nsw i64 %smin435, 2199
  br label %polly.loop_preheader339

polly.loop_exit346:                               ; preds = %polly.loop_exit352
  %polly.indvar_next342 = add nuw nsw i64 %polly.indvar341, 1
  %exitcond437.not = icmp eq i64 %polly.indvar_next342, 32
  br i1 %exitcond437.not, label %polly.loop_exit340, label %polly.loop_preheader345

polly.loop_preheader339:                          ; preds = %polly.loop_preheader333, %polly.loop_exit340
  %polly.indvar335 = phi i64 [ 0, %polly.loop_preheader333 ], [ %polly.indvar_next336, %polly.loop_exit340 ]
  %248 = mul nsw i64 %polly.indvar335, -32
  %smin453 = call i64 @llvm.smin.i64(i64 %248, i64 -1768)
  %249 = add nsw i64 %smin453, 1800
  %250 = shl nsw i64 %polly.indvar335, 5
  br label %polly.loop_preheader345

polly.loop_exit352:                               ; preds = %polly.stmt.for.body75.i
  store double %p_add89.i.1, double* %polly.access.call.i55359, align 8, !alias.scope !35, !noalias !36
  %polly.indvar_next348 = add nuw nsw i64 %polly.indvar347, 1
  %exitcond436.not = icmp eq i64 %polly.indvar347, %247
  br i1 %exitcond436.not, label %polly.loop_exit346, label %polly.loop_preheader351

polly.loop_preheader345:                          ; preds = %polly.loop_preheader339, %polly.loop_exit346
  %polly.indvar341 = phi i64 [ 0, %polly.loop_preheader339 ], [ %polly.indvar_next342, %polly.loop_exit346 ]
  %251 = add nuw nsw i64 %polly.indvar341, %245
  %polly.access.mul.call.i55357 = mul nuw nsw i64 %251, 2200
  %252 = mul nuw nsw i64 %251, 14400
  br label %polly.loop_preheader351

polly.stmt.for.body75.i:                          ; preds = %polly.stmt.for.body75.i, %polly.loop_preheader351
  %p_add89.i373 = phi double [ %polly.access.call.i55359.promoted, %polly.loop_preheader351 ], [ %p_add89.i.1, %polly.stmt.for.body75.i ]
  %polly.indvar353 = phi i64 [ 0, %polly.loop_preheader351 ], [ %polly.indvar_next354.1, %polly.stmt.for.body75.i ]
  %niter457 = phi i64 [ %249, %polly.loop_preheader351 ], [ %niter457.nsub.1, %polly.stmt.for.body75.i ]
  %253 = add nuw nsw i64 %polly.indvar353, %250
  %254 = shl i64 %253, 3
  %255 = add nuw nsw i64 %254, %252
  %scevgep360 = getelementptr i8, i8* %call.i, i64 %255
  %scevgep360361 = bitcast i8* %scevgep360 to double*
  %_p_scalar_362 = load double, double* %scevgep360361, align 8, !alias.scope !23, !noalias !32
  %256 = mul nuw nsw i64 %253, 17600
  %257 = add nuw nsw i64 %256, %264
  %scevgep363 = getelementptr i8, i8* %call.i52, i64 %257
  %scevgep363364 = bitcast i8* %scevgep363 to double*
  %_p_scalar_365 = load double, double* %scevgep363364, align 8, !alias.scope !20, !noalias !22
  %p_mul84.i = fmul double %_p_scalar_362, %_p_scalar_365
  %p_add89.i = fadd double %p_add89.i373, %p_mul84.i
  %polly.indvar_next354 = or i64 %polly.indvar353, 1
  %258 = add nuw nsw i64 %polly.indvar_next354, %250
  %259 = shl i64 %258, 3
  %260 = add nuw nsw i64 %259, %252
  %scevgep360.1 = getelementptr i8, i8* %call.i, i64 %260
  %scevgep360361.1 = bitcast i8* %scevgep360.1 to double*
  %_p_scalar_362.1 = load double, double* %scevgep360361.1, align 8, !alias.scope !23, !noalias !32
  %261 = mul nuw nsw i64 %258, 17600
  %262 = add nuw nsw i64 %261, %264
  %scevgep363.1 = getelementptr i8, i8* %call.i52, i64 %262
  %scevgep363364.1 = bitcast i8* %scevgep363.1 to double*
  %_p_scalar_365.1 = load double, double* %scevgep363364.1, align 8, !alias.scope !20, !noalias !22
  %p_mul84.i.1 = fmul double %_p_scalar_362.1, %_p_scalar_365.1
  %p_add89.i.1 = fadd double %p_add89.i, %p_mul84.i.1
  %polly.indvar_next354.1 = add nuw nsw i64 %polly.indvar353, 2
  %niter457.nsub.1 = add i64 %niter457, -2
  %niter457.ncmp.1 = icmp eq i64 %niter457.nsub.1, 0
  br i1 %niter457.ncmp.1, label %polly.loop_exit352, label %polly.stmt.for.body75.i

polly.loop_preheader351:                          ; preds = %polly.loop_preheader345, %polly.loop_exit352
  %polly.indvar347 = phi i64 [ 0, %polly.loop_preheader345 ], [ %polly.indvar_next348, %polly.loop_exit352 ]
  %263 = add nuw nsw i64 %polly.indvar347, %246
  %polly.access.add.call.i55358 = add nuw nsw i64 %263, %polly.access.mul.call.i55357
  %polly.access.call.i55359 = getelementptr double, double* %polly.access.cast.call.i55.le.le.le.le, i64 %polly.access.add.call.i55358
  %264 = shl i64 %263, 3
  %polly.access.call.i55359.promoted = load double, double* %polly.access.call.i55359, align 8, !alias.scope !35, !noalias !36
  br label %polly.stmt.for.body75.i
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
!19 = !{!20}
!20 = distinct !{!20, !21, !"polly.alias.scope.MemRef5"}
!21 = distinct !{!21, !"polly.alias.scope.domain"}
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = distinct !{!23, !21, !"polly.alias.scope.MemRef0"}
!24 = distinct !{!24, !21, !"polly.alias.scope.MemRef2"}
!25 = distinct !{!25, !21, !"polly.alias.scope.MemRef3"}
!26 = distinct !{!26, !21, !"polly.alias.scope.MemRef7"}
!27 = distinct !{!27, !21, !"polly.alias.scope.MemRef8"}
!28 = distinct !{!28, !21, !"polly.alias.scope.MemRef11"}
!29 = !{!23, !24, !25, !20, !27, !28}
!30 = !{!23, !24, !25, !20, !26, !28}
!31 = !{!23}
!32 = !{!24, !25, !20, !26, !27, !28}
!33 = !{!23, !25, !20, !26, !27, !28}
!34 = !{!23, !24, !20, !26, !27, !28}
!35 = !{!28}
!36 = !{!23, !24, !25, !20, !26, !27}
