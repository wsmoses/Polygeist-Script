; ModuleID = 'doitgen.c'
source_filename = "doitgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8
@.str.ident.11 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.12 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.11, i32 0, i32 0) }, align 8
@.str.ident.14 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.15 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.14, i32 0, i32 0) }, align 8
@.str.ident.17 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.18 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.17, i32 0, i32 0) }, align 8
@.str.ident.19 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.20 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.19, i32 0, i32 0) }, align 8

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @kernel_doitgen(i32 %nr, i32 %nq, i32 %np, [220 x [270 x double]]* nocapture %A, [270 x double]* nocapture readonly %C4, double* nocapture %sum) local_unnamed_addr #0 {
polly.split_new_and_old:
  %polly.par.userContext320 = alloca { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, align 8
  %polly.par.userContext311 = alloca { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, align 8
  %polly.par.userContext302 = alloca { i32, i32, i32, i64, i64, double* }, align 8
  %polly.par.userContext = alloca { i32, i32, i32, i64, i64, double* }, align 8
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
  %polly.access.mul.A200331 = add nsw i64 %2, -59670
  %polly.access.add.A204332 = add nsw i64 %polly.access.mul.A200331, %10
  %polly.access.A208 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 0, i64 0, i64 %polly.access.add.A204332
  %11 = icmp ule double* %polly.access.A208, %sum
  %12 = or i1 %6, %11
  %13 = and i1 %4, %12
  %14 = mul nsw i64 %2, 270
  %polly.access.mul.C4333 = add nsw i64 %2, -270
  %polly.access.add.C4334 = add nsw i64 %polly.access.mul.C4333, %14
  %polly.access.C4 = getelementptr [270 x double], [270 x double]* %C4, i64 0, i64 %polly.access.add.C4334
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
  %scevgep349 = getelementptr double, double* %sum, i64 %wide.trip.count160
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
  %xtraiter354 = and i64 %27, 3
  %29 = icmp ult i64 %25, 12
  %unroll_iter356 = and i64 %27, 9223372036854775804
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count160
  %xtraiter358 = and i64 %wide.trip.count160, 3
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br label %for.cond1.preheader.us.us.us.us

for.cond1.preheader.us.us.us.us:                  ; preds = %for.cond1.preheader.us.us.us.us.preheader, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us
  %indvars.iv173 = phi i64 [ 0, %for.cond1.preheader.us.us.us.us.preheader ], [ %indvars.iv.next174, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us ]
  br label %for.cond4.preheader.us.us.us.us.us.us.us

for.cond4.preheader.us.us.us.us.us.us.us:         ; preds = %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, %for.cond1.preheader.us.us.us.us
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us ], [ 0, %for.cond1.preheader.us.us.us.us ]
  %scevgep = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 0
  %scevgep346 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %wide.trip.count160
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
  br i1 %min.iters.check, label %for.body27.us.us.us.us.us.us.us.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body27.us.us.us.us.us.us.us.preheader
  %bound0 = icmp ult double* %scevgep, %scevgep349
  %bound1 = icmp ugt double* %scevgep346, %sum
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body27.us.us.us.us.us.us.us.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  br i1 %29, label %middle.block.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.ph ]
  %niter357 = phi i64 [ %niter357.nsub.3, %vector.body ], [ %unroll_iter356, %vector.ph ]
  %41 = getelementptr inbounds double, double* %sum, i64 %index
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %42, align 8, !tbaa !2, !alias.scope !11
  %43 = getelementptr inbounds double, double* %41, i64 2
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load351 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2, !alias.scope !11
  %45 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index
  %46 = bitcast double* %45 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %46, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %47 = getelementptr inbounds double, double* %45, i64 2
  %48 = bitcast double* %47 to <2 x double>*
  store <2 x double> %wide.load351, <2 x double>* %48, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next = or i64 %index, 4
  %49 = getelementptr inbounds double, double* %sum, i64 %index.next
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %50, align 8, !tbaa !2, !alias.scope !11
  %51 = getelementptr inbounds double, double* %49, i64 2
  %52 = bitcast double* %51 to <2 x double>*
  %wide.load351.1 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2, !alias.scope !11
  %53 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %54, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %55 = getelementptr inbounds double, double* %53, i64 2
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> %wide.load351.1, <2 x double>* %56, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.1 = or i64 %index, 8
  %57 = getelementptr inbounds double, double* %sum, i64 %index.next.1
  %58 = bitcast double* %57 to <2 x double>*
  %wide.load.2 = load <2 x double>, <2 x double>* %58, align 8, !tbaa !2, !alias.scope !11
  %59 = getelementptr inbounds double, double* %57, i64 2
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load351.2 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !2, !alias.scope !11
  %61 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.1
  %62 = bitcast double* %61 to <2 x double>*
  store <2 x double> %wide.load.2, <2 x double>* %62, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %63 = getelementptr inbounds double, double* %61, i64 2
  %64 = bitcast double* %63 to <2 x double>*
  store <2 x double> %wide.load351.2, <2 x double>* %64, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.2 = or i64 %index, 12
  %65 = getelementptr inbounds double, double* %sum, i64 %index.next.2
  %66 = bitcast double* %65 to <2 x double>*
  %wide.load.3 = load <2 x double>, <2 x double>* %66, align 8, !tbaa !2, !alias.scope !11
  %67 = getelementptr inbounds double, double* %65, i64 2
  %68 = bitcast double* %67 to <2 x double>*
  %wide.load351.3 = load <2 x double>, <2 x double>* %68, align 8, !tbaa !2, !alias.scope !11
  %69 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.next.2
  %70 = bitcast double* %69 to <2 x double>*
  store <2 x double> %wide.load.3, <2 x double>* %70, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %71 = getelementptr inbounds double, double* %69, i64 2
  %72 = bitcast double* %71 to <2 x double>*
  store <2 x double> %wide.load351.3, <2 x double>* %72, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.3 = add i64 %index, 16
  %niter357.nsub.3 = add i64 %niter357, -4
  %niter357.ncmp.3 = icmp eq i64 %niter357.nsub.3, 0
  br i1 %niter357.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  br i1 %lcmp.mod355.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter354, %middle.block.unr-lcssa ]
  %73 = getelementptr inbounds double, double* %sum, i64 %index.epil
  %74 = bitcast double* %73 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %74, align 8, !tbaa !2, !alias.scope !11
  %75 = getelementptr inbounds double, double* %73, i64 2
  %76 = bitcast double* %75 to <2 x double>*
  %wide.load351.epil = load <2 x double>, <2 x double>* %76, align 8, !tbaa !2, !alias.scope !11
  %77 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %index.epil
  %78 = bitcast double* %77 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %78, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %79 = getelementptr inbounds double, double* %77, i64 2
  %80 = bitcast double* %79 to <2 x double>*
  store <2 x double> %wide.load351.epil, <2 x double>* %80, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !17

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  br i1 %cmp.n, label %for.cond25.for.inc39_crit_edge.us.us.us.us.us.us.us, label %for.body27.us.us.us.us.us.us.us.preheader352

for.body27.us.us.us.us.us.us.us.preheader352:     ; preds = %vector.memcheck, %for.body27.us.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body27.us.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ]
  %81 = xor i64 %indvars.iv165.ph, -1
  %82 = add nsw i64 %81, %wide.trip.count160
  br i1 %lcmp.mod359.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol

for.body27.us.us.us.us.us.us.us.prol:             ; preds = %for.body27.us.us.us.us.us.us.us.preheader352, %for.body27.us.us.us.us.us.us.us.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ], [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader352 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body27.us.us.us.us.us.us.us.prol ], [ %xtraiter358, %for.body27.us.us.us.us.us.us.us.preheader352 ]
  %arrayidx29.us.us.us.us.us.us.us.prol = getelementptr inbounds double, double* %sum, i64 %indvars.iv165.prol
  %83 = load double, double* %arrayidx29.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %arrayidx35.us.us.us.us.us.us.us.prol = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv173, i64 %indvars.iv169, i64 %indvars.iv165.prol
  store double %83, double* %arrayidx35.us.us.us.us.us.us.us.prol, align 8, !tbaa !2
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body27.us.us.us.us.us.us.us.prol.loopexit, label %for.body27.us.us.us.us.us.us.us.prol, !llvm.loop !19

