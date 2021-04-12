; ModuleID = 'gemver.c'
source_filename = "gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #7
  %call.i59 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i60 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i61 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i62 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i63 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i64 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i65 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i66 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay9 = bitcast i8* %call.i59 to double*
  %arraydecay10 = bitcast i8* %call.i60 to double*
  %arraydecay11 = bitcast i8* %call.i61 to double*
  %arraydecay12 = bitcast i8* %call.i62 to double*
  %arraydecay13 = bitcast i8* %call.i63 to double*
  %arraydecay15 = bitcast i8* %call.i65 to double*
  %arraydecay16 = bitcast i8* %call.i66 to double*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i64, i8 0, i64 32000, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i63, i8 0, i64 32000, i1 false)
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body38.i
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i, 4000
  br i1 %exitcond8.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !2

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry
  %indvars.iv6.i = phi i64 [ 0, %entry ], [ %indvars.iv.next7.i, %for.cond.loopexit.i ]
  %0 = trunc i64 %indvars.iv6.i to i32
  %conv2.i = sitofp i32 %0 to double
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i
  store double %conv2.i, double* %arrayidx.i, align 8, !tbaa !4
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %1 = trunc i64 %indvars.iv.next7.i to i32
  %conv3.i = sitofp i32 %1 to double
  %div.i = fdiv double %conv3.i, 4.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv6.i
  store double %div4.i, double* %arrayidx6.i, align 8, !tbaa !4
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds double, double* %arraydecay10, i64 %indvars.iv6.i
  store double %div10.i, double* %arrayidx12.i, align 8, !tbaa !4
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds double, double* %arraydecay12, i64 %indvars.iv6.i
  store double %div16.i, double* %arrayidx18.i, align 8, !tbaa !4
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv6.i
  store double %div22.i, double* %arrayidx24.i, align 8, !tbaa !4
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv6.i
  store double %div28.i, double* %arrayidx30.i, align 8, !tbaa !4
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body38.i ]
  %2 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv6.i
  %3 = trunc i64 %2 to i32
  %rem.i = urem i32 %3, 4000
  %conv39.i = sitofp i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 4.000000e+03
  %arrayidx45.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i, i64 %indvars.iv.i
  store double %div41.i, double* %arrayidx45.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4000
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body38.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.cond.loopexit.i
  tail call void (...) @polybench_timer_start() #7
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc20.i, %init_array.exit
  %indvars.iv8.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next9.i, %for.inc20.i ]
  %arrayidx7.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv8.i
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv8.i
  %4 = load double, double* %arrayidx7.i, align 8, !tbaa !4
  %5 = load double, double* %arrayidx11.i, align 8, !tbaa !4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %4, i32 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %5, i32 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <2 x double> poison, double %5, i32 0
  %broadcast.splat91 = shufflevector <2 x double> %broadcast.splatinsert90, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.cond1.preheader.i
  %index = phi i64 [ 0, %for.cond1.preheader.i ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %index
  %7 = bitcast double* %6 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %7, align 8, !tbaa !4
  %8 = getelementptr inbounds double, double* %6, i64 2
  %9 = bitcast double* %8 to <2 x double>*
  %wide.load81 = load <2 x double>, <2 x double>* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds double, double* %arraydecay10, i64 %index
  %11 = bitcast double* %10 to <2 x double>*
  %wide.load82 = load <2 x double>, <2 x double>* %11, align 8, !tbaa !4
  %12 = getelementptr inbounds double, double* %10, i64 2
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load83 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !4
  %14 = fmul <2 x double> %broadcast.splat, %wide.load82
  %15 = fmul <2 x double> %broadcast.splat85, %wide.load83
  %16 = fadd <2 x double> %wide.load, %14
  %17 = fadd <2 x double> %wide.load81, %15
  %18 = getelementptr inbounds double, double* %arraydecay12, i64 %index
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load86 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !4
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load87 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !4
  %22 = fmul <2 x double> %broadcast.splat89, %wide.load86
  %23 = fmul <2 x double> %broadcast.splat91, %wide.load87
  %24 = fadd <2 x double> %16, %22
  %25 = fadd <2 x double> %17, %23
  %26 = bitcast double* %6 to <2 x double>*
  store <2 x double> %24, <2 x double>* %26, align 8, !tbaa !4
  %27 = bitcast double* %8 to <2 x double>*
  store <2 x double> %25, <2 x double>* %27, align 8, !tbaa !4
  %index.next = add i64 %index, 4
  %28 = icmp eq i64 %index.next, 4000
  br i1 %28, label %for.inc20.i, label %vector.body, !llvm.loop !9

for.inc20.i:                                      ; preds = %vector.body
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond10.not.i, label %for.cond26.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !11

for.cond26.preheader.i.preheader:                 ; preds = %for.inc20.i
  %arraydecay14 = bitcast i8* %call.i64 to double*
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.inc45.i.for.cond26.preheader.i_crit_edge, %for.cond26.preheader.i.preheader
  %.pre.i = phi double [ %.pre.i.pre, %for.inc45.i.for.cond26.preheader.i_crit_edge ], [ 0.000000e+00, %for.cond26.preheader.i.preheader ]
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc45.i.for.cond26.preheader.i_crit_edge ], [ 0, %for.cond26.preheader.i.preheader ]
  %arrayidx30.i70 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv14.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i, %for.cond26.preheader.i
  %29 = phi double [ %.pre.i, %for.cond26.preheader.i ], [ %add39.i.1, %for.body28.i ]
  %indvars.iv11.i = phi i64 [ 0, %for.cond26.preheader.i ], [ %indvars.iv.next12.i.1, %for.body28.i ]
  %arrayidx34.i71 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %indvars.iv14.i
  %30 = load double, double* %arrayidx34.i71, align 8, !tbaa !4
  %mul35.i = fmul double %30, 1.200000e+00
  %arrayidx37.i = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv11.i
  %31 = load double, double* %arrayidx37.i, align 8, !tbaa !4
  %mul38.i = fmul double %mul35.i, %31
  %add39.i = fadd double %29, %mul38.i
  %indvars.iv.next12.i = or i64 %indvars.iv11.i, 1
  %arrayidx34.i71.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next12.i, i64 %indvars.iv14.i
  %32 = load double, double* %arrayidx34.i71.1, align 8, !tbaa !4
  %mul35.i.1 = fmul double %32, 1.200000e+00
  %arrayidx37.i.1 = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv.next12.i
  %33 = load double, double* %arrayidx37.i.1, align 8, !tbaa !4
  %mul38.i.1 = fmul double %mul35.i.1, %33
  %add39.i.1 = fadd double %add39.i, %mul38.i.1
  %indvars.iv.next12.i.1 = add nuw nsw i64 %indvars.iv11.i, 2
  %exitcond13.not.i.1 = icmp eq i64 %indvars.iv.next12.i.1, 4000
  br i1 %exitcond13.not.i.1, label %for.inc45.i, label %for.body28.i, !llvm.loop !12

