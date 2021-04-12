; ModuleID = '2mm.plutopar.c'
source_filename = "2mm.plutopar.c"
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
entry:
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #7
  %call.i40 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #7
  %call.i41 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #7
  %call.i42 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #7
  %call.i43 = tail call noalias dereferenceable_or_null(30720000) i8* @malloc(i64 30720000) #7
  %arraydecay = bitcast i8* %call.i40 to [2200 x double]*
  %arraydecay6 = bitcast i8* %call.i42 to [2400 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv11.i = phi i64 [ 0, %entry ], [ %indvars.iv.next12.i, %for.inc7.i ]
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
  br i1 %exitcond20.not.i, label %for.cond38.preheader.i, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i:                           ; preds = %for.inc31.i, %for.inc56.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.inc56.i ], [ 0, %for.inc31.i ]
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
  br i1 %exitcond37.not.i, label %init_array.exit, label %for.cond63.preheader.i, !llvm.loop !14

init_array.exit:                                  ; preds = %for.inc80.i
  tail call void (...) @polybench_timer_start() #7
  %arraydecay8 = bitcast i8* %call.i to [1800 x double]*
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.inc658.i, %init_array.exit
  %indvars.iv100.i = phi i64 [ 32, %init_array.exit ], [ %indvars.iv.next101.i, %for.inc658.i ]
  %indvars.iv.i44 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next.i46, %for.inc658.i ]
  %t2.015.i = phi i32 [ 0, %init_array.exit ], [ %inc659.i, %for.inc658.i ]
  br label %cond.end188.i

cond.end188.i:                                    ; preds = %for.inc527.i, %for.cond12.preheader.i
  %indvars.iv79.i = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next80.i, %for.inc527.i ]
  %t3.012.i = phi i32 [ 0, %for.cond12.preheader.i ], [ %inc528.i, %for.inc527.i ]
  %.not.i = icmp eq i32 %t3.012.i, 56
  br i1 %.not.i, label %for.cond224.preheader.i, label %cond.end345.i

for.cond224.preheader.i:                          ; preds = %cond.end188.i, %for.cond224.preheader.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.cond224.preheader.i ], [ %indvars.iv.i44, %cond.end188.i ]
  %arrayidx231.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1792
  %arrayidx236.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv70.i, i64 1792
  %12 = bitcast double* %arrayidx231.i to <2 x double>*
  %13 = load <2 x double>, <2 x double>* %12, align 8, !tbaa !2
  %14 = fmul <2 x double> %13, <double 1.200000e+00, double 1.200000e+00>
  %15 = bitcast double* %arrayidx231.i to <2 x double>*
  store <2 x double> %14, <2 x double>* %15, align 8, !tbaa !2
  %16 = bitcast double* %arrayidx236.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %16, align 8, !tbaa !2
  %arrayidx231.2.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1794
  %arrayidx236.2.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv70.i, i64 1794
  %17 = bitcast double* %arrayidx231.2.i to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 8, !tbaa !2
  %19 = fmul <2 x double> %18, <double 1.200000e+00, double 1.200000e+00>
  %20 = bitcast double* %arrayidx231.2.i to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 8, !tbaa !2
  %21 = bitcast double* %arrayidx236.2.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %21, align 8, !tbaa !2
  %arrayidx231.4.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1796
  %arrayidx236.4.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv70.i, i64 1796
  %22 = bitcast double* %arrayidx231.4.i to <2 x double>*
  %23 = load <2 x double>, <2 x double>* %22, align 8, !tbaa !2
  %24 = fmul <2 x double> %23, <double 1.200000e+00, double 1.200000e+00>
  %25 = bitcast double* %arrayidx231.4.i to <2 x double>*
  store <2 x double> %24, <2 x double>* %25, align 8, !tbaa !2
  %26 = bitcast double* %arrayidx236.4.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %26, align 8, !tbaa !2
  %arrayidx231.6.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1798
  %arrayidx236.6.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv70.i, i64 1798
  %27 = bitcast double* %arrayidx231.6.i to <2 x double>*
  %28 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !2
  %29 = fmul <2 x double> %28, <double 1.200000e+00, double 1.200000e+00>
  %30 = bitcast double* %arrayidx231.6.i to <2 x double>*
  store <2 x double> %29, <2 x double>* %30, align 8, !tbaa !2
  %31 = bitcast double* %arrayidx236.6.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %31, align 8, !tbaa !2
  %arrayidx257.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1800
  %32 = bitcast double* %arrayidx257.i to <2 x double>*
  %33 = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %34 = fmul <2 x double> %33, <double 1.200000e+00, double 1.200000e+00>
  %35 = bitcast double* %arrayidx257.i to <2 x double>*
  store <2 x double> %34, <2 x double>* %35, align 8, !tbaa !2
  %arrayidx257.2.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1802
  %36 = bitcast double* %arrayidx257.2.i to <2 x double>*
  %37 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2
  %38 = fmul <2 x double> %37, <double 1.200000e+00, double 1.200000e+00>
  %39 = bitcast double* %arrayidx257.2.i to <2 x double>*
  store <2 x double> %38, <2 x double>* %39, align 8, !tbaa !2
  %arrayidx257.4.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1804
  %40 = bitcast double* %arrayidx257.4.i to <2 x double>*
  %41 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !2
  %42 = fmul <2 x double> %41, <double 1.200000e+00, double 1.200000e+00>
  %43 = bitcast double* %arrayidx257.4.i to <2 x double>*
  store <2 x double> %42, <2 x double>* %43, align 8, !tbaa !2
  %arrayidx257.6.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1806
  %44 = bitcast double* %arrayidx257.6.i to <2 x double>*
  %45 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2
  %46 = fmul <2 x double> %45, <double 1.200000e+00, double 1.200000e+00>
  %47 = bitcast double* %arrayidx257.6.i to <2 x double>*
  store <2 x double> %46, <2 x double>* %47, align 8, !tbaa !2
  %arrayidx257.8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1808
  %48 = bitcast double* %arrayidx257.8.i to <2 x double>*
  %49 = load <2 x double>, <2 x double>* %48, align 8, !tbaa !2
  %50 = fmul <2 x double> %49, <double 1.200000e+00, double 1.200000e+00>
  %51 = bitcast double* %arrayidx257.8.i to <2 x double>*
  store <2 x double> %50, <2 x double>* %51, align 8, !tbaa !2
  %arrayidx257.10.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1810
  %52 = bitcast double* %arrayidx257.10.i to <2 x double>*
  %53 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2
  %54 = fmul <2 x double> %53, <double 1.200000e+00, double 1.200000e+00>
  %55 = bitcast double* %arrayidx257.10.i to <2 x double>*
  store <2 x double> %54, <2 x double>* %55, align 8, !tbaa !2
  %arrayidx257.12.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1812
  %56 = bitcast double* %arrayidx257.12.i to <2 x double>*
  %57 = load <2 x double>, <2 x double>* %56, align 8, !tbaa !2
  %58 = fmul <2 x double> %57, <double 1.200000e+00, double 1.200000e+00>
  %59 = bitcast double* %arrayidx257.12.i to <2 x double>*
  store <2 x double> %58, <2 x double>* %59, align 8, !tbaa !2
  %arrayidx257.14.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1814
  %60 = bitcast double* %arrayidx257.14.i to <2 x double>*
  %61 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !2
  %62 = fmul <2 x double> %61, <double 1.200000e+00, double 1.200000e+00>
  %63 = bitcast double* %arrayidx257.14.i to <2 x double>*
  store <2 x double> %62, <2 x double>* %63, align 8, !tbaa !2
  %arrayidx257.16.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1816
  %64 = bitcast double* %arrayidx257.16.i to <2 x double>*
  %65 = load <2 x double>, <2 x double>* %64, align 8, !tbaa !2
  %66 = fmul <2 x double> %65, <double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %arrayidx257.16.i to <2 x double>*
  store <2 x double> %66, <2 x double>* %67, align 8, !tbaa !2
  %arrayidx257.18.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1818
  %68 = bitcast double* %arrayidx257.18.i to <2 x double>*
  %69 = load <2 x double>, <2 x double>* %68, align 8, !tbaa !2
  %70 = fmul <2 x double> %69, <double 1.200000e+00, double 1.200000e+00>
  %71 = bitcast double* %arrayidx257.18.i to <2 x double>*
  store <2 x double> %70, <2 x double>* %71, align 8, !tbaa !2
  %arrayidx257.20.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1820
  %72 = bitcast double* %arrayidx257.20.i to <2 x double>*
  %73 = load <2 x double>, <2 x double>* %72, align 8, !tbaa !2
  %74 = fmul <2 x double> %73, <double 1.200000e+00, double 1.200000e+00>
  %75 = bitcast double* %arrayidx257.20.i to <2 x double>*
  store <2 x double> %74, <2 x double>* %75, align 8, !tbaa !2
  %arrayidx257.22.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv70.i, i64 1822
  %76 = bitcast double* %arrayidx257.22.i to <2 x double>*
  %77 = load <2 x double>, <2 x double>* %76, align 8, !tbaa !2
  %78 = fmul <2 x double> %77, <double 1.200000e+00, double 1.200000e+00>
  %79 = bitcast double* %arrayidx257.22.i to <2 x double>*
  store <2 x double> %78, <2 x double>* %79, align 8, !tbaa !2
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next71.i, %indvars.iv100.i
  br i1 %exitcond.not.i45, label %cond.end345.i, label %for.cond224.preheader.i, !llvm.loop !15