for.body27.us.us.us.us.us.us.us.prol.loopexit:    ; preds = %for.body27.us.us.us.us.us.us.us.prol, %for.body27.us.us.us.us.us.us.us.preheader352
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %for.body27.us.us.us.us.us.us.us.preheader352 ], [ %indvars.iv.next166.prol, %for.body27.us.us.us.us.us.us.us.prol ]
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

for.end44:                                        ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us, %polly.loop_exit295.loopexit.us, %polly.loop_if292.preheader, %polly.loop_if, %entry.split
  ret void

polly.loop_if:                                    ; preds = %polly.split_new_and_old
  br i1 %polly.loop_guard, label %polly.loop_if292.preheader, label %for.end44

polly.loop_if292.preheader:                       ; preds = %polly.loop_if
  %polly.loop_guard296 = icmp sgt i32 %nq, 0
  %85 = add i32 %np, -1
  %86 = sext i32 %85 to i64
  %polly.subfn.storeaddr.nr = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 0
  %polly.subfn.storeaddr.nq = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 1
  %polly.subfn.storeaddr.np = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 2
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 3
  %polly.subfn.storeaddr.polly.indvar297 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 4
  %polly.subfn.storeaddr.sum = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext, i64 0, i32 5
  %87 = add nsw i64 %86, 1
  %polly.subfn.storeaddr.nr303 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 0
  %polly.subfn.storeaddr.nq304 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 1
  %polly.subfn.storeaddr.np305 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 2
  %polly.subfn.storeaddr.polly.indvar306 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 3
  %polly.subfn.storeaddr.polly.indvar297307 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 4
  %polly.subfn.storeaddr.sum308 = getelementptr inbounds { i32, i32, i32, i64, i64, double* }, { i32, i32, i32, i64, i64, double* }* %polly.par.userContext302, i64 0, i32 5
  %88 = add nsw i64 %2, -1
  %polly.fdiv_q.shr = ashr i64 %88, 5
  %polly.subfn.storeaddr.nr312 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 0
  %polly.subfn.storeaddr.nq313 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 1
  %polly.subfn.storeaddr.np314 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 2
  %polly.subfn.storeaddr.polly.indvar315 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 3
  %polly.subfn.storeaddr.polly.indvar297316 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 4
  %polly.subfn.storeaddr.sum317 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 5
  %polly.subfn.storeaddr.A = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 6
  %polly.subfn.storeaddr.C4 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* %polly.par.userContext311, i64 0, i32 7
  %89 = add nsw i64 %polly.fdiv_q.shr, 1
  %polly.subfn.storeaddr.nr321 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 0
  %polly.subfn.storeaddr.nq322 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 1
  %polly.subfn.storeaddr.np323 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 2
  %polly.subfn.storeaddr.polly.indvar324 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 3
  %polly.subfn.storeaddr.polly.indvar297325 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 4
  %polly.subfn.storeaddr.sum326 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 5
  %polly.subfn.storeaddr.A327 = getelementptr inbounds { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* %polly.par.userContext320, i64 0, i32 6
  br i1 %polly.loop_guard296, label %polly.loop_if292.us, label %for.end44

polly.loop_if292.us:                              ; preds = %polly.loop_if292.preheader, %polly.loop_exit295.loopexit.us
  %polly.indvar.us = phi i64 [ %polly.indvar_next.us, %polly.loop_exit295.loopexit.us ], [ 0, %polly.loop_if292.preheader ]
  br label %polly.parallel.for319.us

polly.parallel.for319.us:                         ; preds = %polly.loop_if292.us, %polly.parallel.for319.us
  %polly.indvar297.us = phi i64 [ %polly.indvar_next298.us, %polly.parallel.for319.us ], [ 0, %polly.loop_if292.us ]
  store i32 %nr, i32* %polly.subfn.storeaddr.nr, align 8
  store i32 %nq, i32* %polly.subfn.storeaddr.nq, align 4
  store i32 %np, i32* %polly.subfn.storeaddr.np, align 8
  store i64 %polly.indvar.us, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i64 %polly.indvar297.us, i64* %polly.subfn.storeaddr.polly.indvar297, align 8
  store double* %sum, double** %polly.subfn.storeaddr.sum, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @kernel_doitgen_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 %87, i64 1, { i32, i32, i32, i64, i64, double* }* nonnull %polly.par.userContext) #11
  store i32 %nr, i32* %polly.subfn.storeaddr.nr303, align 8
  store i32 %nq, i32* %polly.subfn.storeaddr.nq304, align 4
  store i32 %np, i32* %polly.subfn.storeaddr.np305, align 8
  store i64 %polly.indvar.us, i64* %polly.subfn.storeaddr.polly.indvar306, align 8
  store i64 %polly.indvar297.us, i64* %polly.subfn.storeaddr.polly.indvar297307, align 8
  store double* %sum, double** %polly.subfn.storeaddr.sum308, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @kernel_doitgen_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 %87, i64 1, { i32, i32, i32, i64, i64, double* }* nonnull %polly.par.userContext302) #11
  store i32 %nr, i32* %polly.subfn.storeaddr.nr312, align 8
  store i32 %nq, i32* %polly.subfn.storeaddr.nq313, align 4
  store i32 %np, i32* %polly.subfn.storeaddr.np314, align 8
  store i64 %polly.indvar.us, i64* %polly.subfn.storeaddr.polly.indvar315, align 8
  store i64 %polly.indvar297.us, i64* %polly.subfn.storeaddr.polly.indvar297316, align 8
  store double* %sum, double** %polly.subfn.storeaddr.sum317, align 8
  store [220 x [270 x double]]* %A, [220 x [270 x double]]** %polly.subfn.storeaddr.A, align 8
  store [270 x double]* %C4, [270 x double]** %polly.subfn.storeaddr.C4, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @kernel_doitgen_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 %89, i64 1, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]*, [270 x double]* }* nonnull %polly.par.userContext311) #11
  store i32 %nr, i32* %polly.subfn.storeaddr.nr321, align 8
  store i32 %nq, i32* %polly.subfn.storeaddr.nq322, align 4
  store i32 %np, i32* %polly.subfn.storeaddr.np323, align 8
  store i64 %polly.indvar.us, i64* %polly.subfn.storeaddr.polly.indvar324, align 8
  store i64 %polly.indvar297.us, i64* %polly.subfn.storeaddr.polly.indvar297325, align 8
  store double* %sum, double** %polly.subfn.storeaddr.sum326, align 8
  store [220 x [270 x double]]* %A, [220 x [270 x double]]** %polly.subfn.storeaddr.A327, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.15, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @kernel_doitgen_polly_subfn_16 to void (i32*, i32*, ...)*), i64 0, i64 %87, i64 1, { i32, i32, i32, i64, i64, double*, [220 x [270 x double]]* }* nonnull %polly.par.userContext320) #11
  %polly.indvar_next298.us = add nuw nsw i64 %polly.indvar297.us, 1
  %exitcond.not342 = icmp eq i64 %polly.indvar_next298.us, %0
  br i1 %exitcond.not342, label %polly.loop_exit295.loopexit.us, label %polly.parallel.for319.us

polly.loop_exit295.loopexit.us:                   ; preds = %polly.parallel.for319.us
  %polly.indvar_next.us = add nuw nsw i64 %polly.indvar.us, 1
  %exitcond341.not = icmp eq i64 %polly.indvar_next.us, %7
  br i1 %exitcond341.not, label %for.end44, label %polly.loop_if292.us
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #1 {
polly.exiting:
  %polly.par.userContext39 = alloca { i8* }, align 8
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(118800000) i8* @malloc(i64 118800000) #11
  %call.i27 = tail call noalias dereferenceable_or_null(2160) i8* @malloc(i64 2160) #11
  %call.i28 = tail call noalias dereferenceable_or_null(583200) i8* @malloc(i64 583200) #11
  %call.i2836 = bitcast i8* %call.i28 to [270 x double]*
  %arraydecay = bitcast i8* %call.i to [220 x [270 x double]]*
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.18, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 8, i64 1, { i8* }* nonnull %polly.par.userContext) #11
  %polly.subfn.storeaddr.call.i28 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext39, i64 0, i32 0
  store i8* %call.i28, i8** %polly.subfn.storeaddr.call.i28, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.20, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_21 to void (i32*, i32*, ...)*), i64 0, i64 9, i64 1, { i8* }* nonnull %polly.par.userContext39) #11
  tail call void (...) @polybench_timer_start() #11
  %arraydecay6 = bitcast i8* %call.i27 to double*
  br label %for.cond1.preheader.us.us.us.us.i

