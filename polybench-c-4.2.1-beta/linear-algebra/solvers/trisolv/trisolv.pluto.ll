; ModuleID = 'trisolv.pluto.c'
source_filename = "trisolv.pluto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #6
  %call.i23 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %call.i24 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay3 = bitcast i8* %call.i23 to double*
  %arraydecay4 = bitcast i8* %call.i24 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %entry
  %indvars.iv8.i = phi i64 [ 0, %entry ], [ %indvars.iv.next9.i, %for.inc14.i ]
  %0 = add nuw i64 %indvars.iv8.i, 1
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv8.i
  store double -9.990000e+02, double* %arrayidx.i, align 8, !tbaa !2
  %1 = trunc i64 %indvars.iv8.i to i32
  %conv.i = sitofp i32 %1 to double
  %arrayidx2.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv8.i
  store double %conv.i, double* %arrayidx2.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv8.i, 4001
  %xtraiter = and i64 %0, 1
  %3 = icmp eq i64 %indvars.iv8.i, 0
  br i1 %3, label %for.inc14.i.unr-lcssa, label %for.body.i.new

for.body.i.new:                                   ; preds = %for.body.i
  %unroll_iter = and i64 %0, -2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.i.new ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.i.new ], [ %niter.nsub.1, %for.body6.i ]
  %4 = sub nuw nsw i64 %2, %indvars.iv.i
  %5 = trunc i64 %4 to i32
  %conv8.i = sitofp i32 %5 to double
  %mul.i = fmul double %conv8.i, 2.000000e+00
  %div.i = fdiv double %mul.i, 4.000000e+03
  %arrayidx13.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx13.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %6 = sub nuw nsw i64 %2, %indvars.iv.next.i
  %7 = trunc i64 %6 to i32
  %conv8.i.1 = sitofp i32 %7 to double
  %mul.i.1 = fmul double %conv8.i.1, 2.000000e+00
  %div.i.1 = fdiv double %mul.i.1, 4.000000e+03
  %arrayidx13.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.next.i
  store double %div.i.1, double* %arrayidx13.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.inc14.i.unr-lcssa, label %for.body6.i, !llvm.loop !6

for.inc14.i.unr-lcssa:                            ; preds = %for.body6.i, %for.body.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc14.i, label %for.body6.i.epil

