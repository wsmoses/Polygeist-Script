; ModuleID = 'trisolv.plutopar.c'
source_filename = "trisolv.plutopar.c"
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
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #7
  %call.i23 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i24 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
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
  tail call void (...) @polybench_timer_start() #7
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc25.i, %init_array.exit
  %indvars.iv.i25 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next.i27, %for.inc25.i ]
  %t2.08.i = phi i32 [ 0, %init_array.exit ], [ %inc26.i, %for.inc25.i ]
  %arrayidx.i26 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i25
  %arrayidx24.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i25
  %indvars.iv.next28.i = or i64 %indvars.iv.i25, 1
  %10 = bitcast double* %arrayidx.i26 to <2 x double>*
  %11 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !2
  %12 = bitcast double* %arrayidx24.i to <2 x double>*
  store <2 x double> %11, <2 x double>* %12, align 8, !tbaa !2
  %indvars.iv.next28.1.i = add nuw nsw i64 %indvars.iv.next28.i, 1
  %arrayidx.2.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.1.i
  %arrayidx24.2.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.1.i
  %indvars.iv.next28.2.i = or i64 %indvars.iv.i25, 3
  %13 = bitcast double* %arrayidx.2.i to <2 x double>*
  %14 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !2
  %15 = bitcast double* %arrayidx24.2.i to <2 x double>*
  store <2 x double> %14, <2 x double>* %15, align 8, !tbaa !2
  %indvars.iv.next28.3.i = add nuw nsw i64 %indvars.iv.next28.2.i, 1
  %arrayidx.4.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.3.i
  %arrayidx24.4.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.3.i
  %16 = bitcast double* %arrayidx.4.i to <2 x double>*
  %17 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %18 = bitcast double* %arrayidx24.4.i to <2 x double>*
  store <2 x double> %17, <2 x double>* %18, align 8, !tbaa !2
  %indvars.iv.next28.5.i = add nuw nsw i64 %indvars.iv.next28.2.i, 3
  %arrayidx.6.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.5.i
  %arrayidx24.6.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.5.i
  %indvars.iv.next28.6.i = or i64 %indvars.iv.i25, 7
  %19 = bitcast double* %arrayidx.6.i to <2 x double>*
  %20 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !2
  %21 = bitcast double* %arrayidx24.6.i to <2 x double>*
  store <2 x double> %20, <2 x double>* %21, align 8, !tbaa !2
  %indvars.iv.next28.7.i = add nuw nsw i64 %indvars.iv.next28.6.i, 1
  %arrayidx.8.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.7.i
  %arrayidx24.8.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.7.i
  %22 = bitcast double* %arrayidx.8.i to <2 x double>*
  %23 = load <2 x double>, <2 x double>* %22, align 8, !tbaa !2
  %24 = bitcast double* %arrayidx24.8.i to <2 x double>*
  store <2 x double> %23, <2 x double>* %24, align 8, !tbaa !2
  %indvars.iv.next28.9.i = add nuw nsw i64 %indvars.iv.next28.6.i, 3
  %arrayidx.10.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.9.i
  %arrayidx24.10.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.9.i
  %25 = bitcast double* %arrayidx.10.i to <2 x double>*
  %26 = load <2 x double>, <2 x double>* %25, align 8, !tbaa !2
  %27 = bitcast double* %arrayidx24.10.i to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 8, !tbaa !2
  %indvars.iv.next28.11.i = add nuw nsw i64 %indvars.iv.next28.6.i, 5
  %arrayidx.12.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.11.i
  %arrayidx24.12.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.11.i
  %28 = bitcast double* %arrayidx.12.i to <2 x double>*
  %29 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !2
  %30 = bitcast double* %arrayidx24.12.i to <2 x double>*
  store <2 x double> %29, <2 x double>* %30, align 8, !tbaa !2
  %indvars.iv.next28.13.i = add nuw nsw i64 %indvars.iv.next28.6.i, 7
  %arrayidx.14.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.13.i
  %arrayidx24.14.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.13.i
  %indvars.iv.next28.14.i = or i64 %indvars.iv.i25, 15
  %31 = bitcast double* %arrayidx.14.i to <2 x double>*
  %32 = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %33 = bitcast double* %arrayidx24.14.i to <2 x double>*
  store <2 x double> %32, <2 x double>* %33, align 8, !tbaa !2
  %indvars.iv.next28.15.i = add nuw nsw i64 %indvars.iv.next28.14.i, 1
  %arrayidx.16.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.15.i
  %arrayidx24.16.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.15.i
  %34 = bitcast double* %arrayidx.16.i to <2 x double>*
  %35 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %36 = bitcast double* %arrayidx24.16.i to <2 x double>*
  store <2 x double> %35, <2 x double>* %36, align 8, !tbaa !2
  %indvars.iv.next28.17.i = add nuw nsw i64 %indvars.iv.next28.14.i, 3
  %arrayidx.18.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.17.i
  %arrayidx24.18.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.17.i
  %37 = bitcast double* %arrayidx.18.i to <2 x double>*
  %38 = load <2 x double>, <2 x double>* %37, align 8, !tbaa !2
  %39 = bitcast double* %arrayidx24.18.i to <2 x double>*
  store <2 x double> %38, <2 x double>* %39, align 8, !tbaa !2
  %indvars.iv.next28.19.i = add nuw nsw i64 %indvars.iv.next28.14.i, 5
  %arrayidx.20.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.19.i
  %arrayidx24.20.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.19.i
  %40 = bitcast double* %arrayidx.20.i to <2 x double>*
  %41 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !2
  %42 = bitcast double* %arrayidx24.20.i to <2 x double>*
  store <2 x double> %41, <2 x double>* %42, align 8, !tbaa !2
  %indvars.iv.next28.21.i = add nuw nsw i64 %indvars.iv.next28.14.i, 7
  %arrayidx.22.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.21.i
  %arrayidx24.22.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.21.i
  %43 = bitcast double* %arrayidx.22.i to <2 x double>*
  %44 = load <2 x double>, <2 x double>* %43, align 8, !tbaa !2
  %45 = bitcast double* %arrayidx24.22.i to <2 x double>*
  store <2 x double> %44, <2 x double>* %45, align 8, !tbaa !2
  %indvars.iv.next28.23.i = add nuw nsw i64 %indvars.iv.next28.14.i, 9
  %arrayidx.24.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.23.i
  %arrayidx24.24.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.23.i
  %46 = bitcast double* %arrayidx.24.i to <2 x double>*
  %47 = load <2 x double>, <2 x double>* %46, align 8, !tbaa !2
  %48 = bitcast double* %arrayidx24.24.i to <2 x double>*
  store <2 x double> %47, <2 x double>* %48, align 8, !tbaa !2
  %indvars.iv.next28.25.i = add nuw nsw i64 %indvars.iv.next28.14.i, 11
  %arrayidx.26.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.25.i
  %arrayidx24.26.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.25.i
  %49 = bitcast double* %arrayidx.26.i to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %51 = bitcast double* %arrayidx24.26.i to <2 x double>*
  store <2 x double> %50, <2 x double>* %51, align 8, !tbaa !2
  %indvars.iv.next28.27.i = add nuw nsw i64 %indvars.iv.next28.14.i, 13
  %arrayidx.28.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.27.i
  %arrayidx24.28.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.27.i
  %52 = bitcast double* %arrayidx.28.i to <2 x double>*
  %53 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2
  %54 = bitcast double* %arrayidx24.28.i to <2 x double>*
  store <2 x double> %53, <2 x double>* %54, align 8, !tbaa !2
  %indvars.iv.next28.29.i = add nuw nsw i64 %indvars.iv.next28.14.i, 15
  %arrayidx.30.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next28.29.i
  %arrayidx24.30.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next28.29.i
  %55 = bitcast double* %arrayidx.30.i to <2 x double>*
  %56 = load <2 x double>, <2 x double>* %55, align 8, !tbaa !2
  %57 = bitcast double* %arrayidx24.30.i to <2 x double>*
  store <2 x double> %56, <2 x double>* %57, align 8, !tbaa !2
  %inc26.i = add nuw nsw i32 %t2.08.i, 1
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 32
  %exitcond.not.i28 = icmp eq i32 %inc26.i, 125
  br i1 %exitcond.not.i28, label %for.body44.i, label %for.inc25.i, !llvm.loop !9

