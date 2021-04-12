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
entry:
  %cmp119 = icmp sgt i32 %nr, 0
  %cmp277 = icmp sgt i32 %nq, 0
  %or.cond = and i1 %cmp119, %cmp277
  %cmp573 = icmp sgt i32 %np, 0
  %or.cond177 = and i1 %or.cond, %cmp573
  br i1 %or.cond177, label %for.cond1.preheader.us.us.us.us.preheader, label %for.end44

for.cond1.preheader.us.us.us.us.preheader:        ; preds = %entry
  %wide.trip.count175 = zext i32 %nr to i64
  %wide.trip.count171 = zext i32 %nq to i64
  %wide.trip.count160 = zext i32 %np to i64
  %scevgep182 = getelementptr double, double* %sum, i64 %wide.trip.count160
  %0 = and i64 %wide.trip.count160, 4294967292
  %1 = add nsw i64 %0, -4
  %2 = lshr exact i64 %1, 2
  %3 = add nuw nsw i64 %2, 1
  %xtraiter = and i64 %wide.trip.count160, 1
  %4 = icmp eq i32 %np, 1
  %unroll_iter = and i64 %wide.trip.count160, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %np, 4
  %n.vec = and i64 %wide.trip.count160, 4294967292
  %xtraiter186 = and i64 %3, 3
  %5 = icmp ult i64 %1, 12
  %unroll_iter188 = and i64 %3, 9223372036854775804
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count160
  %xtraiter190 = and i64 %wide.trip.count160, 3
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br label %for.cond1.preheader.us.us.us.us

for.cond1.preheader.us.us.us.us:                  ; preds = %for.cond1.preheader.us.us.us.us.preheader, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us
  %indvars.iv173 = phi i64 [ 0, %for.cond1.preheader.us.us.us.us.preheader ], [ %indvars.iv.next174, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us ]
  br label %for.cond4.preheader.us.us.us.us.us.us.us

for.cond4.preheader.us.us.us.us.us.us.us:         ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, %for.cond1.preheader.us.us.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us ], [ 0, %for.cond1.preheader.us.us.us.us ]
  %scevgep = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 0
  %scevgep179 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %wide.trip.count160
  br label %for.body6.us.us.us.us.us.us.us.us

for.body27.us.us.us.us.us.us.us:                  ; preds = %for.body27.us.us.us.us.us.us.us.prol.loopexit, %for.body27.us.us.us.us.us.us.us
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %for.body27.us.us.us.us.us.us.us ], [ %indvars.iv165.unr, %for.body27.us.us.us.us.us.us.us.prol.loopexit ]
  %arrayidx29.us.us.us.us.us.us.us = getelementptr inbounds double, double* %sum, i64 %indvars.iv165
  %6 = load double, double* %arrayidx29.us.us.us.us.us.us.us, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv165
  store double %6, double* %arrayidx35.us.us.us.us.us.us.us, align 8, !tbaa !2
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %arrayidx29.us.us.us.us.us.us.us.1 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166
  %7 = load double, double* %arrayidx29.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166
  store double %7, double* %arrayidx35.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2
  %arrayidx29.us.us.us.us.us.us.us.2 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166.1
  %8 = load double, double* %arrayidx29.us.us.us.us.us.us.us.2, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.2 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166.1
  store double %8, double* %arrayidx35.us.us.us.us.us.us.us.2, align 8, !tbaa !2
  %indvars.iv.next166.2 = add nuw nsw i64 %indvars.iv165, 3
  %arrayidx29.us.us.us.us.us.us.us.3 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next166.2
  %9 = load double, double* %arrayidx29.us.us.us.us.us.us.us.3, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.3 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next166.2
  store double %9, double* %arrayidx35.us.us.us.us.us.us.us.3, align 8, !tbaa !2
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4
  %exitcond168.not.3 = icmp eq i64 %indvars.iv.next166.3, %wide.trip.count160
  br i1 %exitcond168.not.3, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us, !llvm.loop !6

for.body6.us.us.us.us.us.us.us.us:                ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us, %for.cond4.preheader.us.us.us.us.us.us.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us ], [ 0, %for.cond4.preheader.us.us.us.us.us.us.us ]
  %arrayidx.us.us.us.us.us.us.us.us = getelementptr inbounds double, double* %sum, i64 %indvars.iv158
  store double 0.000000e+00, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  br i1 %4, label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa, label %for.body9.us.us.us.us.us.us.us.us