for.cond1.preheader.us.us.us.us.i:                ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, %polly.exiting
  %indvars.iv173.i = phi i64 [ 0, %polly.exiting ], [ %indvars.iv.next174.i, %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i ]
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(2160) %scevgep, i8* noundef nonnull align 8 dereferenceable(2160) %call.i27, i64 2160, i1 false)
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next170.i, 220
  br i1 %exitcond172.not.i, label %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i, label %for.cond4.preheader.us.us.us.us.us.us.us.i, !llvm.loop !20

for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i: ; preds = %for.body27.us.us.us.us.us.us.us.i.preheader
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 250
  br i1 %exitcond176.not.i, label %kernel_doitgen.exit, label %for.cond1.preheader.us.us.us.us.i, !llvm.loop !21

kernel_doitgen.exit:                              ; preds = %for.cond1.for.inc42_crit_edge.split.us.split.us.us.us.us.split.us.us.i
  tail call void (...) @polybench_timer_stop() #11
  tail call void (...) @polybench_timer_print() #11
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_doitgen.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !22
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #12
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
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body7.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %arrayidx16.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv5.i, i64 %indvars.iv.i32
  %21 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %21) #12
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, 270
  br i1 %exitcond.not.i34, label %for.inc18.i, label %for.body7.i, !llvm.loop !24

for.inc18.i:                                      ; preds = %if.end.i
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, 220
  br i1 %exitcond9.not.i, label %for.inc21.i, label %for.cond5.preheader.i, !llvm.loop !25

for.inc21.i:                                      ; preds = %for.inc18.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i35 = icmp eq i64 %indvars.iv.next11.i, 250
  br i1 %exitcond13.not.i35, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !26

print_array.exit:                                 ; preds = %for.inc21.i
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call24.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %23) #12
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_doitgen.exit
  tail call void @free(i8* nonnull %call.i) #11
  tail call void @free(i8* %call.i27) #11
  tail call void @free(i8* %call.i28) #11
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

define internal void @kernel_doitgen_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %1 = bitcast i8* %0 to double**
  %polly.subfunc.arg.sum = load double*, double** %1, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %2, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %scevgep1 = getelementptr double, double* %polly.subfunc.arg.sum, i64 %polly.indvar.LB
  %scevgep12 = bitcast double* %scevgep1 to i8*
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %3 = add i64 %smax, 1
  %4 = sub i64 %3, %polly.indvar.LB
  %5 = shl nuw i64 %4, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep12, i8 0, i64 %5, i1 false)
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @kernel_doitgen_polly_subfn_10(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 4
  %1 = bitcast i8* %0 to i32*
  %polly.subfunc.arg.nq = load i32, i32* %1, align 4
  %2 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %3 = bitcast i8* %2 to i32*
  %polly.subfunc.arg.np = load i32, i32* %3, align 4
  %4 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %5 = bitcast i8* %4 to double**
  %polly.subfunc.arg.sum = load double*, double** %5, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %6, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %7 = icmp slt i32 %polly.subfunc.arg.nq, 221
  %8 = icmp slt i32 %polly.subfunc.arg.np, 271
  %9 = and i1 %7, %8
  br i1 %9, label %polly.loop_preheader.us, label %polly.loop_preheader

polly.loop_preheader.us:                          ; preds = %polly.loop_preheader.preheader, %polly.loop_preheader.us
  %polly.indvar.LB.us = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB.us = load i64, i64* %polly.par.UBPtr, align 8
  %scevgep = getelementptr double, double* %polly.subfunc.arg.sum, i64 %polly.indvar.LB.us
  %scevgep3 = bitcast double* %scevgep to i8*
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB.us, i64 %polly.indvar.UB.us)
  %10 = add i64 %smax, 1
  %11 = sub i64 %10, %polly.indvar.LB.us
  %12 = shl nuw i64 %11, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep3, i8 0, i64 %12, i1 false)
  %13 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork.us = icmp eq i32 %13, 1
  br i1 %polly.hasWork.us, label %polly.loop_preheader.us, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.loop_preheader.us, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.loop_preheader
  %14 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %14, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