for.body44.i:                                     ; preds = %for.inc25.i, %for.inc232.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.inc232.i ], [ 0, %for.inc25.i ]
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.inc232.i ], [ 1, %for.inc25.i ]
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.inc232.i ], [ 0, %for.inc25.i ]
  %indvars.iv35.i = phi i32 [ %indvars.iv.next36.i, %for.inc232.i ], [ 0, %for.inc25.i ]
  %t2.123.i = phi i32 [ %inc233.i, %for.inc232.i ], [ 0, %for.inc25.i ]
  %cmp48.i = icmp ult i64 %indvars.iv54.i, 125
  %t2.123.i.tr = trunc i32 %t2.123.i to i16
  %58 = shl i16 %t2.123.i.tr, 5
  br i1 %cmp48.i, label %cond.end63.i, label %cond.false79.i

cond.end63.i:                                     ; preds = %for.body44.i
  %div54.neg.lhs.trunc.i = sub i16 3999, %58
  %cmp65.i = icmp sgt i16 %div54.neg.lhs.trunc.i, 31
  br i1 %cmp65.i, label %cond.false97.thread.i, label %cond.true72.i

cond.false97.thread.i:                            ; preds = %cond.end63.i
  %59 = trunc i64 %indvars.iv54.i to i32
  %div9865.i = lshr i32 %59, 1
  br label %for.body103.lr.ph.i