for.body9.us.us.us.us.us.us.us.us:                ; preds = %for.body6.us.us.us.us.us.us.us.us, %for.body9.us.us.us.us.us.us.us.us
  %10 = phi double [ %add.us.us.us.us.us.us.us.us.1, %for.body9.us.us.us.us.us.us.us.us ], [ 0.000000e+00, %for.body6.us.us.us.us.us.us.us.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body9.us.us.us.us.us.us.us.us ], [ 0, %for.body6.us.us.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.nsub.1, %for.body9.us.us.us.us.us.us.us.us ], [ %unroll_iter, %for.body6.us.us.us.us.us.us.us.us ]
  %arrayidx15.us.us.us.us.us.us.us.us = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv
  %11 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv, i64 %indvars.iv158
  %12 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us = fmul double %11, %12
  %add.us.us.us.us.us.us.us.us = fadd double %10, %mul.us.us.us.us.us.us.us.us
  store double %add.us.us.us.us.us.us.us.us, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx15.us.us.us.us.us.us.us.us.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv.next
  %13 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.1 = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv.next, i64 %indvars.iv158
  %14 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.1, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.1 = fmul double %13, %14
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
  %15 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.epil, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.epil = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv.unr, i64 %indvars.iv158
  %16 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.epil, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.epil = fmul double %15, %16
  %add.us.us.us.us.us.us.us.us.epil = fadd double %.unr, %mul.us.us.us.us.us.us.us.us.epil
  store double %add.us.us.us.us.us.us.us.us.epil, double* %arrayidx.us.us.us.us.us.us.us.us, align 8, !tbaa !2
  br label %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us

for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us: ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.unr-lcssa, %for.body9.us.us.us.us.us.us.us.us.epil
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count160
  br i1 %exitcond161.not, label %for.body27.us.us.us.us.us.us.us.preheader, label %for.body6.us.us.us.us.us.us.us.us, !llvm.loop !10

for.body27.us.us.us.us.us.us.us.preheader:        ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us
  br i1 %min.iters.check, label %for.body27.us.us.us.us.us.us.us.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body27.us.us.us.us.us.us.us.preheader
  %bound0 = icmp ult double* %scevgep, %scevgep182
  %bound1 = icmp ugt double* %scevgep179, %sum
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body27.us.us.us.us.us.us.us.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  br i1 %5, label %middle.block.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.ph ]
  %niter189 = phi i64 [ %niter189.nsub.3, %vector.body ], [ %unroll_iter188, %vector.ph ]
  %17 = getelementptr inbounds double, double* %sum, i64 %index
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %18, align 8, !tbaa !2, !alias.scope !11
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load184 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !2, !alias.scope !11
  %21 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index
  %22 = bitcast double* %21 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %22, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %23 = getelementptr inbounds double, double* %21, i64 2
  %24 = bitcast double* %23 to <2 x double>*
  store <2 x double> %wide.load184, <2 x double>* %24, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next = or i64 %index, 4
  %25 = getelementptr inbounds double, double* %sum, i64 %index.next
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !2, !alias.scope !11
  %27 = getelementptr inbounds double, double* %25, i64 2
  %28 = bitcast double* %27 to <2 x double>*
  %wide.load184.1 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !2, !alias.scope !11
  %29 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next
  %30 = bitcast double* %29 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %30, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %31 = getelementptr inbounds double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  store <2 x double> %wide.load184.1, <2 x double>* %32, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.1 = or i64 %index, 8
  %33 = getelementptr inbounds double, double* %sum, i64 %index.next.1
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load.2 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2, !alias.scope !11
  %35 = getelementptr inbounds double, double* %33, i64 2
  %36 = bitcast double* %35 to <2 x double>*
  %wide.load184.2 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2, !alias.scope !11
  %37 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.1
  %38 = bitcast double* %37 to <2 x double>*
  store <2 x double> %wide.load.2, <2 x double>* %38, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %39 = getelementptr inbounds double, double* %37, i64 2
  %40 = bitcast double* %39 to <2 x double>*
  store <2 x double> %wide.load184.2, <2 x double>* %40, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.2 = or i64 %index, 12
  %41 = getelementptr inbounds double, double* %sum, i64 %index.next.2
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load.3 = load <2 x double>, <2 x double>* %42, align 8, !tbaa !2, !alias.scope !11
  %43 = getelementptr inbounds double, double* %41, i64 2
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load184.3 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2, !alias.scope !11
  %45 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.2
  %46 = bitcast double* %45 to <2 x double>*
  store <2 x double> %wide.load.3, <2 x double>* %46, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %47 = getelementptr inbounds double, double* %45, i64 2
  %48 = bitcast double* %47 to <2 x double>*
  store <2 x double> %wide.load184.3, <2 x double>* %48, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.3 = add i64 %index, 16
  %niter189.nsub.3 = add i64 %niter189, -4
  %niter189.ncmp.3 = icmp eq i64 %niter189.nsub.3, 0
  br i1 %niter189.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  br i1 %lcmp.mod187.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter186, %middle.block.unr-lcssa ]
  %49 = getelementptr inbounds double, double* %sum, i64 %index.epil
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %50, align 8, !tbaa !2, !alias.scope !11
  %51 = getelementptr inbounds double, double* %49, i64 2
  %52 = bitcast double* %51 to <2 x double>*
  %wide.load184.epil = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2, !alias.scope !11
  %53 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.epil
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %54, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %55 = getelementptr inbounds double, double* %53, i64 2
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> %wide.load184.epil, <2 x double>* %56, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !17

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  br i1 %cmp.n, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us.preheader185