for.body6.i.epil:                                 ; preds = %for.inc14.i.unr-lcssa
  %8 = sub nuw nsw i64 %2, %indvars.iv.i.unr
  %9 = trunc i64 %8 to i32
  %conv8.i.epil = sitofp i32 %9 to double
  %mul.i.epil = fmul double %conv8.i.epil, 2.000000e+00
  %div.i.epil = fdiv double %mul.i.epil, 4.000000e+03
  %arrayidx13.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i.unr
  store double %div.i.epil, double* %arrayidx13.i.epil, align 8, !tbaa !2
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc14.i.unr-lcssa, %for.body6.i.epil
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc14.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc25.i, %init_array.exit
  %indvars.iv.i25 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next.i27, %for.inc25.i ]
  %t2.03.i = phi i32 [ 0, %init_array.exit ], [ %inc26.i, %for.inc25.i ]
  %arrayidx.i26 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i25
  %arrayidx24.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i25
  %indvars.iv.next22.i = or i64 %indvars.iv.i25, 1
  %10 = bitcast double* %arrayidx.i26 to <2 x double>*
  %11 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !2
  %12 = bitcast double* %arrayidx24.i to <2 x double>*
  store <2 x double> %11, <2 x double>* %12, align 8, !tbaa !2
  %indvars.iv.next22.1.i = add nuw nsw i64 %indvars.iv.next22.i, 1
  %arrayidx.2.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.1.i
  %arrayidx24.2.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.1.i
  %indvars.iv.next22.2.i = or i64 %indvars.iv.i25, 3
  %13 = bitcast double* %arrayidx.2.i to <2 x double>*
  %14 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !2
  %15 = bitcast double* %arrayidx24.2.i to <2 x double>*
  store <2 x double> %14, <2 x double>* %15, align 8, !tbaa !2
  %indvars.iv.next22.3.i = add nuw nsw i64 %indvars.iv.next22.2.i, 1
  %arrayidx.4.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.3.i
  %arrayidx24.4.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.3.i
  %16 = bitcast double* %arrayidx.4.i to <2 x double>*
  %17 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %18 = bitcast double* %arrayidx24.4.i to <2 x double>*
  store <2 x double> %17, <2 x double>* %18, align 8, !tbaa !2
  %indvars.iv.next22.5.i = add nuw nsw i64 %indvars.iv.next22.2.i, 3
  %arrayidx.6.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.5.i
  %arrayidx24.6.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.5.i
  %indvars.iv.next22.6.i = or i64 %indvars.iv.i25, 7
  %19 = bitcast double* %arrayidx.6.i to <2 x double>*
  %20 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !2
  %21 = bitcast double* %arrayidx24.6.i to <2 x double>*
  store <2 x double> %20, <2 x double>* %21, align 8, !tbaa !2
  %indvars.iv.next22.7.i = add nuw nsw i64 %indvars.iv.next22.6.i, 1
  %arrayidx.8.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.7.i
  %arrayidx24.8.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.7.i
  %22 = bitcast double* %arrayidx.8.i to <2 x double>*
  %23 = load <2 x double>, <2 x double>* %22, align 8, !tbaa !2
  %24 = bitcast double* %arrayidx24.8.i to <2 x double>*
  store <2 x double> %23, <2 x double>* %24, align 8, !tbaa !2
  %indvars.iv.next22.9.i = add nuw nsw i64 %indvars.iv.next22.6.i, 3
  %arrayidx.10.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.9.i
  %arrayidx24.10.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.9.i
  %25 = bitcast double* %arrayidx.10.i to <2 x double>*
  %26 = load <2 x double>, <2 x double>* %25, align 8, !tbaa !2
  %27 = bitcast double* %arrayidx24.10.i to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 8, !tbaa !2
  %indvars.iv.next22.11.i = add nuw nsw i64 %indvars.iv.next22.6.i, 5
  %arrayidx.12.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.11.i
  %arrayidx24.12.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.11.i
  %28 = bitcast double* %arrayidx.12.i to <2 x double>*
  %29 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !2
  %30 = bitcast double* %arrayidx24.12.i to <2 x double>*
  store <2 x double> %29, <2 x double>* %30, align 8, !tbaa !2
  %indvars.iv.next22.13.i = add nuw nsw i64 %indvars.iv.next22.6.i, 7
  %arrayidx.14.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.13.i
  %arrayidx24.14.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.13.i
  %indvars.iv.next22.14.i = or i64 %indvars.iv.i25, 15
  %31 = bitcast double* %arrayidx.14.i to <2 x double>*
  %32 = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %33 = bitcast double* %arrayidx24.14.i to <2 x double>*
  store <2 x double> %32, <2 x double>* %33, align 8, !tbaa !2
  %indvars.iv.next22.15.i = add nuw nsw i64 %indvars.iv.next22.14.i, 1
  %arrayidx.16.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.15.i
  %arrayidx24.16.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.15.i
  %34 = bitcast double* %arrayidx.16.i to <2 x double>*
  %35 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %36 = bitcast double* %arrayidx24.16.i to <2 x double>*
  store <2 x double> %35, <2 x double>* %36, align 8, !tbaa !2
  %indvars.iv.next22.17.i = add nuw nsw i64 %indvars.iv.next22.14.i, 3
  %arrayidx.18.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.17.i
  %arrayidx24.18.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.17.i
  %37 = bitcast double* %arrayidx.18.i to <2 x double>*
  %38 = load <2 x double>, <2 x double>* %37, align 8, !tbaa !2
  %39 = bitcast double* %arrayidx24.18.i to <2 x double>*
  store <2 x double> %38, <2 x double>* %39, align 8, !tbaa !2
  %indvars.iv.next22.19.i = add nuw nsw i64 %indvars.iv.next22.14.i, 5
  %arrayidx.20.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.19.i
  %arrayidx24.20.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.19.i
  %40 = bitcast double* %arrayidx.20.i to <2 x double>*
  %41 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !2
  %42 = bitcast double* %arrayidx24.20.i to <2 x double>*
  store <2 x double> %41, <2 x double>* %42, align 8, !tbaa !2
  %indvars.iv.next22.21.i = add nuw nsw i64 %indvars.iv.next22.14.i, 7
  %arrayidx.22.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.21.i
  %arrayidx24.22.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.21.i
  %43 = bitcast double* %arrayidx.22.i to <2 x double>*
  %44 = load <2 x double>, <2 x double>* %43, align 8, !tbaa !2
  %45 = bitcast double* %arrayidx24.22.i to <2 x double>*
  store <2 x double> %44, <2 x double>* %45, align 8, !tbaa !2
  %indvars.iv.next22.23.i = add nuw nsw i64 %indvars.iv.next22.14.i, 9
  %arrayidx.24.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.23.i
  %arrayidx24.24.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.23.i
  %46 = bitcast double* %arrayidx.24.i to <2 x double>*
  %47 = load <2 x double>, <2 x double>* %46, align 8, !tbaa !2
  %48 = bitcast double* %arrayidx24.24.i to <2 x double>*
  store <2 x double> %47, <2 x double>* %48, align 8, !tbaa !2
  %indvars.iv.next22.25.i = add nuw nsw i64 %indvars.iv.next22.14.i, 11
  %arrayidx.26.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.25.i
  %arrayidx24.26.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.25.i
  %49 = bitcast double* %arrayidx.26.i to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %51 = bitcast double* %arrayidx24.26.i to <2 x double>*
  store <2 x double> %50, <2 x double>* %51, align 8, !tbaa !2
  %indvars.iv.next22.27.i = add nuw nsw i64 %indvars.iv.next22.14.i, 13
  %arrayidx.28.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.27.i
  %arrayidx24.28.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.27.i
  %52 = bitcast double* %arrayidx.28.i to <2 x double>*
  %53 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2
  %54 = bitcast double* %arrayidx24.28.i to <2 x double>*
  store <2 x double> %53, <2 x double>* %54, align 8, !tbaa !2
  %indvars.iv.next22.29.i = add nuw nsw i64 %indvars.iv.next22.14.i, 15
  %arrayidx.30.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next22.29.i
  %arrayidx24.30.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next22.29.i
  %55 = bitcast double* %arrayidx.30.i to <2 x double>*
  %56 = load <2 x double>, <2 x double>* %55, align 8, !tbaa !2
  %57 = bitcast double* %arrayidx24.30.i to <2 x double>*
  store <2 x double> %56, <2 x double>* %57, align 8, !tbaa !2
  %inc26.i = add nuw nsw i32 %t2.03.i, 1
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 32
  %exitcond.not.i28 = icmp eq i32 %inc26.i, 125
  br i1 %exitcond.not.i28, label %for.body47.preheader.i, label %for.inc25.i, !llvm.loop !9

