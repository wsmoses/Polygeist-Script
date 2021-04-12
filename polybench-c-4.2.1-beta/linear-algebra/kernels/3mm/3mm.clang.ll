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
entry:
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #6
  %call.i50 = tail call noalias dereferenceable_or_null(25600000) i8* @malloc(i64 25600000) #6
  %call.i51 = tail call noalias dereferenceable_or_null(28800000) i8* @malloc(i64 28800000) #6
  %call.i52 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #6
  %call.i53 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #6
  %call.i54 = tail call noalias dereferenceable_or_null(42240000) i8* @malloc(i64 42240000) #6
  %call.i55 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #6
  %arraydecay = bitcast i8* %call.i50 to [2000 x double]*
  %arraydecay8 = bitcast i8* %call.i53 to [2400 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc8.i, %entry
  %indvars.iv11.i = phi i64 [ 0, %entry ], [ %indvars.iv.next12.i, %for.inc8.i ]
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
  br i1 %exitcond21.not.i, label %for.cond41.preheader.i, label %for.cond15.preheader.i, !llvm.loop !10

for.cond41.preheader.i:                           ; preds = %for.inc34.i, %for.inc59.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.inc59.i ], [ 0, %for.inc34.i ]
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
  br i1 %exitcond38.not.i, label %init_array.exit, label %for.cond66.preheader.i, !llvm.loop !14

init_array.exit:                                  ; preds = %for.inc85.i
  tail call void (...) @polybench_timer_start() #6
  %arraydecay10 = bitcast i8* %call.i to [1800 x double]*
  %arraydecay13 = bitcast i8* %call.i52 to [2200 x double]*
  br label %for.cond1.preheader.i57

for.cond1.preheader.i57:                          ; preds = %for.inc24.i, %init_array.exit
  %indvars.iv14.i56 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next15.i65, %for.inc24.i ]
  br label %for.body3.i59

for.body3.i59:                                    ; preds = %for.inc21.i, %for.cond1.preheader.i57
  %indvars.iv11.i58 = phi i64 [ 0, %for.cond1.preheader.i57 ], [ %indvars.iv.next12.i63, %for.inc21.i ]
  %arrayidx5.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv14.i56, i64 %indvars.iv11.i58
  store double 0.000000e+00, double* %arrayidx5.i, align 8, !tbaa !2
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i59
  %13 = phi double [ 0.000000e+00, %for.body3.i59 ], [ %add.i.1, %for.body8.i ]
  %indvars.iv.i60 = phi i64 [ 0, %for.body3.i59 ], [ %indvars.iv.next.i61.1, %for.body8.i ]
  %arrayidx12.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv14.i56, i64 %indvars.iv.i60
  %14 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %arrayidx16.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay7, i64 %indvars.iv.i60, i64 %indvars.iv11.i58
  %15 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul.i = fmul double %14, %15
  %add.i = fadd double %13, %mul.i
  %indvars.iv.next.i61 = or i64 %indvars.iv.i60, 1
  %arrayidx12.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv14.i56, i64 %indvars.iv.next.i61
  %16 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %arrayidx16.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay7, i64 %indvars.iv.next.i61, i64 %indvars.iv11.i58
  %17 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %16, %17
  %add.i.1 = fadd double %add.i, %mul.i.1
  %indvars.iv.next.i61.1 = add nuw nsw i64 %indvars.iv.i60, 2
  %exitcond.not.i62.1 = icmp eq i64 %indvars.iv.next.i61.1, 2000
  br i1 %exitcond.not.i62.1, label %for.inc21.i, label %for.body8.i, !llvm.loop !15

for.inc21.i:                                      ; preds = %for.body8.i
  store double %add.i.1, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next12.i63 = add nuw nsw i64 %indvars.iv11.i58, 1
  %exitcond13.not.i64 = icmp eq i64 %indvars.iv.next12.i63, 1800
  br i1 %exitcond13.not.i64, label %for.inc24.i, label %for.body3.i59, !llvm.loop !16