define internal void @kernel_doitgen_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %1 = bitcast i8* %0 to i32*
  %polly.subfunc.arg.np = load i32, i32* %1, align 4
  %2 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %3 = bitcast i8* %2 to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %3, align 8
  %4 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %5 = bitcast i8* %4 to i64*
  %polly.subfunc.arg.polly.indvar297 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %7 = bitcast i8* %6 to double**
  %polly.subfunc.arg.sum = load double*, double** %7, align 8
  %8 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 40
  %9 = bitcast i8* %8 to [220 x [270 x double]]**
  %polly.subfunc.arg.A = load [220 x [270 x double]]*, [220 x [270 x double]]** %9, align 8
  %10 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 48
  %11 = bitcast i8* %10 to [270 x double]**
  %polly.subfunc.arg.C4 = load [270 x double]*, [270 x double]** %11, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %12 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %12, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %13 = sext i32 %polly.subfunc.arg.np to i64
  %14 = add nsw i64 %13, -1
  %pexp.p_div_q = lshr i64 %14, 5
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %15 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %15, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next35 = add i64 %indvars.iv34, -32
  %exitcond39.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond39.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %.neg = mul i64 %polly.indvar.LB, -32
  %16 = add i64 %.neg, %14
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv34 = phi i64 [ %16, %polly.loop_preheader ], [ %indvars.iv.next35, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin36 = call i64 @llvm.smin.i64(i64 %indvars.iv34, i64 31)
  %17 = shl nsw i64 %polly.indvar, 5
  %18 = xor i64 %17, -1
  %19 = add i64 %18, %13
  %polly.loop_guard40 = icmp sgt i64 %19, -1
  br i1 %polly.loop_guard40, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %20 = mul i64 %polly.indvar4.us, -32
  %21 = add i64 %14, %20
  %smin42 = call i64 @llvm.smin.i64(i64 %21, i64 31)
  %22 = add nsw i64 %smin42, 1
  %23 = shl nsw i64 %polly.indvar4.us, 5
  %24 = xor i64 %23, -1
  %25 = add i64 %24, %13
  %polly.loop_guard17.us41 = icmp sgt i64 %25, -1
  br i1 %polly.loop_guard17.us41, label %polly.loop_if13.us.us.preheader, label %polly.loop_exit9.loopexit.us

polly.loop_if13.us.us.preheader:                  ; preds = %polly.loop_if.us
  %xtraiter = and i64 %22, 1
  %26 = icmp eq i64 %smin42, 0
  %unroll_iter = and i64 %22, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %polly.loop_if13.us.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit16.loopexit.us.us, %polly.loop_if.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %exitcond38.not = icmp eq i64 %polly.indvar4.us, %pexp.p_div_q
  br i1 %exitcond38.not, label %polly.loop_exit3, label %polly.loop_if.us

polly.loop_if13.us.us:                            ; preds = %polly.loop_if13.us.us.preheader, %polly.loop_exit16.loopexit.us.us
  %polly.indvar10.us.us = phi i64 [ %polly.indvar_next11.us.us, %polly.loop_exit16.loopexit.us.us ], [ 0, %polly.loop_if13.us.us.preheader ]
  %27 = add nsw i64 %polly.indvar10.us.us, %17
  %polly.access.polly.subfunc.arg.sum.us.us = getelementptr double, double* %polly.subfunc.arg.sum, i64 %27
  %polly.access.polly.subfunc.arg.sum.promoted.us.us = load double, double* %polly.access.polly.subfunc.arg.sum.us.us, align 8, !alias.scope !27, !noalias !30
  br i1 %26, label %polly.loop_exit16.loopexit.us.us.unr-lcssa, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us

polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us: ; preds = %polly.loop_if13.us.us, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us
  %p_add.us.us.us.us.us.us.us.us25.us.us = phi double [ %p_add.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ], [ %polly.access.polly.subfunc.arg.sum.promoted.us.us, %polly.loop_if13.us.us ]
  %polly.indvar18.us.us = phi i64 [ %polly.indvar_next19.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ], [ 0, %polly.loop_if13.us.us ]
  %niter = phi i64 [ %niter.nsub.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ], [ %unroll_iter, %polly.loop_if13.us.us ]
  %28 = add nuw nsw i64 %polly.indvar18.us.us, %23
  %scevgep21.us.us = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %28
  %_p_scalar_.us.us = load double, double* %scevgep21.us.us, align 8, !alias.scope !31, !noalias !33
  %scevgep22.us.us = getelementptr [270 x double], [270 x double]* %polly.subfunc.arg.C4, i64 %28, i64 %27
  %_p_scalar_23.us.us = load double, double* %scevgep22.us.us, align 8, !alias.scope !32, !noalias !34
  %p_mul.us.us.us.us.us.us.us.us.us.us = fmul double %_p_scalar_.us.us, %_p_scalar_23.us.us
  %p_add.us.us.us.us.us.us.us.us.us.us = fadd double %p_add.us.us.us.us.us.us.us.us25.us.us, %p_mul.us.us.us.us.us.us.us.us.us.us
  %polly.indvar_next19.us.us = or i64 %polly.indvar18.us.us, 1
  %29 = add nuw nsw i64 %polly.indvar_next19.us.us, %23
  %scevgep21.us.us.1 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %29
  %_p_scalar_.us.us.1 = load double, double* %scevgep21.us.us.1, align 8, !alias.scope !31, !noalias !33
  %scevgep22.us.us.1 = getelementptr [270 x double], [270 x double]* %polly.subfunc.arg.C4, i64 %29, i64 %27
  %_p_scalar_23.us.us.1 = load double, double* %scevgep22.us.us.1, align 8, !alias.scope !32, !noalias !34
  %p_mul.us.us.us.us.us.us.us.us.us.us.1 = fmul double %_p_scalar_.us.us.1, %_p_scalar_23.us.us.1
  %p_add.us.us.us.us.us.us.us.us.us.us.1 = fadd double %p_add.us.us.us.us.us.us.us.us.us.us, %p_mul.us.us.us.us.us.us.us.us.us.us.1
  %polly.indvar_next19.us.us.1 = add nuw nsw i64 %polly.indvar18.us.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit16.loopexit.us.us.unr-lcssa, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us

polly.loop_exit16.loopexit.us.us.unr-lcssa:       ; preds = %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us, %polly.loop_if13.us.us
  %p_add.us.us.us.us.us.us.us.us.us.us.lcssa.ph = phi double [ undef, %polly.loop_if13.us.us ], [ %p_add.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ]
  %p_add.us.us.us.us.us.us.us.us25.us.us.unr = phi double [ %polly.access.polly.subfunc.arg.sum.promoted.us.us, %polly.loop_if13.us.us ], [ %p_add.us.us.us.us.us.us.us.us.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ]
  %polly.indvar18.us.us.unr = phi i64 [ 0, %polly.loop_if13.us.us ], [ %polly.indvar_next19.us.us.1, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us ]
  br i1 %lcmp.mod.not, label %polly.loop_exit16.loopexit.us.us, label %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.epil

polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.epil: ; preds = %polly.loop_exit16.loopexit.us.us.unr-lcssa
  %30 = add nuw nsw i64 %polly.indvar18.us.us.unr, %23
  %scevgep21.us.us.epil = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %30
  %_p_scalar_.us.us.epil = load double, double* %scevgep21.us.us.epil, align 8, !alias.scope !31, !noalias !33
  %scevgep22.us.us.epil = getelementptr [270 x double], [270 x double]* %polly.subfunc.arg.C4, i64 %30, i64 %27
  %_p_scalar_23.us.us.epil = load double, double* %scevgep22.us.us.epil, align 8, !alias.scope !32, !noalias !34
  %p_mul.us.us.us.us.us.us.us.us.us.us.epil = fmul double %_p_scalar_.us.us.epil, %_p_scalar_23.us.us.epil
  %p_add.us.us.us.us.us.us.us.us.us.us.epil = fadd double %p_add.us.us.us.us.us.us.us.us25.us.us.unr, %p_mul.us.us.us.us.us.us.us.us.us.us.epil
  br label %polly.loop_exit16.loopexit.us.us

polly.loop_exit16.loopexit.us.us:                 ; preds = %polly.loop_exit16.loopexit.us.us.unr-lcssa, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.epil
  %p_add.us.us.us.us.us.us.us.us.us.us.lcssa = phi double [ %p_add.us.us.us.us.us.us.us.us.us.us.lcssa.ph, %polly.loop_exit16.loopexit.us.us.unr-lcssa ], [ %p_add.us.us.us.us.us.us.us.us.us.us.epil, %polly.stmt.for.body9.us.us.us.us.us.us.us.us.us.us.epil ]
  store double %p_add.us.us.us.us.us.us.us.us.us.us.lcssa, double* %polly.access.polly.subfunc.arg.sum.us.us, align 8, !alias.scope !27, !noalias !30
  %polly.indvar_next11.us.us = add nuw nsw i64 %polly.indvar10.us.us, 1
  %exitcond37.not = icmp eq i64 %polly.indvar10.us.us, %smin36
  br i1 %exitcond37.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_if13.us.us
}

define internal void @kernel_doitgen_polly_subfn_16(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %1 = bitcast i8* %0 to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %1, align 8
  %2 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %3 = bitcast i8* %2 to i64*
  %polly.subfunc.arg.polly.indvar297 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %5 = bitcast i8* %4 to double**
  %polly.subfunc.arg.sum = load double*, double** %5, align 8
  %6 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 40
  %7 = bitcast i8* %6 to [220 x [270 x double]]**
  %polly.subfunc.arg.A = load [220 x [270 x double]]*, [220 x [270 x double]]** %7, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %8 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %8, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us, %middle.block
  %9 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %9, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body27.us.us.us.us.us.us.us:       ; preds = %polly.stmt.for.body27.us.us.us.us.us.us.us.preheader, %polly.stmt.for.body27.us.us.us.us.us.us.us
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.stmt.for.body27.us.us.us.us.us.us.us ], [ %polly.indvar.ph, %polly.stmt.for.body27.us.us.us.us.us.us.us.preheader ]
  %scevgep = getelementptr double, double* %polly.subfunc.arg.sum, i64 %polly.indvar
  %_p_scalar_ = load double, double* %scevgep, align 8, !alias.scope !28, !noalias !30
  %scevgep2 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %polly.indvar
  store double %_p_scalar_, double* %scevgep2, align 8, !alias.scope !31, !noalias !33
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond.not, label %polly.par.checkNext, label %polly.stmt.for.body27.us.us.us.us.us.us.us, !llvm.loop !35

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %10 = add i64 %smax, 1
  %11 = sub i64 %10, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %polly.stmt.for.body27.us.us.us.us.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.loop_preheader
  %n.vec = and i64 %11, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %12 = add i64 %n.vec, -4
  %13 = lshr exact i64 %12, 2
  %14 = add nuw nsw i64 %13, 1
  %xtraiter = and i64 %14, 1
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %14, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %16 = getelementptr double, double* %polly.subfunc.arg.sum, i64 %offset.idx
  %17 = bitcast double* %16 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %17, align 8, !alias.scope !28, !noalias !30
  %18 = getelementptr double, double* %16, i64 2
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load6 = load <2 x double>, <2 x double>* %19, align 8, !alias.scope !28, !noalias !30
  %20 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %offset.idx
  %21 = bitcast double* %20 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %21, align 8, !alias.scope !31, !noalias !33
  %22 = getelementptr double, double* %20, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  store <2 x double> %wide.load6, <2 x double>* %23, align 8, !alias.scope !31, !noalias !33
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %polly.indvar.LB, %index.next
  %24 = getelementptr double, double* %polly.subfunc.arg.sum, i64 %offset.idx.1
  %25 = bitcast double* %24 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %25, align 8, !alias.scope !28, !noalias !30
  %26 = getelementptr double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load6.1 = load <2 x double>, <2 x double>* %27, align 8, !alias.scope !28, !noalias !30
  %28 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %offset.idx.1
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %29, align 8, !alias.scope !31, !noalias !33
  %30 = getelementptr double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> %wide.load6.1, <2 x double>* %31, align 8, !alias.scope !31, !noalias !33
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !37

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %polly.indvar.LB, %index.unr
  %32 = getelementptr double, double* %polly.subfunc.arg.sum, i64 %offset.idx.epil
  %33 = bitcast double* %32 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %33, align 8, !alias.scope !28, !noalias !30
  %34 = getelementptr double, double* %32, i64 2
  %35 = bitcast double* %34 to <2 x double>*
  %wide.load6.epil = load <2 x double>, <2 x double>* %35, align 8, !alias.scope !28, !noalias !30
  %36 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %polly.subfunc.arg.A, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.subfunc.arg.polly.indvar297, i64 %offset.idx.epil
  %37 = bitcast double* %36 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %37, align 8, !alias.scope !31, !noalias !33
  %38 = getelementptr double, double* %36, i64 2
  %39 = bitcast double* %38 to <2 x double>*
  store <2 x double> %wide.load6.epil, <2 x double>* %39, align 8, !alias.scope !31, !noalias !33
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.body27.us.us.us.us.us.us.us.preheader