cond.true72.i:                                    ; preds = %cond.end63.i
  %div77.neg4.i = sdiv i16 %div54.neg.lhs.trunc.i, -32
  br label %cond.false97.i

cond.false79.i:                                   ; preds = %for.body44.i
  %div85.lhs.trunc.i = add i16 %58, -3968
  %div855.i = sdiv i16 %div85.lhs.trunc.i, 32
  br label %cond.false97.i

cond.false97.i:                                   ; preds = %cond.false79.i, %cond.true72.i
  %cond89.in.i = phi i16 [ %div77.neg4.i, %cond.true72.i ], [ %div855.i, %cond.false79.i ]
  %cond89.i = sext i16 %cond89.in.i to i32
  %60 = trunc i64 %indvars.iv54.i to i32
  %div98.i = lshr i32 %60, 1
  %cmp102.not20.i = icmp slt i32 %div98.i, %cond89.i
  br i1 %cmp102.not20.i, label %for.inc232.i, label %for.body103.lr.ph.i

for.body103.lr.ph.i:                              ; preds = %cond.false97.i, %cond.false97.thread.i
  %indvars.iv54.tr.i.pre-phi = phi i32 [ %60, %cond.false97.i ], [ %59, %cond.false97.thread.i ]
  %div9868.i = phi i32 [ %div98.i, %cond.false97.i ], [ %div9865.i, %cond.false97.thread.i ]
  %cond8967.i = phi i32 [ %cond89.i, %cond.false97.i ], [ 0, %cond.false97.thread.i ]
  %rem.i = and i32 %indvars.iv54.tr.i.pre-phi, 1
  %cmp154.i = icmp eq i32 %rem.i, 0
  %61 = shl nsw i64 %indvars.iv54.i, 4
  %arrayidx158.i = getelementptr inbounds double, double* %arraydecay3, i64 %61
  %arrayidx164.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %61, i64 %61
  %62 = or i64 %61, 1
  %cmp180.i = icmp ugt i64 %61, 3968
  %63 = add nuw nsw i64 %61, 31
  %64 = select i1 %cmp180.i, i64 3999, i64 %63
  %cmp188.not15.i = icmp ule i64 %62, %64
  %65 = shl nsw i32 %cond8967.i, 5
  %66 = sext i32 %65 to i64
  %67 = sub i32 %indvars.iv35.i, %65
  %68 = sext i32 %67 to i64
  %69 = sext i32 %cond8967.i to i64
  %70 = zext i32 %div9868.i to i64
  %smax = call i64 @llvm.smax.i64(i64 %69, i64 %70)
  %arrayidx203.us.us.i.prol = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv41.i
  %indvars.iv.next44.i.prol = or i64 %indvars.iv41.i, 1
  br label %for.body103.i