cond.end345.i:                                    ; preds = %for.cond224.preheader.i, %cond.end188.i
  %cmp347.i = icmp ugt i32 %t3.012.i, 55
  br i1 %cmp347.i, label %cond.end398.i, label %for.body363.lr.ph.i

for.body363.lr.ph.i:                              ; preds = %cond.end345.i
  %indvars.iv.next82.i = or i64 %indvars.iv79.i, 1
  %indvars.iv.next82.1.i = add nuw nsw i64 %indvars.iv.next82.i, 1
  %indvars.iv.next82.2.i = or i64 %indvars.iv79.i, 3
  %indvars.iv.next82.3.i = add nuw nsw i64 %indvars.iv.next82.2.i, 1
  %indvars.iv.next82.5.i = add nuw nsw i64 %indvars.iv.next82.2.i, 3
  %indvars.iv.next82.6.i = or i64 %indvars.iv79.i, 7
  %indvars.iv.next82.7.i = add nuw nsw i64 %indvars.iv.next82.6.i, 1
  %indvars.iv.next82.9.i = add nuw nsw i64 %indvars.iv.next82.6.i, 3
  %indvars.iv.next82.11.i = add nuw nsw i64 %indvars.iv.next82.6.i, 5
  %indvars.iv.next82.13.i = add nuw nsw i64 %indvars.iv.next82.6.i, 7
  %indvars.iv.next82.14.i = or i64 %indvars.iv79.i, 15
  %indvars.iv.next82.15.i = add nuw nsw i64 %indvars.iv.next82.14.i, 1
  %indvars.iv.next82.17.i = add nuw nsw i64 %indvars.iv.next82.14.i, 3
  %indvars.iv.next82.19.i = add nuw nsw i64 %indvars.iv.next82.14.i, 5
  %indvars.iv.next82.21.i = add nuw nsw i64 %indvars.iv.next82.14.i, 7
  %indvars.iv.next82.23.i = add nuw nsw i64 %indvars.iv.next82.14.i, 9
  %indvars.iv.next82.25.i = add nuw nsw i64 %indvars.iv.next82.14.i, 11
  %indvars.iv.next82.27.i = add nuw nsw i64 %indvars.iv.next82.14.i, 13
  %indvars.iv.next82.29.i = add nuw nsw i64 %indvars.iv.next82.14.i, 15
  br label %for.body363.i