polly.stmt.for.body27.us.us.us.us.us.us.us.preheader: ; preds = %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  br label %polly.stmt.for.body27.us.us.us.us.us.us.us
}

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.split.us.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next38 = add i64 %indvars.iv37, -32
  %exitcond44.not = icmp eq i64 %polly.indvar, %smax43
  br i1 %exitcond44.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax43 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv37 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next38, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin39 = call i64 @llvm.smin.i64(i64 %indvars.iv37, i64 -218)
  %4 = add nsw i64 %smin39, 249
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard45 = icmp sgt i64 %5, -250
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard45, label %polly.loop_preheader8.us, label %polly.loop_exit3

polly.loop_preheader8.us:                         ; preds = %polly.loop_preheader2, %polly.loop_exit9.split.us.us
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader2 ]
  %smin35 = call i64 @llvm.smin.i64(i64 %indvars.iv33, i64 -188)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin35, 219
  br label %polly.loop_if.us.us

polly.loop_if.us.us:                              ; preds = %polly.loop_exit15.loopexit.us.us, %polly.loop_preheader8.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit15.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %polly.indvar10.us.us = phi i64 [ %polly.indvar_next11.us.us, %polly.loop_exit15.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -238)
  %9 = shl nsw i64 %polly.indvar10.us.us, 5
  %10 = add nsw i64 %smin, 269
  br label %polly.loop_preheader20.us.us

polly.loop_preheader20.us.us:                     ; preds = %polly.loop_exit21.us.us, %polly.loop_if.us.us
  %polly.indvar16.us.us = phi i64 [ %polly.indvar_next17.us.us, %polly.loop_exit21.us.us ], [ 0, %polly.loop_if.us.us ]
  %11 = add nsw i64 %polly.indvar16.us.us, %6
  %12 = trunc i64 %11 to i32
  %13 = mul i64 %11, 475200
  br label %polly.loop_preheader26.us.us

polly.loop_preheader26.us.us:                     ; preds = %polly.loop_exit27.us.us, %polly.loop_preheader20.us.us
  %polly.indvar22.us.us = phi i64 [ 0, %polly.loop_preheader20.us.us ], [ %polly.indvar_next23.us.us, %polly.loop_exit27.us.us ]
  %14 = add nuw nsw i64 %polly.indvar22.us.us, %7
  %15 = trunc i64 %14 to i32
  %16 = mul i32 %15, %12
  %17 = mul nuw nsw i64 %14, 2160
  %18 = add i64 %17, %13
  br label %polly.stmt.for.body6.i.us.us

polly.stmt.for.body6.i.us.us:                     ; preds = %polly.stmt.for.body6.i.us.us, %polly.loop_preheader26.us.us
  %polly.indvar28.us.us = phi i64 [ 0, %polly.loop_preheader26.us.us ], [ %polly.indvar_next29.us.us, %polly.stmt.for.body6.i.us.us ]
  %19 = add nuw nsw i64 %polly.indvar28.us.us, %9
  %20 = trunc i64 %19 to i32
  %21 = add i32 %16, %20
  %22 = urem i32 %21, 270
  %p_conv.i.us.us = sitofp i32 %22 to double
  %p_div.i.us.us = fdiv double %p_conv.i.us.us, 2.700000e+02
  %23 = shl i64 %19, 3
  %24 = add i64 %18, %23
  %scevgep.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %24
  %scevgep31.us.us = bitcast i8* %scevgep.us.us to double*
  store double %p_div.i.us.us, double* %scevgep31.us.us, align 8, !alias.scope !38, !noalias !40, !llvm.access.group !42
  %polly.indvar_next29.us.us = add nuw nsw i64 %polly.indvar28.us.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar28.us.us, %10
  br i1 %exitcond.not, label %polly.loop_exit27.us.us, label %polly.stmt.for.body6.i.us.us, !llvm.loop !43

polly.loop_exit27.us.us:                          ; preds = %polly.stmt.for.body6.i.us.us
  %polly.indvar_next23.us.us = add nuw nsw i64 %polly.indvar22.us.us, 1
  %exitcond36.not = icmp eq i64 %polly.indvar22.us.us, %8
  br i1 %exitcond36.not, label %polly.loop_exit21.us.us, label %polly.loop_preheader26.us.us

polly.loop_exit21.us.us:                          ; preds = %polly.loop_exit27.us.us
  %polly.indvar_next17.us.us = add nuw nsw i64 %polly.indvar16.us.us, 1
  %exitcond40.not = icmp eq i64 %polly.indvar16.us.us, %smax
  br i1 %exitcond40.not, label %polly.loop_exit15.loopexit.us.us, label %polly.loop_preheader20.us.us

polly.loop_exit15.loopexit.us.us:                 ; preds = %polly.loop_exit21.us.us
  %polly.indvar_next11.us.us = add nuw nsw i64 %polly.indvar10.us.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond41.not = icmp eq i64 %polly.indvar_next11.us.us, 9
  br i1 %exitcond41.not, label %polly.loop_exit9.split.us.us, label %polly.loop_if.us.us

polly.loop_exit9.split.us.us:                     ; preds = %polly.loop_exit15.loopexit.us.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -32
  %exitcond42.not = icmp eq i64 %polly.indvar_next5.us, 7
  br i1 %exitcond42.not, label %polly.loop_exit3, label %polly.loop_preheader8.us
}

define internal void @main_polly_subfn_21(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i28 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.20, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.20, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.20, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_preheader14.us.8, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -238)
  %4 = add nsw i64 %smin23, 269
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -270
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_preheader14.us, label %polly.loop_exit3

polly.loop_preheader14.us:                        ; preds = %polly.loop_preheader2, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_preheader2 ]
  %7 = add nsw i64 %polly.indvar10.us, %6
  %8 = trunc i64 %7 to i32
  %9 = mul i64 %7, 2160
  br label %polly.stmt.for.body25.i.us

polly.stmt.for.body25.i.us:                       ; preds = %polly.stmt.for.body25.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body25.i.us ]
  %10 = trunc i64 %polly.indvar16.us to i32
  %11 = mul i32 %10, %8
  %12 = urem i32 %11, 270
  %p_conv28.i.us = sitofp i32 %12 to double
  %p_div30.i.us = fdiv double %p_conv28.i.us, 2.700000e+02
  %13 = shl i64 %polly.indvar16.us, 3
  %14 = add i64 %13, %9
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %14
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div30.i.us, double* %scevgep19.us, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next17.us, 32
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body25.i.us, !llvm.loop !47

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body25.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_preheader14.us.1, label %polly.loop_preheader14.us

