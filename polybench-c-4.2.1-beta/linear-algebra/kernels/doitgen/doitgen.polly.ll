; ModuleID = 'doitgen.c'
source_filename = "doitgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @kernel_doitgen(i32 %nr, i32 %nq, i32 %np, [220 x [270 x double]]* nocapture %A, [270 x double]* nocapture readonly %C4, double* nocapture %sum) local_unnamed_addr #0 {
polly.split_new_and_old:
  %sum438 = bitcast double* %sum to i8*
  %0 = sext i32 %nq to i64
  %1 = icmp slt i32 %nq, 221
  %2 = sext i32 %np to i64
  %3 = icmp slt i32 %np, 271
  %4 = and i1 %1, %3
  %polly.access.sum = getelementptr double, double* %sum, i64 %2
  %5 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 0, i64 0, i64 0
  %6 = icmp ule double* %polly.access.sum, %5
  %7 = sext i32 %nr to i64
  %8 = mul nsw i64 %7, 220
  %9 = add nsw i64 %8, %0
  %10 = mul nsw i64 %9, 270
  %polly.access.mul.A200370 = add nsw i64 %2, -59670
  %polly.access.add.A204371 = add nsw i64 %polly.access.mul.A200370, %10
  %polly.access.A208 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 0, i64 0, i64 %polly.access.add.A204371
  %11 = icmp ule double* %polly.access.A208, %sum
  %12 = or i1 %6, %11
  %13 = and i1 %4, %12
  %14 = mul nsw i64 %2, 270
  %polly.access.mul.C4372 = add nsw i64 %2, -270
  %polly.access.add.C4373 = add nsw i64 %polly.access.mul.C4372, %14
  %polly.access.C4 = getelementptr [270 x double], [270 x double]* %C4, i64 0, i64 %polly.access.add.C4373
  %15 = icmp ule double* %polly.access.C4, %5
  %16 = getelementptr [270 x double], [270 x double]* %C4, i64 0, i64 0
  %17 = icmp ule double* %polly.access.A208, %16
  %18 = or i1 %15, %17
  %19 = and i1 %18, %13
  %20 = icmp ule double* %polly.access.C4, %sum
  %21 = icmp ule double* %polly.access.sum, %16
  %22 = or i1 %21, %20
  %23 = and i1 %22, %19
  %polly.loop_guard = icmp sgt i32 %nr, 0
  br i1 %23, label %polly.loop_if, label %entry.split

entry.split:                                      ; preds = %polly.split_new_and_old
  %cmp277 = icmp sgt i32 %nq, 0
  %or.cond = and i1 %polly.loop_guard, %cmp277
  %cmp573 = icmp sgt i32 %np, 0
  %or.cond177 = and i1 %or.cond, %cmp573
  br i1 %or.cond177, label %for.cond1.preheader.us.us.us.us.preheader, label %for.end44

for.cond1.preheader.us.us.us.us.preheader:        ; preds = %entry.split
  %wide.trip.count175 = zext i32 %nr to i64
  %wide.trip.count171 = zext i32 %nq to i64
  %wide.trip.count160 = zext i32 %np to i64
  %scevgep460 = getelementptr double, double* %sum, i64 %wide.trip.count160
  %24 = and i64 %wide.trip.count160, 4294967292
  %25 = add nsw i64 %24, -4
  %26 = lshr exact i64 %25, 2
  %27 = add nuw nsw i64 %26, 1
  %xtraiter = and i64 %wide.trip.count160, 1
  %28 = icmp eq i32 %np, 1
  %unroll_iter = and i64 %wide.trip.count160, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %np, 4
  %n.vec = and i64 %wide.trip.count160, 4294967292
  %xtraiter479 = and i64 %27, 3
  %29 = icmp ult i64 %25, 12
  %unroll_iter481 = and i64 %27, 9223372036854775804
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count160
  %xtraiter483 = and i64 %wide.trip.count160, 3
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br label %for.cond1.preheader.us.us.us.us

for.cond1.preheader.us.us.us.us:                  ; preds = %for.cond1.preheader.us.us.us.us.preheader, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us
  %indvars.iv173 = phi i64 [ 0, %for.cond1.preheader.us.us.us.us.preheader ], [ %indvars.iv.next174, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us ]
  br label %for.cond4.preheader.us.us.us.us.us.us.us

for.cond4.preheader.us.us.us.us.us.us.us:         ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, %for.cond1.preheader.us.us.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us ], [ 0, %for.cond1.preheader.us.us.us.us ]
  %scevgep = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 0
  %scevgep458 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %wide.trip.count160
  br label %for.body6.us.us.us.us.us.us.us.us

for.body27.us.us.us.us.us.us.us:                  ; preds = %for.body27.us.us.us.us.us.us.us.prol.loopexit, %for.body27.us.us.us.us.us.us.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %for.body27.us.us.us.us.us.us.us ], [ %indvars.iv165.unr, %for.body27.us.us.us.us.us.us.us.prol.loopexit ]
  %arrayidx29.us.us.us.us.us.us.us = getelementptr inbounds double, double* %sum, i64 %indvars.iv165
  %30 = load double, double* %arrayidx29.us.us.us.us.us.us.us, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv165
  store double %30, double* %arrayidx35.us.us.us.us.us.us.us, align 8, !tbaa !2
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %arrayidx29.us.us.us.us.us.us.us.1 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166
  %31 = load double, double* %arrayidx29.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166
  store double %31, double* %arrayidx35.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2
  %arrayidx29.us.us.us.us.us.us.us.2 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166.1
  %32 = load double, double* %arrayidx29.us.us.us.us.us.us.us.2, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.2 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166.1
  store double %32, double* %arrayidx35.us.us.us.us.us.us.us.2, align 8, !tbaa !2
  %indvars.iv.next166.2 = add nuw nsw i64 %indvars.iv165, 3
  %arrayidx29.us.us.us.us.us.us.us.3 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166.2
  %33 = load double, double* %arrayidx29.us.us.us.us.us.us.us.3, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.3 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166.2
  store double %33, double* %arrayidx35.us.us.us.us.us.us.us.3, align 8, !tbaa !2
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4
  %exitcond168.not.3 = icmp eq i64 %indvars.iv.next166.3, %wide.trip.count160
  br i1 %exitcond168.not.3, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us, !llvm.loop !6

for.body6.us.us.us.us.us.us.us.us:                ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us, %for.cond4.preheader.us.us.us.us.us.us.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us ], [ 0, %for.cond4.preheader.us.us.us.us.us.us.us ]
  %arrayidx.us.us.us.us.us.us.us.us = getelementptr inbounds double, double* %sum, i64 %indvars.iv158
  store double 0.000000e+00, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  br i1 %28, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa, label %for.body9.us.us.us.us.us.us.us.us

for.body9.us.us.us.us.us.us.us.us:                ; preds = %for.body6.us.us.us.us.us.us.us.us, %for.body9.us.us.us.us.us.us.us.us
  %34 = phi double [ %add.us.us.us.us.us.us.us.us.1, %for.body9.us.us.us.us.us.us.us.us ], [ 0.000000e+00, %for.body6.us.us.us.us.us.us.us.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body9.us.us.us.us.us.us.us.us ], [ 0, %for.body6.us.us.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.nsub.1, %for.body9.us.us.us.us.us.us.us.us ], [ %unroll_iter, %for.body6.us.us.us.us.us.us.us.us ]
  %arrayidx15.us.us.us.us.us.us.us.us = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv
  %35 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv, i64 %indvars.iv158
  %36 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us = fmul double %35, %36
  %add.us.us.us.us.us.us.us.us = fadd double %34, %mul.us.us.us.us.us.us.us.us
  store double %add.us.us.us.us.us.us.us.us, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx15.us.us.us.us.us.us.us.us.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next
  %37 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.1 = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv.next, i64 %indvars.iv158
  %38 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.1 = fmul double %37, %38
  %add.us.us.us.us.us.us.us.us.1 = fadd double %add.us.us.us.us.us.us.us.us, %mul.us.us.us.us.us.us.us.us.1
  store double %add.us.us.us.us.us.us.us.us.1, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa, label %for.body9.us.us.us.us.us.us.us.us, !llvm.loop !9

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %for.body9.us.us.us.us.us.us.us.us, %for.body6.us.us.us.us.us.us.us.us
  %.unr = phi double [ 0.000000e+00, %for.body6.us.us.us.us.us.us.us.us ], [ %add.us.us.us.us.us.us.us.us.1, %for.body9.us.us.us.us.us.us.us.us ]
  %indvars.iv.unr = phi i64 [ 0, %for.body6.us.us.us.us.us.us.us.us ], [ %indvars.iv.next.1, %for.body9.us.us.us.us.us.us.us.us ]
  br i1 %lcmp.mod.not, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us, label %for.body9.us.us.us.us.us.us.us.us.epil

for.body9.us.us.us.us.us.us.us.us.epil:           ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa
  %arrayidx15.us.us.us.us.us.us.us.us.epil = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.unr
  %39 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.epil, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.epil = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv.unr, i64 %indvars.iv158
  %40 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.epil, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.epil = fmul double %39, %40
  %add.us.us.us.us.us.us.us.us.epil = fadd double %.unr, %mul.us.us.us.us.us.us.us.us.epil
  store double %add.us.us.us.us.us.us.us.us.epil, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  br label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us: ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa, %for.body9.us.us.us.us.us.us.us.us.epil
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count160
  br i1 %exitcond161.not, label %for.body27.us.us.us.us.us.us.us.preheader, label %for.body6.us.us.us.us.us.us.us.us, !llvm.loop !10