for.body363.i:                                    ; preds = %for.body363.i, %for.body363.lr.ph.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.i44, %for.body363.lr.ph.i ], [ %indvars.iv.next88.i, %for.body363.i ]
  %arrayidx373.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv79.i
  %arrayidx378.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv79.i
  %80 = bitcast double* %arrayidx373.i to <2 x double>*
  %81 = load <2 x double>, <2 x double>* %80, align 8, !tbaa !2
  %82 = fmul <2 x double> %81, <double 1.200000e+00, double 1.200000e+00>
  %83 = bitcast double* %arrayidx373.i to <2 x double>*
  store <2 x double> %82, <2 x double>* %83, align 8, !tbaa !2
  %84 = bitcast double* %arrayidx378.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %84, align 8, !tbaa !2
  %arrayidx373.2.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.1.i
  %arrayidx378.2.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.1.i
  %85 = bitcast double* %arrayidx373.2.i to <2 x double>*
  %86 = load <2 x double>, <2 x double>* %85, align 8, !tbaa !2
  %87 = fmul <2 x double> %86, <double 1.200000e+00, double 1.200000e+00>
  %88 = bitcast double* %arrayidx373.2.i to <2 x double>*
  store <2 x double> %87, <2 x double>* %88, align 8, !tbaa !2
  %89 = bitcast double* %arrayidx378.2.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %89, align 8, !tbaa !2
  %arrayidx373.4.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.3.i
  %arrayidx378.4.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.3.i
  %90 = bitcast double* %arrayidx373.4.i to <2 x double>*
  %91 = load <2 x double>, <2 x double>* %90, align 8, !tbaa !2
  %92 = fmul <2 x double> %91, <double 1.200000e+00, double 1.200000e+00>
  %93 = bitcast double* %arrayidx373.4.i to <2 x double>*
  store <2 x double> %92, <2 x double>* %93, align 8, !tbaa !2
  %94 = bitcast double* %arrayidx378.4.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %94, align 8, !tbaa !2
  %arrayidx373.6.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.5.i
  %arrayidx378.6.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.5.i
  %95 = bitcast double* %arrayidx373.6.i to <2 x double>*
  %96 = load <2 x double>, <2 x double>* %95, align 8, !tbaa !2
  %97 = fmul <2 x double> %96, <double 1.200000e+00, double 1.200000e+00>
  %98 = bitcast double* %arrayidx373.6.i to <2 x double>*
  store <2 x double> %97, <2 x double>* %98, align 8, !tbaa !2
  %99 = bitcast double* %arrayidx378.6.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %99, align 8, !tbaa !2
  %arrayidx373.8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.7.i
  %arrayidx378.8.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.7.i
  %100 = bitcast double* %arrayidx373.8.i to <2 x double>*
  %101 = load <2 x double>, <2 x double>* %100, align 8, !tbaa !2
  %102 = fmul <2 x double> %101, <double 1.200000e+00, double 1.200000e+00>
  %103 = bitcast double* %arrayidx373.8.i to <2 x double>*
  store <2 x double> %102, <2 x double>* %103, align 8, !tbaa !2
  %104 = bitcast double* %arrayidx378.8.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %104, align 8, !tbaa !2
  %arrayidx373.10.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.9.i
  %arrayidx378.10.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.9.i
  %105 = bitcast double* %arrayidx373.10.i to <2 x double>*
  %106 = load <2 x double>, <2 x double>* %105, align 8, !tbaa !2
  %107 = fmul <2 x double> %106, <double 1.200000e+00, double 1.200000e+00>
  %108 = bitcast double* %arrayidx373.10.i to <2 x double>*
  store <2 x double> %107, <2 x double>* %108, align 8, !tbaa !2
  %109 = bitcast double* %arrayidx378.10.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %109, align 8, !tbaa !2
  %arrayidx373.12.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.11.i
  %arrayidx378.12.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.11.i
  %110 = bitcast double* %arrayidx373.12.i to <2 x double>*
  %111 = load <2 x double>, <2 x double>* %110, align 8, !tbaa !2
  %112 = fmul <2 x double> %111, <double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast double* %arrayidx373.12.i to <2 x double>*
  store <2 x double> %112, <2 x double>* %113, align 8, !tbaa !2
  %114 = bitcast double* %arrayidx378.12.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %114, align 8, !tbaa !2
  %arrayidx373.14.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.13.i
  %arrayidx378.14.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.13.i
  %115 = bitcast double* %arrayidx373.14.i to <2 x double>*
  %116 = load <2 x double>, <2 x double>* %115, align 8, !tbaa !2
  %117 = fmul <2 x double> %116, <double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast double* %arrayidx373.14.i to <2 x double>*
  store <2 x double> %117, <2 x double>* %118, align 8, !tbaa !2
  %119 = bitcast double* %arrayidx378.14.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %119, align 8, !tbaa !2
  %arrayidx373.16.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.15.i
  %arrayidx378.16.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.15.i
  %120 = bitcast double* %arrayidx373.16.i to <2 x double>*
  %121 = load <2 x double>, <2 x double>* %120, align 8, !tbaa !2
  %122 = fmul <2 x double> %121, <double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast double* %arrayidx373.16.i to <2 x double>*
  store <2 x double> %122, <2 x double>* %123, align 8, !tbaa !2
  %124 = bitcast double* %arrayidx378.16.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %124, align 8, !tbaa !2
  %arrayidx373.18.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.17.i
  %arrayidx378.18.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.17.i
  %125 = bitcast double* %arrayidx373.18.i to <2 x double>*
  %126 = load <2 x double>, <2 x double>* %125, align 8, !tbaa !2
  %127 = fmul <2 x double> %126, <double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast double* %arrayidx373.18.i to <2 x double>*
  store <2 x double> %127, <2 x double>* %128, align 8, !tbaa !2
  %129 = bitcast double* %arrayidx378.18.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %129, align 8, !tbaa !2
  %arrayidx373.20.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.19.i
  %arrayidx378.20.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.19.i
  %130 = bitcast double* %arrayidx373.20.i to <2 x double>*
  %131 = load <2 x double>, <2 x double>* %130, align 8, !tbaa !2
  %132 = fmul <2 x double> %131, <double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast double* %arrayidx373.20.i to <2 x double>*
  store <2 x double> %132, <2 x double>* %133, align 8, !tbaa !2
  %134 = bitcast double* %arrayidx378.20.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %134, align 8, !tbaa !2
  %arrayidx373.22.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.21.i
  %arrayidx378.22.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.21.i
  %135 = bitcast double* %arrayidx373.22.i to <2 x double>*
  %136 = load <2 x double>, <2 x double>* %135, align 8, !tbaa !2
  %137 = fmul <2 x double> %136, <double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast double* %arrayidx373.22.i to <2 x double>*
  store <2 x double> %137, <2 x double>* %138, align 8, !tbaa !2
  %139 = bitcast double* %arrayidx378.22.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %139, align 8, !tbaa !2
  %arrayidx373.24.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.23.i
  %arrayidx378.24.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.23.i
  %140 = bitcast double* %arrayidx373.24.i to <2 x double>*
  %141 = load <2 x double>, <2 x double>* %140, align 8, !tbaa !2
  %142 = fmul <2 x double> %141, <double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast double* %arrayidx373.24.i to <2 x double>*
  store <2 x double> %142, <2 x double>* %143, align 8, !tbaa !2
  %144 = bitcast double* %arrayidx378.24.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %144, align 8, !tbaa !2
  %arrayidx373.26.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.25.i
  %arrayidx378.26.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.25.i
  %145 = bitcast double* %arrayidx373.26.i to <2 x double>*
  %146 = load <2 x double>, <2 x double>* %145, align 8, !tbaa !2
  %147 = fmul <2 x double> %146, <double 1.200000e+00, double 1.200000e+00>
  %148 = bitcast double* %arrayidx373.26.i to <2 x double>*
  store <2 x double> %147, <2 x double>* %148, align 8, !tbaa !2
  %149 = bitcast double* %arrayidx378.26.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %149, align 8, !tbaa !2
  %arrayidx373.28.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.27.i
  %arrayidx378.28.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.27.i
  %150 = bitcast double* %arrayidx373.28.i to <2 x double>*
  %151 = load <2 x double>, <2 x double>* %150, align 8, !tbaa !2
  %152 = fmul <2 x double> %151, <double 1.200000e+00, double 1.200000e+00>
  %153 = bitcast double* %arrayidx373.28.i to <2 x double>*
  store <2 x double> %152, <2 x double>* %153, align 8, !tbaa !2
  %154 = bitcast double* %arrayidx378.28.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %154, align 8, !tbaa !2
  %arrayidx373.30.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv87.i, i64 %indvars.iv.next82.29.i
  %arrayidx378.30.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv87.i, i64 %indvars.iv.next82.29.i
  %155 = bitcast double* %arrayidx373.30.i to <2 x double>*
  %156 = load <2 x double>, <2 x double>* %155, align 8, !tbaa !2
  %157 = fmul <2 x double> %156, <double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast double* %arrayidx373.30.i to <2 x double>*
  store <2 x double> %157, <2 x double>* %158, align 8, !tbaa !2
  %159 = bitcast double* %arrayidx378.30.i to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %159, align 8, !tbaa !2
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, %indvars.iv100.i
  br i1 %exitcond90.not.i, label %cond.end398.i, label %for.body363.i, !llvm.loop !16

cond.end398.i:                                    ; preds = %for.body363.i, %cond.end345.i
  %t3.0.off.i = add nsw i32 %t3.012.i, -57
  %160 = icmp ugt i32 %t3.0.off.i, 17
  br i1 %160, label %for.inc527.i, label %for.body499.lr.ph.i