for.body47.preheader.i:                           ; preds = %for.inc25.i, %for.inc156.i
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc156.i ], [ 1, %for.inc25.i ]
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.inc156.i ], [ 0, %for.inc25.i ]
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %for.inc156.i ], [ 32, %for.inc25.i ]
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc156.i ], [ 1, %for.inc25.i ]
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.inc156.i ], [ 0, %for.inc25.i ]
  %58 = shl nsw i64 %indvars.iv68.i, 5
  %arrayidx92.i = getelementptr inbounds double, double* %arraydecay3, i64 %58
  %arrayidx98.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %58, i64 %58
  %arrayidx132.i.prol = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv32.i
  %indvars.iv.next41.i.prol = or i64 %indvars.iv32.i, 1
  br label %for.body47.i

for.body47.i:                                     ; preds = %for.inc153.i, %for.body47.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc153.i ], [ 0, %for.body47.preheader.i ]
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.inc153.i ], [ 0, %for.body47.preheader.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp49.not.not.not.i = icmp ugt i64 %indvars.iv68.i, %indvars.iv
  br i1 %cmp49.not.not.not.i, label %for.body65.lr.ph.i, label %if.end.i

for.body65.lr.ph.i:                               ; preds = %for.body47.i
  %arrayidx77.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv25.i
  %indvars.iv.next28.i = or i64 %indvars.iv25.i, 1
  %arrayidx77.1.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.i
  %indvars.iv.next28.1.i = add nuw nsw i64 %indvars.iv.next28.i, 1
  %arrayidx77.2.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.1.i
  %indvars.iv.next28.2.i = or i64 %indvars.iv25.i, 3
  %arrayidx77.3.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.2.i
  %indvars.iv.next28.3.i = add nuw nsw i64 %indvars.iv.next28.2.i, 1
  %arrayidx77.4.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.3.i
  %indvars.iv.next28.4.i = add nuw nsw i64 %indvars.iv.next28.2.i, 2
  %arrayidx77.5.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.4.i
  %indvars.iv.next28.5.i = add nuw nsw i64 %indvars.iv.next28.2.i, 3
  %arrayidx77.6.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.5.i
  %indvars.iv.next28.6.i = or i64 %indvars.iv25.i, 7
  %arrayidx77.7.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.6.i
  %indvars.iv.next28.7.i = add nuw nsw i64 %indvars.iv.next28.6.i, 1
  %arrayidx77.8.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.7.i
  %indvars.iv.next28.8.i = add nuw nsw i64 %indvars.iv.next28.6.i, 2
  %arrayidx77.9.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.8.i
  %indvars.iv.next28.9.i = add nuw nsw i64 %indvars.iv.next28.6.i, 3
  %arrayidx77.10.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.9.i
  %indvars.iv.next28.10.i = add nuw nsw i64 %indvars.iv.next28.6.i, 4
  %arrayidx77.11.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.10.i
  %indvars.iv.next28.11.i = add nuw nsw i64 %indvars.iv.next28.6.i, 5
  %arrayidx77.12.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.11.i
  %indvars.iv.next28.12.i = add nuw nsw i64 %indvars.iv.next28.6.i, 6
  %arrayidx77.13.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.12.i
  %indvars.iv.next28.13.i = add nuw nsw i64 %indvars.iv.next28.6.i, 7
  %arrayidx77.14.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.13.i
  %indvars.iv.next28.14.i = or i64 %indvars.iv25.i, 15
  %arrayidx77.15.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.14.i
  %indvars.iv.next28.15.i = add nuw nsw i64 %indvars.iv.next28.14.i, 1
  %arrayidx77.16.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.15.i
  %indvars.iv.next28.16.i = add nuw nsw i64 %indvars.iv.next28.14.i, 2
  %arrayidx77.17.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.16.i
  %indvars.iv.next28.17.i = add nuw nsw i64 %indvars.iv.next28.14.i, 3
  %arrayidx77.18.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.17.i
  %indvars.iv.next28.18.i = add nuw nsw i64 %indvars.iv.next28.14.i, 4
  %arrayidx77.19.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.18.i
  %indvars.iv.next28.19.i = add nuw nsw i64 %indvars.iv.next28.14.i, 5
  %arrayidx77.20.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.19.i
  %indvars.iv.next28.20.i = add nuw nsw i64 %indvars.iv.next28.14.i, 6
  %arrayidx77.21.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.20.i
  %indvars.iv.next28.21.i = add nuw nsw i64 %indvars.iv.next28.14.i, 7
  %arrayidx77.22.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.21.i
  %indvars.iv.next28.22.i = add nuw nsw i64 %indvars.iv.next28.14.i, 8
  %arrayidx77.23.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.22.i
  %indvars.iv.next28.23.i = add nuw nsw i64 %indvars.iv.next28.14.i, 9
  %arrayidx77.24.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.23.i
  %indvars.iv.next28.24.i = add nuw nsw i64 %indvars.iv.next28.14.i, 10
  %arrayidx77.25.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.24.i
  %indvars.iv.next28.25.i = add nuw nsw i64 %indvars.iv.next28.14.i, 11
  %arrayidx77.26.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.25.i
  %indvars.iv.next28.26.i = add nuw nsw i64 %indvars.iv.next28.14.i, 12
  %arrayidx77.27.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.26.i
  %indvars.iv.next28.27.i = add nuw nsw i64 %indvars.iv.next28.14.i, 13
  %arrayidx77.28.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.27.i
  %indvars.iv.next28.28.i = add nuw nsw i64 %indvars.iv.next28.14.i, 14
  %arrayidx77.29.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.28.i
  %indvars.iv.next28.29.i = add nuw nsw i64 %indvars.iv.next28.14.i, 15
  %arrayidx77.30.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.29.i
  %indvars.iv.next28.30.i = or i64 %indvars.iv25.i, 31
  %arrayidx77.31.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.30.i
  br label %for.body65.i

for.body65.i:                                     ; preds = %for.body65.i, %for.body65.lr.ph.i
  %indvars.iv34.i = phi i64 [ %indvars.iv32.i, %for.body65.lr.ph.i ], [ %indvars.iv.next35.i, %for.body65.i ]
  %arrayidx80.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv34.i
  %arrayidx75.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv25.i
  %59 = load double, double* %arrayidx75.i, align 8, !tbaa !2
  %60 = load double, double* %arrayidx77.i, align 8, !tbaa !2
  %mul78.i = fmul double %59, %60
  %61 = load double, double* %arrayidx80.i, align 8, !tbaa !2
  %sub81.i = fsub double %61, %mul78.i
  store double %sub81.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.1.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.i
  %62 = load double, double* %arrayidx75.1.i, align 8, !tbaa !2
  %63 = load double, double* %arrayidx77.1.i, align 8, !tbaa !2
  %mul78.1.i = fmul double %62, %63
  %sub81.1.i = fsub double %sub81.i, %mul78.1.i
  store double %sub81.1.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.2.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.1.i
  %64 = load double, double* %arrayidx75.2.i, align 8, !tbaa !2
  %65 = load double, double* %arrayidx77.2.i, align 8, !tbaa !2
  %mul78.2.i = fmul double %64, %65
  %sub81.2.i = fsub double %sub81.1.i, %mul78.2.i
  store double %sub81.2.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.3.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.2.i
  %66 = load double, double* %arrayidx75.3.i, align 8, !tbaa !2
  %67 = load double, double* %arrayidx77.3.i, align 8, !tbaa !2
  %mul78.3.i = fmul double %66, %67
  %sub81.3.i = fsub double %sub81.2.i, %mul78.3.i
  store double %sub81.3.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.4.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.3.i
  %68 = load double, double* %arrayidx75.4.i, align 8, !tbaa !2
  %69 = load double, double* %arrayidx77.4.i, align 8, !tbaa !2
  %mul78.4.i = fmul double %68, %69
  %sub81.4.i = fsub double %sub81.3.i, %mul78.4.i
  store double %sub81.4.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.5.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.4.i
  %70 = load double, double* %arrayidx75.5.i, align 8, !tbaa !2
  %71 = load double, double* %arrayidx77.5.i, align 8, !tbaa !2
  %mul78.5.i = fmul double %70, %71
  %sub81.5.i = fsub double %sub81.4.i, %mul78.5.i
  store double %sub81.5.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.6.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.5.i
  %72 = load double, double* %arrayidx75.6.i, align 8, !tbaa !2
  %73 = load double, double* %arrayidx77.6.i, align 8, !tbaa !2
  %mul78.6.i = fmul double %72, %73
  %sub81.6.i = fsub double %sub81.5.i, %mul78.6.i
  store double %sub81.6.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.7.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.6.i
  %74 = load double, double* %arrayidx75.7.i, align 8, !tbaa !2
  %75 = load double, double* %arrayidx77.7.i, align 8, !tbaa !2
  %mul78.7.i = fmul double %74, %75
  %sub81.7.i = fsub double %sub81.6.i, %mul78.7.i
  store double %sub81.7.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.7.i
  %76 = load double, double* %arrayidx75.8.i, align 8, !tbaa !2
  %77 = load double, double* %arrayidx77.8.i, align 8, !tbaa !2
  %mul78.8.i = fmul double %76, %77
  %sub81.8.i = fsub double %sub81.7.i, %mul78.8.i
  store double %sub81.8.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.9.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.8.i
  %78 = load double, double* %arrayidx75.9.i, align 8, !tbaa !2
  %79 = load double, double* %arrayidx77.9.i, align 8, !tbaa !2
  %mul78.9.i = fmul double %78, %79
  %sub81.9.i = fsub double %sub81.8.i, %mul78.9.i
  store double %sub81.9.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.10.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.9.i
  %80 = load double, double* %arrayidx75.10.i, align 8, !tbaa !2
  %81 = load double, double* %arrayidx77.10.i, align 8, !tbaa !2
  %mul78.10.i = fmul double %80, %81
  %sub81.10.i = fsub double %sub81.9.i, %mul78.10.i
  store double %sub81.10.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.11.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.10.i
  %82 = load double, double* %arrayidx75.11.i, align 8, !tbaa !2
  %83 = load double, double* %arrayidx77.11.i, align 8, !tbaa !2
  %mul78.11.i = fmul double %82, %83
  %sub81.11.i = fsub double %sub81.10.i, %mul78.11.i
  store double %sub81.11.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.12.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.11.i
  %84 = load double, double* %arrayidx75.12.i, align 8, !tbaa !2
  %85 = load double, double* %arrayidx77.12.i, align 8, !tbaa !2
  %mul78.12.i = fmul double %84, %85
  %sub81.12.i = fsub double %sub81.11.i, %mul78.12.i
  store double %sub81.12.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.13.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.12.i
  %86 = load double, double* %arrayidx75.13.i, align 8, !tbaa !2
  %87 = load double, double* %arrayidx77.13.i, align 8, !tbaa !2
  %mul78.13.i = fmul double %86, %87
  %sub81.13.i = fsub double %sub81.12.i, %mul78.13.i
  store double %sub81.13.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.14.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.13.i
  %88 = load double, double* %arrayidx75.14.i, align 8, !tbaa !2
  %89 = load double, double* %arrayidx77.14.i, align 8, !tbaa !2
  %mul78.14.i = fmul double %88, %89
  %sub81.14.i = fsub double %sub81.13.i, %mul78.14.i
  store double %sub81.14.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.15.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.14.i
  %90 = load double, double* %arrayidx75.15.i, align 8, !tbaa !2
  %91 = load double, double* %arrayidx77.15.i, align 8, !tbaa !2
  %mul78.15.i = fmul double %90, %91
  %sub81.15.i = fsub double %sub81.14.i, %mul78.15.i
  store double %sub81.15.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.16.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.15.i
  %92 = load double, double* %arrayidx75.16.i, align 8, !tbaa !2
  %93 = load double, double* %arrayidx77.16.i, align 8, !tbaa !2
  %mul78.16.i = fmul double %92, %93
  %sub81.16.i = fsub double %sub81.15.i, %mul78.16.i
  store double %sub81.16.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.17.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.16.i
  %94 = load double, double* %arrayidx75.17.i, align 8, !tbaa !2
  %95 = load double, double* %arrayidx77.17.i, align 8, !tbaa !2
  %mul78.17.i = fmul double %94, %95
  %sub81.17.i = fsub double %sub81.16.i, %mul78.17.i
  store double %sub81.17.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.18.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.17.i
  %96 = load double, double* %arrayidx75.18.i, align 8, !tbaa !2
  %97 = load double, double* %arrayidx77.18.i, align 8, !tbaa !2
  %mul78.18.i = fmul double %96, %97
  %sub81.18.i = fsub double %sub81.17.i, %mul78.18.i
  store double %sub81.18.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.19.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.18.i
  %98 = load double, double* %arrayidx75.19.i, align 8, !tbaa !2
  %99 = load double, double* %arrayidx77.19.i, align 8, !tbaa !2
  %mul78.19.i = fmul double %98, %99
  %sub81.19.i = fsub double %sub81.18.i, %mul78.19.i
  store double %sub81.19.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.19.i
  %100 = load double, double* %arrayidx75.20.i, align 8, !tbaa !2
  %101 = load double, double* %arrayidx77.20.i, align 8, !tbaa !2
  %mul78.20.i = fmul double %100, %101
  %sub81.20.i = fsub double %sub81.19.i, %mul78.20.i
  store double %sub81.20.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.21.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.20.i
  %102 = load double, double* %arrayidx75.21.i, align 8, !tbaa !2
  %103 = load double, double* %arrayidx77.21.i, align 8, !tbaa !2
  %mul78.21.i = fmul double %102, %103
  %sub81.21.i = fsub double %sub81.20.i, %mul78.21.i
  store double %sub81.21.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.22.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.21.i
  %104 = load double, double* %arrayidx75.22.i, align 8, !tbaa !2
  %105 = load double, double* %arrayidx77.22.i, align 8, !tbaa !2
  %mul78.22.i = fmul double %104, %105
  %sub81.22.i = fsub double %sub81.21.i, %mul78.22.i
  store double %sub81.22.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.23.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.22.i
  %106 = load double, double* %arrayidx75.23.i, align 8, !tbaa !2
  %107 = load double, double* %arrayidx77.23.i, align 8, !tbaa !2
  %mul78.23.i = fmul double %106, %107
  %sub81.23.i = fsub double %sub81.22.i, %mul78.23.i
  store double %sub81.23.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.23.i
  %108 = load double, double* %arrayidx75.24.i, align 8, !tbaa !2
  %109 = load double, double* %arrayidx77.24.i, align 8, !tbaa !2
  %mul78.24.i = fmul double %108, %109
  %sub81.24.i = fsub double %sub81.23.i, %mul78.24.i
  store double %sub81.24.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.25.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.24.i
  %110 = load double, double* %arrayidx75.25.i, align 8, !tbaa !2
  %111 = load double, double* %arrayidx77.25.i, align 8, !tbaa !2
  %mul78.25.i = fmul double %110, %111
  %sub81.25.i = fsub double %sub81.24.i, %mul78.25.i
  store double %sub81.25.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.26.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.25.i
  %112 = load double, double* %arrayidx75.26.i, align 8, !tbaa !2
  %113 = load double, double* %arrayidx77.26.i, align 8, !tbaa !2
  %mul78.26.i = fmul double %112, %113
  %sub81.26.i = fsub double %sub81.25.i, %mul78.26.i
  store double %sub81.26.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.27.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.26.i
  %114 = load double, double* %arrayidx75.27.i, align 8, !tbaa !2
  %115 = load double, double* %arrayidx77.27.i, align 8, !tbaa !2
  %mul78.27.i = fmul double %114, %115
  %sub81.27.i = fsub double %sub81.26.i, %mul78.27.i
  store double %sub81.27.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.28.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.27.i
  %116 = load double, double* %arrayidx75.28.i, align 8, !tbaa !2
  %117 = load double, double* %arrayidx77.28.i, align 8, !tbaa !2
  %mul78.28.i = fmul double %116, %117
  %sub81.28.i = fsub double %sub81.27.i, %mul78.28.i
  store double %sub81.28.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.29.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.28.i
  %118 = load double, double* %arrayidx75.29.i, align 8, !tbaa !2
  %119 = load double, double* %arrayidx77.29.i, align 8, !tbaa !2
  %mul78.29.i = fmul double %118, %119
  %sub81.29.i = fsub double %sub81.28.i, %mul78.29.i
  store double %sub81.29.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.30.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.29.i
  %120 = load double, double* %arrayidx75.30.i, align 8, !tbaa !2
  %121 = load double, double* %arrayidx77.30.i, align 8, !tbaa !2
  %mul78.30.i = fmul double %120, %121
  %sub81.30.i = fsub double %sub81.29.i, %mul78.30.i
  store double %sub81.30.i, double* %arrayidx80.i, align 8, !tbaa !2
  %arrayidx75.31.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv.next28.30.i
  %122 = load double, double* %arrayidx75.31.i, align 8, !tbaa !2
  %123 = load double, double* %arrayidx77.31.i, align 8, !tbaa !2
  %mul78.31.i = fmul double %122, %123
  %sub81.31.i = fsub double %sub81.30.i, %mul78.31.i
  store double %sub81.31.i, double* %arrayidx80.i, align 8, !tbaa !2
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next35.i, %indvars.iv66.i
  br i1 %exitcond39.not.i, label %if.end.i, label %for.body65.i, !llvm.loop !10

if.end.i:                                         ; preds = %for.body65.i, %for.body47.i
  %cmp88.i = icmp eq i64 %indvars.iv68.i, %indvars.iv
  br i1 %cmp88.i, label %if.then89.i, label %for.inc153.i

if.then89.i:                                      ; preds = %if.end.i
  %124 = load double, double* %arrayidx92.i, align 8, !tbaa !2
  %125 = load double, double* %arrayidx98.i, align 8, !tbaa !2
  %div99.i = fdiv double %124, %125
  store double %div99.i, double* %arrayidx92.i, align 8, !tbaa !2
  br label %for.cond123.preheader.i

for.cond123.preheader.i:                          ; preds = %for.end139.i, %if.then89.i
  %indvar = phi i64 [ %indvar.next, %for.end139.i ], [ 0, %if.then89.i ]
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.end139.i ], [ %indvars.iv44.i, %if.then89.i ]
  %cmp125.not.not7.i = icmp ult i64 %58, %indvars.iv46.i
  %arrayidx135.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv46.i
  %.pre.i = load double, double* %arrayidx135.i, align 8, !tbaa !2
  br i1 %cmp125.not.not7.i, label %for.body126.i.preheader, label %for.end139.i