for.inc45.i:                                      ; preds = %for.body28.i
  store double %add39.i.1, double* %arrayidx30.i70, align 8, !tbaa !4
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next15.i, 4000
  br i1 %exitcond16.not.i, label %vector.body94, label %for.inc45.i.for.cond26.preheader.i_crit_edge, !llvm.loop !13

vector.body94:                                    ; preds = %for.inc45.i, %vector.body94
  %index96 = phi i64 [ %index.next97.1, %vector.body94 ], [ 0, %for.inc45.i ]
  %34 = getelementptr inbounds double, double* %arraydecay14, i64 %index96
  %35 = bitcast double* %34 to <2 x double>*
  %wide.load100 = load <2 x double>, <2 x double>* %35, align 8, !tbaa !4
  %36 = getelementptr inbounds double, double* %34, i64 2
  %37 = bitcast double* %36 to <2 x double>*
  %wide.load101 = load <2 x double>, <2 x double>* %37, align 8, !tbaa !4
  %38 = getelementptr inbounds double, double* %arraydecay16, i64 %index96
  %39 = bitcast double* %38 to <2 x double>*
  %wide.load102 = load <2 x double>, <2 x double>* %39, align 8, !tbaa !4
  %40 = getelementptr inbounds double, double* %38, i64 2
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load103 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !4
  %42 = fadd <2 x double> %wide.load100, %wide.load102
  %43 = fadd <2 x double> %wide.load101, %wide.load103
  %44 = bitcast double* %34 to <2 x double>*
  store <2 x double> %42, <2 x double>* %44, align 8, !tbaa !4
  %45 = bitcast double* %36 to <2 x double>*
  store <2 x double> %43, <2 x double>* %45, align 8, !tbaa !4
  %index.next97 = or i64 %index96, 4
  %46 = getelementptr inbounds double, double* %arraydecay14, i64 %index.next97
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load100.1 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !4
  %48 = getelementptr inbounds double, double* %46, i64 2
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load101.1 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !4
  %50 = getelementptr inbounds double, double* %arraydecay16, i64 %index.next97
  %51 = bitcast double* %50 to <2 x double>*
  %wide.load102.1 = load <2 x double>, <2 x double>* %51, align 8, !tbaa !4
  %52 = getelementptr inbounds double, double* %50, i64 2
  %53 = bitcast double* %52 to <2 x double>*
  %wide.load103.1 = load <2 x double>, <2 x double>* %53, align 8, !tbaa !4
  %54 = fadd <2 x double> %wide.load100.1, %wide.load102.1
  %55 = fadd <2 x double> %wide.load101.1, %wide.load103.1
  %56 = bitcast double* %46 to <2 x double>*
  store <2 x double> %54, <2 x double>* %56, align 8, !tbaa !4
  %57 = bitcast double* %48 to <2 x double>*
  store <2 x double> %55, <2 x double>* %57, align 8, !tbaa !4
  %index.next97.1 = add nuw nsw i64 %index96, 8
  %58 = icmp eq i64 %index.next97.1, 4000
  br i1 %58, label %for.cond64.preheader.i, label %vector.body94, !llvm.loop !14