for.body499.lr.ph.i:                              ; preds = %cond.end398.i
  %indvars.iv.next92.i = or i64 %indvars.iv79.i, 1
  %indvars.iv.next92.1.i = add nuw nsw i64 %indvars.iv.next92.i, 1
  %indvars.iv.next92.2.i = or i64 %indvars.iv79.i, 3
  %indvars.iv.next92.3.i = add nuw nsw i64 %indvars.iv.next92.2.i, 1
  %indvars.iv.next92.5.i = add nuw nsw i64 %indvars.iv.next92.2.i, 3
  %indvars.iv.next92.6.i = or i64 %indvars.iv79.i, 7
  %indvars.iv.next92.7.i = add nuw nsw i64 %indvars.iv.next92.6.i, 1
  %indvars.iv.next92.9.i = add nuw nsw i64 %indvars.iv.next92.6.i, 3
  %indvars.iv.next92.11.i = add nuw nsw i64 %indvars.iv.next92.6.i, 5
  %indvars.iv.next92.13.i = add nuw nsw i64 %indvars.iv.next92.6.i, 7
  %indvars.iv.next92.14.i = or i64 %indvars.iv79.i, 15
  %indvars.iv.next92.15.i = add nuw nsw i64 %indvars.iv.next92.14.i, 1
  %indvars.iv.next92.17.i = add nuw nsw i64 %indvars.iv.next92.14.i, 3
  %indvars.iv.next92.19.i = add nuw nsw i64 %indvars.iv.next92.14.i, 5
  %indvars.iv.next92.21.i = add nuw nsw i64 %indvars.iv.next92.14.i, 7
  %indvars.iv.next92.23.i = add nuw nsw i64 %indvars.iv.next92.14.i, 9
  %indvars.iv.next92.25.i = add nuw nsw i64 %indvars.iv.next92.14.i, 11
  %indvars.iv.next92.27.i = add nuw nsw i64 %indvars.iv.next92.14.i, 13
  %indvars.iv.next92.29.i = add nuw nsw i64 %indvars.iv.next92.14.i, 15
  br label %for.body499.i

for.body499.i:                                    ; preds = %for.body499.i, %for.body499.lr.ph.i
  %indvars.iv95.i = phi i64 [ %indvars.iv.i44, %for.body499.lr.ph.i ], [ %indvars.iv.next96.i, %for.body499.i ]
  %arrayidx518.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv79.i
  %161 = bitcast double* %arrayidx518.i to <2 x double>*
  %162 = load <2 x double>, <2 x double>* %161, align 8, !tbaa !2
  %163 = fmul <2 x double> %162, <double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast double* %arrayidx518.i to <2 x double>*
  store <2 x double> %163, <2 x double>* %164, align 8, !tbaa !2
  %arrayidx518.2.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.1.i
  %165 = bitcast double* %arrayidx518.2.i to <2 x double>*
  %166 = load <2 x double>, <2 x double>* %165, align 8, !tbaa !2
  %167 = fmul <2 x double> %166, <double 1.200000e+00, double 1.200000e+00>
  %168 = bitcast double* %arrayidx518.2.i to <2 x double>*
  store <2 x double> %167, <2 x double>* %168, align 8, !tbaa !2
  %arrayidx518.4.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.3.i
  %169 = bitcast double* %arrayidx518.4.i to <2 x double>*
  %170 = load <2 x double>, <2 x double>* %169, align 8, !tbaa !2
  %171 = fmul <2 x double> %170, <double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast double* %arrayidx518.4.i to <2 x double>*
  store <2 x double> %171, <2 x double>* %172, align 8, !tbaa !2
  %arrayidx518.6.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.5.i
  %173 = bitcast double* %arrayidx518.6.i to <2 x double>*
  %174 = load <2 x double>, <2 x double>* %173, align 8, !tbaa !2
  %175 = fmul <2 x double> %174, <double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast double* %arrayidx518.6.i to <2 x double>*
  store <2 x double> %175, <2 x double>* %176, align 8, !tbaa !2
  %arrayidx518.8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.7.i
  %177 = bitcast double* %arrayidx518.8.i to <2 x double>*
  %178 = load <2 x double>, <2 x double>* %177, align 8, !tbaa !2
  %179 = fmul <2 x double> %178, <double 1.200000e+00, double 1.200000e+00>
  %180 = bitcast double* %arrayidx518.8.i to <2 x double>*
  store <2 x double> %179, <2 x double>* %180, align 8, !tbaa !2
  %arrayidx518.10.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.9.i
  %181 = bitcast double* %arrayidx518.10.i to <2 x double>*
  %182 = load <2 x double>, <2 x double>* %181, align 8, !tbaa !2
  %183 = fmul <2 x double> %182, <double 1.200000e+00, double 1.200000e+00>
  %184 = bitcast double* %arrayidx518.10.i to <2 x double>*
  store <2 x double> %183, <2 x double>* %184, align 8, !tbaa !2
  %arrayidx518.12.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.11.i
  %185 = bitcast double* %arrayidx518.12.i to <2 x double>*
  %186 = load <2 x double>, <2 x double>* %185, align 8, !tbaa !2
  %187 = fmul <2 x double> %186, <double 1.200000e+00, double 1.200000e+00>
  %188 = bitcast double* %arrayidx518.12.i to <2 x double>*
  store <2 x double> %187, <2 x double>* %188, align 8, !tbaa !2
  %arrayidx518.14.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.13.i
  %189 = bitcast double* %arrayidx518.14.i to <2 x double>*
  %190 = load <2 x double>, <2 x double>* %189, align 8, !tbaa !2
  %191 = fmul <2 x double> %190, <double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast double* %arrayidx518.14.i to <2 x double>*
  store <2 x double> %191, <2 x double>* %192, align 8, !tbaa !2
  %arrayidx518.16.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.15.i
  %193 = bitcast double* %arrayidx518.16.i to <2 x double>*
  %194 = load <2 x double>, <2 x double>* %193, align 8, !tbaa !2
  %195 = fmul <2 x double> %194, <double 1.200000e+00, double 1.200000e+00>
  %196 = bitcast double* %arrayidx518.16.i to <2 x double>*
  store <2 x double> %195, <2 x double>* %196, align 8, !tbaa !2
  %arrayidx518.18.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.17.i
  %197 = bitcast double* %arrayidx518.18.i to <2 x double>*
  %198 = load <2 x double>, <2 x double>* %197, align 8, !tbaa !2
  %199 = fmul <2 x double> %198, <double 1.200000e+00, double 1.200000e+00>
  %200 = bitcast double* %arrayidx518.18.i to <2 x double>*
  store <2 x double> %199, <2 x double>* %200, align 8, !tbaa !2
  %arrayidx518.20.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.19.i
  %201 = bitcast double* %arrayidx518.20.i to <2 x double>*
  %202 = load <2 x double>, <2 x double>* %201, align 8, !tbaa !2
  %203 = fmul <2 x double> %202, <double 1.200000e+00, double 1.200000e+00>
  %204 = bitcast double* %arrayidx518.20.i to <2 x double>*
  store <2 x double> %203, <2 x double>* %204, align 8, !tbaa !2
  %arrayidx518.22.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.21.i
  %205 = bitcast double* %arrayidx518.22.i to <2 x double>*
  %206 = load <2 x double>, <2 x double>* %205, align 8, !tbaa !2
  %207 = fmul <2 x double> %206, <double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast double* %arrayidx518.22.i to <2 x double>*
  store <2 x double> %207, <2 x double>* %208, align 8, !tbaa !2
  %arrayidx518.24.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.23.i
  %209 = bitcast double* %arrayidx518.24.i to <2 x double>*
  %210 = load <2 x double>, <2 x double>* %209, align 8, !tbaa !2
  %211 = fmul <2 x double> %210, <double 1.200000e+00, double 1.200000e+00>
  %212 = bitcast double* %arrayidx518.24.i to <2 x double>*
  store <2 x double> %211, <2 x double>* %212, align 8, !tbaa !2
  %arrayidx518.26.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.25.i
  %213 = bitcast double* %arrayidx518.26.i to <2 x double>*
  %214 = load <2 x double>, <2 x double>* %213, align 8, !tbaa !2
  %215 = fmul <2 x double> %214, <double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast double* %arrayidx518.26.i to <2 x double>*
  store <2 x double> %215, <2 x double>* %216, align 8, !tbaa !2
  %arrayidx518.28.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.27.i
  %217 = bitcast double* %arrayidx518.28.i to <2 x double>*
  %218 = load <2 x double>, <2 x double>* %217, align 8, !tbaa !2
  %219 = fmul <2 x double> %218, <double 1.200000e+00, double 1.200000e+00>
  %220 = bitcast double* %arrayidx518.28.i to <2 x double>*
  store <2 x double> %219, <2 x double>* %220, align 8, !tbaa !2
  %arrayidx518.30.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv95.i, i64 %indvars.iv.next92.29.i
  %221 = bitcast double* %arrayidx518.30.i to <2 x double>*
  %222 = load <2 x double>, <2 x double>* %221, align 8, !tbaa !2
  %223 = fmul <2 x double> %222, <double 1.200000e+00, double 1.200000e+00>
  %224 = bitcast double* %arrayidx518.30.i to <2 x double>*
  store <2 x double> %223, <2 x double>* %224, align 8, !tbaa !2
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, %indvars.iv100.i
  br i1 %exitcond98.not.i, label %for.inc527.i, label %for.body499.i, !llvm.loop !17