for.inc24.i:                                      ; preds = %for.inc21.i
  %indvars.iv.next15.i65 = add nuw nsw i64 %indvars.iv14.i56, 1
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next15.i65, 1600
  br i1 %exitcond16.not.i, label %for.cond30.preheader.i, label %for.cond1.preheader.i57, !llvm.loop !17

for.cond30.preheader.i:                           ; preds = %for.inc24.i, %for.inc60.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc60.i ], [ 0, %for.inc24.i ]
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc57.i, %for.cond30.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %for.cond30.preheader.i ], [ %indvars.iv.next22.i, %for.inc57.i ]
  %arrayidx36.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv24.i, i64 %indvars.iv21.i
  store double 0.000000e+00, double* %arrayidx36.i, align 8, !tbaa !2
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i, %for.body32.i
  %18 = phi double [ 0.000000e+00, %for.body32.i ], [ %add53.i.2, %for.body39.i ]
  %indvars.iv17.i = phi i64 [ 0, %for.body32.i ], [ %indvars.iv.next18.i.2, %for.body39.i ]
  %arrayidx43.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay8, i64 %indvars.iv24.i, i64 %indvars.iv17.i
  %19 = load double, double* %arrayidx43.i, align 8, !tbaa !2
  %arrayidx47.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv17.i, i64 %indvars.iv21.i
  %20 = load double, double* %arrayidx47.i, align 8, !tbaa !2
  %mul48.i = fmul double %19, %20
  %add53.i = fadd double %18, %mul48.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  %arrayidx43.i.1 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay8, i64 %indvars.iv24.i, i64 %indvars.iv.next18.i
  %21 = load double, double* %arrayidx43.i.1, align 8, !tbaa !2
  %arrayidx47.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv.next18.i, i64 %indvars.iv21.i
  %22 = load double, double* %arrayidx47.i.1, align 8, !tbaa !2
  %mul48.i.1 = fmul double %21, %22
  %add53.i.1 = fadd double %add53.i, %mul48.i.1
  %indvars.iv.next18.i.1 = add nuw nsw i64 %indvars.iv17.i, 2
  %arrayidx43.i.2 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay8, i64 %indvars.iv24.i, i64 %indvars.iv.next18.i.1
  %23 = load double, double* %arrayidx43.i.2, align 8, !tbaa !2
  %arrayidx47.i.2 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv.next18.i.1, i64 %indvars.iv21.i
  %24 = load double, double* %arrayidx47.i.2, align 8, !tbaa !2
  %mul48.i.2 = fmul double %23, %24
  %add53.i.2 = fadd double %add53.i.1, %mul48.i.2
  %indvars.iv.next18.i.2 = add nuw nsw i64 %indvars.iv17.i, 3
  %exitcond19.not.i.2 = icmp eq i64 %indvars.iv.next18.i.2, 2400
  br i1 %exitcond19.not.i.2, label %for.inc57.i, label %for.body39.i, !llvm.loop !18

for.inc57.i:                                      ; preds = %for.body39.i
  store double %add53.i.2, double* %arrayidx36.i, align 8, !tbaa !2
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 2200
  br i1 %exitcond23.not.i, label %for.inc60.i, label %for.body32.i, !llvm.loop !19

for.inc60.i:                                      ; preds = %for.inc57.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i66 = icmp eq i64 %indvars.iv.next25.i, 1800
  br i1 %exitcond26.not.i66, label %for.cond66.preheader.i67.preheader, label %for.cond30.preheader.i, !llvm.loop !20

for.cond66.preheader.i67.preheader:               ; preds = %for.inc60.i
  %arraydecay16 = bitcast i8* %call.i55 to [2200 x double]*
  br label %for.cond66.preheader.i67

for.cond66.preheader.i67:                         ; preds = %for.cond66.preheader.i67.preheader, %for.inc96.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %for.inc96.i ], [ 0, %for.cond66.preheader.i67.preheader ]
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.inc93.i, %for.cond66.preheader.i67
  %indvars.iv31.i = phi i64 [ 0, %for.cond66.preheader.i67 ], [ %indvars.iv.next32.i, %for.inc93.i ]
  %arrayidx72.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay16, i64 %indvars.iv34.i, i64 %indvars.iv31.i
  store double 0.000000e+00, double* %arrayidx72.i, align 8, !tbaa !2
  br label %for.body75.i

