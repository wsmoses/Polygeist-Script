; ModuleID = 'doitgen.plutopar.c'
source_filename = "doitgen.plutopar.c"
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
  %cmp = icmp sgt i32 %np, 0
  %cmp1 = icmp sgt i32 %nq, 0
  %or.cond = and i1 %cmp1, %cmp
  %cmp3 = icmp sgt i32 %nr, 0
  %or.cond179 = and i1 %cmp3, %or.cond
  br i1 %or.cond179, label %for.cond5.preheader.us.preheader, label %if.end

for.cond5.preheader.us.preheader:                 ; preds = %entry
  %sub9 = add nsw i32 %np, -1
  %div16 = sdiv i32 %sub9, 32
  %smax = call i32 @llvm.smax.i32(i32 %div16, i32 0)
  %0 = add nuw nsw i32 %smax, 1
  %wide.trip.count430 = zext i32 %nr to i64
  %wide.trip.count426 = zext i32 %nq to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc176_crit_edge.split.us355
  %indvars.iv428 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next429, %for.cond5.for.inc176_crit_edge.split.us355 ]
  br label %for.body19.us292.preheader

for.body19.us292.preheader:                       ; preds = %for.inc173.us, %for.cond5.preheader.us
  %indvars.iv424 = phi i64 [ 0, %for.cond5.preheader.us ], [ %indvars.iv.next425, %for.inc173.us ]
  br label %for.body19.us292

for.body19.us292:                                 ; preds = %for.body19.us292.preheader, %for.inc34.us305
  %indvar = phi i64 [ 0, %for.body19.us292.preheader ], [ %indvar.next, %for.inc34.us305 ]
  %t4.0268.us293 = phi i32 [ 0, %for.body19.us292.preheader ], [ %inc35.us306, %for.inc34.us305 ]
  %mul.us294 = shl nsw i32 %t4.0268.us293, 5
  %add23.us295 = or i32 %mul.us294, 31
  %cmp24.not.us296 = icmp slt i32 %add23.us295, %np
  %cond31.us297 = select i1 %cmp24.not.us296, i32 %add23.us295, i32 %sub9
  %cmp32.not265.us298 = icmp sgt i32 %mul.us294, %cond31.us297
  br i1 %cmp32.not265.us298, label %for.inc34.us305, label %for.body33.us299.preheader

for.body33.us299.preheader:                       ; preds = %for.body19.us292
  %1 = trunc i64 %indvar to i32
  %2 = mul i32 %1, -32
  %3 = shl nuw nsw i64 %indvar, 5
  %scevgep = getelementptr double, double* %sum, i64 %3
  %scevgep391 = bitcast double* %scevgep to i8*
  %4 = add i32 %cond31.us297, %2
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = add nuw nsw i64 %6, 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep391, i8 0, i64 %7, i1 false)
  br label %for.inc34.us305

for.inc34.us305:                                  ; preds = %for.body33.us299.preheader, %for.body19.us292
  %inc35.us306 = add nuw nsw i32 %t4.0268.us293, 1
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond54.preheader.us337, label %for.body19.us292, !llvm.loop !2

for.body70.us308:                                 ; preds = %for.body70.us308.preheader, %for.inc121.us315
  %indvar453 = phi i64 [ 0, %for.body70.us308.preheader ], [ %indvar.next454, %for.inc121.us315 ]
  %indvars.iv398 = phi i64 [ 0, %for.body70.us308.preheader ], [ %indvars.iv.next399, %for.inc121.us315 ]
  %t5.1275.us309 = phi i32 [ 0, %for.body70.us308.preheader ], [ %inc122.us316, %for.inc121.us315 ]
  %8 = shl nuw nsw i64 %indvar453, 5
  %mul71.us310 = shl nsw i32 %t5.1275.us309, 5
  %add75.us311 = or i32 %mul71.us310, 31
  %cmp76.not.us312 = icmp slt i32 %add75.us311, %np
  %cond83.us313 = select i1 %cmp76.not.us312, i32 %add75.us311, i32 %sub9
  %cmp84.not271.us314 = icmp sgt i32 %mul71.us310, %cond83.us313
  br i1 %cmp84.not271.us314, label %for.inc121.us315, label %for.body85.us.preheader