for.body27.us.us.us.us.us.us.us.preheader:        ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us
  br i1 %min.iters.check, label %for.body27.us.us.us.us.us.us.us.preheader477, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body27.us.us.us.us.us.us.us.preheader
  %bound0 = icmp ult double* %scevgep, %scevgep460
  %bound1 = icmp ugt double* %scevgep458, %sum
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body27.us.us.us.us.us.us.us.preheader477, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  br i1 %29, label %middle.block.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.ph ]
  %niter482 = phi i64 [ %niter482.nsub.3, %vector.body ], [ %unroll_iter481, %vector.ph ]
  %41 = getelementptr inbounds double, double* %sum, i64 %index
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %42, align 8, !tbaa !2, !alias.scope !11
  %43 = getelementptr inbounds double, double* %41, i64 2
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load462 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2, !alias.scope !11
  %45 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index
  %46 = bitcast double* %45 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %46, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %47 = getelementptr inbounds double, double* %45, i64 2
  %48 = bitcast double* %47 to <2 x double>*
  store <2 x double> %wide.load462, <2 x double>* %48, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next = or i64 %index, 4
  %49 = getelementptr inbounds double, double* %sum, i64 %index.next
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %50, align 8, !tbaa !2, !alias.scope !11
  %51 = getelementptr inbounds double, double* %49, i64 2
  %52 = bitcast double* %51 to <2 x double>*
  %wide.load462.1 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2, !alias.scope !11
  %53 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %54, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %55 = getelementptr inbounds double, double* %53, i64 2
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> %wide.load462.1, <2 x double>* %56, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.1 = or i64 %index, 8
  %57 = getelementptr inbounds double, double* %sum, i64 %index.next.1
  %58 = bitcast double* %57 to <2 x double>*
  %wide.load.2 = load <2 x double>, <2 x double>* %58, align 8, !tbaa !2, !alias.scope !11
  %59 = getelementptr inbounds double, double* %57, i64 2
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load462.2 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !2, !alias.scope !11
  %61 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.1
  %62 = bitcast double* %61 to <2 x double>*
  store <2 x double> %wide.load.2, <2 x double>* %62, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %63 = getelementptr inbounds double, double* %61, i64 2
  %64 = bitcast double* %63 to <2 x double>*
  store <2 x double> %wide.load462.2, <2 x double>* %64, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.2 = or i64 %index, 12
  %65 = getelementptr inbounds double, double* %sum, i64 %index.next.2
  %66 = bitcast double* %65 to <2 x double>*
  %wide.load.3 = load <2 x double>, <2 x double>* %66, align 8, !tbaa !2, !alias.scope !11
  %67 = getelementptr inbounds double, double* %65, i64 2
  %68 = bitcast double* %67 to <2 x double>*
  %wide.load462.3 = load <2 x double>, <2 x double>* %68, align 8, !tbaa !2, !alias.scope !11
  %69 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.2
  %70 = bitcast double* %69 to <2 x double>*
  store <2 x double> %wide.load.3, <2 x double>* %70, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %71 = getelementptr inbounds double, double* %69, i64 2
  %72 = bitcast double* %71 to <2 x double>*
  store <2 x double> %wide.load462.3, <2 x double>* %72, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.3 = add i64 %index, 16
  %niter482.nsub.3 = add i64 %niter482, -4
  %niter482.ncmp.3 = icmp eq i64 %niter482.nsub.3, 0
  br i1 %niter482.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  br i1 %lcmp.mod480.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter479, %middle.block.unr-lcssa ]
  %73 = getelementptr inbounds double, double* %sum, i64 %index.epil
  %74 = bitcast double* %73 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %74, align 8, !tbaa !2, !alias.scope !11
  %75 = getelementptr inbounds double, double* %73, i64 2
  %76 = bitcast double* %75 to <2 x double>*
  %wide.load462.epil = load <2 x double>, <2 x double>* %76, align 8, !tbaa !2, !alias.scope !11
  %77 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.epil
  %78 = bitcast double* %77 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %78, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %79 = getelementptr inbounds double, double* %77, i64 2
  %80 = bitcast double* %79 to <2 x double>*
  store <2 x double> %wide.load462.epil, <2 x double>* %80, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !17

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  br i1 %cmp.n, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us.preheader477

for.body27.us.us.us.us.us.us.us.preheader477:     ; preds = %vector.memcheck, %for.body27.us.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body27.us.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ]
  %81 = xor i64 %indvars.iv165.ph, -1
  %82 = add nsw i64 %81, %wide.trip.count160
  br i1 %lcmp.mod484.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol

for.body27.us.us.us.us.us.us.us.prol:             ; preds = %for.body27.us.us.us.us.us.us.us.preheader477, %for.body27.us.us.us.us.us.us.us.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ], [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader477 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body27.us.us.us.us.us.us.us.prol ], [ %xtraiter483, %for.body27.us.us.us.us.us.us.us.preheader477 ]
  %arrayidx29.us.us.us.us.us.us.us.prol = getelementptr inbounds double, double* %sum, i64 %indvars.iv165.prol
  %83 = load double, double* %arrayidx29.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.prol = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv165.prol
  store double %83, double* %arrayidx35.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol, !llvm.loop !19

for.body27.us.us.us.us.us.us.us.prol.loopexit:    ; preds = %for.body27.us.us.us.us.us.us.us.prol, %for.body27.us.us.us.us.us.us.us.preheader477
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader477 ], [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ]
  %84 = icmp ult i64 %82, 3
  br i1 %84, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us

for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us: ; preds = %for.body27.us.us.us.us.us.us.us.prol.loopexit, %for.body27.us.us.us.us.us.us.us, %middle.block
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count171
  br i1 %exitcond172.not, label %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us, label %for.cond4.preheader.us.us.us.us.us.us.us, !llvm.loop !20

for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us: ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count175
  br i1 %exitcond176.not, label %for.end44, label %for.cond1.preheader.us.us.us.us, !llvm.loop !21

for.end44:                                        ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us, %polly.loop_exit295.loopexit.split.us.us.us, %polly.loop_if292.preheader, %polly.loop_if, %entry.split
  ret void

polly.loop_if:                                    ; preds = %polly.split_new_and_old
  br i1 %polly.loop_guard, label %polly.loop_if292.preheader, label %for.end44

polly.loop_if292.preheader:                       ; preds = %polly.loop_if
  %polly.loop_guard296 = icmp sgt i32 %nq, 0
  %85 = add nsw i64 %2, -1
  %pexp.p_div_q = lshr i64 %85, 5
  %polly.loop_guard304 = icmp sgt i32 %np, 0
  %or.cond455 = and i1 %polly.loop_guard296, %polly.loop_guard304
  br i1 %or.cond455, label %polly.loop_if292.us.us.preheader, label %for.end44

polly.loop_if292.us.us.preheader:                 ; preds = %polly.loop_if292.preheader
  %polly.fdiv_q.shr = ashr i64 %85, 5
  %86 = shl nuw nsw i64 %2, 3
  %smax = call i64 @llvm.smax.i64(i64 %polly.fdiv_q.shr, i64 0)
  %87 = add nsw i64 %2, -4
  %88 = lshr i64 %87, 2
  %89 = add nuw nsw i64 %88, 1
  %min.iters.check466 = icmp ult i32 %np, 4
  %n.vec469 = and i64 %2, -4
  %xtraiter490 = and i64 %89, 3
  %90 = icmp ult i64 %87, 12
  %unroll_iter493 = and i64 %89, 9223372036854775804
  %lcmp.mod492.not = icmp eq i64 %xtraiter490, 0
  %cmp.n473 = icmp eq i64 %n.vec469, %2
  br label %polly.loop_if292.us.us

polly.loop_if292.us.us:                           ; preds = %polly.loop_if292.us.us.preheader, %polly.loop_exit295.loopexit.split.us.us.us
  %polly.indvar.us.us = phi i64 [ %polly.indvar_next.us.us, %polly.loop_exit295.loopexit.split.us.us.us ], [ 0, %polly.loop_if292.us.us.preheader ]
  br label %polly.loop_if318.us.us.us

polly.loop_if318.us.us.us:                        ; preds = %polly.loop_if292.us.us, %polly.loop_exit358.us.us.us
  %polly.indvar297.us.us.us = phi i64 [ %polly.indvar_next298.us.us.us, %polly.loop_exit358.us.us.us ], [ 0, %polly.loop_if292.us.us ]
  call void @llvm.memset.p0i8.i64(i8* align 8 %sum438, i8 0, i64 %86, i1 false)
  %91 = mul nuw nsw i64 %polly.indvar297.us.us.us, 270
  %scevgep350.us.us.us = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %polly.indvar.us.us, i64 0, i64 %91
  br label %polly.loop_preheader327.us.us.us

polly.loop_preheader327.us.us.us:                 ; preds = %polly.loop_exit328.us.us.us, %polly.loop_if318.us.us.us
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %polly.loop_exit328.us.us.us ], [ %85, %polly.loop_if318.us.us.us ]
  %polly.indvar323.us.us.us = phi i64 [ %polly.indvar_next324.us.us.us, %polly.loop_exit328.us.us.us ], [ 0, %polly.loop_if318.us.us.us ]
  %smin443 = call i64 @llvm.smin.i64(i64 %indvars.iv441, i64 31)
  %92 = shl nsw i64 %polly.indvar323.us.us.us, 5
  %93 = xor i64 %92, -1
  %94 = add nsw i64 %93, %2
  %polly.loop_guard336.us.us.us451 = icmp sgt i64 %94, -1
  br i1 %polly.loop_guard336.us.us.us451, label %polly.loop_if332.us.us.us.us, label %polly.loop_exit328.us.us.us

polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us: ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader476, %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us
  %polly.indvar360.us.us.us = phi i64 [ %polly.indvar_next361.us.us.us, %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us ], [ %polly.indvar360.us.us.us.ph, %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader476 ]
  %scevgep363.us.us.us = getelementptr double, double* %sum, i64 %polly.indvar360.us.us.us
  %_p_scalar_364.us.us.us = load double, double* %scevgep363.us.us.us, align 8, !alias.scope !22, !noalias !24
  %scevgep367.us.us.us = getelementptr double, double* %scevgep350.us.us.us, i64 %polly.indvar360.us.us.us
  store double %_p_scalar_364.us.us.us, double* %scevgep367.us.us.us, align 8, !alias.scope !25, !noalias !27
  %polly.indvar_next361.us.us.us = add nuw nsw i64 %polly.indvar360.us.us.us, 1
  %exitcond448.not = icmp eq i64 %polly.indvar_next361.us.us.us, %2
  br i1 %exitcond448.not, label %polly.loop_exit358.us.us.us, label %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us, !llvm.loop !28

polly.loop_exit358.us.us.us:                      ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us, %middle.block463
  %polly.indvar_next298.us.us.us = add nuw nsw i64 %polly.indvar297.us.us.us, 1
  %exitcond449.not = icmp eq i64 %polly.indvar_next298.us.us.us, %0
  br i1 %exitcond449.not, label %polly.loop_exit295.loopexit.split.us.us.us, label %polly.loop_if318.us.us.us

polly.loop_exit328.us.us.us:                      ; preds = %polly.loop_exit335.loopexit.us.us.us.us, %polly.loop_preheader327.us.us.us
  %polly.indvar_next324.us.us.us = add nuw nsw i64 %polly.indvar323.us.us.us, 1
  %indvars.iv.next442 = add nsw i64 %indvars.iv441, -32
  %exitcond446.not = icmp eq i64 %polly.indvar323.us.us.us, %smax
  br i1 %exitcond446.not, label %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader, label %polly.loop_preheader327.us.us.us

polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %polly.loop_exit328.us.us.us
  br i1 %min.iters.check466, label %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader476, label %vector.ph467

vector.ph467:                                     ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader
  br i1 %90, label %middle.block463.unr-lcssa, label %vector.body465

vector.body465:                                   ; preds = %vector.ph467, %vector.body465
  %index470 = phi i64 [ %index.next471.3, %vector.body465 ], [ 0, %vector.ph467 ]
  %niter494 = phi i64 [ %niter494.nsub.3, %vector.body465 ], [ %unroll_iter493, %vector.ph467 ]
  %95 = getelementptr double, double* %sum, i64 %index470
  %96 = bitcast double* %95 to <2 x double>*
  %wide.load474 = load <2 x double>, <2 x double>* %96, align 8, !alias.scope !22, !noalias !24
  %97 = getelementptr double, double* %95, i64 2
  %98 = bitcast double* %97 to <2 x double>*
  %wide.load475 = load <2 x double>, <2 x double>* %98, align 8, !alias.scope !22, !noalias !24
  %99 = getelementptr double, double* %scevgep350.us.us.us, i64 %index470
  %100 = bitcast double* %99 to <2 x double>*
  store <2 x double> %wide.load474, <2 x double>* %100, align 8, !alias.scope !25, !noalias !27
  %101 = getelementptr double, double* %99, i64 2
  %102 = bitcast double* %101 to <2 x double>*
  store <2 x double> %wide.load475, <2 x double>* %102, align 8, !alias.scope !25, !noalias !27
  %index.next471 = or i64 %index470, 4
  %103 = getelementptr double, double* %sum, i64 %index.next471
  %104 = bitcast double* %103 to <2 x double>*
  %wide.load474.1 = load <2 x double>, <2 x double>* %104, align 8, !alias.scope !22, !noalias !24
  %105 = getelementptr double, double* %103, i64 2
  %106 = bitcast double* %105 to <2 x double>*
  %wide.load475.1 = load <2 x double>, <2 x double>* %106, align 8, !alias.scope !22, !noalias !24
  %107 = getelementptr double, double* %scevgep350.us.us.us, i64 %index.next471
  %108 = bitcast double* %107 to <2 x double>*
  store <2 x double> %wide.load474.1, <2 x double>* %108, align 8, !alias.scope !25, !noalias !27
  %109 = getelementptr double, double* %107, i64 2
  %110 = bitcast double* %109 to <2 x double>*
  store <2 x double> %wide.load475.1, <2 x double>* %110, align 8, !alias.scope !25, !noalias !27
  %index.next471.1 = or i64 %index470, 8
  %111 = getelementptr double, double* %sum, i64 %index.next471.1
  %112 = bitcast double* %111 to <2 x double>*
  %wide.load474.2 = load <2 x double>, <2 x double>* %112, align 8, !alias.scope !22, !noalias !24
  %113 = getelementptr double, double* %111, i64 2
  %114 = bitcast double* %113 to <2 x double>*
  %wide.load475.2 = load <2 x double>, <2 x double>* %114, align 8, !alias.scope !22, !noalias !24
  %115 = getelementptr double, double* %scevgep350.us.us.us, i64 %index.next471.1
  %116 = bitcast double* %115 to <2 x double>*
  store <2 x double> %wide.load474.2, <2 x double>* %116, align 8, !alias.scope !25, !noalias !27
  %117 = getelementptr double, double* %115, i64 2
  %118 = bitcast double* %117 to <2 x double>*
  store <2 x double> %wide.load475.2, <2 x double>* %118, align 8, !alias.scope !25, !noalias !27
  %index.next471.2 = or i64 %index470, 12
  %119 = getelementptr double, double* %sum, i64 %index.next471.2
  %120 = bitcast double* %119 to <2 x double>*
  %wide.load474.3 = load <2 x double>, <2 x double>* %120, align 8, !alias.scope !22, !noalias !24
  %121 = getelementptr double, double* %119, i64 2
  %122 = bitcast double* %121 to <2 x double>*
  %wide.load475.3 = load <2 x double>, <2 x double>* %122, align 8, !alias.scope !22, !noalias !24
  %123 = getelementptr double, double* %scevgep350.us.us.us, i64 %index.next471.2
  %124 = bitcast double* %123 to <2 x double>*
  store <2 x double> %wide.load474.3, <2 x double>* %124, align 8, !alias.scope !25, !noalias !27
  %125 = getelementptr double, double* %123, i64 2
  %126 = bitcast double* %125 to <2 x double>*
  store <2 x double> %wide.load475.3, <2 x double>* %126, align 8, !alias.scope !25, !noalias !27
  %index.next471.3 = add i64 %index470, 16
  %niter494.nsub.3 = add i64 %niter494, -4
  %niter494.ncmp.3 = icmp eq i64 %niter494.nsub.3, 0
  br i1 %niter494.ncmp.3, label %middle.block463.unr-lcssa, label %vector.body465, !llvm.loop !30

middle.block463.unr-lcssa:                        ; preds = %vector.body465, %vector.ph467
  %index470.unr = phi i64 [ 0, %vector.ph467 ], [ %index.next471.3, %vector.body465 ]
  br i1 %lcmp.mod492.not, label %middle.block463, label %vector.body465.epil

vector.body465.epil:                              ; preds = %middle.block463.unr-lcssa, %vector.body465.epil
  %index470.epil = phi i64 [ %index.next471.epil, %vector.body465.epil ], [ %index470.unr, %middle.block463.unr-lcssa ]
  %epil.iter491 = phi i64 [ %epil.iter491.sub, %vector.body465.epil ], [ %xtraiter490, %middle.block463.unr-lcssa ]
  %127 = getelementptr double, double* %sum, i64 %index470.epil
  %128 = bitcast double* %127 to <2 x double>*
  %wide.load474.epil = load <2 x double>, <2 x double>* %128, align 8, !alias.scope !22, !noalias !24
  %129 = getelementptr double, double* %127, i64 2
  %130 = bitcast double* %129 to <2 x double>*
  %wide.load475.epil = load <2 x double>, <2 x double>* %130, align 8, !alias.scope !22, !noalias !24
  %131 = getelementptr double, double* %scevgep350.us.us.us, i64 %index470.epil
  %132 = bitcast double* %131 to <2 x double>*
  store <2 x double> %wide.load474.epil, <2 x double>* %132, align 8, !alias.scope !25, !noalias !27
  %133 = getelementptr double, double* %131, i64 2
  %134 = bitcast double* %133 to <2 x double>*
  store <2 x double> %wide.load475.epil, <2 x double>* %134, align 8, !alias.scope !25, !noalias !27
  %index.next471.epil = add i64 %index470.epil, 4
  %epil.iter491.sub = add i64 %epil.iter491, -1
  %epil.iter491.cmp.not = icmp eq i64 %epil.iter491.sub, 0
  br i1 %epil.iter491.cmp.not, label %middle.block463, label %vector.body465.epil, !llvm.loop !31

middle.block463:                                  ; preds = %vector.body465.epil, %middle.block463.unr-lcssa
  br i1 %cmp.n473, label %polly.loop_exit358.us.us.us, label %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader476

polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader476: ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader, %middle.block463
  %polly.indvar360.us.us.us.ph = phi i64 [ 0, %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us.preheader ], [ %n.vec469, %middle.block463 ]
  br label %polly.stmt.for.body27.us.us.us.us.us.us.us.us.us.us