for.body27.us.us.us.us.us.us.us.preheader185:     ; preds = %vector.memcheck, %for.body27.us.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body27.us.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ]
  %57 = xor i64 %indvars.iv165.ph, -1
  %58 = add nsw i64 %57, %wide.trip.count160
  br i1 %lcmp.mod191.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol

for.body27.us.us.us.us.us.us.us.prol:             ; preds = %for.body27.us.us.us.us.us.us.us.preheader185, %for.body27.us.us.us.us.us.us.us.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ], [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader185 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body27.us.us.us.us.us.us.us.prol ], [ %xtraiter190, %for.body27.us.us.us.us.us.us.us.preheader185 ]
  %arrayidx29.us.us.us.us.us.us.us.prol = getelementptr inbounds double, double* %sum, i64 %indvars.iv165.prol
  %59 = load double, double* %arrayidx29.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.prol = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv165.prol
  store double %59, double* %arrayidx35.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol, !llvm.loop !19

for.body27.us.us.us.us.us.us.us.prol.loopexit:    ; preds = %for.body27.us.us.us.us.us.us.us.prol, %for.body27.us.us.us.us.us.us.us.preheader185
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader185 ], [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ]
  %60 = icmp ult i64 %58, 3
  br i1 %60, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us

for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us: ; preds = %for.body27.us.us.us.us.us.us.us.prol.loopexit, %for.body27.us.us.us.us.us.us.us, %middle.block
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count171
  br i1 %exitcond172.not, label %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us, label %for.cond4.preheader.us.us.us.us.us.us.us, !llvm.loop !20

for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us: ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count175
  br i1 %exitcond176.not, label %for.end44, label %for.cond1.preheader.us.us.us.us, !llvm.loop !21

for.end44:                                        ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #1 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(118800000) i8* @malloc(i64 118800000) #8
  %call.i27 = tail call noalias dereferenceable_or_null(2160) i8* @malloc(i64 2160) #8
  %call.i28 = tail call noalias dereferenceable_or_null(583200) i8* @malloc(i64 583200) #8
  %arraydecay = bitcast i8* %call.i to [220 x [270 x double]]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc15.i, %entry
  %indvars.iv11.i = phi i64 [ 0, %entry ], [ %indvars.iv.next12.i, %for.inc15.i ]
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc12.i, %for.cond1.preheader.i
  %indvars.iv7.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next8.i, %for.inc12.i ]
  %0 = mul nuw nsw i64 %indvars.iv7.i, %indvars.iv11.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.cond4.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond4.preheader.i ], [ %indvars.iv.next.i, %for.body6.i ]
  %1 = add nuw nsw i64 %indvars.iv.i, %0
  %2 = trunc i64 %1 to i32
  %rem.i = urem i32 %2, 270
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.700000e+02
  %arrayidx11.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv11.i, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx11.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 270
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body6.i, !llvm.loop !22