for.inc527.i:                                     ; preds = %for.body499.i, %cond.end398.i
  %inc528.i = add nuw nsw i32 %t3.012.i, 1
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 32
  %exitcond99.not.i = icmp eq i32 %inc528.i, 132
  br i1 %exitcond99.not.i, label %for.inc658.i, label %cond.end188.i, !llvm.loop !18

for.inc658.i:                                     ; preds = %for.inc527.i
  %inc659.i = add nuw nsw i32 %t2.015.i, 1
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i44, 32
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 32
  %exitcond102.not.i = icmp eq i32 %inc659.i, 50
  br i1 %exitcond102.not.i, label %for.cond680.preheader.i, label %for.cond12.preheader.i, !llvm.loop !19

for.cond680.preheader.i:                          ; preds = %for.inc658.i, %for.inc883.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %for.inc883.i ], [ 32, %for.inc658.i ]
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %for.inc883.i ], [ 0, %for.inc658.i ]
  %t2.156.i = phi i32 [ %inc884.i, %for.inc883.i ], [ 0, %for.inc658.i ]
  br label %for.cond699.preheader.split.i

for.cond699.preheader.split.i:                    ; preds = %for.inc880.i, %for.cond680.preheader.i
  %indvar = phi i64 [ %indvar.next, %for.inc880.i ], [ 0, %for.cond680.preheader.i ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc880.i ], [ 31, %for.cond680.preheader.i ]
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %for.inc880.i ], [ 0, %for.cond680.preheader.i ]
  %t3.355.i = phi i32 [ %inc881.i, %for.inc880.i ], [ 0, %for.cond680.preheader.i ]
  %225 = mul nsw i64 %indvar, -32
  %226 = or i64 %225, 1
  %indvar.tr = trunc i64 %indvar to i32
  %227 = shl i32 %indvar.tr, 5
  %228 = or i32 %227, 31
  %umin = call i32 @llvm.umin.i32(i32 %228, i32 1799)
  %229 = zext i32 %umin to i64
  %230 = add i64 %226, %229
  %umin57 = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 1799)
  %narrow = add nuw nsw i32 %umin57, 1
  %231 = zext i32 %narrow to i64
  %mul746.i = shl nsw i32 %t3.355.i, 5
  %add750.i = or i32 %mul746.i, 31
  %232 = icmp ult i32 %add750.i, 1799
  %cond758.i = select i1 %232, i32 %add750.i, i32 1799
  %cmp759.not16.i = icmp ugt i32 %mul746.i, %cond758.i
  br i1 %cmp759.not16.i, label %for.inc880.i, label %for.body715.i.preheader

for.body715.i.preheader:                          ; preds = %for.cond699.preheader.split.i
  %min.iters.check = icmp eq i64 %230, 0
  br label %for.body715.i

for.body715.i:                                    ; preds = %for.body715.i.preheader, %for.cond717.for.inc785_crit_edge.i
  %indvars.iv53 = phi i32 [ %indvars.iv.next54, %for.cond717.for.inc785_crit_edge.i ], [ 31, %for.body715.i.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %for.cond717.for.inc785_crit_edge.i ], [ 0, %for.body715.i.preheader ]
  %t5.1128.i = phi i32 [ %inc786.i, %for.cond717.for.inc785_crit_edge.i ], [ 0, %for.body715.i.preheader ]
  %umin55 = call i32 @llvm.umin.i32(i32 %indvars.iv53, i32 2199)
  %narrow59 = add nuw nsw i32 %umin55, 1
  %233 = zext i32 %narrow59 to i64
  %mul731.i = shl nsw i32 %t5.1128.i, 5
  %add735.i = or i32 %mul731.i, 31
  %234 = icmp ult i32 %add735.i, 2199
  %cond743.i = select i1 %234, i32 %add735.i, i32 2199
  %cmp744.not18.i = icmp ugt i32 %mul731.i, %cond743.i
  br i1 %cmp744.not18.i, label %for.cond717.for.inc785_crit_edge.i, label %for.body730.i

for.body730.i:                                    ; preds = %for.body715.i, %for.cond732.for.inc782_crit_edge.split.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %for.cond732.for.inc782_crit_edge.split.i ], [ %indvars.iv111.i, %for.body715.i ]
  br label %for.body745.i

for.body745.i:                                    ; preds = %for.cond747.for.inc779_crit_edge.i, %for.body730.i
  %indvars.iv109.i = phi i64 [ %indvars.iv107.i, %for.body730.i ], [ %indvars.iv.next110.i, %for.cond747.for.inc779_crit_edge.i ]
  %arrayidx764.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv113.i, i64 %indvars.iv109.i
  %235 = load double, double* %arrayidx764.i, align 8, !tbaa !2
  %mul765.i = fmul double %235, 1.500000e+00
  br i1 %min.iters.check, label %for.body760.i, label %vector.ph