for.body103.i:                                    ; preds = %for.inc229.i, %for.body103.lr.ph.i
  %indvars.iv50.i = phi i64 [ %69, %for.body103.lr.ph.i ], [ %indvars.iv.next51.i, %for.inc229.i ]
  %indvars.iv37.i = phi i64 [ %68, %for.body103.lr.ph.i ], [ %indvars.iv.next38.i, %for.inc229.i ]
  %indvars.iv31.i = phi i64 [ %66, %for.body103.lr.ph.i ], [ %indvars.iv.next32.i, %for.inc229.i ]
  %71 = trunc i64 %indvars.iv50.i to i32
  %mul104.i = shl nsw i32 %71, 1
  %add105.i = or i32 %mul104.i, 1
  %72 = sext i32 %add105.i to i64
  %cmp106.not.i = icmp slt i64 %indvars.iv54.i, %72
  br i1 %cmp106.not.i, label %if.end.i, label %if.then107.i

if.then107.i:                                     ; preds = %for.body103.i
  %73 = sub i32 %indvars.iv54.tr.i.pre-phi, %71
  %sub110.i = shl i32 %73, 5
  %add116.i = or i32 %sub110.i, 31
  %74 = icmp slt i32 %add116.i, 3999
  %cond126.i = select i1 %74, i32 %add116.i, i32 3999
  %cmp127.not10.i = icmp sgt i32 %sub110.i, %cond126.i
  br i1 %cmp127.not10.i, label %if.end.i, label %for.cond130.preheader.lr.ph.i

for.cond130.preheader.lr.ph.i:                    ; preds = %if.then107.i
  %mul109.i = shl nsw i32 %71, 5
  %add132.i = or i32 %mul109.i, 31
  %75 = sext i32 %add132.i to i64
  %76 = sext i32 %cond126.i to i64
  br label %for.cond130.preheader.i

for.cond130.preheader.i:                          ; preds = %for.inc148.i, %for.cond130.preheader.lr.ph.i
  %indvars.iv39.i = phi i64 [ %indvars.iv37.i, %for.cond130.preheader.lr.ph.i ], [ %indvars.iv.next40.i, %for.inc148.i ]
  %arrayidx143.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv39.i
  %.pre.i = load double, double* %arrayidx143.i, align 8, !tbaa !2
  br label %for.body134.i

for.body134.i:                                    ; preds = %for.body134.i, %for.cond130.preheader.i
  %77 = phi double [ %.pre.i, %for.cond130.preheader.i ], [ %sub144.i, %for.body134.i ]
  %indvars.iv33.i = phi i64 [ %indvars.iv31.i, %for.cond130.preheader.i ], [ %indvars.iv.next34.i, %for.body134.i ]
  %arrayidx138.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv39.i, i64 %indvars.iv33.i
  %78 = load double, double* %arrayidx138.i, align 8, !tbaa !2
  %arrayidx140.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv33.i
  %79 = load double, double* %arrayidx140.i, align 8, !tbaa !2
  %mul141.i = fmul double %78, %79
  %sub144.i = fsub double %77, %mul141.i
  store double %sub144.i, double* %arrayidx143.i, align 8, !tbaa !2
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, 1
  %cmp133.not.not.i = icmp slt i64 %indvars.iv33.i, %75
  br i1 %cmp133.not.not.i, label %for.body134.i, label %for.inc148.i, !llvm.loop !10

for.inc148.i:                                     ; preds = %for.body134.i
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1
  %cmp127.not.not.i = icmp slt i64 %indvars.iv39.i, %76
  br i1 %cmp127.not.not.i, label %for.cond130.preheader.i, label %if.end.i, !llvm.loop !11