polly.loop_if332.us.us.us.us:                     ; preds = %polly.loop_preheader327.us.us.us, %polly.loop_exit335.loopexit.us.us.us.us
  %polly.indvar329.us.us.us.us = phi i64 [ %polly.indvar_next330.us.us.us.us, %polly.loop_exit335.loopexit.us.us.us.us ], [ 0, %polly.loop_preheader327.us.us.us ]
  %135 = mul i64 %polly.indvar329.us.us.us.us, -32
  %136 = add i64 %85, %135
  %smin485 = call i64 @llvm.smin.i64(i64 %136, i64 31)
  %137 = add nsw i64 %smin485, 1
  %138 = shl nsw i64 %polly.indvar329.us.us.us.us, 5
  %139 = xor i64 %138, -1
  %140 = add i64 %139, %2
  %polly.loop_guard344.us.us.us.us452 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard344.us.us.us.us452, label %polly.loop_if340.us.us.us.us.us.preheader, label %polly.loop_exit335.loopexit.us.us.us.us

polly.loop_if340.us.us.us.us.us.preheader:        ; preds = %polly.loop_if332.us.us.us.us
  %xtraiter486 = and i64 %137, 1
  %141 = icmp eq i64 %smin485, 0
  %unroll_iter488 = and i64 %137, -2
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br label %polly.loop_if340.us.us.us.us.us

polly.loop_exit335.loopexit.us.us.us.us:          ; preds = %polly.loop_exit343.loopexit.us.us.us.us.us, %polly.loop_if332.us.us.us.us
  %polly.indvar_next330.us.us.us.us = add nuw nsw i64 %polly.indvar329.us.us.us.us, 1
  %exitcond445.not = icmp eq i64 %polly.indvar329.us.us.us.us, %pexp.p_div_q
  br i1 %exitcond445.not, label %polly.loop_exit328.us.us.us, label %polly.loop_if332.us.us.us.us

polly.loop_if340.us.us.us.us.us:                  ; preds = %polly.loop_if340.us.us.us.us.us.preheader, %polly.loop_exit343.loopexit.us.us.us.us.us
  %polly.indvar337.us.us.us.us.us = phi i64 [ %polly.indvar_next338.us.us.us.us.us, %polly.loop_exit343.loopexit.us.us.us.us.us ], [ 0, %polly.loop_if340.us.us.us.us.us.preheader ]
  %142 = add nuw nsw i64 %polly.indvar337.us.us.us.us.us, %92
  %polly.access.sum348.us.us.us.us.us = getelementptr double, double* %sum, i64 %142
  %polly.access.sum348.promoted.us.us.us.us.us = load double, double* %polly.access.sum348.us.us.us.us.us, align 8, !alias.scope !32, !noalias !24
  br i1 %141, label %polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us

polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %polly.loop_if340.us.us.us.us.us, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us
  %p_add.us.us.us.us.us.us.us.us375.us.us.us.us.us = phi double [ %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %polly.access.sum348.promoted.us.us.us.us.us, %polly.loop_if340.us.us.us.us.us ]
  %polly.indvar345.us.us.us.us.us = phi i64 [ %polly.indvar_next346.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ 0, %polly.loop_if340.us.us.us.us.us ]
  %niter489 = phi i64 [ %niter489.nsub.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %unroll_iter488, %polly.loop_if340.us.us.us.us.us ]
  %143 = add nuw nsw i64 %polly.indvar345.us.us.us.us.us, %138
  %scevgep351.us.us.us.us.us = getelementptr double, double* %scevgep350.us.us.us, i64 %143
  %_p_scalar_.us.us.us.us.us = load double, double* %scevgep351.us.us.us.us.us, align 8, !alias.scope !25, !noalias !27
  %scevgep352.us.us.us.us.us = getelementptr [270 x double], [270 x double]* %C4, i64 %143, i64 %142
  %_p_scalar_353.us.us.us.us.us = load double, double* %scevgep352.us.us.us.us.us, align 8, !alias.scope !26, !noalias !33
  %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us = fmul double %_p_scalar_.us.us.us.us.us, %_p_scalar_353.us.us.us.us.us
  %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us = fadd double %p_add.us.us.us.us.us.us.us.us375.us.us.us.us.us, %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us
  %polly.indvar_next346.us.us.us.us.us = or i64 %polly.indvar345.us.us.us.us.us, 1
  %144 = add nuw nsw i64 %polly.indvar_next346.us.us.us.us.us, %138
  %scevgep351.us.us.us.us.us.1 = getelementptr double, double* %scevgep350.us.us.us, i64 %144
  %_p_scalar_.us.us.us.us.us.1 = load double, double* %scevgep351.us.us.us.us.us.1, align 8, !alias.scope !25, !noalias !27
  %scevgep352.us.us.us.us.us.1 = getelementptr [270 x double], [270 x double]* %C4, i64 %144, i64 %142
  %_p_scalar_353.us.us.us.us.us.1 = load double, double* %scevgep352.us.us.us.us.us.1, align 8, !alias.scope !26, !noalias !33
  %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = fmul double %_p_scalar_.us.us.us.us.us.1, %_p_scalar_353.us.us.us.us.us.1
  %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = fadd double %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us, %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %polly.indvar_next346.us.us.us.us.us.1 = add nuw nsw i64 %polly.indvar345.us.us.us.us.us, 2
  %niter489.nsub.1 = add i64 %niter489, -2
  %niter489.ncmp.1 = icmp eq i64 %niter489.nsub.1, 0
  br i1 %niter489.ncmp.1, label %polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us

polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa: ; preds = %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us, %polly.loop_if340.us.us.us.us.us
  %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa.ph = phi double [ undef, %polly.loop_if340.us.us.us.us.us ], [ %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %p_add.us.us.us.us.us.us.us.us375.us.us.us.us.us.unr = phi double [ %polly.access.sum348.promoted.us.us.us.us.us, %polly.loop_if340.us.us.us.us.us ], [ %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %polly.indvar345.us.us.us.us.us.unr = phi i64 [ 0, %polly.loop_if340.us.us.us.us.us ], [ %polly.indvar_next346.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  br i1 %lcmp.mod487.not, label %polly.loop_exit343.loopexit.us.us.us.us.us, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us.epil

polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us.epil: ; preds = %polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa
  %145 = add nuw nsw i64 %polly.indvar345.us.us.us.us.us.unr, %138
  %scevgep351.us.us.us.us.us.epil = getelementptr double, double* %scevgep350.us.us.us, i64 %145
  %_p_scalar_.us.us.us.us.us.epil = load double, double* %scevgep351.us.us.us.us.us.epil, align 8, !alias.scope !25, !noalias !27
  %scevgep352.us.us.us.us.us.epil = getelementptr [270 x double], [270 x double]* %C4, i64 %145, i64 %142
  %_p_scalar_353.us.us.us.us.us.epil = load double, double* %scevgep352.us.us.us.us.us.epil, align 8, !alias.scope !26, !noalias !33
  %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = fmul double %_p_scalar_.us.us.us.us.us.epil, %_p_scalar_353.us.us.us.us.us.epil
  %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = fadd double %p_add.us.us.us.us.us.us.us.us375.us.us.us.us.us.unr, %p_mul.us.us.us.us.us.us.us.us.us.us.us.us.us.epil
  br label %polly.loop_exit343.loopexit.us.us.us.us.us

polly.loop_exit343.loopexit.us.us.us.us.us:       ; preds = %polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us.epil
  %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi double [ %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa.ph, %polly.loop_exit343.loopexit.us.us.us.us.us.unr-lcssa ], [ %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.us.us.us.epil ]
  store double %p_add.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, double* %polly.access.sum348.us.us.us.us.us, align 8, !alias.scope !32, !noalias !24
  %polly.indvar_next338.us.us.us.us.us = add nuw nsw i64 %polly.indvar337.us.us.us.us.us, 1
  %exitcond444.not = icmp eq i64 %polly.indvar337.us.us.us.us.us, %smin443
  br i1 %exitcond444.not, label %polly.loop_exit335.loopexit.us.us.us.us, label %polly.loop_if340.us.us.us.us.us

polly.loop_exit295.loopexit.split.us.us.us:       ; preds = %polly.loop_exit358.us.us.us
  %polly.indvar_next.us.us = add nuw nsw i64 %polly.indvar.us.us, 1
  %exitcond450.not = icmp eq i64 %polly.indvar_next.us.us, %7
  br i1 %exitcond450.not, label %for.end44, label %polly.loop_if292.us.us
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #1 {
polly.loop_preheader:
  %call.i = tail call noalias dereferenceable_or_null(118800000) i8* @malloc(i64 118800000) #10
  %call.i27 = tail call noalias dereferenceable_or_null(2160) i8* @malloc(i64 2160) #10
  %call.i28 = tail call noalias dereferenceable_or_null(583200) i8* @malloc(i64 583200) #10
  %call.i2836 = bitcast i8* %call.i28 to [270 x double]*
  br label %polly.loop_preheader38

init_array.exit:                                  ; preds = %polly.loop_exit83.8
  %arraydecay = bitcast i8* %call.i to [220 x [270 x double]]*
  tail call void (...) @polybench_timer_start() #10
  %arraydecay6 = bitcast i8* %call.i27 to double*
  br label %for.cond1.preheader.us.us.us.us.i

for.cond1.preheader.us.us.us.us.i:                ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, %init_array.exit
  %indvars.iv173.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next174.i, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i ]
  %0 = mul nuw nsw i64 %indvars.iv173.i, 475200
  br label %for.cond4.preheader.us.us.us.us.us.us.us.i

for.cond4.preheader.us.us.us.us.us.us.us.i:       ; preds = %for.body27.us.us.us.us.us.us.us.i.preheader, %for.cond1.preheader.us.us.us.us.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %for.body27.us.us.us.us.us.us.us.i.preheader ], [ 0, %for.cond1.preheader.us.us.us.us.i ]
  %1 = mul nuw nsw i64 %indvars.iv169.i, 2160
  %2 = add nuw nsw i64 %1, %0
  br label %for.body6.us.us.us.us.us.us.us.us.i

for.body6.us.us.us.us.us.us.us.us.i:              ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i, %for.cond4.preheader.us.us.us.us.us.us.us.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i ], [ 0, %for.cond4.preheader.us.us.us.us.us.us.us.i ]
  %arrayidx.us.us.us.us.us.us.us.us.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv158.i
  store double 0.000000e+00, double* %arrayidx.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  br label %for.body9.us.us.us.us.us.us.us.us.i