vector.ph:                                        ; preds = %for.body745.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul765.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %mul765.i, i32 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv103.i, %index
  %236 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv109.i, i64 %offset.idx
  %237 = bitcast double* %236 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %237, align 8, !tbaa !2
  %238 = getelementptr inbounds double, double* %236, i64 2
  %239 = bitcast double* %238 to <2 x double>*
  %wide.load92 = load <2 x double>, <2 x double>* %239, align 8, !tbaa !2
  %240 = fmul <2 x double> %broadcast.splat, %wide.load
  %241 = fmul <2 x double> %broadcast.splat94, %wide.load92
  %242 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv113.i, i64 %offset.idx
  %243 = bitcast double* %242 to <2 x double>*
  %wide.load95 = load <2 x double>, <2 x double>* %243, align 8, !tbaa !2
  %244 = getelementptr inbounds double, double* %242, i64 2
  %245 = bitcast double* %244 to <2 x double>*
  %wide.load96 = load <2 x double>, <2 x double>* %245, align 8, !tbaa !2
  %246 = fadd <2 x double> %wide.load95, %240
  %247 = fadd <2 x double> %wide.load96, %241
  %248 = bitcast double* %242 to <2 x double>*
  store <2 x double> %246, <2 x double>* %248, align 8, !tbaa !2
  %249 = bitcast double* %244 to <2 x double>*
  store <2 x double> %247, <2 x double>* %249, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %250 = icmp eq i64 %index.next, %230
  br i1 %250, label %for.cond747.for.inc779_crit_edge.i, label %vector.body, !llvm.loop !20

for.body760.i:                                    ; preds = %for.body745.i, %for.body760.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %for.body760.i ], [ %indvars.iv103.i, %for.body745.i ]
  %arrayidx769.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv109.i, i64 %indvars.iv105.i
  %251 = load double, double* %arrayidx769.i, align 8, !tbaa !2
  %mul770.i = fmul double %mul765.i, %251
  %arrayidx774.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv113.i, i64 %indvars.iv105.i
  %252 = load double, double* %arrayidx774.i, align 8, !tbaa !2
  %add775.i = fadd double %252, %mul770.i
  store double %add775.i, double* %arrayidx774.i, align 8, !tbaa !2
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next106.i, %231
  br i1 %exitcond.not, label %for.cond747.for.inc779_crit_edge.i, label %for.body760.i, !llvm.loop !22

for.cond747.for.inc779_crit_edge.i:               ; preds = %vector.body, %for.body760.i
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next110.i, %233
  br i1 %exitcond56.not, label %for.cond732.for.inc782_crit_edge.split.i, label %for.body745.i, !llvm.loop !24

for.cond732.for.inc782_crit_edge.split.i:         ; preds = %for.cond747.for.inc779_crit_edge.i
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %indvars.iv137.i
  br i1 %exitcond117.not.i, label %for.cond717.for.inc785_crit_edge.i, label %for.body730.i, !llvm.loop !25

for.cond717.for.inc785_crit_edge.i:               ; preds = %for.cond732.for.inc782_crit_edge.split.i, %for.body715.i
  %inc786.i = add nuw nsw i32 %t5.1128.i, 1
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 32
  %exitcond118.not.i = icmp eq i32 %inc786.i, 69
  %indvars.iv.next54 = add nuw nsw i32 %indvars.iv53, 32
  br i1 %exitcond118.not.i, label %for.body822.preheader.i, label %for.body715.i, !llvm.loop !26

for.body822.preheader.i:                          ; preds = %for.cond717.for.inc785_crit_edge.i, %for.cond809.for.inc876_crit_edge.split.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %for.cond809.for.inc876_crit_edge.split.i ], [ 0, %for.cond717.for.inc785_crit_edge.i ]
  %t5.1248.i = phi i32 [ %inc877.i, %for.cond809.for.inc876_crit_edge.split.i ], [ 0, %for.cond717.for.inc785_crit_edge.i ]
  %indvars.iv.next122.i = or i64 %indvars.iv119.i, 1
  %indvars.iv.next122.i.1 = add nuw nsw i64 %indvars.iv.next122.i, 1
  %indvars.iv.next122.i.2 = or i64 %indvars.iv119.i, 3
  %indvars.iv.next122.i.3 = add nuw nsw i64 %indvars.iv.next122.i.2, 1
  %indvars.iv.next122.i.5 = add nuw nsw i64 %indvars.iv.next122.i.2, 3
  %indvars.iv.next122.i.6 = or i64 %indvars.iv119.i, 7
  %indvars.iv.next122.i.7 = add nuw nsw i64 %indvars.iv.next122.i.6, 1
  %indvars.iv.next122.i.9 = add nuw nsw i64 %indvars.iv.next122.i.6, 3
  %indvars.iv.next122.i.11 = add nuw nsw i64 %indvars.iv.next122.i.6, 5
  %indvars.iv.next122.i.13 = add nuw nsw i64 %indvars.iv.next122.i.6, 7
  %indvars.iv.next122.i.14 = or i64 %indvars.iv119.i, 15
  %indvars.iv.next122.i.15 = add nuw nsw i64 %indvars.iv.next122.i.14, 1
  %indvars.iv.next122.i.17 = add nuw nsw i64 %indvars.iv.next122.i.14, 3
  %indvars.iv.next122.i.19 = add nuw nsw i64 %indvars.iv.next122.i.14, 5
  %indvars.iv.next122.i.21 = add nuw nsw i64 %indvars.iv.next122.i.14, 7
  %indvars.iv.next122.i.23 = add nuw nsw i64 %indvars.iv.next122.i.14, 9
  %indvars.iv.next122.i.25 = add nuw nsw i64 %indvars.iv.next122.i.14, 11
  %indvars.iv.next122.i.27 = add nuw nsw i64 %indvars.iv.next122.i.14, 13
  %indvars.iv.next122.i.29 = add nuw nsw i64 %indvars.iv.next122.i.14, 15
  br label %for.body822.i