for.body126.i.preheader:                          ; preds = %for.cond123.preheader.i
  %126 = and i64 %indvar, 1
  %lcmp.mod37.not.not = icmp eq i64 %126, 0
  br i1 %lcmp.mod37.not.not, label %for.body126.i.prol, label %for.body126.i.prol.loopexit

for.body126.i.prol:                               ; preds = %for.body126.i.preheader
  %arrayidx130.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv32.i
  %127 = load double, double* %arrayidx130.i.prol, align 8, !tbaa !2
  %128 = load double, double* %arrayidx132.i.prol, align 8, !tbaa !2
  %mul133.i.prol = fmul double %127, %128
  %sub136.i.prol = fsub double %.pre.i, %mul133.i.prol
  store double %sub136.i.prol, double* %arrayidx135.i, align 8, !tbaa !2
  br label %for.body126.i.prol.loopexit

for.body126.i.prol.loopexit:                      ; preds = %for.body126.i.prol, %for.body126.i.preheader
  %sub136.i.lcssa.unr.ph = phi double [ %sub136.i.prol, %for.body126.i.prol ], [ undef, %for.body126.i.preheader ]
  %.unr.ph = phi double [ %sub136.i.prol, %for.body126.i.prol ], [ %.pre.i, %for.body126.i.preheader ]
  %indvars.iv40.i.unr.ph = phi i64 [ %indvars.iv.next41.i.prol, %for.body126.i.prol ], [ %indvars.iv32.i, %for.body126.i.preheader ]
  %129 = icmp eq i64 %indvar, 0
  br i1 %129, label %for.end139.i, label %for.body126.i