for.body9.us.us.us.us.us.us.us.us.i:              ; preds = %for.body9.us.us.us.us.us.us.us.us.i, %for.body6.us.us.us.us.us.us.us.us.i
  %3 = phi double [ 0.000000e+00, %for.body6.us.us.us.us.us.us.us.us.i ], [ %add.us.us.us.us.us.us.us.us.i.2, %for.body9.us.us.us.us.us.us.us.us.i ]
  %indvars.iv.i29 = phi i64 [ 0, %for.body6.us.us.us.us.us.us.us.us.i ], [ %indvars.iv.next.i30.2, %for.body9.us.us.us.us.us.us.us.us.i ]
  %arrayidx15.us.us.us.us.us.us.us.us.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.i29
  %4 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i = getelementptr inbounds [270 x double], [270 x double]* %call.i2836, i64 %indvars.iv.i29, i64 %indvars.iv158.i
  %5 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i = fmul double %4, %5
  %add.us.us.us.us.us.us.us.us.i = fadd double %3, %mul.us.us.us.us.us.us.us.us.i
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %arrayidx15.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.next.i30
  %6 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i.1, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds [270 x double], [270 x double]* %call.i2836, i64 %indvars.iv.next.i30, i64 %indvars.iv158.i
  %7 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i.1, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i.1 = fmul double %6, %7
  %add.us.us.us.us.us.us.us.us.i.1 = fadd double %add.us.us.us.us.us.us.us.us.i, %mul.us.us.us.us.us.us.us.us.i.1
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i29, 2
  %arrayidx15.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.next.i30.1
  %8 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i.2, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds [270 x double], [270 x double]* %call.i2836, i64 %indvars.iv.next.i30.1, i64 %indvars.iv158.i
  %9 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i.2, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i.2 = fmul double %8, %9
  %add.us.us.us.us.us.us.us.us.i.2 = fadd double %add.us.us.us.us.us.us.us.us.i.1, %mul.us.us.us.us.us.us.us.us.i.2
  %indvars.iv.next.i30.2 = add nuw nsw i64 %indvars.iv.i29, 3
  %exitcond.not.i31.2 = icmp eq i64 %indvars.iv.next.i30.2, 270
  br i1 %exitcond.not.i31.2, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i, label %for.body9.us.us.us.us.us.us.us.us.i, !llvm.loop !9

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i: ; preds = %for.body9.us.us.us.us.us.us.us.us.i
  store double %add.us.us.us.us.us.us.us.us.i.2, double* %arrayidx.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next159.i, 270
  br i1 %exitcond161.not.i, label %for.body27.us.us.us.us.us.us.us.i.preheader, label %for.body6.us.us.us.us.us.us.us.us.i, !llvm.loop !10

for.body27.us.us.us.us.us.us.us.i.preheader:      ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i
  %scevgep = getelementptr i8, i8* %call.i, i64 %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(2160) %scevgep, i8* noundef nonnull align 8 dereferenceable(2160) %call.i27, i64 2160, i1 false)
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next170.i, 220
  br i1 %exitcond172.not.i, label %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, label %for.cond4.preheader.us.us.us.us.us.us.us.i, !llvm.loop !20

for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i: ; preds = %for.body27.us.us.us.us.us.us.us.i.preheader
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 250
  br i1 %exitcond176.not.i, label %kernel_doitgen.exit, label %for.cond1.preheader.us.us.us.us.i, !llvm.loop !21

kernel_doitgen.exit:                              ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_doitgen.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !34
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc21.i, %if.then
  %indvars.iv10.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next11.i, %for.inc21.i ]
  %14 = mul nuw nsw i64 %indvars.iv10.i, 59400
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc18.i, %for.cond2.preheader.i
  %indvars.iv5.i = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next6.i, %for.inc18.i ]
  %15 = mul nuw nsw i64 %indvars.iv5.i, 270
  %16 = add nuw nsw i64 %15, %14
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end.i, %for.cond5.preheader.i
  %indvars.iv.i32 = phi i64 [ 0, %for.cond5.preheader.i ], [ %indvars.iv.next.i33, %if.end.i ]
  %17 = add nuw nsw i64 %16, %indvars.iv.i32
  %18 = trunc i64 %17 to i32
  %rem.urem.i = urem i32 %18, 20
  %cmp11.i = icmp eq i32 %rem.urem.i, 0
  br i1 %cmp11.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body7.i
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body7.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %arrayidx16.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv5.i, i64 %indvars.iv.i32
  %21 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %21) #11
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, 270
  br i1 %exitcond.not.i34, label %for.inc18.i, label %for.body7.i, !llvm.loop !36

for.inc18.i:                                      ; preds = %if.end.i
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, 220
  br i1 %exitcond9.not.i, label %for.inc21.i, label %for.cond5.preheader.i, !llvm.loop !37

for.inc21.i:                                      ; preds = %for.inc18.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i35 = icmp eq i64 %indvars.iv.next11.i, 250
  br i1 %exitcond13.not.i35, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !38

print_array.exit:                                 ; preds = %for.inc21.i
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %call24.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !34
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %23) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_doitgen.exit
  tail call void @free(i8* nonnull %call.i) #10
  tail call void @free(i8* %call.i27) #10
  tail call void @free(i8* %call.i28) #10
  ret i32 0

polly.loop_exit39:                                ; preds = %polly.loop_exit45
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -32
  %exitcond105.not = icmp eq i64 %polly.indvar_next, 8
  br i1 %exitcond105.not, label %polly.loop_preheader76, label %polly.loop_preheader38

polly.loop_exit45:                                ; preds = %polly.loop_exit51
  %polly.indvar_next41 = add nuw nsw i64 %polly.indvar40, 1
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, -32
  %exitcond104.not = icmp eq i64 %polly.indvar_next41, 7
  br i1 %exitcond104.not, label %polly.loop_exit39, label %polly.loop_preheader44

polly.loop_preheader38:                           ; preds = %polly.loop_preheader, %polly.loop_exit39
  %indvars.iv99 = phi i64 [ 0, %polly.loop_preheader ], [ %indvars.iv.next100, %polly.loop_exit39 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit39 ]
  %smin101 = call i64 @llvm.smin.i64(i64 %indvars.iv99, i64 -218)
  %25 = shl nsw i64 %polly.indvar, 5
  %26 = add nsw i64 %smin101, 249
  br label %polly.loop_preheader44

polly.loop_exit51:                                ; preds = %polly.loop_exit57
  %polly.indvar_next47 = add nuw nsw i64 %polly.indvar46, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond103.not = icmp eq i64 %polly.indvar_next47, 9
  br i1 %exitcond103.not, label %polly.loop_exit45, label %polly.loop_preheader50

polly.loop_preheader44:                           ; preds = %polly.loop_preheader38, %polly.loop_exit45
  %indvars.iv95 = phi i64 [ 0, %polly.loop_preheader38 ], [ %indvars.iv.next96, %polly.loop_exit45 ]
  %polly.indvar40 = phi i64 [ 0, %polly.loop_preheader38 ], [ %polly.indvar_next41, %polly.loop_exit45 ]
  %smin97 = call i64 @llvm.smin.i64(i64 %indvars.iv95, i64 -188)
  %27 = shl nsw i64 %polly.indvar40, 5
  %28 = add nsw i64 %smin97, 219
  br label %polly.loop_preheader50

polly.loop_exit57:                                ; preds = %polly.loop_exit63
  %polly.indvar_next53 = add nuw nsw i64 %polly.indvar52, 1
  %exitcond102.not = icmp eq i64 %polly.indvar52, %26
  br i1 %exitcond102.not, label %polly.loop_exit51, label %polly.loop_preheader56

polly.loop_preheader50:                           ; preds = %polly.loop_preheader44, %polly.loop_exit51
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader44 ], [ %indvars.iv.next, %polly.loop_exit51 ]
  %polly.indvar46 = phi i64 [ 0, %polly.loop_preheader44 ], [ %polly.indvar_next47, %polly.loop_exit51 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -238)
  %29 = shl nsw i64 %polly.indvar46, 5
  %30 = add nsw i64 %smin, 269
  br label %polly.loop_preheader56

polly.loop_exit63:                                ; preds = %polly.stmt.for.body6.i
  %polly.indvar_next59 = add nuw nsw i64 %polly.indvar58, 1
  %exitcond98.not = icmp eq i64 %polly.indvar58, %28
  br i1 %exitcond98.not, label %polly.loop_exit57, label %polly.loop_preheader62

polly.loop_preheader56:                           ; preds = %polly.loop_preheader50, %polly.loop_exit57
  %polly.indvar52 = phi i64 [ 0, %polly.loop_preheader50 ], [ %polly.indvar_next53, %polly.loop_exit57 ]
  %31 = add nuw nsw i64 %polly.indvar52, %25
  %32 = trunc i64 %31 to i32
  %33 = mul nuw nsw i64 %31, 475200
  br label %polly.loop_preheader62