for.inc12.i:                                      ; preds = %for.body6.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i, 220
  br i1 %exitcond10.not.i, label %for.inc15.i, label %for.cond4.preheader.i, !llvm.loop !23

for.inc15.i:                                      ; preds = %for.inc12.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 250
  br i1 %exitcond13.not.i, label %for.cond22.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !24

for.cond22.preheader.i.preheader:                 ; preds = %for.inc15.i
  %arraydecay3 = bitcast i8* %call.i28 to [270 x double]*
  br label %for.cond22.preheader.i

for.cond22.preheader.i:                           ; preds = %for.cond22.preheader.i.preheader, %for.inc38.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc38.i ], [ 0, %for.cond22.preheader.i.preheader ]
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.cond22.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %for.cond22.preheader.i ], [ %indvars.iv.next15.i, %for.body25.i ]
  %3 = mul nuw nsw i64 %indvars.iv14.i, %indvars.iv18.i
  %4 = trunc i64 %3 to i32
  %rem27.i = urem i32 %4, 270
  %conv28.i = sitofp i32 %rem27.i to double
  %div30.i = fdiv double %conv28.i, 2.700000e+02
  %arrayidx34.i = getelementptr inbounds [270 x double], [270 x double]* %arraydecay3, i64 %indvars.iv18.i, i64 %indvars.iv14.i
  store double %div30.i, double* %arrayidx34.i, align 8, !tbaa !2
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next15.i, 270
  br i1 %exitcond17.not.i, label %for.inc38.i, label %for.body25.i, !llvm.loop !25

for.inc38.i:                                      ; preds = %for.body25.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, 270
  br i1 %exitcond20.not.i, label %init_array.exit, label %for.cond22.preheader.i, !llvm.loop !26

init_array.exit:                                  ; preds = %for.inc38.i
  tail call void (...) @polybench_timer_start() #8
  %arraydecay6 = bitcast i8* %call.i27 to double*
  br label %for.cond1.preheader.us.us.us.us.i

for.cond1.preheader.us.us.us.us.i:                ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, %init_array.exit
  %indvars.iv173.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next174.i, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i ]
  %5 = mul nuw nsw i64 %indvars.iv173.i, 475200
  br label %for.cond4.preheader.us.us.us.us.us.us.us.i

for.cond4.preheader.us.us.us.us.us.us.us.i:       ; preds = %for.body27.us.us.us.us.us.us.us.i.preheader, %for.cond1.preheader.us.us.us.us.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %for.body27.us.us.us.us.us.us.us.i.preheader ], [ 0, %for.cond1.preheader.us.us.us.us.i ]
  %6 = mul nuw nsw i64 %indvars.iv169.i, 2160
  %7 = add nuw nsw i64 %5, %6
  %scevgep = getelementptr i8, i8* %call.i, i64 %7
  br label %for.body6.us.us.us.us.us.us.us.us.i

for.body6.us.us.us.us.us.us.us.us.i:              ; preds = %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i, %for.cond4.preheader.us.us.us.us.us.us.us.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %for.cond7.for.inc22_crit_edge.us.us.us.us.us.us.us.us.i ], [ 0, %for.cond4.preheader.us.us.us.us.us.us.us.i ]
  %arrayidx.us.us.us.us.us.us.us.us.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv158.i
  store double 0.000000e+00, double* %arrayidx.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  br label %for.body9.us.us.us.us.us.us.us.us.i