if.end.i:                                         ; preds = %for.inc148.i, %if.then107.i, %for.body103.i
  %80 = zext i32 %mul104.i to i64
  %cmp152.i = icmp eq i64 %indvars.iv54.i, %80
  %or.cond.i = and i1 %cmp154.i, %cmp152.i
  br i1 %or.cond.i, label %if.then155.i, label %if.end170.i

if.then155.i:                                     ; preds = %if.end.i
  %81 = load double, double* %arrayidx158.i, align 8, !tbaa !2
  %82 = load double, double* %arrayidx164.i, align 8, !tbaa !2
  %div165.i = fdiv double %81, %82
  store double %div165.i, double* %arrayidx158.i, align 8, !tbaa !2
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then155.i, %if.end.i
  %83 = and i1 %cmp188.not15.i, %cmp152.i
  %brmerge.demorgan.i = and i1 %cmp154.i, %83
  br i1 %brmerge.demorgan.i, label %for.cond191.preheader.us.i, label %for.inc229.i

for.cond191.preheader.us.i:                       ; preds = %if.end170.i, %for.end211.us.i
  %indvar = phi i64 [ %indvar.next, %for.end211.us.i ], [ 0, %if.end170.i ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.end211.us.i ], [ %indvars.iv46.i, %if.end170.i ]
  %cmp193.not.not12.us.i = icmp ult i64 %61, %indvars.iv48.i
  %arrayidx206.us.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv48.i
  %.pre62.i = load double, double* %arrayidx206.us.i, align 8, !tbaa !2
  br i1 %cmp193.not.not12.us.i, label %for.body194.us.us.i.preheader, label %for.end211.us.i

for.body194.us.us.i.preheader:                    ; preds = %for.cond191.preheader.us.i
  %84 = and i64 %indvar, 1
  %lcmp.mod35.not.not = icmp eq i64 %84, 0
  br i1 %lcmp.mod35.not.not, label %for.body194.us.us.i.prol, label %for.body194.us.us.i.prol.loopexit

for.body194.us.us.i.prol:                         ; preds = %for.body194.us.us.i.preheader
  %arrayidx201.us.us.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv48.i, i64 %indvars.iv41.i
  %85 = load double, double* %arrayidx201.us.us.i.prol, align 8, !tbaa !2
  %86 = load double, double* %arrayidx203.us.us.i.prol, align 8, !tbaa !2
  %mul204.us.us.i.prol = fmul double %85, %86
  %sub207.us.us.i.prol = fsub double %.pre62.i, %mul204.us.us.i.prol
  store double %sub207.us.us.i.prol, double* %arrayidx206.us.i, align 8, !tbaa !2
  br label %for.body194.us.us.i.prol.loopexit

for.body194.us.us.i.prol.loopexit:                ; preds = %for.body194.us.us.i.prol, %for.body194.us.us.i.preheader
  %sub207.us.us.i.lcssa.unr.ph = phi double [ %sub207.us.us.i.prol, %for.body194.us.us.i.prol ], [ undef, %for.body194.us.us.i.preheader ]
  %.unr.ph = phi double [ %sub207.us.us.i.prol, %for.body194.us.us.i.prol ], [ %.pre62.i, %for.body194.us.us.i.preheader ]
  %indvars.iv43.i.unr.ph = phi i64 [ %indvars.iv.next44.i.prol, %for.body194.us.us.i.prol ], [ %indvars.iv41.i, %for.body194.us.us.i.preheader ]
  %87 = icmp eq i64 %indvar, 0
  br i1 %87, label %for.end211.us.i, label %for.body194.us.us.i