polly.stmt.for.body6.i:                           ; preds = %polly.loop_preheader62, %polly.stmt.for.body6.i
  %polly.indvar64 = phi i64 [ 0, %polly.loop_preheader62 ], [ %polly.indvar_next65, %polly.stmt.for.body6.i ]
  %34 = add nuw nsw i64 %polly.indvar64, %29
  %35 = trunc i64 %34 to i32
  %36 = add i32 %42, %35
  %37 = urem i32 %36, 270
  %p_conv.i = sitofp i32 %37 to double
  %p_div.i = fdiv double %p_conv.i, 2.700000e+02
  %38 = shl i64 %34, 3
  %39 = add nuw nsw i64 %44, %38
  %scevgep67 = getelementptr i8, i8* %call.i, i64 %39
  %scevgep6768 = bitcast i8* %scevgep67 to double*
  store double %p_div.i, double* %scevgep6768, align 8, !alias.scope !39, !noalias !41
  %polly.indvar_next65 = add nuw nsw i64 %polly.indvar64, 1
  %exitcond.not = icmp eq i64 %polly.indvar64, %30
  br i1 %exitcond.not, label %polly.loop_exit63, label %polly.stmt.for.body6.i

polly.loop_preheader62:                           ; preds = %polly.loop_preheader56, %polly.loop_exit63
  %polly.indvar58 = phi i64 [ 0, %polly.loop_preheader56 ], [ %polly.indvar_next59, %polly.loop_exit63 ]
  %40 = add nuw nsw i64 %polly.indvar58, %27
  %41 = trunc i64 %40 to i32
  %42 = mul i32 %41, %32
  %43 = mul nuw nsw i64 %40, 2160
  %44 = add nuw nsw i64 %43, %33
  br label %polly.stmt.for.body6.i

polly.loop_preheader76:                           ; preds = %polly.loop_exit39, %polly.loop_exit83.8
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %polly.loop_exit83.8 ], [ 0, %polly.loop_exit39 ]
  %polly.indvar72 = phi i64 [ %polly.indvar_next73, %polly.loop_exit83.8 ], [ 0, %polly.loop_exit39 ]
  %smin112 = call i64 @llvm.smin.i64(i64 %indvars.iv110, i64 -238)
  %45 = add nsw i64 %smin112, 270
  %46 = shl nsw i64 %polly.indvar72, 5
  br label %polly.loop_preheader88

polly.loop_exit89:                                ; preds = %polly.stmt.for.body25.i
  %polly.indvar_next85 = add nuw nsw i64 %polly.indvar84, 1
  %exitcond113.not = icmp eq i64 %polly.indvar_next85, %45
  br i1 %exitcond113.not, label %polly.loop_preheader88.1, label %polly.loop_preheader88

polly.stmt.for.body25.i:                          ; preds = %polly.loop_preheader88, %polly.stmt.for.body25.i
  %polly.indvar90 = phi i64 [ 0, %polly.loop_preheader88 ], [ %polly.indvar_next91, %polly.stmt.for.body25.i ]
  %47 = trunc i64 %polly.indvar90 to i32
  %48 = mul i32 %47, %53
  %49 = urem i32 %48, 270
  %p_conv28.i = sitofp i32 %49 to double
  %p_div30.i = fdiv double %p_conv28.i, 2.700000e+02
  %50 = shl i64 %polly.indvar90, 3
  %51 = add nuw nsw i64 %50, %54
  %scevgep93 = getelementptr i8, i8* %call.i28, i64 %51
  %scevgep9394 = bitcast i8* %scevgep93 to double*
  store double %p_div30.i, double* %scevgep9394, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91 = add nuw nsw i64 %polly.indvar90, 1
  %exitcond109.not = icmp eq i64 %polly.indvar_next91, 32
  br i1 %exitcond109.not, label %polly.loop_exit89, label %polly.stmt.for.body25.i

polly.loop_preheader88:                           ; preds = %polly.loop_preheader76, %polly.loop_exit89
  %polly.indvar84 = phi i64 [ 0, %polly.loop_preheader76 ], [ %polly.indvar_next85, %polly.loop_exit89 ]
  %52 = add nuw nsw i64 %polly.indvar84, %46
  %53 = trunc i64 %52 to i32
  %54 = mul nuw nsw i64 %52, 2160
  br label %polly.stmt.for.body25.i

polly.loop_preheader88.1:                         ; preds = %polly.loop_exit89, %polly.loop_exit89.1
  %polly.indvar84.1 = phi i64 [ %polly.indvar_next85.1, %polly.loop_exit89.1 ], [ 0, %polly.loop_exit89 ]
  %55 = add nuw nsw i64 %polly.indvar84.1, %46
  %56 = trunc i64 %55 to i32
  %57 = mul nuw nsw i64 %55, 2160
  br label %polly.stmt.for.body25.i.1

polly.stmt.for.body25.i.1:                        ; preds = %polly.stmt.for.body25.i.1, %polly.loop_preheader88.1
  %polly.indvar90.1 = phi i64 [ 0, %polly.loop_preheader88.1 ], [ %polly.indvar_next91.1, %polly.stmt.for.body25.i.1 ]
  %58 = add nuw nsw i64 %polly.indvar90.1, 32
  %59 = trunc i64 %58 to i32
  %60 = mul i32 %59, %56
  %61 = urem i32 %60, 270
  %p_conv28.i.1 = sitofp i32 %61 to double
  %p_div30.i.1 = fdiv double %p_conv28.i.1, 2.700000e+02
  %62 = shl i64 %58, 3
  %63 = add nuw nsw i64 %62, %57
  %scevgep93.1 = getelementptr i8, i8* %call.i28, i64 %63
  %scevgep9394.1 = bitcast i8* %scevgep93.1 to double*
  store double %p_div30.i.1, double* %scevgep9394.1, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.1 = add nuw nsw i64 %polly.indvar90.1, 1
  %exitcond109.1.not = icmp eq i64 %polly.indvar_next91.1, 32
  br i1 %exitcond109.1.not, label %polly.loop_exit89.1, label %polly.stmt.for.body25.i.1

polly.loop_exit89.1:                              ; preds = %polly.stmt.for.body25.i.1
  %polly.indvar_next85.1 = add nuw nsw i64 %polly.indvar84.1, 1
  %exitcond113.1.not = icmp eq i64 %polly.indvar_next85.1, %45
  br i1 %exitcond113.1.not, label %polly.loop_preheader88.2, label %polly.loop_preheader88.1

polly.loop_preheader88.2:                         ; preds = %polly.loop_exit89.1, %polly.loop_exit89.2
  %polly.indvar84.2 = phi i64 [ %polly.indvar_next85.2, %polly.loop_exit89.2 ], [ 0, %polly.loop_exit89.1 ]
  %64 = add nuw nsw i64 %polly.indvar84.2, %46
  %65 = trunc i64 %64 to i32
  %66 = mul nuw nsw i64 %64, 2160
  br label %polly.stmt.for.body25.i.2

polly.stmt.for.body25.i.2:                        ; preds = %polly.stmt.for.body25.i.2, %polly.loop_preheader88.2
  %polly.indvar90.2 = phi i64 [ 0, %polly.loop_preheader88.2 ], [ %polly.indvar_next91.2, %polly.stmt.for.body25.i.2 ]
  %67 = add nuw nsw i64 %polly.indvar90.2, 64
  %68 = trunc i64 %67 to i32
  %69 = mul i32 %68, %65
  %70 = urem i32 %69, 270
  %p_conv28.i.2 = sitofp i32 %70 to double
  %p_div30.i.2 = fdiv double %p_conv28.i.2, 2.700000e+02
  %71 = shl i64 %67, 3
  %72 = add nuw nsw i64 %71, %66
  %scevgep93.2 = getelementptr i8, i8* %call.i28, i64 %72
  %scevgep9394.2 = bitcast i8* %scevgep93.2 to double*
  store double %p_div30.i.2, double* %scevgep9394.2, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.2 = add nuw nsw i64 %polly.indvar90.2, 1
  %exitcond109.2.not = icmp eq i64 %polly.indvar_next91.2, 32
  br i1 %exitcond109.2.not, label %polly.loop_exit89.2, label %polly.stmt.for.body25.i.2

polly.loop_exit89.2:                              ; preds = %polly.stmt.for.body25.i.2
  %polly.indvar_next85.2 = add nuw nsw i64 %polly.indvar84.2, 1
  %exitcond113.2.not = icmp eq i64 %polly.indvar_next85.2, %45
  br i1 %exitcond113.2.not, label %polly.loop_preheader88.3, label %polly.loop_preheader88.2

polly.loop_preheader88.3:                         ; preds = %polly.loop_exit89.2, %polly.loop_exit89.3
  %polly.indvar84.3 = phi i64 [ %polly.indvar_next85.3, %polly.loop_exit89.3 ], [ 0, %polly.loop_exit89.2 ]
  %73 = add nuw nsw i64 %polly.indvar84.3, %46
  %74 = trunc i64 %73 to i32
  %75 = mul nuw nsw i64 %73, 2160
  br label %polly.stmt.for.body25.i.3

polly.stmt.for.body25.i.3:                        ; preds = %polly.stmt.for.body25.i.3, %polly.loop_preheader88.3
  %polly.indvar90.3 = phi i64 [ 0, %polly.loop_preheader88.3 ], [ %polly.indvar_next91.3, %polly.stmt.for.body25.i.3 ]
  %76 = add nuw nsw i64 %polly.indvar90.3, 96
  %77 = trunc i64 %76 to i32
  %78 = mul i32 %77, %74
  %79 = urem i32 %78, 270
  %p_conv28.i.3 = sitofp i32 %79 to double
  %p_div30.i.3 = fdiv double %p_conv28.i.3, 2.700000e+02
  %80 = shl i64 %76, 3
  %81 = add nuw nsw i64 %80, %75
  %scevgep93.3 = getelementptr i8, i8* %call.i28, i64 %81
  %scevgep9394.3 = bitcast i8* %scevgep93.3 to double*
  store double %p_div30.i.3, double* %scevgep9394.3, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.3 = add nuw nsw i64 %polly.indvar90.3, 1
  %exitcond109.3.not = icmp eq i64 %polly.indvar_next91.3, 32
  br i1 %exitcond109.3.not, label %polly.loop_exit89.3, label %polly.stmt.for.body25.i.3