for.body85.us.preheader:                          ; preds = %for.body70.us308
  %9 = add i32 %cond83.us313, 1
  %wide.trip.count402 = zext i32 %9 to i64
  br label %for.body85.us

for.body85.us:                                    ; preds = %for.body85.us.preheader, %for.cond87.for.inc118_crit_edge.us
  %indvar455 = phi i64 [ 0, %for.body85.us.preheader ], [ %indvar.next456, %for.cond87.for.inc118_crit_edge.us ]
  %indvars.iv400 = phi i64 [ %indvars.iv398, %for.body85.us.preheader ], [ %indvars.iv.next401, %for.cond87.for.inc118_crit_edge.us ]
  %10 = add i64 %8, %indvar455
  %arrayidx106.us = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv400
  br i1 %min.iters.check473, label %for.body100.us.preheader, label %vector.memcheck445

vector.memcheck445:                               ; preds = %for.body85.us
  %scevgep461 = getelementptr [270 x double], [270 x double]* %C4, i64 %10, i64 %wide.trip.count396
  %scevgep459 = getelementptr [270 x double], [270 x double]* %C4, i64 %10, i64 %84
  %scevgep457 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %10
  %scevgep457458 = bitcast double* %scevgep457 to i8*
  %uglygep = getelementptr i8, i8* %scevgep457458, i64 1
  %bound0463 = icmp ugt i8* %uglygep, %scevgep448449
  %bound1464 = icmp ult double* %arrayidx106.us, %scevgep451
  %found.conflict465 = and i1 %bound0463, %bound1464
  %bound0466 = icmp ult double* %scevgep448, %scevgep461
  %bound1467 = icmp ult double* %scevgep459, %scevgep451
  %found.conflict468 = and i1 %bound0466, %bound1467
  %conflict.rdx = or i1 %found.conflict465, %found.conflict468
  br i1 %conflict.rdx, label %for.body100.us.preheader, label %vector.ph474

vector.ph474:                                     ; preds = %vector.memcheck445
  %11 = load double, double* %arrayidx106.us, align 8, !tbaa !4, !alias.scope !8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %11, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert485 = insertelement <2 x double> poison, double %11, i32 0
  %broadcast.splat486 = shufflevector <2 x double> %broadcast.splatinsert485, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph474
  %index477 = phi i64 [ 0, %vector.ph474 ], [ %index.next478, %vector.body472 ]
  %offset.idx482 = add i64 %indvars.iv, %index477
  %12 = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv400, i64 %offset.idx482
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load483 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !4, !alias.scope !11
  %14 = getelementptr inbounds double, double* %12, i64 2
  %15 = bitcast double* %14 to <2 x double>*
  %wide.load484 = load <2 x double>, <2 x double>* %15, align 8, !tbaa !4, !alias.scope !11
  %16 = fmul <2 x double> %broadcast.splat, %wide.load483
  %17 = fmul <2 x double> %broadcast.splat486, %wide.load484
  %18 = getelementptr inbounds double, double* %sum, i64 %offset.idx482
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load487 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !4, !alias.scope !13, !noalias !15
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load488 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !4, !alias.scope !13, !noalias !15
  %22 = fadd <2 x double> %wide.load487, %16
  %23 = fadd <2 x double> %wide.load488, %17
  %24 = bitcast double* %18 to <2 x double>*
  store <2 x double> %22, <2 x double>* %24, align 8, !tbaa !4, !alias.scope !13, !noalias !15
  %25 = bitcast double* %20 to <2 x double>*
  store <2 x double> %23, <2 x double>* %25, align 8, !tbaa !4, !alias.scope !13, !noalias !15
  %index.next478 = add i64 %index477, 4
  %26 = icmp eq i64 %index.next478, %n.vec476
  br i1 %26, label %middle.block470, label %vector.body472, !llvm.loop !16

middle.block470:                                  ; preds = %vector.body472
  br i1 %cmp.n481, label %for.cond87.for.inc118_crit_edge.us, label %for.body100.us.preheader