for.end211.us.i:                                  ; preds = %for.body194.us.us.i.prol.loopexit, %for.body194.us.us.i, %for.cond191.preheader.us.i
  %88 = phi double [ %.pre62.i, %for.cond191.preheader.us.i ], [ %sub207.us.us.i.lcssa.unr.ph, %for.body194.us.us.i.prol.loopexit ], [ %sub207.us.us.i.1, %for.body194.us.us.i ]
  %arrayidx216.us.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv48.i
  %arrayidx220.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv48.i, i64 %indvars.iv48.i
  %89 = load double, double* %arrayidx220.us.i, align 8, !tbaa !2
  %div221.us.i = fdiv double %88, %89
  store double %div221.us.i, double* %arrayidx216.us.i, align 8, !tbaa !2
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %cmp188.not.us.not.i = icmp ult i64 %indvars.iv48.i, %64
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp188.not.us.not.i, label %for.cond191.preheader.us.i, label %for.inc229.i, !llvm.loop !12

for.body194.us.us.i:                              ; preds = %for.body194.us.us.i.prol.loopexit, %for.body194.us.us.i
  %90 = phi double [ %sub207.us.us.i.1, %for.body194.us.us.i ], [ %.unr.ph, %for.body194.us.us.i.prol.loopexit ]
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i.1, %for.body194.us.us.i ], [ %indvars.iv43.i.unr.ph, %for.body194.us.us.i.prol.loopexit ]
  %arrayidx201.us.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv48.i, i64 %indvars.iv43.i
  %91 = load double, double* %arrayidx201.us.us.i, align 8, !tbaa !2
  %arrayidx203.us.us.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv43.i
  %92 = load double, double* %arrayidx203.us.us.i, align 8, !tbaa !2
  %mul204.us.us.i = fmul double %91, %92
  %sub207.us.us.i = fsub double %90, %mul204.us.us.i
  store double %sub207.us.us.i, double* %arrayidx206.us.i, align 8, !tbaa !2
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %arrayidx201.us.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv48.i, i64 %indvars.iv.next44.i
  %93 = load double, double* %arrayidx201.us.us.i.1, align 8, !tbaa !2
  %arrayidx203.us.us.i.1 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next44.i
  %94 = load double, double* %arrayidx203.us.us.i.1, align 8, !tbaa !2
  %mul204.us.us.i.1 = fmul double %93, %94
  %sub207.us.us.i.1 = fsub double %sub207.us.us.i, %mul204.us.us.i.1
  store double %sub207.us.us.i.1, double* %arrayidx206.us.i, align 8, !tbaa !2
  %indvars.iv.next44.i.1 = add nuw nsw i64 %indvars.iv43.i, 2
  %exitcond45.not.i.1 = icmp eq i64 %indvars.iv.next44.i.1, %indvars.iv48.i
  br i1 %exitcond45.not.i.1, label %for.end211.us.i, label %for.body194.us.us.i, !llvm.loop !13

for.inc229.i:                                     ; preds = %for.end211.us.i, %if.end170.i
  %indvars.iv.next51.i = add nsw i64 %indvars.iv50.i, 1
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, 32
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -32
  %exitcond.not = icmp eq i64 %indvars.iv50.i, %smax
  br i1 %exitcond.not, label %for.inc232.i, label %for.body103.i, !llvm.loop !14

for.inc232.i:                                     ; preds = %for.inc229.i, %cond.false97.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %inc233.i = add nuw nsw i32 %t2.123.i, 1
  %indvars.iv.next36.i = add nuw nsw i32 %indvars.iv35.i, 32
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 16
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 16
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next55.i, 250
  br i1 %exitcond61.not.i, label %kernel_trisolv.exit, label %for.body44.i, !llvm.loop !15

kernel_trisolv.exit:                              ; preds = %for.inc232.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %95 = load i8*, i8** %argv, align 8, !tbaa !16
  %strcmpload = load i8, i8* %95, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %96) #8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc.i, %if.then
  %indvars.iv.i29 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i32, %for.inc.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i ]
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %arrayidx.i30 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i29
  %100 = load double, double* %arrayidx.i30, align 8, !tbaa !2
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %100) #8
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp3.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i31
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %101) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i31
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i29, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, 4000
  br i1 %exitcond.not.i33, label %print_array.exit, label %for.body.i31, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc.i
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !16
  %104 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %103) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i23) #7
  tail call void @free(i8* %call.i24) #7
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
declare i64 @llvm.smax.i64(i64, i64) #6

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
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = distinct !{!18, !7}