polly.loop_exit89.3:                              ; preds = %polly.stmt.for.body25.i.3
  %polly.indvar_next85.3 = add nuw nsw i64 %polly.indvar84.3, 1
  %exitcond113.3.not = icmp eq i64 %polly.indvar_next85.3, %45
  br i1 %exitcond113.3.not, label %polly.loop_preheader88.4, label %polly.loop_preheader88.3

polly.loop_preheader88.4:                         ; preds = %polly.loop_exit89.3, %polly.loop_exit89.4
  %polly.indvar84.4 = phi i64 [ %polly.indvar_next85.4, %polly.loop_exit89.4 ], [ 0, %polly.loop_exit89.3 ]
  %82 = add nuw nsw i64 %polly.indvar84.4, %46
  %83 = trunc i64 %82 to i32
  %84 = mul nuw nsw i64 %82, 2160
  br label %polly.stmt.for.body25.i.4

polly.stmt.for.body25.i.4:                        ; preds = %polly.stmt.for.body25.i.4, %polly.loop_preheader88.4
  %polly.indvar90.4 = phi i64 [ 0, %polly.loop_preheader88.4 ], [ %polly.indvar_next91.4, %polly.stmt.for.body25.i.4 ]
  %85 = add nuw nsw i64 %polly.indvar90.4, 128
  %86 = trunc i64 %85 to i32
  %87 = mul i32 %86, %83
  %88 = urem i32 %87, 270
  %p_conv28.i.4 = sitofp i32 %88 to double
  %p_div30.i.4 = fdiv double %p_conv28.i.4, 2.700000e+02
  %89 = shl i64 %85, 3
  %90 = add nuw nsw i64 %89, %84
  %scevgep93.4 = getelementptr i8, i8* %call.i28, i64 %90
  %scevgep9394.4 = bitcast i8* %scevgep93.4 to double*
  store double %p_div30.i.4, double* %scevgep9394.4, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.4 = add nuw nsw i64 %polly.indvar90.4, 1
  %exitcond109.4.not = icmp eq i64 %polly.indvar_next91.4, 32
  br i1 %exitcond109.4.not, label %polly.loop_exit89.4, label %polly.stmt.for.body25.i.4

polly.loop_exit89.4:                              ; preds = %polly.stmt.for.body25.i.4
  %polly.indvar_next85.4 = add nuw nsw i64 %polly.indvar84.4, 1
  %exitcond113.4.not = icmp eq i64 %polly.indvar_next85.4, %45
  br i1 %exitcond113.4.not, label %polly.loop_preheader88.5, label %polly.loop_preheader88.4

polly.loop_preheader88.5:                         ; preds = %polly.loop_exit89.4, %polly.loop_exit89.5
  %polly.indvar84.5 = phi i64 [ %polly.indvar_next85.5, %polly.loop_exit89.5 ], [ 0, %polly.loop_exit89.4 ]
  %91 = add nuw nsw i64 %polly.indvar84.5, %46
  %92 = trunc i64 %91 to i32
  %93 = mul nuw nsw i64 %91, 2160
  br label %polly.stmt.for.body25.i.5

polly.stmt.for.body25.i.5:                        ; preds = %polly.stmt.for.body25.i.5, %polly.loop_preheader88.5
  %polly.indvar90.5 = phi i64 [ 0, %polly.loop_preheader88.5 ], [ %polly.indvar_next91.5, %polly.stmt.for.body25.i.5 ]
  %94 = add nuw nsw i64 %polly.indvar90.5, 160
  %95 = trunc i64 %94 to i32
  %96 = mul i32 %95, %92
  %97 = urem i32 %96, 270
  %p_conv28.i.5 = sitofp i32 %97 to double
  %p_div30.i.5 = fdiv double %p_conv28.i.5, 2.700000e+02
  %98 = shl i64 %94, 3
  %99 = add nuw nsw i64 %98, %93
  %scevgep93.5 = getelementptr i8, i8* %call.i28, i64 %99
  %scevgep9394.5 = bitcast i8* %scevgep93.5 to double*
  store double %p_div30.i.5, double* %scevgep9394.5, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.5 = add nuw nsw i64 %polly.indvar90.5, 1
  %exitcond109.5.not = icmp eq i64 %polly.indvar_next91.5, 32
  br i1 %exitcond109.5.not, label %polly.loop_exit89.5, label %polly.stmt.for.body25.i.5

polly.loop_exit89.5:                              ; preds = %polly.stmt.for.body25.i.5
  %polly.indvar_next85.5 = add nuw nsw i64 %polly.indvar84.5, 1
  %exitcond113.5.not = icmp eq i64 %polly.indvar_next85.5, %45
  br i1 %exitcond113.5.not, label %polly.loop_preheader88.6, label %polly.loop_preheader88.5

polly.loop_preheader88.6:                         ; preds = %polly.loop_exit89.5, %polly.loop_exit89.6
  %polly.indvar84.6 = phi i64 [ %polly.indvar_next85.6, %polly.loop_exit89.6 ], [ 0, %polly.loop_exit89.5 ]
  %100 = add nuw nsw i64 %polly.indvar84.6, %46
  %101 = trunc i64 %100 to i32
  %102 = mul nuw nsw i64 %100, 2160
  br label %polly.stmt.for.body25.i.6

polly.stmt.for.body25.i.6:                        ; preds = %polly.stmt.for.body25.i.6, %polly.loop_preheader88.6
  %polly.indvar90.6 = phi i64 [ 0, %polly.loop_preheader88.6 ], [ %polly.indvar_next91.6, %polly.stmt.for.body25.i.6 ]
  %103 = add nuw nsw i64 %polly.indvar90.6, 192
  %104 = trunc i64 %103 to i32
  %105 = mul i32 %104, %101
  %106 = urem i32 %105, 270
  %p_conv28.i.6 = sitofp i32 %106 to double
  %p_div30.i.6 = fdiv double %p_conv28.i.6, 2.700000e+02
  %107 = shl i64 %103, 3
  %108 = add nuw nsw i64 %107, %102
  %scevgep93.6 = getelementptr i8, i8* %call.i28, i64 %108
  %scevgep9394.6 = bitcast i8* %scevgep93.6 to double*
  store double %p_div30.i.6, double* %scevgep9394.6, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.6 = add nuw nsw i64 %polly.indvar90.6, 1
  %exitcond109.6.not = icmp eq i64 %polly.indvar_next91.6, 32
  br i1 %exitcond109.6.not, label %polly.loop_exit89.6, label %polly.stmt.for.body25.i.6

polly.loop_exit89.6:                              ; preds = %polly.stmt.for.body25.i.6
  %polly.indvar_next85.6 = add nuw nsw i64 %polly.indvar84.6, 1
  %exitcond113.6.not = icmp eq i64 %polly.indvar_next85.6, %45
  br i1 %exitcond113.6.not, label %polly.loop_preheader88.7, label %polly.loop_preheader88.6

polly.loop_preheader88.7:                         ; preds = %polly.loop_exit89.6, %polly.loop_exit89.7
  %polly.indvar84.7 = phi i64 [ %polly.indvar_next85.7, %polly.loop_exit89.7 ], [ 0, %polly.loop_exit89.6 ]
  %109 = add nuw nsw i64 %polly.indvar84.7, %46
  %110 = trunc i64 %109 to i32
  %111 = mul nuw nsw i64 %109, 2160
  br label %polly.stmt.for.body25.i.7

polly.stmt.for.body25.i.7:                        ; preds = %polly.stmt.for.body25.i.7, %polly.loop_preheader88.7
  %polly.indvar90.7 = phi i64 [ 0, %polly.loop_preheader88.7 ], [ %polly.indvar_next91.7, %polly.stmt.for.body25.i.7 ]
  %112 = add nuw nsw i64 %polly.indvar90.7, 224
  %113 = trunc i64 %112 to i32
  %114 = mul i32 %113, %110
  %115 = urem i32 %114, 270
  %p_conv28.i.7 = sitofp i32 %115 to double
  %p_div30.i.7 = fdiv double %p_conv28.i.7, 2.700000e+02
  %116 = shl i64 %112, 3
  %117 = add nuw nsw i64 %116, %111
  %scevgep93.7 = getelementptr i8, i8* %call.i28, i64 %117
  %scevgep9394.7 = bitcast i8* %scevgep93.7 to double*
  store double %p_div30.i.7, double* %scevgep9394.7, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next91.7 = add nuw nsw i64 %polly.indvar90.7, 1
  %exitcond109.7.not = icmp eq i64 %polly.indvar_next91.7, 32
  br i1 %exitcond109.7.not, label %polly.loop_exit89.7, label %polly.stmt.for.body25.i.7

polly.loop_exit89.7:                              ; preds = %polly.stmt.for.body25.i.7
  %polly.indvar_next85.7 = add nuw nsw i64 %polly.indvar84.7, 1
  %exitcond113.7.not = icmp eq i64 %polly.indvar_next85.7, %45
  br i1 %exitcond113.7.not, label %polly.loop_preheader88.8, label %polly.loop_preheader88.7