polly.loop_preheader14.us.1:                      ; preds = %polly.loop_exit15.us, %polly.loop_exit15.us.1
  %polly.indvar10.us.1 = phi i64 [ %polly.indvar_next11.us.1, %polly.loop_exit15.us.1 ], [ 0, %polly.loop_exit15.us ]
  %15 = add nsw i64 %polly.indvar10.us.1, %6
  %16 = trunc i64 %15 to i32
  %17 = mul i64 %15, 2160
  br label %polly.stmt.for.body25.i.us.1

polly.stmt.for.body25.i.us.1:                     ; preds = %polly.stmt.for.body25.i.us.1, %polly.loop_preheader14.us.1
  %polly.indvar16.us.1 = phi i64 [ 0, %polly.loop_preheader14.us.1 ], [ %polly.indvar_next17.us.1, %polly.stmt.for.body25.i.us.1 ]
  %18 = add nuw nsw i64 %polly.indvar16.us.1, 32
  %19 = trunc i64 %18 to i32
  %20 = mul i32 %19, %16
  %21 = urem i32 %20, 270
  %p_conv28.i.us.1 = sitofp i32 %21 to double
  %p_div30.i.us.1 = fdiv double %p_conv28.i.us.1, 2.700000e+02
  %22 = shl i64 %18, 3
  %23 = add i64 %22, %17
  %scevgep.us.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %23
  %scevgep19.us.1 = bitcast i8* %scevgep.us.1 to double*
  store double %p_div30.i.us.1, double* %scevgep19.us.1, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.1 = add nuw nsw i64 %polly.indvar16.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next17.us.1, 32
  br i1 %exitcond.1.not, label %polly.loop_exit15.us.1, label %polly.stmt.for.body25.i.us.1, !llvm.loop !47

polly.loop_exit15.us.1:                           ; preds = %polly.stmt.for.body25.i.us.1
  %polly.indvar_next11.us.1 = add nuw nsw i64 %polly.indvar10.us.1, 1
  %exitcond24.1.not = icmp eq i64 %polly.indvar10.us.1, %smax
  br i1 %exitcond24.1.not, label %polly.loop_preheader14.us.2, label %polly.loop_preheader14.us.1

polly.loop_preheader14.us.2:                      ; preds = %polly.loop_exit15.us.1, %polly.loop_exit15.us.2
  %polly.indvar10.us.2 = phi i64 [ %polly.indvar_next11.us.2, %polly.loop_exit15.us.2 ], [ 0, %polly.loop_exit15.us.1 ]
  %24 = add nsw i64 %polly.indvar10.us.2, %6
  %25 = trunc i64 %24 to i32
  %26 = mul i64 %24, 2160
  br label %polly.stmt.for.body25.i.us.2

polly.stmt.for.body25.i.us.2:                     ; preds = %polly.stmt.for.body25.i.us.2, %polly.loop_preheader14.us.2
  %polly.indvar16.us.2 = phi i64 [ 0, %polly.loop_preheader14.us.2 ], [ %polly.indvar_next17.us.2, %polly.stmt.for.body25.i.us.2 ]
  %27 = add nuw nsw i64 %polly.indvar16.us.2, 64
  %28 = trunc i64 %27 to i32
  %29 = mul i32 %28, %25
  %30 = urem i32 %29, 270
  %p_conv28.i.us.2 = sitofp i32 %30 to double
  %p_div30.i.us.2 = fdiv double %p_conv28.i.us.2, 2.700000e+02
  %31 = shl i64 %27, 3
  %32 = add i64 %31, %26
  %scevgep.us.2 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %32
  %scevgep19.us.2 = bitcast i8* %scevgep.us.2 to double*
  store double %p_div30.i.us.2, double* %scevgep19.us.2, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.2 = add nuw nsw i64 %polly.indvar16.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next17.us.2, 32
  br i1 %exitcond.2.not, label %polly.loop_exit15.us.2, label %polly.stmt.for.body25.i.us.2, !llvm.loop !47

polly.loop_exit15.us.2:                           ; preds = %polly.stmt.for.body25.i.us.2
  %polly.indvar_next11.us.2 = add nuw nsw i64 %polly.indvar10.us.2, 1
  %exitcond24.2.not = icmp eq i64 %polly.indvar10.us.2, %smax
  br i1 %exitcond24.2.not, label %polly.loop_preheader14.us.3, label %polly.loop_preheader14.us.2

polly.loop_preheader14.us.3:                      ; preds = %polly.loop_exit15.us.2, %polly.loop_exit15.us.3
  %polly.indvar10.us.3 = phi i64 [ %polly.indvar_next11.us.3, %polly.loop_exit15.us.3 ], [ 0, %polly.loop_exit15.us.2 ]
  %33 = add nsw i64 %polly.indvar10.us.3, %6
  %34 = trunc i64 %33 to i32
  %35 = mul i64 %33, 2160
  br label %polly.stmt.for.body25.i.us.3

polly.stmt.for.body25.i.us.3:                     ; preds = %polly.stmt.for.body25.i.us.3, %polly.loop_preheader14.us.3
  %polly.indvar16.us.3 = phi i64 [ 0, %polly.loop_preheader14.us.3 ], [ %polly.indvar_next17.us.3, %polly.stmt.for.body25.i.us.3 ]
  %36 = add nuw nsw i64 %polly.indvar16.us.3, 96
  %37 = trunc i64 %36 to i32
  %38 = mul i32 %37, %34
  %39 = urem i32 %38, 270
  %p_conv28.i.us.3 = sitofp i32 %39 to double
  %p_div30.i.us.3 = fdiv double %p_conv28.i.us.3, 2.700000e+02
  %40 = shl i64 %36, 3
  %41 = add i64 %40, %35
  %scevgep.us.3 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %41
  %scevgep19.us.3 = bitcast i8* %scevgep.us.3 to double*
  store double %p_div30.i.us.3, double* %scevgep19.us.3, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.3 = add nuw nsw i64 %polly.indvar16.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next17.us.3, 32
  br i1 %exitcond.3.not, label %polly.loop_exit15.us.3, label %polly.stmt.for.body25.i.us.3, !llvm.loop !47

polly.loop_exit15.us.3:                           ; preds = %polly.stmt.for.body25.i.us.3
  %polly.indvar_next11.us.3 = add nuw nsw i64 %polly.indvar10.us.3, 1
  %exitcond24.3.not = icmp eq i64 %polly.indvar10.us.3, %smax
  br i1 %exitcond24.3.not, label %polly.loop_preheader14.us.4, label %polly.loop_preheader14.us.3

polly.loop_preheader14.us.4:                      ; preds = %polly.loop_exit15.us.3, %polly.loop_exit15.us.4
  %polly.indvar10.us.4 = phi i64 [ %polly.indvar_next11.us.4, %polly.loop_exit15.us.4 ], [ 0, %polly.loop_exit15.us.3 ]
  %42 = add nsw i64 %polly.indvar10.us.4, %6
  %43 = trunc i64 %42 to i32
  %44 = mul i64 %42, 2160
  br label %polly.stmt.for.body25.i.us.4

polly.stmt.for.body25.i.us.4:                     ; preds = %polly.stmt.for.body25.i.us.4, %polly.loop_preheader14.us.4
  %polly.indvar16.us.4 = phi i64 [ 0, %polly.loop_preheader14.us.4 ], [ %polly.indvar_next17.us.4, %polly.stmt.for.body25.i.us.4 ]
  %45 = add nuw nsw i64 %polly.indvar16.us.4, 128
  %46 = trunc i64 %45 to i32
  %47 = mul i32 %46, %43
  %48 = urem i32 %47, 270
  %p_conv28.i.us.4 = sitofp i32 %48 to double
  %p_div30.i.us.4 = fdiv double %p_conv28.i.us.4, 2.700000e+02
  %49 = shl i64 %45, 3
  %50 = add i64 %49, %44
  %scevgep.us.4 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %50
  %scevgep19.us.4 = bitcast i8* %scevgep.us.4 to double*
  store double %p_div30.i.us.4, double* %scevgep19.us.4, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.4 = add nuw nsw i64 %polly.indvar16.us.4, 1
  %exitcond.4.not = icmp eq i64 %polly.indvar_next17.us.4, 32
  br i1 %exitcond.4.not, label %polly.loop_exit15.us.4, label %polly.stmt.for.body25.i.us.4, !llvm.loop !47