for.body822.i:                                    ; preds = %for.cond824.for.inc873_crit_edge.split.i, %for.body822.preheader.i
  %indvars.iv129.i = phi i64 [ %indvars.iv111.i, %for.body822.preheader.i ], [ %indvars.iv.next130.i, %for.cond824.for.inc873_crit_edge.split.i ]
  %arrayidx865.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv119.i
  %arrayidx865.i.2 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.1
  %arrayidx865.i.4 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.3
  %arrayidx865.i.6 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.5
  %arrayidx865.i.8 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.7
  %arrayidx865.i.10 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.9
  %arrayidx865.i.12 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.11
  %arrayidx865.i.14 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.13
  %arrayidx865.i.16 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.15
  %arrayidx865.i.18 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.17
  %arrayidx865.i.20 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.19
  %arrayidx865.i.22 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.21
  %arrayidx865.i.24 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.23
  %arrayidx865.i.26 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.25
  %arrayidx865.i.28 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.27
  %arrayidx865.i.30 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv129.i, i64 %indvars.iv.next122.i.29
  %253 = bitcast double* %arrayidx865.i to <2 x double>*
  %254 = load <2 x double>, <2 x double>* %253, align 8, !tbaa !2
  %255 = bitcast double* %arrayidx865.i.2 to <2 x double>*
  %256 = load <2 x double>, <2 x double>* %255, align 8, !tbaa !2
  %257 = bitcast double* %arrayidx865.i.4 to <2 x double>*
  %258 = load <2 x double>, <2 x double>* %257, align 8, !tbaa !2
  %259 = bitcast double* %arrayidx865.i.6 to <2 x double>*
  %260 = load <2 x double>, <2 x double>* %259, align 8, !tbaa !2
  %261 = bitcast double* %arrayidx865.i.8 to <2 x double>*
  %262 = load <2 x double>, <2 x double>* %261, align 8, !tbaa !2
  %263 = bitcast double* %arrayidx865.i.10 to <2 x double>*
  %264 = load <2 x double>, <2 x double>* %263, align 8, !tbaa !2
  %265 = bitcast double* %arrayidx865.i.12 to <2 x double>*
  %266 = load <2 x double>, <2 x double>* %265, align 8, !tbaa !2
  %267 = bitcast double* %arrayidx865.i.14 to <2 x double>*
  %268 = load <2 x double>, <2 x double>* %267, align 8, !tbaa !2
  %269 = bitcast double* %arrayidx865.i.16 to <2 x double>*
  %270 = load <2 x double>, <2 x double>* %269, align 8, !tbaa !2
  %271 = bitcast double* %arrayidx865.i.18 to <2 x double>*
  %272 = load <2 x double>, <2 x double>* %271, align 8, !tbaa !2
  %273 = bitcast double* %arrayidx865.i.20 to <2 x double>*
  %274 = load <2 x double>, <2 x double>* %273, align 8, !tbaa !2
  %275 = bitcast double* %arrayidx865.i.22 to <2 x double>*
  %276 = load <2 x double>, <2 x double>* %275, align 8, !tbaa !2
  %277 = bitcast double* %arrayidx865.i.24 to <2 x double>*
  %278 = load <2 x double>, <2 x double>* %277, align 8, !tbaa !2
  %279 = bitcast double* %arrayidx865.i.26 to <2 x double>*
  %280 = load <2 x double>, <2 x double>* %279, align 8, !tbaa !2
  %281 = bitcast double* %arrayidx865.i.28 to <2 x double>*
  %282 = load <2 x double>, <2 x double>* %281, align 8, !tbaa !2
  %283 = bitcast double* %arrayidx865.i.30 to <2 x double>*
  %284 = load <2 x double>, <2 x double>* %283, align 8, !tbaa !2
  br label %for.body837.i

for.body837.i:                                    ; preds = %for.body837.i, %for.body822.i
  %indvars.iv127.i = phi i64 [ %indvars.iv103.i, %for.body822.i ], [ %indvars.iv.next128.i, %for.body837.i ]
  %285 = phi <2 x double> [ %254, %for.body822.i ], [ %307, %for.body837.i ]
  %286 = phi <2 x double> [ %256, %for.body822.i ], [ %311, %for.body837.i ]
  %287 = phi <2 x double> [ %258, %for.body822.i ], [ %315, %for.body837.i ]
  %288 = phi <2 x double> [ %260, %for.body822.i ], [ %319, %for.body837.i ]
  %289 = phi <2 x double> [ %262, %for.body822.i ], [ %323, %for.body837.i ]
  %290 = phi <2 x double> [ %264, %for.body822.i ], [ %327, %for.body837.i ]
  %291 = phi <2 x double> [ %266, %for.body822.i ], [ %331, %for.body837.i ]
  %292 = phi <2 x double> [ %268, %for.body822.i ], [ %335, %for.body837.i ]
  %293 = phi <2 x double> [ %270, %for.body822.i ], [ %339, %for.body837.i ]
  %294 = phi <2 x double> [ %272, %for.body822.i ], [ %343, %for.body837.i ]
  %295 = phi <2 x double> [ %274, %for.body822.i ], [ %347, %for.body837.i ]
  %296 = phi <2 x double> [ %276, %for.body822.i ], [ %351, %for.body837.i ]
  %297 = phi <2 x double> [ %278, %for.body822.i ], [ %355, %for.body837.i ]
  %298 = phi <2 x double> [ %280, %for.body822.i ], [ %359, %for.body837.i ]
  %299 = phi <2 x double> [ %282, %for.body822.i ], [ %363, %for.body837.i ]
  %300 = phi <2 x double> [ %284, %for.body822.i ], [ %367, %for.body837.i ]
  %arrayidx856.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv129.i, i64 %indvars.iv127.i
  %301 = load double, double* %arrayidx856.i, align 8, !tbaa !2
  %arrayidx860.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv119.i
  %302 = bitcast double* %arrayidx860.i to <2 x double>*
  %303 = load <2 x double>, <2 x double>* %302, align 8, !tbaa !2
  %304 = insertelement <2 x double> poison, double %301, i32 0
  %305 = shufflevector <2 x double> %304, <2 x double> undef, <2 x i32> zeroinitializer
  %306 = fmul <2 x double> %305, %303
  %307 = fadd <2 x double> %285, %306
  %arrayidx860.i.2 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.1
  %308 = bitcast double* %arrayidx860.i.2 to <2 x double>*
  %309 = load <2 x double>, <2 x double>* %308, align 8, !tbaa !2
  %310 = fmul <2 x double> %305, %309
  %311 = fadd <2 x double> %286, %310
  %arrayidx860.i.4 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.3
  %312 = bitcast double* %arrayidx860.i.4 to <2 x double>*
  %313 = load <2 x double>, <2 x double>* %312, align 8, !tbaa !2
  %314 = fmul <2 x double> %305, %313
  %315 = fadd <2 x double> %287, %314
  %arrayidx860.i.6 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.5
  %316 = bitcast double* %arrayidx860.i.6 to <2 x double>*
  %317 = load <2 x double>, <2 x double>* %316, align 8, !tbaa !2
  %318 = fmul <2 x double> %305, %317
  %319 = fadd <2 x double> %288, %318
  %arrayidx860.i.8 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.7
  %320 = bitcast double* %arrayidx860.i.8 to <2 x double>*
  %321 = load <2 x double>, <2 x double>* %320, align 8, !tbaa !2
  %322 = fmul <2 x double> %305, %321
  %323 = fadd <2 x double> %289, %322
  %arrayidx860.i.10 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.9
  %324 = bitcast double* %arrayidx860.i.10 to <2 x double>*
  %325 = load <2 x double>, <2 x double>* %324, align 8, !tbaa !2
  %326 = fmul <2 x double> %305, %325
  %327 = fadd <2 x double> %290, %326
  %arrayidx860.i.12 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.11
  %328 = bitcast double* %arrayidx860.i.12 to <2 x double>*
  %329 = load <2 x double>, <2 x double>* %328, align 8, !tbaa !2
  %330 = fmul <2 x double> %305, %329
  %331 = fadd <2 x double> %291, %330
  %arrayidx860.i.14 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.13
  %332 = bitcast double* %arrayidx860.i.14 to <2 x double>*
  %333 = load <2 x double>, <2 x double>* %332, align 8, !tbaa !2
  %334 = fmul <2 x double> %305, %333
  %335 = fadd <2 x double> %292, %334
  %arrayidx860.i.16 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.15
  %336 = bitcast double* %arrayidx860.i.16 to <2 x double>*
  %337 = load <2 x double>, <2 x double>* %336, align 8, !tbaa !2
  %338 = fmul <2 x double> %305, %337
  %339 = fadd <2 x double> %293, %338
  %arrayidx860.i.18 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.17
  %340 = bitcast double* %arrayidx860.i.18 to <2 x double>*
  %341 = load <2 x double>, <2 x double>* %340, align 8, !tbaa !2
  %342 = fmul <2 x double> %305, %341
  %343 = fadd <2 x double> %294, %342
  %arrayidx860.i.20 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.19
  %344 = bitcast double* %arrayidx860.i.20 to <2 x double>*
  %345 = load <2 x double>, <2 x double>* %344, align 8, !tbaa !2
  %346 = fmul <2 x double> %305, %345
  %347 = fadd <2 x double> %295, %346
  %arrayidx860.i.22 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.21
  %348 = bitcast double* %arrayidx860.i.22 to <2 x double>*
  %349 = load <2 x double>, <2 x double>* %348, align 8, !tbaa !2
  %350 = fmul <2 x double> %305, %349
  %351 = fadd <2 x double> %296, %350
  %arrayidx860.i.24 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.23
  %352 = bitcast double* %arrayidx860.i.24 to <2 x double>*
  %353 = load <2 x double>, <2 x double>* %352, align 8, !tbaa !2
  %354 = fmul <2 x double> %305, %353
  %355 = fadd <2 x double> %297, %354
  %arrayidx860.i.26 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.25
  %356 = bitcast double* %arrayidx860.i.26 to <2 x double>*
  %357 = load <2 x double>, <2 x double>* %356, align 8, !tbaa !2
  %358 = fmul <2 x double> %305, %357
  %359 = fadd <2 x double> %298, %358
  %arrayidx860.i.28 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.27
  %360 = bitcast double* %arrayidx860.i.28 to <2 x double>*
  %361 = load <2 x double>, <2 x double>* %360, align 8, !tbaa !2
  %362 = fmul <2 x double> %305, %361
  %363 = fadd <2 x double> %299, %362
  %arrayidx860.i.30 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i.29
  %364 = bitcast double* %arrayidx860.i.30 to <2 x double>*
  %365 = load <2 x double>, <2 x double>* %364, align 8, !tbaa !2
  %366 = fmul <2 x double> %305, %365
  %367 = fadd <2 x double> %300, %366
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next128.i, %231
  br i1 %exitcond58.not, label %for.cond824.for.inc873_crit_edge.split.i, label %for.body837.i, !llvm.loop !27