for.body126.i:                                    ; preds = %for.body126.i.prol.loopexit, %for.body126.i
  %130 = phi double [ %sub136.i.1, %for.body126.i ], [ %.unr.ph, %for.body126.i.prol.loopexit ]
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i.1, %for.body126.i ], [ %indvars.iv40.i.unr.ph, %for.body126.i.prol.loopexit ]
  %arrayidx130.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv40.i
  %131 = load double, double* %arrayidx130.i, align 8, !tbaa !2
  %arrayidx132.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv40.i
  %132 = load double, double* %arrayidx132.i, align 8, !tbaa !2
  %mul133.i = fmul double %131, %132
  %sub136.i = fsub double %130, %mul133.i
  store double %sub136.i, double* %arrayidx135.i, align 8, !tbaa !2
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %arrayidx130.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv.next41.i
  %133 = load double, double* %arrayidx130.i.1, align 8, !tbaa !2
  %arrayidx132.i.1 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next41.i
  %134 = load double, double* %arrayidx132.i.1, align 8, !tbaa !2
  %mul133.i.1 = fmul double %133, %134
  %sub136.i.1 = fsub double %sub136.i, %mul133.i.1
  store double %sub136.i.1, double* %arrayidx135.i, align 8, !tbaa !2
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %exitcond43.not.i.1 = icmp eq i64 %indvars.iv.next41.i.1, %indvars.iv46.i
  br i1 %exitcond43.not.i.1, label %for.end139.i, label %for.body126.i, !llvm.loop !11