polly.loop_exit15.us.4:                           ; preds = %polly.stmt.for.body25.i.us.4
  %polly.indvar_next11.us.4 = add nuw nsw i64 %polly.indvar10.us.4, 1
  %exitcond24.4.not = icmp eq i64 %polly.indvar10.us.4, %smax
  br i1 %exitcond24.4.not, label %polly.loop_preheader14.us.5, label %polly.loop_preheader14.us.4

polly.loop_preheader14.us.5:                      ; preds = %polly.loop_exit15.us.4, %polly.loop_exit15.us.5
  %polly.indvar10.us.5 = phi i64 [ %polly.indvar_next11.us.5, %polly.loop_exit15.us.5 ], [ 0, %polly.loop_exit15.us.4 ]
  %51 = add nsw i64 %polly.indvar10.us.5, %6
  %52 = trunc i64 %51 to i32
  %53 = mul i64 %51, 2160
  br label %polly.stmt.for.body25.i.us.5

polly.stmt.for.body25.i.us.5:                     ; preds = %polly.stmt.for.body25.i.us.5, %polly.loop_preheader14.us.5
  %polly.indvar16.us.5 = phi i64 [ 0, %polly.loop_preheader14.us.5 ], [ %polly.indvar_next17.us.5, %polly.stmt.for.body25.i.us.5 ]
  %54 = add nuw nsw i64 %polly.indvar16.us.5, 160
  %55 = trunc i64 %54 to i32
  %56 = mul i32 %55, %52
  %57 = urem i32 %56, 270
  %p_conv28.i.us.5 = sitofp i32 %57 to double
  %p_div30.i.us.5 = fdiv double %p_conv28.i.us.5, 2.700000e+02
  %58 = shl i64 %54, 3
  %59 = add i64 %58, %53
  %scevgep.us.5 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %59
  %scevgep19.us.5 = bitcast i8* %scevgep.us.5 to double*
  store double %p_div30.i.us.5, double* %scevgep19.us.5, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.5 = add nuw nsw i64 %polly.indvar16.us.5, 1
  %exitcond.5.not = icmp eq i64 %polly.indvar_next17.us.5, 32
  br i1 %exitcond.5.not, label %polly.loop_exit15.us.5, label %polly.stmt.for.body25.i.us.5, !llvm.loop !47

polly.loop_exit15.us.5:                           ; preds = %polly.stmt.for.body25.i.us.5
  %polly.indvar_next11.us.5 = add nuw nsw i64 %polly.indvar10.us.5, 1
  %exitcond24.5.not = icmp eq i64 %polly.indvar10.us.5, %smax
  br i1 %exitcond24.5.not, label %polly.loop_preheader14.us.6, label %polly.loop_preheader14.us.5

polly.loop_preheader14.us.6:                      ; preds = %polly.loop_exit15.us.5, %polly.loop_exit15.us.6
  %polly.indvar10.us.6 = phi i64 [ %polly.indvar_next11.us.6, %polly.loop_exit15.us.6 ], [ 0, %polly.loop_exit15.us.5 ]
  %60 = add nsw i64 %polly.indvar10.us.6, %6
  %61 = trunc i64 %60 to i32
  %62 = mul i64 %60, 2160
  br label %polly.stmt.for.body25.i.us.6

polly.stmt.for.body25.i.us.6:                     ; preds = %polly.stmt.for.body25.i.us.6, %polly.loop_preheader14.us.6
  %polly.indvar16.us.6 = phi i64 [ 0, %polly.loop_preheader14.us.6 ], [ %polly.indvar_next17.us.6, %polly.stmt.for.body25.i.us.6 ]
  %63 = add nuw nsw i64 %polly.indvar16.us.6, 192
  %64 = trunc i64 %63 to i32
  %65 = mul i32 %64, %61
  %66 = urem i32 %65, 270
  %p_conv28.i.us.6 = sitofp i32 %66 to double
  %p_div30.i.us.6 = fdiv double %p_conv28.i.us.6, 2.700000e+02
  %67 = shl i64 %63, 3
  %68 = add i64 %67, %62
  %scevgep.us.6 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %68
  %scevgep19.us.6 = bitcast i8* %scevgep.us.6 to double*
  store double %p_div30.i.us.6, double* %scevgep19.us.6, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.6 = add nuw nsw i64 %polly.indvar16.us.6, 1
  %exitcond.6.not = icmp eq i64 %polly.indvar_next17.us.6, 32
  br i1 %exitcond.6.not, label %polly.loop_exit15.us.6, label %polly.stmt.for.body25.i.us.6, !llvm.loop !47

polly.loop_exit15.us.6:                           ; preds = %polly.stmt.for.body25.i.us.6
  %polly.indvar_next11.us.6 = add nuw nsw i64 %polly.indvar10.us.6, 1
  %exitcond24.6.not = icmp eq i64 %polly.indvar10.us.6, %smax
  br i1 %exitcond24.6.not, label %polly.loop_preheader14.us.7, label %polly.loop_preheader14.us.6

polly.loop_preheader14.us.7:                      ; preds = %polly.loop_exit15.us.6, %polly.loop_exit15.us.7
  %polly.indvar10.us.7 = phi i64 [ %polly.indvar_next11.us.7, %polly.loop_exit15.us.7 ], [ 0, %polly.loop_exit15.us.6 ]
  %69 = add nsw i64 %polly.indvar10.us.7, %6
  %70 = trunc i64 %69 to i32
  %71 = mul i64 %69, 2160
  br label %polly.stmt.for.body25.i.us.7

polly.stmt.for.body25.i.us.7:                     ; preds = %polly.stmt.for.body25.i.us.7, %polly.loop_preheader14.us.7
  %polly.indvar16.us.7 = phi i64 [ 0, %polly.loop_preheader14.us.7 ], [ %polly.indvar_next17.us.7, %polly.stmt.for.body25.i.us.7 ]
  %72 = add nuw nsw i64 %polly.indvar16.us.7, 224
  %73 = trunc i64 %72 to i32
  %74 = mul i32 %73, %70
  %75 = urem i32 %74, 270
  %p_conv28.i.us.7 = sitofp i32 %75 to double
  %p_div30.i.us.7 = fdiv double %p_conv28.i.us.7, 2.700000e+02
  %76 = shl i64 %72, 3
  %77 = add i64 %76, %71
  %scevgep.us.7 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %77
  %scevgep19.us.7 = bitcast i8* %scevgep.us.7 to double*
  store double %p_div30.i.us.7, double* %scevgep19.us.7, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next17.us.7 = add nuw nsw i64 %polly.indvar16.us.7, 1
  %exitcond.7.not = icmp eq i64 %polly.indvar_next17.us.7, 32
  br i1 %exitcond.7.not, label %polly.loop_exit15.us.7, label %polly.stmt.for.body25.i.us.7, !llvm.loop !47

polly.loop_exit15.us.7:                           ; preds = %polly.stmt.for.body25.i.us.7
  %polly.indvar_next11.us.7 = add nuw nsw i64 %polly.indvar10.us.7, 1
  %exitcond24.7.not = icmp eq i64 %polly.indvar10.us.7, %smax
  br i1 %exitcond24.7.not, label %polly.loop_preheader14.us.8, label %polly.loop_preheader14.us.7