for.body9.us.us.us.us.us.us.us.us.i:              ; preds = %for.body9.us.us.us.us.us.us.us.us.i, %for.body6.us.us.us.us.us.us.us.us.i
  %8 = phi double [ 0.000000e+00, %for.body6.us.us.us.us.us.us.us.us.i ], [ %add.us.us.us.us.us.us.us.us.i.2, %for.body9.us.us.us.us.us.us.us.us.i ]
  %indvars.iv.i29 = phi i64 [ 0, %for.body6.us.us.us.us.us.us.us.us.i ], [ %indvars.iv.next.i30.2, %for.body9.us.us.us.us.us.us.us.us.i ]
  %arrayidx15.us.us.us.us.us.us.us.us.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.i29
  %9 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i = getelementptr inbounds [270 x double], [270 x double]* %arraydecay3, i64 %indvars.iv.i29, i64 %indvars.iv158.i
  %10 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i = fmul double %9, %10
  %add.us.us.us.us.us.us.us.us.i = fadd double %8, %mul.us.us.us.us.us.us.us.us.i
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %arrayidx15.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.next.i30
  %11 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i.1, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds [270 x double], [270 x double]* %arraydecay3, i64 %indvars.iv.next.i30, i64 %indvars.iv158.i
  %12 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i.1, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i.1 = fmul double %11, %12
  %add.us.us.us.us.us.us.us.us.i.1 = fadd double %add.us.us.us.us.us.us.us.us.i, %mul.us.us.us.us.us.us.us.us.i.1
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i29, 2
  %arrayidx15.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv173.i, i64 %indvars.iv169.i, i64 %indvars.iv.next.i30.1
  %13 = load double, double* %arrayidx15.us.us.us.us.us.us.us.us.i.2, align 8, !tbaa !2
  %arrayidx19.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds [270 x double], [270 x double]* %arraydecay3, i64 %indvars.iv.next.i30.1, i64 %indvars.iv158.i
  %14 = load double, double* %arrayidx19.us.us.us.us.us.us.us.us.i.2, align 8, !tbaa !2
  %mul.us.us.us.us.us.us.us.us.i.2 = fmul double %13, %14
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(2160) %scevgep, i8* noundef nonnull align 8 dereferenceable(2160) %call.i27, i64 2160, i1 false)
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next170.i, 220
  br i1 %exitcond172.not.i, label %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, label %for.cond4.preheader.us.us.us.us.us.us.us.i, !llvm.loop !20

for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i: ; preds = %for.body27.us.us.us.us.us.us.us.i.preheader
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 250
  br i1 %exitcond176.not.i, label %kernel_doitgen.exit, label %for.cond1.preheader.us.us.us.us.i, !llvm.loop !21

kernel_doitgen.exit:                              ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_doitgen.exit
  %15 = load i8*, i8** %argv, align 8, !tbaa !27
  %strcmpload = load i8, i8* %15, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %16) #9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc21.i, %if.then
  %indvars.iv10.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next11.i, %for.inc21.i ]
  %19 = mul nuw nsw i64 %indvars.iv10.i, 59400
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc18.i, %for.cond2.preheader.i
  %indvars.iv5.i = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next6.i, %for.inc18.i ]
  %20 = mul nuw nsw i64 %indvars.iv5.i, 270
  %21 = add nuw nsw i64 %20, %19
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end.i, %for.cond5.preheader.i
  %indvars.iv.i32 = phi i64 [ 0, %for.cond5.preheader.i ], [ %indvars.iv.next.i33, %if.end.i ]
  %22 = add nuw nsw i64 %21, %indvars.iv.i32
  %23 = trunc i64 %22 to i32
  %rem.urem.i = urem i32 %23, 20
  %cmp11.i = icmp eq i32 %rem.urem.i, 0
  br i1 %cmp11.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body7.i
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %24) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body7.i
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx16.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv5.i, i64 %indvars.iv.i32
  %26 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %26) #9
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, 270
  br i1 %exitcond.not.i34, label %for.inc18.i, label %for.body7.i, !llvm.loop !29

for.inc18.i:                                      ; preds = %if.end.i
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, 220
  br i1 %exitcond9.not.i, label %for.inc21.i, label %for.cond5.preheader.i, !llvm.loop !30

for.inc21.i:                                      ; preds = %for.inc18.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i35 = icmp eq i64 %indvars.iv.next11.i, 250
  br i1 %exitcond13.not.i35, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !31

print_array.exit:                                 ; preds = %for.inc21.i
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call24.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %28) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_doitgen.exit
  tail call void @free(i8* nonnull %call.i) #8
  tail call void @free(i8* %call.i27) #8
  tail call void @free(i8* %call.i28) #8
  ret i32 0
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

attributes #0 = { nofree norecurse nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
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
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !4, i64 0}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