for.end139.i:                                     ; preds = %for.body126.i.prol.loopexit, %for.body126.i, %for.cond123.preheader.i
  %135 = phi double [ %.pre.i, %for.cond123.preheader.i ], [ %sub136.i.lcssa.unr.ph, %for.body126.i.prol.loopexit ], [ %sub136.i.1, %for.body126.i ]
  %arrayidx141.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv46.i
  %arrayidx145.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv46.i
  %136 = load double, double* %arrayidx145.i, align 8, !tbaa !2
  %div146.i = fdiv double %135, %136
  store double %div146.i, double* %arrayidx141.i, align 8, !tbaa !2
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv66.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond49.not.i, label %for.inc153.i, label %for.cond123.preheader.i, !llvm.loop !12

for.inc153.i:                                     ; preds = %for.end139.i, %if.end.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 32
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next, %indvars.iv34
  br i1 %exitcond52.not.i, label %for.inc156.i, label %for.body47.i, !llvm.loop !13

for.inc156.i:                                     ; preds = %for.inc153.i
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 32
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 32
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 32
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next69.i, 125
  br i1 %exitcond75.not.i, label %kernel_trisolv.exit, label %for.body47.preheader.i, !llvm.loop !14

kernel_trisolv.exit:                              ; preds = %for.inc156.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %137 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %137, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %139 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %138) #7
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc.i, %if.then
  %indvars.iv.i29 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i32, %for.inc.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i ]
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx.i30 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i29
  %142 = load double, double* %arrayidx.i30, align 8, !tbaa !2
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %142) #7
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp3.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i31
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %143) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i31
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i29, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, 4000
  br i1 %exitcond.not.i33, label %print_array.exit, label %for.body.i31, !llvm.loop !17

print_array.exit:                                 ; preds = %for.inc.i
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %146 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %145) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* %call.i23) #6
  tail call void @free(i8* %call.i24) #6
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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