for.inc45.i.for.cond26.preheader.i_crit_edge:     ; preds = %for.inc45.i
  %arrayidx30.i70.phi.trans.insert = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next15.i
  %.pre.i.pre = load double, double* %arrayidx30.i70.phi.trans.insert, align 8, !tbaa !4
  br label %for.cond26.preheader.i

for.cond64.preheader.i:                           ; preds = %vector.body94, %for.inc83.i.for.cond64.preheader.i_crit_edge
  %.pre26.i = phi double [ %.pre26.i.pre, %for.inc83.i.for.cond64.preheader.i_crit_edge ], [ 0.000000e+00, %vector.body94 ]
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %for.inc83.i.for.cond64.preheader.i_crit_edge ], [ 0, %vector.body94 ]
  %arrayidx68.i = getelementptr inbounds double, double* %arraydecay13, i64 %indvars.iv23.i
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body66.i, %for.cond64.preheader.i
  %59 = phi double [ %.pre26.i, %for.cond64.preheader.i ], [ %add77.i.1, %for.body66.i ]
  %indvars.iv20.i = phi i64 [ 0, %for.cond64.preheader.i ], [ %indvars.iv.next21.i.1, %for.body66.i ]
  %arrayidx72.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv23.i, i64 %indvars.iv20.i
  %60 = load double, double* %arrayidx72.i, align 8, !tbaa !4
  %mul73.i = fmul double %60, 1.500000e+00
  %arrayidx75.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv20.i
  %61 = load double, double* %arrayidx75.i, align 8, !tbaa !4
  %mul76.i = fmul double %mul73.i, %61
  %add77.i = fadd double %59, %mul76.i
  %indvars.iv.next21.i = or i64 %indvars.iv20.i, 1
  %arrayidx72.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv23.i, i64 %indvars.iv.next21.i
  %62 = load double, double* %arrayidx72.i.1, align 8, !tbaa !4
  %mul73.i.1 = fmul double %62, 1.500000e+00
  %arrayidx75.i.1 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next21.i
  %63 = load double, double* %arrayidx75.i.1, align 8, !tbaa !4
  %mul76.i.1 = fmul double %mul73.i.1, %63
  %add77.i.1 = fadd double %add77.i, %mul76.i.1
  %indvars.iv.next21.i.1 = add nuw nsw i64 %indvars.iv20.i, 2
  %exitcond22.not.i.1 = icmp eq i64 %indvars.iv.next21.i.1, 4000
  br i1 %exitcond22.not.i.1, label %for.inc83.i, label %for.body66.i, !llvm.loop !15

for.inc83.i:                                      ; preds = %for.body66.i
  store double %add77.i.1, double* %arrayidx68.i, align 8, !tbaa !4
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next24.i, 4000
  br i1 %exitcond25.not.i, label %kernel_gemver.exit, label %for.inc83.i.for.cond64.preheader.i_crit_edge, !llvm.loop !16

for.inc83.i.for.cond64.preheader.i_crit_edge:     ; preds = %for.inc83.i
  %arrayidx68.i.phi.trans.insert = getelementptr inbounds double, double* %arraydecay13, i64 %indvars.iv.next24.i
  %.pre26.i.pre = load double, double* %arrayidx68.i.phi.trans.insert, align 8, !tbaa !4
  br label %for.cond64.preheader.i

kernel_gemver.exit:                               ; preds = %for.inc83.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemver.exit
  %64 = load i8*, i8** %argv, align 8, !tbaa !17
  %strcmpload = load i8, i8* %64, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %66 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %65) #8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i73

for.body.i73:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i72 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i75, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i73
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %68) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i73
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %arrayidx.i74 = getelementptr inbounds double, double* %arraydecay13, i64 %indvars.iv.i72
  %70 = load double, double* %arrayidx.i74, align 8, !tbaa !4
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %70) #8
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i72, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, 4000
  br i1 %exitcond.not.i76, label %print_array.exit, label %for.body.i73, !llvm.loop !19

print_array.exit:                                 ; preds = %if.end.i
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %73 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %72) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemver.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i59) #7
  tail call void @free(i8* %call.i60) #7
  tail call void @free(i8* %call.i61) #7
  tail call void @free(i8* %call.i62) #7
  tail call void @free(i8* nonnull %call.i63) #7
  tail call void @free(i8* %call.i64) #7
  tail call void @free(i8* %call.i65) #7
  tail call void @free(i8* %call.i66) #7
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3, !10}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = distinct !{!19, !3}