for.body100.us.preheader:                         ; preds = %vector.memcheck445, %for.body85.us, %middle.block470
  %indvars.iv394.ph = phi i64 [ %indvars.iv, %vector.memcheck445 ], [ %indvars.iv, %for.body85.us ], [ %ind.end480, %middle.block470 ]
  %27 = sub i64 %wide.trip.count396, %indvars.iv394.ph
  %28 = xor i64 %indvars.iv394.ph, -1
  %xtraiter = and i64 %27, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body100.us.prol.loopexit, label %for.body100.us.prol

for.body100.us.prol:                              ; preds = %for.body100.us.preheader
  %29 = load double, double* %arrayidx106.us, align 8, !tbaa !4
  %arrayidx110.us.prol = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv400, i64 %indvars.iv394.ph
  %30 = load double, double* %arrayidx110.us.prol, align 8, !tbaa !4
  %mul111.us.prol = fmul double %29, %30
  %arrayidx113.us.prol = getelementptr inbounds double, double* %sum, i64 %indvars.iv394.ph
  %31 = load double, double* %arrayidx113.us.prol, align 8, !tbaa !4
  %add114.us.prol = fadd double %31, %mul111.us.prol
  store double %add114.us.prol, double* %arrayidx113.us.prol, align 8, !tbaa !4
  %indvars.iv.next395.prol = add nuw nsw i64 %indvars.iv394.ph, 1
  br label %for.body100.us.prol.loopexit

for.body100.us.prol.loopexit:                     ; preds = %for.body100.us.prol, %for.body100.us.preheader
  %indvars.iv394.unr.ph = phi i64 [ %indvars.iv.next395.prol, %for.body100.us.prol ], [ %indvars.iv394.ph, %for.body100.us.preheader ]
  %32 = icmp eq i64 %28, %92
  br i1 %32, label %for.cond87.for.inc118_crit_edge.us, label %for.body100.us

for.body100.us:                                   ; preds = %for.body100.us.prol.loopexit, %for.body100.us
  %indvars.iv394 = phi i64 [ %indvars.iv.next395.1, %for.body100.us ], [ %indvars.iv394.unr.ph, %for.body100.us.prol.loopexit ]
  %33 = load double, double* %arrayidx106.us, align 8, !tbaa !4
  %arrayidx110.us = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv400, i64 %indvars.iv394
  %34 = load double, double* %arrayidx110.us, align 8, !tbaa !4
  %mul111.us = fmul double %33, %34
  %arrayidx113.us = getelementptr inbounds double, double* %sum, i64 %indvars.iv394
  %35 = load double, double* %arrayidx113.us, align 8, !tbaa !4
  %add114.us = fadd double %35, %mul111.us
  store double %add114.us, double* %arrayidx113.us, align 8, !tbaa !4
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1
  %36 = load double, double* %arrayidx106.us, align 8, !tbaa !4
  %arrayidx110.us.1 = getelementptr inbounds [270 x double], [270 x double]* %C4, i64 %indvars.iv400, i64 %indvars.iv.next395
  %37 = load double, double* %arrayidx110.us.1, align 8, !tbaa !4
  %mul111.us.1 = fmul double %36, %37
  %arrayidx113.us.1 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next395
  %38 = load double, double* %arrayidx113.us.1, align 8, !tbaa !4
  %add114.us.1 = fadd double %38, %mul111.us.1
  store double %add114.us.1, double* %arrayidx113.us.1, align 8, !tbaa !4
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2
  %exitcond397.not.1 = icmp eq i64 %indvars.iv.next395.1, %wide.trip.count396
  br i1 %exitcond397.not.1, label %for.cond87.for.inc118_crit_edge.us, label %for.body100.us, !llvm.loop !18

for.inc121.us315:                                 ; preds = %for.cond87.for.inc118_crit_edge.us, %for.body70.us308
  %inc122.us316 = add nuw nsw i32 %t5.1275.us309, 1
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 32
  %exitcond405.not = icmp eq i32 %t5.1275.us309, %smax
  %indvar.next454 = add i64 %indvar453, 1
  br i1 %exitcond405.not, label %for.cond54.for.inc124_crit_edge.us, label %for.body70.us308, !llvm.loop !19