for.body75.i:                                     ; preds = %for.body75.i, %for.body68.i
  %25 = phi double [ 0.000000e+00, %for.body68.i ], [ %add89.i.2, %for.body75.i ]
  %indvars.iv27.i68 = phi i64 [ 0, %for.body68.i ], [ %indvars.iv.next28.i69.2, %for.body75.i ]
  %arrayidx79.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv34.i, i64 %indvars.iv27.i68
  %26 = load double, double* %arrayidx79.i, align 8, !tbaa !2
  %arrayidx83.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv27.i68, i64 %indvars.iv31.i
  %27 = load double, double* %arrayidx83.i, align 8, !tbaa !2
  %mul84.i = fmul double %26, %27
  %add89.i = fadd double %25, %mul84.i
  %indvars.iv.next28.i69 = add nuw nsw i64 %indvars.iv27.i68, 1
  %arrayidx79.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv34.i, i64 %indvars.iv.next28.i69
  %28 = load double, double* %arrayidx79.i.1, align 8, !tbaa !2
  %arrayidx83.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv.next28.i69, i64 %indvars.iv31.i
  %29 = load double, double* %arrayidx83.i.1, align 8, !tbaa !2
  %mul84.i.1 = fmul double %28, %29
  %add89.i.1 = fadd double %add89.i, %mul84.i.1
  %indvars.iv.next28.i69.1 = add nuw nsw i64 %indvars.iv27.i68, 2
  %arrayidx79.i.2 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv34.i, i64 %indvars.iv.next28.i69.1
  %30 = load double, double* %arrayidx79.i.2, align 8, !tbaa !2
  %arrayidx83.i.2 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv.next28.i69.1, i64 %indvars.iv31.i
  %31 = load double, double* %arrayidx83.i.2, align 8, !tbaa !2
  %mul84.i.2 = fmul double %30, %31
  %add89.i.2 = fadd double %add89.i.1, %mul84.i.2
  %indvars.iv.next28.i69.2 = add nuw nsw i64 %indvars.iv27.i68, 3
  %exitcond29.not.i70.2 = icmp eq i64 %indvars.iv.next28.i69.2, 1800
  br i1 %exitcond29.not.i70.2, label %for.inc93.i, label %for.body75.i, !llvm.loop !21

for.inc93.i:                                      ; preds = %for.body75.i
  store double %add89.i.2, double* %arrayidx72.i, align 8, !tbaa !2
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next32.i, 2200
  br i1 %exitcond33.not.i, label %for.inc96.i, label %for.body68.i, !llvm.loop !22

for.inc96.i:                                      ; preds = %for.inc93.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next35.i, 1600
  br i1 %exitcond36.not.i, label %kernel_3mm.exit, label %for.cond66.preheader.i67, !llvm.loop !23

kernel_3mm.exit:                                  ; preds = %for.inc96.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_3mm.exit
  %32 = load i8*, i8** %argv, align 8, !tbaa !24
  %strcmpload = load i8, i8* %32, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %33) #7
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %36 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i71 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i73, %if.end.i ]
  %37 = add nuw nsw i64 %indvars.iv.i71, %36
  %38 = trunc i64 %37 to i32
  %rem.i72 = urem i32 %38, 20
  %cmp5.i = icmp eq i32 %rem.i72, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %39) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %arrayidx8.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay16, i64 %indvars.iv4.i, i64 %indvars.iv.i71
  %41 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %41) #7
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, 2200
  br i1 %exitcond.not.i74, label %for.inc10.i, label %for.body4.i, !llvm.loop !26

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !27

print_array.exit:                                 ; preds = %for.inc10.i
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %43) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_3mm.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* %call.i50) #6
  tail call void @free(i8* %call.i51) #6
  tail call void @free(i8* %call.i52) #6
  tail call void @free(i8* %call.i53) #6
  tail call void @free(i8* %call.i54) #6
  tail call void @free(i8* nonnull %call.i55) #6
  ret i32 0
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !4, i64 0}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