for.cond824.for.inc873_crit_edge.split.i:         ; preds = %for.body837.i
  %368 = bitcast double* %arrayidx865.i to <2 x double>*
  store <2 x double> %307, <2 x double>* %368, align 8, !tbaa !2
  %369 = bitcast double* %arrayidx865.i.2 to <2 x double>*
  store <2 x double> %311, <2 x double>* %369, align 8, !tbaa !2
  %370 = bitcast double* %arrayidx865.i.4 to <2 x double>*
  store <2 x double> %315, <2 x double>* %370, align 8, !tbaa !2
  %371 = bitcast double* %arrayidx865.i.6 to <2 x double>*
  store <2 x double> %319, <2 x double>* %371, align 8, !tbaa !2
  %372 = bitcast double* %arrayidx865.i.8 to <2 x double>*
  store <2 x double> %323, <2 x double>* %372, align 8, !tbaa !2
  %373 = bitcast double* %arrayidx865.i.10 to <2 x double>*
  store <2 x double> %327, <2 x double>* %373, align 8, !tbaa !2
  %374 = bitcast double* %arrayidx865.i.12 to <2 x double>*
  store <2 x double> %331, <2 x double>* %374, align 8, !tbaa !2
  %375 = bitcast double* %arrayidx865.i.14 to <2 x double>*
  store <2 x double> %335, <2 x double>* %375, align 8, !tbaa !2
  %376 = bitcast double* %arrayidx865.i.16 to <2 x double>*
  store <2 x double> %339, <2 x double>* %376, align 8, !tbaa !2
  %377 = bitcast double* %arrayidx865.i.18 to <2 x double>*
  store <2 x double> %343, <2 x double>* %377, align 8, !tbaa !2
  %378 = bitcast double* %arrayidx865.i.20 to <2 x double>*
  store <2 x double> %347, <2 x double>* %378, align 8, !tbaa !2
  %379 = bitcast double* %arrayidx865.i.22 to <2 x double>*
  store <2 x double> %351, <2 x double>* %379, align 8, !tbaa !2
  %380 = bitcast double* %arrayidx865.i.24 to <2 x double>*
  store <2 x double> %355, <2 x double>* %380, align 8, !tbaa !2
  %381 = bitcast double* %arrayidx865.i.26 to <2 x double>*
  store <2 x double> %359, <2 x double>* %381, align 8, !tbaa !2
  %382 = bitcast double* %arrayidx865.i.28 to <2 x double>*
  store <2 x double> %363, <2 x double>* %382, align 8, !tbaa !2
  %383 = bitcast double* %arrayidx865.i.30 to <2 x double>*
  store <2 x double> %367, <2 x double>* %383, align 8, !tbaa !2
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next130.i, %indvars.iv137.i
  br i1 %exitcond132.not.i, label %for.cond809.for.inc876_crit_edge.split.i, label %for.body822.i, !llvm.loop !28

for.cond809.for.inc876_crit_edge.split.i:         ; preds = %for.cond824.for.inc873_crit_edge.split.i
  %inc877.i = add nuw nsw i32 %t5.1248.i, 1
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 32
  %exitcond135.not.i = icmp eq i32 %inc877.i, 75
  br i1 %exitcond135.not.i, label %for.inc880.i, label %for.body822.preheader.i, !llvm.loop !29

for.inc880.i:                                     ; preds = %for.cond809.for.inc876_crit_edge.split.i, %for.cond699.preheader.split.i
  %inc881.i = add nuw nsw i32 %t3.355.i, 1
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 32
  %exitcond136.not.i = icmp eq i32 %inc881.i, 57
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond136.not.i, label %for.inc883.i, label %for.cond699.preheader.split.i, !llvm.loop !30

for.inc883.i:                                     ; preds = %for.inc880.i
  %inc884.i = add nuw nsw i32 %t2.156.i, 1
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 32
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 32
  %exitcond139.not.i = icmp eq i32 %inc884.i, 50
  br i1 %exitcond139.not.i, label %kernel_2mm.exit, label %for.cond680.preheader.i, !llvm.loop !31

kernel_2mm.exit:                                  ; preds = %for.inc883.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_2mm.exit
  %384 = load i8*, i8** %argv, align 8, !tbaa !32
  %strcmpload = load i8, i8* %384, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %386 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %385) #8
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %388 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i47 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i49, %if.end.i ]
  %389 = add nuw nsw i64 %indvars.iv.i47, %388
  %390 = trunc i64 %389 to i32
  %rem.i48 = urem i32 %390, 20
  %cmp5.i = icmp eq i32 %rem.i48, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %391) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %arrayidx8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv4.i, i64 %indvars.iv.i47
  %393 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %392, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %393) #8
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i47, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, 2400
  br i1 %exitcond.not.i50, label %for.inc10.i, label %for.body4.i, !llvm.loop !34

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !35

print_array.exit:                                 ; preds = %for.inc10.i
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %394, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !32
  %396 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %395) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_2mm.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i40) #7
  tail call void @free(i8* %call.i41) #7
  tail call void @free(i8* %call.i42) #7
  tail call void @free(i8* %call.i43) #7
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!20 = distinct !{!20, !7, !21}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !7, !23, !21}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !4, i64 0}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