for.body143.us318:                                ; preds = %for.cond54.for.inc124_crit_edge.us, %for.inc170.us332
  %indvar432 = phi i64 [ %indvar.next433, %for.inc170.us332 ], [ 0, %for.cond54.for.inc124_crit_edge.us ]
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %for.inc170.us332 ], [ 0, %for.cond54.for.inc124_crit_edge.us ]
  %t4.2282.us319 = phi i32 [ %inc171.us333, %for.inc170.us332 ], [ 0, %for.cond54.for.inc124_crit_edge.us ]
  %39 = shl nuw nsw i64 %indvar432, 5
  %scevgep434 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %39
  %40 = or i64 %39, 1
  %scevgep436 = getelementptr [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %40
  %41 = mul nsw i64 %indvar432, -32
  %42 = add i64 %41, -1
  %scevgep439 = getelementptr double, double* %sum, i64 %39
  %scevgep441 = getelementptr double, double* %sum, i64 %40
  %mul144.us320 = shl nsw i32 %t4.2282.us319, 5
  %add148.us321 = or i32 %mul144.us320, 31
  %cmp149.not.us322 = icmp slt i32 %add148.us321, %np
  %cond156.us323 = select i1 %cmp149.not.us322, i32 %add148.us321, i32 %sub9
  %cmp157.not279.us324 = icmp sgt i32 %mul144.us320, %cond156.us323
  br i1 %cmp157.not279.us324, label %for.inc170.us332, label %for.body158.us325.preheader

for.body158.us325.preheader:                      ; preds = %for.body143.us318
  %43 = mul nsw i64 %indvar432, -32
  %44 = add i32 %cond156.us323, 1
  %wide.trip.count420 = zext i32 %44 to i64
  %45 = add i64 %43, %wide.trip.count420
  %min.iters.check = icmp ult i64 %45, 4
  br i1 %min.iters.check, label %for.body158.us325.preheader489, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body158.us325.preheader
  %46 = add i64 %42, %wide.trip.count420
  %scevgep437 = getelementptr double, double* %scevgep436, i64 %46
  %scevgep442 = getelementptr double, double* %scevgep441, i64 %46
  %bound0 = icmp ult double* %scevgep434, %scevgep442
  %bound1 = icmp ult double* %scevgep439, %scevgep437
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body158.us325.preheader489, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %45, -4
  %ind.end = add i64 %indvars.iv416, %n.vec
  %47 = add i64 %n.vec, -4
  %48 = lshr exact i64 %47, 2
  %49 = add nuw nsw i64 %48, 1
  %xtraiter490 = and i64 %49, 1
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %49, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %indvars.iv416, %index
  %51 = getelementptr inbounds double, double* %sum, i64 %offset.idx
  %52 = bitcast double* %51 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %52, align 8, !tbaa !4, !alias.scope !20
  %53 = getelementptr inbounds double, double* %51, i64 2
  %54 = bitcast double* %53 to <2 x double>*
  %wide.load444 = load <2 x double>, <2 x double>* %54, align 8, !tbaa !4, !alias.scope !20
  %55 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %offset.idx
  %56 = bitcast double* %55 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %56, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  %57 = getelementptr inbounds double, double* %55, i64 2
  %58 = bitcast double* %57 to <2 x double>*
  store <2 x double> %wide.load444, <2 x double>* %58, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %indvars.iv416, %index.next
  %59 = getelementptr inbounds double, double* %sum, i64 %offset.idx.1
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !4, !alias.scope !20
  %61 = getelementptr inbounds double, double* %59, i64 2
  %62 = bitcast double* %61 to <2 x double>*
  %wide.load444.1 = load <2 x double>, <2 x double>* %62, align 8, !tbaa !4, !alias.scope !20
  %63 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %offset.idx.1
  %64 = bitcast double* %63 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %64, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  %65 = getelementptr inbounds double, double* %63, i64 2
  %66 = bitcast double* %65 to <2 x double>*
  store <2 x double> %wide.load444.1, <2 x double>* %66, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !25

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %indvars.iv416, %index.unr
  %67 = getelementptr inbounds double, double* %sum, i64 %offset.idx.epil
  %68 = bitcast double* %67 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %68, align 8, !tbaa !4, !alias.scope !20
  %69 = getelementptr inbounds double, double* %67, i64 2
  %70 = bitcast double* %69 to <2 x double>*
  %wide.load444.epil = load <2 x double>, <2 x double>* %70, align 8, !tbaa !4, !alias.scope !20
  %71 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %offset.idx.epil
  %72 = bitcast double* %71 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %72, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  %73 = getelementptr inbounds double, double* %71, i64 2
  %74 = bitcast double* %73 to <2 x double>*
  store <2 x double> %wide.load444.epil, <2 x double>* %74, align 8, !tbaa !4, !alias.scope !23, !noalias !20
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %45, %n.vec
  br i1 %cmp.n, label %for.inc170.us332, label %for.body158.us325.preheader489

for.body158.us325.preheader489:                   ; preds = %vector.memcheck, %for.body158.us325.preheader, %middle.block
  %indvars.iv418.ph = phi i64 [ %indvars.iv416, %vector.memcheck ], [ %indvars.iv416, %for.body158.us325.preheader ], [ %ind.end, %middle.block ]
  %75 = sub i64 %wide.trip.count420, %indvars.iv418.ph
  %76 = xor i64 %indvars.iv418.ph, -1
  %77 = add i64 %76, %wide.trip.count420
  %xtraiter492 = and i64 %75, 3
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %for.body158.us325.prol.loopexit, label %for.body158.us325.prol

for.body158.us325.prol:                           ; preds = %for.body158.us325.preheader489, %for.body158.us325.prol
  %indvars.iv418.prol = phi i64 [ %indvars.iv.next419.prol, %for.body158.us325.prol ], [ %indvars.iv418.ph, %for.body158.us325.preheader489 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body158.us325.prol ], [ %xtraiter492, %for.body158.us325.preheader489 ]
  %arrayidx160.us328.prol = getelementptr inbounds double, double* %sum, i64 %indvars.iv418.prol
  %78 = load double, double* %arrayidx160.us328.prol, align 8, !tbaa !4
  %arrayidx166.us329.prol = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv418.prol
  store double %78, double* %arrayidx166.us329.prol, align 8, !tbaa !4
  %indvars.iv.next419.prol = add nuw nsw i64 %indvars.iv418.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body158.us325.prol.loopexit, label %for.body158.us325.prol, !llvm.loop !26

for.body158.us325.prol.loopexit:                  ; preds = %for.body158.us325.prol, %for.body158.us325.preheader489
  %indvars.iv418.unr = phi i64 [ %indvars.iv418.ph, %for.body158.us325.preheader489 ], [ %indvars.iv.next419.prol, %for.body158.us325.prol ]
  %79 = icmp ult i64 %77, 3
  br i1 %79, label %for.inc170.us332, label %for.body158.us325

for.body158.us325:                                ; preds = %for.body158.us325.prol.loopexit, %for.body158.us325
  %indvars.iv418 = phi i64 [ %indvars.iv.next419.3, %for.body158.us325 ], [ %indvars.iv418.unr, %for.body158.us325.prol.loopexit ]
  %arrayidx160.us328 = getelementptr inbounds double, double* %sum, i64 %indvars.iv418
  %80 = load double, double* %arrayidx160.us328, align 8, !tbaa !4
  %arrayidx166.us329 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv418
  store double %80, double* %arrayidx166.us329, align 8, !tbaa !4
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1
  %arrayidx160.us328.1 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next419
  %81 = load double, double* %arrayidx160.us328.1, align 8, !tbaa !4
  %arrayidx166.us329.1 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv.next419
  store double %81, double* %arrayidx166.us329.1, align 8, !tbaa !4
  %indvars.iv.next419.1 = add nuw nsw i64 %indvars.iv418, 2
  %arrayidx160.us328.2 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next419.1
  %82 = load double, double* %arrayidx160.us328.2, align 8, !tbaa !4
  %arrayidx166.us329.2 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv.next419.1
  store double %82, double* %arrayidx166.us329.2, align 8, !tbaa !4
  %indvars.iv.next419.2 = add nuw nsw i64 %indvars.iv418, 3
  %arrayidx160.us328.3 = getelementptr inbounds double, double* %sum, i64 %indvars.iv.next419.2
  %83 = load double, double* %arrayidx160.us328.3, align 8, !tbaa !4
  %arrayidx166.us329.3 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %A, i64 %indvars.iv428, i64 %indvars.iv424, i64 %indvars.iv.next419.2
  store double %83, double* %arrayidx166.us329.3, align 8, !tbaa !4
  %indvars.iv.next419.3 = add nuw nsw i64 %indvars.iv418, 4
  %exitcond421.not.3 = icmp eq i64 %indvars.iv.next419.3, %wide.trip.count420
  br i1 %exitcond421.not.3, label %for.inc170.us332, label %for.body158.us325, !llvm.loop !28

for.inc170.us332:                                 ; preds = %for.body158.us325.prol.loopexit, %for.body158.us325, %middle.block, %for.body143.us318
  %inc171.us333 = add nuw nsw i32 %t4.2282.us319, 1
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 32
  %exitcond423.not = icmp eq i32 %t4.2282.us319, %smax
  %indvar.next433 = add i64 %indvar432, 1
  br i1 %exitcond423.not, label %for.inc173.us, label %for.body143.us318, !llvm.loop !29

for.inc173.us:                                    ; preds = %for.inc170.us332
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1
  %exitcond427.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count426
  br i1 %exitcond427.not, label %for.cond5.for.inc176_crit_edge.split.us355, label %for.body19.us292.preheader, !llvm.loop !30

for.cond54.preheader.us337:                       ; preds = %for.inc34.us305, %for.cond54.for.inc124_crit_edge.us
  %indvar446 = phi i64 [ %indvar.next447, %for.cond54.for.inc124_crit_edge.us ], [ 0, %for.inc34.us305 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond54.for.inc124_crit_edge.us ], [ 0, %for.inc34.us305 ]
  %t4.1277.us338 = phi i32 [ %inc125.us347, %for.cond54.for.inc124_crit_edge.us ], [ 0, %for.inc34.us305 ]
  %84 = shl nuw nsw i64 %indvar446, 5
  %scevgep448 = getelementptr double, double* %sum, i64 %84
  %scevgep448449 = bitcast double* %scevgep448 to i8*
  %mul86.us = shl nsw i32 %t4.1277.us338, 5
  %add90.us = or i32 %mul86.us, 31
  %cmp91.not.us = icmp slt i32 %add90.us, %np
  %cond98.us = select i1 %cmp91.not.us, i32 %add90.us, i32 %sub9
  %cmp99.not269.us = icmp sgt i32 %mul86.us, %cond98.us
  br i1 %cmp99.not269.us, label %for.cond54.for.inc124_crit_edge.us, label %for.body70.us308.preheader

for.body70.us308.preheader:                       ; preds = %for.cond54.preheader.us337
  %85 = mul nsw i64 %indvar446, -32
  %86 = add i64 %85, -1
  %87 = or i64 %84, 1
  %scevgep450 = getelementptr double, double* %sum, i64 %87
  %88 = mul nsw i64 %indvar446, -32
  %89 = add i32 %cond98.us, 1
  %wide.trip.count396 = zext i32 %89 to i64
  %90 = add i64 %86, %wide.trip.count396
  %scevgep451 = getelementptr double, double* %scevgep450, i64 %90
  %91 = add i64 %88, %wide.trip.count396
  %min.iters.check473 = icmp ult i64 %91, 4
  %n.vec476 = and i64 %91, -4
  %ind.end480 = add i64 %indvars.iv, %n.vec476
  %cmp.n481 = icmp eq i64 %91, %n.vec476
  %92 = sub nsw i64 0, %wide.trip.count396
  br label %for.body70.us308

for.cond87.for.inc118_crit_edge.us:               ; preds = %for.body100.us.prol.loopexit, %for.body100.us, %middle.block470
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1
  %exitcond403.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count402
  %indvar.next456 = add i64 %indvar455, 1
  br i1 %exitcond403.not, label %for.inc121.us315, label %for.body85.us, !llvm.loop !31

for.cond54.for.inc124_crit_edge.us:               ; preds = %for.inc121.us315, %for.cond54.preheader.us337
  %inc125.us347 = add nuw nsw i32 %t4.1277.us338, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %exitcond407.not = icmp eq i32 %t4.1277.us338, %smax
  %indvar.next447 = add i64 %indvar446, 1
  br i1 %exitcond407.not, label %for.body143.us318, label %for.cond54.preheader.us337, !llvm.loop !32

for.cond5.for.inc176_crit_edge.split.us355:       ; preds = %for.inc173.us
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count430
  br i1 %exitcond431.not, label %if.end, label %for.cond5.preheader.us, !llvm.loop !33

if.end:                                           ; preds = %for.cond5.for.inc176_crit_edge.split.us355, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #1 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(118800000) i8* @malloc(i64 118800000) #9
  %call.i27 = tail call noalias dereferenceable_or_null(2160) i8* @malloc(i64 2160) #9
  %call.i28 = tail call noalias dereferenceable_or_null(583200) i8* @malloc(i64 583200) #9
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
  store double %div.i, double* %arrayidx11.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 270
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body6.i, !llvm.loop !34

for.inc12.i:                                      ; preds = %for.body6.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i, 220
  br i1 %exitcond10.not.i, label %for.inc15.i, label %for.cond4.preheader.i, !llvm.loop !35

for.inc15.i:                                      ; preds = %for.inc12.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 250
  br i1 %exitcond13.not.i, label %for.cond22.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !36

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
  store double %div30.i, double* %arrayidx34.i, align 8, !tbaa !4
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next15.i, 270
  br i1 %exitcond17.not.i, label %for.inc38.i, label %for.body25.i, !llvm.loop !37

for.inc38.i:                                      ; preds = %for.body25.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, 270
  br i1 %exitcond20.not.i, label %init_array.exit, label %for.cond22.preheader.i, !llvm.loop !38

init_array.exit:                                  ; preds = %for.inc38.i
  tail call void (...) @polybench_timer_start() #9
  %arraydecay6 = bitcast i8* %call.i27 to double*
  tail call void @kernel_doitgen(i32 250, i32 220, i32 270, [220 x [270 x double]]* %arraydecay, [270 x double]* nonnull %arraydecay3, double* %arraydecay6)
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %init_array.exit
  %5 = load i8*, i8** %argv, align 8, !tbaa !39
  %strcmpload = load i8, i8* %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc21.i, %if.then
  %indvars.iv10.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next11.i, %for.inc21.i ]
  %9 = mul nuw nsw i64 %indvars.iv10.i, 59400
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc18.i, %for.cond2.preheader.i
  %indvars.iv5.i = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next6.i, %for.inc18.i ]
  %10 = mul nuw nsw i64 %indvars.iv5.i, 270
  %11 = add nuw nsw i64 %10, %9
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end.i, %for.cond5.preheader.i
  %indvars.iv.i29 = phi i64 [ 0, %for.cond5.preheader.i ], [ %indvars.iv.next.i30, %if.end.i ]
  %12 = add nuw nsw i64 %11, %indvars.iv.i29
  %13 = trunc i64 %12 to i32
  %rem.urem.i = urem i32 %13, 20
  %cmp11.i = icmp eq i32 %rem.urem.i, 0
  br i1 %cmp11.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body7.i
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body7.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %arrayidx16.i = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv5.i, i64 %indvars.iv.i29
  %16 = load double, double* %arrayidx16.i, align 8, !tbaa !4
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16) #10
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, 270
  br i1 %exitcond.not.i31, label %for.inc18.i, label %for.body7.i, !llvm.loop !41

for.inc18.i:                                      ; preds = %if.end.i
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next6.i, 220
  br i1 %exitcond9.not.i, label %for.inc21.i, label %for.cond5.preheader.i, !llvm.loop !42

for.inc21.i:                                      ; preds = %for.inc18.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i32 = icmp eq i64 %indvars.iv.next11.i, 250
  br i1 %exitcond13.not.i32, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !43

print_array.exit:                                 ; preds = %for.inc21.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %call24.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !39
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %18) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %init_array.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i27) #9
  tail call void @free(i8* %call.i28) #9
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nofree norecurse nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{!9}
!9 = distinct !{!9, !10}
!10 = distinct !{!10, !"LVerDomain"}
!11 = !{!12}
!12 = distinct !{!12, !10}
!13 = !{!14}
!14 = distinct !{!14, !10}
!15 = !{!9, !12}
!16 = distinct !{!16, !3, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !3, !17}
!19 = distinct !{!19, !3}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !3, !17}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !3, !17}
!29 = distinct !{!29, !3}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !3}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, !3}
!37 = distinct !{!37, !3}
!38 = distinct !{!38, !3}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !6, i64 0}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3}
!43 = distinct !{!43, !3}