polly.loop_preheader88.8:                         ; preds = %polly.loop_exit89.7, %polly.loop_preheader88.8
  %polly.indvar84.8 = phi i64 [ %polly.indvar_next85.8, %polly.loop_preheader88.8 ], [ 0, %polly.loop_exit89.7 ]
  %118 = add nuw nsw i64 %polly.indvar84.8, %46
  %119 = trunc i64 %118 to i32
  %120 = mul nuw nsw i64 %118, 2160
  %121 = shl i32 %119, 8
  %122 = urem i32 %121, 270
  %p_conv28.i.8 = sitofp i32 %122 to double
  %p_div30.i.8 = fdiv double %p_conv28.i.8, 2.700000e+02
  %123 = add nuw nsw i64 %120, 2048
  %scevgep93.8 = getelementptr i8, i8* %call.i28, i64 %123
  %scevgep9394.8 = bitcast i8* %scevgep93.8 to double*
  store double %p_div30.i.8, double* %scevgep9394.8, align 8, !alias.scope !42, !noalias !43
  %124 = mul i32 %119, 257
  %125 = urem i32 %124, 270
  %p_conv28.i.8.1 = sitofp i32 %125 to double
  %p_div30.i.8.1 = fdiv double %p_conv28.i.8.1, 2.700000e+02
  %126 = add nuw nsw i64 %120, 2056
  %scevgep93.8.1 = getelementptr i8, i8* %call.i28, i64 %126
  %scevgep9394.8.1 = bitcast i8* %scevgep93.8.1 to double*
  store double %p_div30.i.8.1, double* %scevgep9394.8.1, align 8, !alias.scope !42, !noalias !43
  %127 = mul i32 %119, 258
  %128 = urem i32 %127, 270
  %p_conv28.i.8.2 = sitofp i32 %128 to double
  %p_div30.i.8.2 = fdiv double %p_conv28.i.8.2, 2.700000e+02
  %129 = add nuw nsw i64 %120, 2064
  %scevgep93.8.2 = getelementptr i8, i8* %call.i28, i64 %129
  %scevgep9394.8.2 = bitcast i8* %scevgep93.8.2 to double*
  store double %p_div30.i.8.2, double* %scevgep9394.8.2, align 8, !alias.scope !42, !noalias !43
  %130 = mul i32 %119, 259
  %131 = urem i32 %130, 270
  %p_conv28.i.8.3 = sitofp i32 %131 to double
  %p_div30.i.8.3 = fdiv double %p_conv28.i.8.3, 2.700000e+02
  %132 = add nuw nsw i64 %120, 2072
  %scevgep93.8.3 = getelementptr i8, i8* %call.i28, i64 %132
  %scevgep9394.8.3 = bitcast i8* %scevgep93.8.3 to double*
  store double %p_div30.i.8.3, double* %scevgep9394.8.3, align 8, !alias.scope !42, !noalias !43
  %133 = mul i32 %119, 260
  %134 = urem i32 %133, 270
  %p_conv28.i.8.4 = sitofp i32 %134 to double
  %p_div30.i.8.4 = fdiv double %p_conv28.i.8.4, 2.700000e+02
  %135 = add nuw nsw i64 %120, 2080
  %scevgep93.8.4 = getelementptr i8, i8* %call.i28, i64 %135
  %scevgep9394.8.4 = bitcast i8* %scevgep93.8.4 to double*
  store double %p_div30.i.8.4, double* %scevgep9394.8.4, align 8, !alias.scope !42, !noalias !43
  %136 = mul i32 %119, 261
  %137 = urem i32 %136, 270
  %p_conv28.i.8.5 = sitofp i32 %137 to double
  %p_div30.i.8.5 = fdiv double %p_conv28.i.8.5, 2.700000e+02
  %138 = add nuw nsw i64 %120, 2088
  %scevgep93.8.5 = getelementptr i8, i8* %call.i28, i64 %138
  %scevgep9394.8.5 = bitcast i8* %scevgep93.8.5 to double*
  store double %p_div30.i.8.5, double* %scevgep9394.8.5, align 8, !alias.scope !42, !noalias !43
  %139 = mul i32 %119, 262
  %140 = urem i32 %139, 270
  %p_conv28.i.8.6 = sitofp i32 %140 to double
  %p_div30.i.8.6 = fdiv double %p_conv28.i.8.6, 2.700000e+02
  %141 = add nuw nsw i64 %120, 2096
  %scevgep93.8.6 = getelementptr i8, i8* %call.i28, i64 %141
  %scevgep9394.8.6 = bitcast i8* %scevgep93.8.6 to double*
  store double %p_div30.i.8.6, double* %scevgep9394.8.6, align 8, !alias.scope !42, !noalias !43
  %142 = mul i32 %119, 263
  %143 = urem i32 %142, 270
  %p_conv28.i.8.7 = sitofp i32 %143 to double
  %p_div30.i.8.7 = fdiv double %p_conv28.i.8.7, 2.700000e+02
  %144 = add nuw nsw i64 %120, 2104
  %scevgep93.8.7 = getelementptr i8, i8* %call.i28, i64 %144
  %scevgep9394.8.7 = bitcast i8* %scevgep93.8.7 to double*
  store double %p_div30.i.8.7, double* %scevgep9394.8.7, align 8, !alias.scope !42, !noalias !43
  %145 = mul i32 %119, 264
  %146 = urem i32 %145, 270
  %p_conv28.i.8.8 = sitofp i32 %146 to double
  %p_div30.i.8.8 = fdiv double %p_conv28.i.8.8, 2.700000e+02
  %147 = add nuw nsw i64 %120, 2112
  %scevgep93.8.8 = getelementptr i8, i8* %call.i28, i64 %147
  %scevgep9394.8.8 = bitcast i8* %scevgep93.8.8 to double*
  store double %p_div30.i.8.8, double* %scevgep9394.8.8, align 8, !alias.scope !42, !noalias !43
  %148 = mul i32 %119, 265
  %149 = urem i32 %148, 270
  %p_conv28.i.8.9 = sitofp i32 %149 to double
  %p_div30.i.8.9 = fdiv double %p_conv28.i.8.9, 2.700000e+02
  %150 = add nuw nsw i64 %120, 2120
  %scevgep93.8.9 = getelementptr i8, i8* %call.i28, i64 %150
  %scevgep9394.8.9 = bitcast i8* %scevgep93.8.9 to double*
  store double %p_div30.i.8.9, double* %scevgep9394.8.9, align 8, !alias.scope !42, !noalias !43
  %151 = mul i32 %119, 266
  %152 = urem i32 %151, 270
  %p_conv28.i.8.10 = sitofp i32 %152 to double
  %p_div30.i.8.10 = fdiv double %p_conv28.i.8.10, 2.700000e+02
  %153 = add nuw nsw i64 %120, 2128
  %scevgep93.8.10 = getelementptr i8, i8* %call.i28, i64 %153
  %scevgep9394.8.10 = bitcast i8* %scevgep93.8.10 to double*
  store double %p_div30.i.8.10, double* %scevgep9394.8.10, align 8, !alias.scope !42, !noalias !43
  %154 = mul i32 %119, 267
  %155 = urem i32 %154, 270
  %p_conv28.i.8.11 = sitofp i32 %155 to double
  %p_div30.i.8.11 = fdiv double %p_conv28.i.8.11, 2.700000e+02
  %156 = add nuw nsw i64 %120, 2136
  %scevgep93.8.11 = getelementptr i8, i8* %call.i28, i64 %156
  %scevgep9394.8.11 = bitcast i8* %scevgep93.8.11 to double*
  store double %p_div30.i.8.11, double* %scevgep9394.8.11, align 8, !alias.scope !42, !noalias !43
  %157 = mul i32 %119, 268
  %158 = urem i32 %157, 270
  %p_conv28.i.8.12 = sitofp i32 %158 to double
  %p_div30.i.8.12 = fdiv double %p_conv28.i.8.12, 2.700000e+02
  %159 = add nuw nsw i64 %120, 2144
  %scevgep93.8.12 = getelementptr i8, i8* %call.i28, i64 %159
  %scevgep9394.8.12 = bitcast i8* %scevgep93.8.12 to double*
  store double %p_div30.i.8.12, double* %scevgep9394.8.12, align 8, !alias.scope !42, !noalias !43
  %160 = mul i32 %119, 269
  %161 = urem i32 %160, 270
  %p_conv28.i.8.13 = sitofp i32 %161 to double
  %p_div30.i.8.13 = fdiv double %p_conv28.i.8.13, 2.700000e+02
  %162 = add nuw nsw i64 %120, 2152
  %scevgep93.8.13 = getelementptr i8, i8* %call.i28, i64 %162
  %scevgep9394.8.13 = bitcast i8* %scevgep93.8.13 to double*
  store double %p_div30.i.8.13, double* %scevgep9394.8.13, align 8, !alias.scope !42, !noalias !43
  %polly.indvar_next85.8 = add nuw nsw i64 %polly.indvar84.8, 1
  %exitcond113.8.not = icmp eq i64 %polly.indvar_next85.8, %45
  br i1 %exitcond113.8.not, label %polly.loop_exit83.8, label %polly.loop_preheader88.8

polly.loop_exit83.8:                              ; preds = %polly.loop_preheader88.8
  %polly.indvar_next73 = add nuw nsw i64 %polly.indvar72, 1
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, -32
  %exitcond115.not = icmp eq i64 %polly.indvar_next73, 9
  br i1 %exitcond115.not, label %init_array.exit, label %polly.loop_preheader76
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { nofree norecurse nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !23, !"polly.alias.scope.MemRef0"}
!23 = distinct !{!23, !"polly.alias.scope.domain"}
!24 = !{!25, !26}
!25 = distinct !{!25, !23, !"polly.alias.scope.MemRef2"}
!26 = distinct !{!26, !23, !"polly.alias.scope.MemRef3"}
!27 = !{!22, !26}
!28 = distinct !{!28, !29, !8}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !18}
!32 = !{!22}
!33 = !{!22, !25}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !4, i64 0}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !40, !"polly.alias.scope.MemRef0"}
!40 = distinct !{!40, !"polly.alias.scope.domain"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"polly.alias.scope.MemRef2"}
!43 = !{!39}