polly.loop_preheader14.us.8:                      ; preds = %polly.loop_exit15.us.7, %polly.loop_preheader14.us.8
  %polly.indvar10.us.8 = phi i64 [ %polly.indvar_next11.us.8, %polly.loop_preheader14.us.8 ], [ 0, %polly.loop_exit15.us.7 ]
  %78 = add nsw i64 %polly.indvar10.us.8, %6
  %79 = trunc i64 %78 to i32
  %80 = mul i64 %78, 2160
  %81 = shl i32 %79, 8
  %82 = urem i32 %81, 270
  %p_conv28.i.us.8 = sitofp i32 %82 to double
  %p_div30.i.us.8 = fdiv double %p_conv28.i.us.8, 2.700000e+02
  %83 = add i64 %80, 2048
  %scevgep.us.8 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %83
  %scevgep19.us.8 = bitcast i8* %scevgep.us.8 to double*
  store double %p_div30.i.us.8, double* %scevgep19.us.8, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %84 = mul i32 %79, 257
  %85 = urem i32 %84, 270
  %p_conv28.i.us.8.1 = sitofp i32 %85 to double
  %p_div30.i.us.8.1 = fdiv double %p_conv28.i.us.8.1, 2.700000e+02
  %86 = add i64 %80, 2056
  %scevgep.us.8.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %86
  %scevgep19.us.8.1 = bitcast i8* %scevgep.us.8.1 to double*
  store double %p_div30.i.us.8.1, double* %scevgep19.us.8.1, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %87 = mul i32 %79, 258
  %88 = urem i32 %87, 270
  %p_conv28.i.us.8.2 = sitofp i32 %88 to double
  %p_div30.i.us.8.2 = fdiv double %p_conv28.i.us.8.2, 2.700000e+02
  %89 = add i64 %80, 2064
  %scevgep.us.8.2 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %89
  %scevgep19.us.8.2 = bitcast i8* %scevgep.us.8.2 to double*
  store double %p_div30.i.us.8.2, double* %scevgep19.us.8.2, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %90 = mul i32 %79, 259
  %91 = urem i32 %90, 270
  %p_conv28.i.us.8.3 = sitofp i32 %91 to double
  %p_div30.i.us.8.3 = fdiv double %p_conv28.i.us.8.3, 2.700000e+02
  %92 = add i64 %80, 2072
  %scevgep.us.8.3 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %92
  %scevgep19.us.8.3 = bitcast i8* %scevgep.us.8.3 to double*
  store double %p_div30.i.us.8.3, double* %scevgep19.us.8.3, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %93 = mul i32 %79, 260
  %94 = urem i32 %93, 270
  %p_conv28.i.us.8.4 = sitofp i32 %94 to double
  %p_div30.i.us.8.4 = fdiv double %p_conv28.i.us.8.4, 2.700000e+02
  %95 = add i64 %80, 2080
  %scevgep.us.8.4 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %95
  %scevgep19.us.8.4 = bitcast i8* %scevgep.us.8.4 to double*
  store double %p_div30.i.us.8.4, double* %scevgep19.us.8.4, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %96 = mul i32 %79, 261
  %97 = urem i32 %96, 270
  %p_conv28.i.us.8.5 = sitofp i32 %97 to double
  %p_div30.i.us.8.5 = fdiv double %p_conv28.i.us.8.5, 2.700000e+02
  %98 = add i64 %80, 2088
  %scevgep.us.8.5 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %98
  %scevgep19.us.8.5 = bitcast i8* %scevgep.us.8.5 to double*
  store double %p_div30.i.us.8.5, double* %scevgep19.us.8.5, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %99 = mul i32 %79, 262
  %100 = urem i32 %99, 270
  %p_conv28.i.us.8.6 = sitofp i32 %100 to double
  %p_div30.i.us.8.6 = fdiv double %p_conv28.i.us.8.6, 2.700000e+02
  %101 = add i64 %80, 2096
  %scevgep.us.8.6 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %101
  %scevgep19.us.8.6 = bitcast i8* %scevgep.us.8.6 to double*
  store double %p_div30.i.us.8.6, double* %scevgep19.us.8.6, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %102 = mul i32 %79, 263
  %103 = urem i32 %102, 270
  %p_conv28.i.us.8.7 = sitofp i32 %103 to double
  %p_div30.i.us.8.7 = fdiv double %p_conv28.i.us.8.7, 2.700000e+02
  %104 = add i64 %80, 2104
  %scevgep.us.8.7 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %104
  %scevgep19.us.8.7 = bitcast i8* %scevgep.us.8.7 to double*
  store double %p_div30.i.us.8.7, double* %scevgep19.us.8.7, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %105 = mul i32 %79, 264
  %106 = urem i32 %105, 270
  %p_conv28.i.us.8.8 = sitofp i32 %106 to double
  %p_div30.i.us.8.8 = fdiv double %p_conv28.i.us.8.8, 2.700000e+02
  %107 = add i64 %80, 2112
  %scevgep.us.8.8 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %107
  %scevgep19.us.8.8 = bitcast i8* %scevgep.us.8.8 to double*
  store double %p_div30.i.us.8.8, double* %scevgep19.us.8.8, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %108 = mul i32 %79, 265
  %109 = urem i32 %108, 270
  %p_conv28.i.us.8.9 = sitofp i32 %109 to double
  %p_div30.i.us.8.9 = fdiv double %p_conv28.i.us.8.9, 2.700000e+02
  %110 = add i64 %80, 2120
  %scevgep.us.8.9 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %110
  %scevgep19.us.8.9 = bitcast i8* %scevgep.us.8.9 to double*
  store double %p_div30.i.us.8.9, double* %scevgep19.us.8.9, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %111 = mul i32 %79, 266
  %112 = urem i32 %111, 270
  %p_conv28.i.us.8.10 = sitofp i32 %112 to double
  %p_div30.i.us.8.10 = fdiv double %p_conv28.i.us.8.10, 2.700000e+02
  %113 = add i64 %80, 2128
  %scevgep.us.8.10 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %113
  %scevgep19.us.8.10 = bitcast i8* %scevgep.us.8.10 to double*
  store double %p_div30.i.us.8.10, double* %scevgep19.us.8.10, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %114 = mul i32 %79, 267
  %115 = urem i32 %114, 270
  %p_conv28.i.us.8.11 = sitofp i32 %115 to double
  %p_div30.i.us.8.11 = fdiv double %p_conv28.i.us.8.11, 2.700000e+02
  %116 = add i64 %80, 2136
  %scevgep.us.8.11 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %116
  %scevgep19.us.8.11 = bitcast i8* %scevgep.us.8.11 to double*
  store double %p_div30.i.us.8.11, double* %scevgep19.us.8.11, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %117 = mul i32 %79, 268
  %118 = urem i32 %117, 270
  %p_conv28.i.us.8.12 = sitofp i32 %118 to double
  %p_div30.i.us.8.12 = fdiv double %p_conv28.i.us.8.12, 2.700000e+02
  %119 = add i64 %80, 2144
  %scevgep.us.8.12 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %119
  %scevgep19.us.8.12 = bitcast i8* %scevgep.us.8.12 to double*
  store double %p_div30.i.us.8.12, double* %scevgep19.us.8.12, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %120 = mul i32 %79, 269
  %121 = urem i32 %120, 270
  %p_conv28.i.us.8.13 = sitofp i32 %121 to double
  %p_div30.i.us.8.13 = fdiv double %p_conv28.i.us.8.13, 2.700000e+02
  %122 = add i64 %80, 2152
  %scevgep.us.8.13 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %122
  %scevgep19.us.8.13 = bitcast i8* %scevgep.us.8.13 to double*
  store double %p_div30.i.us.8.13, double* %scevgep19.us.8.13, align 8, !alias.scope !41, !noalias !45, !llvm.access.group !46
  %polly.indvar_next11.us.8 = add nuw nsw i64 %polly.indvar10.us.8, 1
  %exitcond24.8.not = icmp eq i64 %polly.indvar10.us.8, %smax
  br i1 %exitcond24.8.not, label %polly.loop_exit3, label %polly.loop_preheader14.us.8
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { nofree norecurse nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { "polly.skip.fn" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28}
!28 = distinct !{!28, !29, !"polly.alias.scope.MemRef0"}
!29 = distinct !{!29, !"polly.alias.scope.domain"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29, !"polly.alias.scope.MemRef2"}
!32 = distinct !{!32, !29, !"polly.alias.scope.MemRef3"}
!33 = !{!28, !32}
!34 = !{!28, !31}
!35 = distinct !{!35, !36, !8}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !39, !"polly.alias.scope.MemRef0"}
!39 = distinct !{!39, !"polly.alias.scope.domain"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"polly.alias.scope.MemRef2"}
!42 = distinct !{}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.parallel_accesses", !42}
!45 = !{!38}
!46 = distinct !{}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.parallel_accesses", !46}
