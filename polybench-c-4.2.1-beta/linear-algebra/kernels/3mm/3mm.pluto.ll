; ModuleID = '3mm.pluto.c'
source_filename = "3mm.pluto.c"
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
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #8
  %call.i50 = tail call noalias dereferenceable_or_null(25600000) i8* @malloc(i64 25600000) #8
  %call.i51 = tail call noalias dereferenceable_or_null(28800000) i8* @malloc(i64 28800000) #8
  %call.i52 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i53 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #8
  %call.i54 = tail call noalias dereferenceable_or_null(42240000) i8* @malloc(i64 42240000) #8
  %call.i55 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #8
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
  tail call void (...) @polybench_timer_start() #8
  %arraydecay13 = bitcast i8* %call.i52 to [2200 x double]*
  %arraydecay16 = bitcast i8* %call.i55 to [2200 x double]*
  br label %for.cond15.preheader.i56

for.cond15.preheader.i56:                         ; preds = %for.inc181.i, %init_array.exit
  %indvar = phi i64 [ %indvar.next, %for.inc181.i ], [ 0, %init_array.exit ]
  %t2.022.i = phi i32 [ %inc182.i, %for.inc181.i ], [ 0, %init_array.exit ]
  %13 = mul nsw i64 %indvar, -32
  %14 = or i64 %13, 1
  %indvar.tr = trunc i64 %indvar to i32
  %15 = shl i32 %indvar.tr, 5
  %16 = or i32 %15, 31
  %umin160 = call i32 @llvm.umin.i32(i32 %16, i32 1599)
  %17 = zext i32 %umin160 to i64
  %18 = add i64 %14, %17
  %19 = mul nuw nsw i64 %indvar, 563200
  %20 = shl nsw i32 %t2.022.i, 5
  %umax131.i = tail call i32 @llvm.umax.i32(i32 %20, i32 1800) #8
  %21 = zext i32 %umax131.i to i64
  %umax.i = tail call i32 @llvm.umax.i32(i32 %20, i32 1600) #8
  %22 = zext i32 %umax.i to i64
  %add43.i = or i32 %20, 31
  %23 = icmp ult i32 %add43.i, 1599
  %cond59.i = select i1 %23, i32 %add43.i, i32 1599
  %cmp60.not3.i = icmp ugt i32 %20, %cond59.i
  %24 = icmp ugt i32 %20, 1600
  %cond92.i = select i1 %24, i32 %20, i32 1600
  %25 = icmp ult i32 %add43.i, 1799
  %cond104.i = select i1 %25, i32 %add43.i, i32 1799
  %cmp105.not10.i = icmp sgt i32 %cond92.i, %cond104.i
  %26 = icmp ugt i32 %20, 1800
  %cond138.i = select i1 %26, i32 %20, i32 1800
  %cmp151.not15.i = icmp sgt i32 %cond138.i, %cond59.i
  br i1 %cmp60.not3.i, label %for.body31.i.us, label %for.body31.i

for.body31.i.us:                                  ; preds = %for.cond15.preheader.i56, %for.inc178.i.us
  %indvar126.i.us = phi i64 [ %indvar.next127.i.us, %for.inc178.i.us ], [ 0, %for.cond15.preheader.i56 ]
  %t3.018.i.us = phi i32 [ %inc179.i.us, %for.inc178.i.us ], [ 0, %for.cond15.preheader.i56 ]
  %27 = shl nuw nsw i64 %indvar126.i.us, 5
  %28 = trunc i64 %27 to i32
  %29 = or i32 %28, 31
  %umin136.i.us = tail call i32 @llvm.umin.i32(i32 %29, i32 2199) #8
  %smax137.i.us = tail call i32 @llvm.smax.i32(i32 %umin136.i.us, i32 %28) #8
  %30 = trunc i64 %indvar126.i.us to i32
  %31 = mul i32 %30, -32
  %32 = add i32 %smax137.i.us, %31
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = add nuw nsw i64 %34, 8
  br i1 %cmp105.not10.i, label %for.end131.i.us, label %for.body106.lr.ph.i.us

for.body106.lr.ph.i.us:                           ; preds = %for.body31.i.us
  %mul107.i.us = shl nsw i32 %t3.018.i.us, 5
  %add111.i.us = or i32 %mul107.i.us, 31
  %36 = icmp ult i32 %add111.i.us, 2199
  %cond119.i.us = select i1 %36, i32 %add111.i.us, i32 2199
  %cmp120.not8.i.us = icmp ugt i32 %mul107.i.us, %cond119.i.us
  br i1 %cmp120.not8.i.us, label %for.end131.i.us, label %for.body106.i.us

for.body106.i.us:                                 ; preds = %for.body106.lr.ph.i.us, %for.body106.i.us
  %indvar.i.us = phi i64 [ %indvar.next.i.us, %for.body106.i.us ], [ 0, %for.body106.lr.ph.i.us ]
  %t4.111.i.us = phi i32 [ %inc130.i.us, %for.body106.i.us ], [ %cond92.i, %for.body106.lr.ph.i.us ]
  %37 = add nuw nsw i64 %indvar.i.us, %22
  %scevgep.i.us = getelementptr [2200 x double], [2200 x double]* %arraydecay13, i64 %37, i64 %27
  %scevgep128.i.us = bitcast double* %scevgep.i.us to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep128.i.us, i8 0, i64 %35, i1 false) #8
  %inc130.i.us = add nuw nsw i32 %t4.111.i.us, 1
  %cmp105.not.not.i.us = icmp ult i32 %t4.111.i.us, %cond104.i
  %indvar.next.i.us = add nuw nsw i64 %indvar.i.us, 1
  br i1 %cmp105.not.not.i.us, label %for.body106.i.us, label %for.end131.i.us, !llvm.loop !15

for.end131.i.us:                                  ; preds = %for.body106.i.us, %for.body106.lr.ph.i.us, %for.body31.i.us
  br i1 %cmp151.not15.i, label %for.inc178.i.us, label %for.body152.lr.ph.i.us

for.body152.lr.ph.i.us:                           ; preds = %for.end131.i.us
  %mul153.i.us = shl nsw i32 %t3.018.i.us, 5
  %add157.i.us = or i32 %mul153.i.us, 31
  %38 = icmp ult i32 %add157.i.us, 2199
  %cond165.i.us = select i1 %38, i32 %add157.i.us, i32 2199
  %cmp166.not13.i.us = icmp ugt i32 %mul153.i.us, %cond165.i.us
  br i1 %cmp166.not13.i.us, label %for.inc178.i.us, label %for.inc178.loopexit107.i.us

for.inc178.loopexit107.i.us:                      ; preds = %for.body152.lr.ph.i.us
  %scevgep134.i.us = getelementptr [2200 x double], [2200 x double]* %arraydecay16, i64 %21, i64 %27
  %scevgep134135.i.us = bitcast double* %scevgep134.i.us to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep134135.i.us, i8 0, i64 %35, i1 false) #8
  br label %for.inc178.i.us

for.inc178.i.us:                                  ; preds = %for.inc178.loopexit107.i.us, %for.body152.lr.ph.i.us, %for.end131.i.us
  %inc179.i.us = add nuw nsw i32 %t3.018.i.us, 1
  %indvar.next127.i.us = add nuw nsw i64 %indvar126.i.us, 1
  %exitcond.not.i59.us = icmp eq i64 %indvar.next127.i.us, 69
  br i1 %exitcond.not.i59.us, label %for.inc181.i, label %for.body31.i.us, !llvm.loop !16

for.body31.i:                                     ; preds = %for.cond15.preheader.i56, %for.inc178.i
  %indvar126.i = phi i64 [ %indvar.next127.i, %for.inc178.i ], [ 0, %for.cond15.preheader.i56 ]
  %t3.018.i = phi i32 [ %inc179.i, %for.inc178.i ], [ 0, %for.cond15.preheader.i56 ]
  %39 = shl nuw nsw i64 %indvar126.i, 8
  %40 = add nuw nsw i64 %19, %39
  %41 = mul nsw i64 %indvar126.i, -32
  %42 = or i64 %41, 1
  %43 = shl nuw nsw i64 %indvar126.i, 5
  %44 = trunc i64 %43 to i32
  %45 = or i32 %44, 31
  %umin68 = call i32 @llvm.umin.i32(i32 %45, i32 2199)
  %46 = zext i32 %umin68 to i64
  %47 = add i64 %42, %46
  %48 = shl nuw nsw i64 %47, 3
  %49 = trunc i64 %43 to i32
  %50 = or i32 %49, 31
  %umin136.i = tail call i32 @llvm.umin.i32(i32 %50, i32 2199) #8
  %smax137.i = tail call i32 @llvm.smax.i32(i32 %umin136.i, i32 %49) #8
  %51 = trunc i64 %indvar126.i to i32
  %52 = mul i32 %51, -32
  %53 = add i32 %smax137.i, %52
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  %56 = add nuw nsw i64 %55, 8
  %mul62.i = shl nsw i32 %t3.018.i, 5
  %add66.i = or i32 %mul62.i, 31
  %57 = icmp ult i32 %add66.i, 2199
  %cond74.i = select i1 %57, i32 %add66.i, i32 2199
  %cmp75.not1.i = icmp ugt i32 %mul62.i, %cond74.i
  br i1 %cmp75.not1.i, label %for.end131.i, label %for.body61.i

for.body61.i:                                     ; preds = %for.body31.i, %for.body61.i
  %indvar65 = phi i64 [ %indvar.next66.3, %for.body61.i ], [ 0, %for.body31.i ]
  %niter = phi i64 [ %niter.nsub.3, %for.body61.i ], [ %18, %for.body31.i ]
  %58 = mul nuw nsw i64 %indvar65, 17600
  %59 = add nuw nsw i64 %40, %58
  %scevgep67 = getelementptr i8, i8* %call.i55, i64 %59
  %scevgep = getelementptr i8, i8* %call.i52, i64 %59
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep, i8 0, i64 %48, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep67, i8 0, i64 %48, i1 false)
  %indvar.next66 = or i64 %indvar65, 1
  %60 = mul nuw nsw i64 %indvar.next66, 17600
  %61 = add nuw nsw i64 %40, %60
  %scevgep67.1 = getelementptr i8, i8* %call.i55, i64 %61
  %scevgep.1 = getelementptr i8, i8* %call.i52, i64 %61
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.1, i8 0, i64 %48, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep67.1, i8 0, i64 %48, i1 false)
  %indvar.next66.1 = or i64 %indvar65, 2
  %62 = mul nuw nsw i64 %indvar.next66.1, 17600
  %63 = add nuw nsw i64 %40, %62
  %scevgep67.2 = getelementptr i8, i8* %call.i55, i64 %63
  %scevgep.2 = getelementptr i8, i8* %call.i52, i64 %63
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.2, i8 0, i64 %48, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep67.2, i8 0, i64 %48, i1 false)
  %indvar.next66.2 = or i64 %indvar65, 3
  %64 = mul nuw nsw i64 %indvar.next66.2, 17600
  %65 = add nuw nsw i64 %40, %64
  %scevgep67.3 = getelementptr i8, i8* %call.i55, i64 %65
  %scevgep.3 = getelementptr i8, i8* %call.i52, i64 %65
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep.3, i8 0, i64 %48, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep67.3, i8 0, i64 %48, i1 false)
  %indvar.next66.3 = add nuw nsw i64 %indvar65, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %for.end85.i, label %for.body61.i, !llvm.loop !17

for.end85.i:                                      ; preds = %for.body61.i
  %brmerge = or i1 %cmp105.not10.i, %cmp75.not1.i
  br i1 %brmerge, label %for.end131.i, label %for.body106.i

for.body106.i:                                    ; preds = %for.end85.i, %for.body106.i
  %indvar.i = phi i64 [ %indvar.next.i, %for.body106.i ], [ 0, %for.end85.i ]
  %t4.111.i = phi i32 [ %inc130.i, %for.body106.i ], [ %cond92.i, %for.end85.i ]
  %66 = add nuw nsw i64 %indvar.i, %22
  %scevgep.i = getelementptr [2200 x double], [2200 x double]* %arraydecay13, i64 %66, i64 %43
  %scevgep128.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep128.i, i8 0, i64 %56, i1 false) #8
  %inc130.i = add nuw nsw i32 %t4.111.i, 1
  %cmp105.not.not.i = icmp ult i32 %t4.111.i, %cond104.i
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %cmp105.not.not.i, label %for.body106.i, label %for.end131.i, !llvm.loop !15

for.end131.i:                                     ; preds = %for.body106.i, %for.end85.i, %for.body31.i
  %brmerge99 = or i1 %cmp151.not15.i, %cmp75.not1.i
  br i1 %brmerge99, label %for.inc178.i, label %for.inc178.loopexit107.i

for.inc178.loopexit107.i:                         ; preds = %for.end131.i
  %scevgep134.i = getelementptr [2200 x double], [2200 x double]* %arraydecay16, i64 %21, i64 %43
  %scevgep134135.i = bitcast double* %scevgep134.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep134135.i, i8 0, i64 %56, i1 false) #8
  br label %for.inc178.i

for.inc178.i:                                     ; preds = %for.end131.i, %for.inc178.loopexit107.i
  %inc179.i = add nuw nsw i32 %t3.018.i, 1
  %indvar.next127.i = add nuw nsw i64 %indvar126.i, 1
  %exitcond.not.i59 = icmp eq i64 %indvar.next127.i, 69
  br i1 %exitcond.not.i59, label %for.inc181.i, label %for.body31.i, !llvm.loop !16

for.inc181.i:                                     ; preds = %for.inc178.i, %for.inc178.i.us
  %inc182.i = add nuw nsw i32 %t2.022.i, 1
  %exitcond140.not.i = icmp eq i32 %inc182.i, 107
  %indvar.next = add nuw nsw i64 %indvar, 1
  br i1 %exitcond140.not.i, label %for.cond375.preheader.i, label %for.cond15.preheader.i56, !llvm.loop !18

for.cond375.preheader.i:                          ; preds = %for.inc181.i, %for.inc483.i
  %indvars.iv76 = phi i32 [ %indvars.iv.next77, %for.inc483.i ], [ 31, %for.inc181.i ]
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %for.inc483.i ], [ 0, %for.inc181.i ]
  %t2.344.i = phi i32 [ %inc484.i, %for.inc483.i ], [ 0, %for.inc181.i ]
  %umin78 = call i32 @llvm.umin.i32(i32 %indvars.iv76, i32 1799)
  %narrow = add nuw nsw i32 %umin78, 1
  %67 = zext i32 %narrow to i64
  %mul409.i = shl nsw i32 %t2.344.i, 5
  %add413.i = or i32 %mul409.i, 31
  %68 = icmp ult i32 %add413.i, 1799
  %cond421.i = select i1 %68, i32 %add413.i, i32 1799
  %cmp422.not28.i = icmp ugt i32 %mul409.i, %cond421.i
  br i1 %cmp422.not28.i, label %for.inc483.i, label %for.cond392.preheader.i

for.cond392.preheader.i:                          ; preds = %for.cond375.preheader.i, %for.inc480.split.i
  %indvar101 = phi i64 [ %indvar.next102, %for.inc480.split.i ], [ 0, %for.cond375.preheader.i ]
  %indvars.iv72 = phi i32 [ %indvars.iv.next73, %for.inc480.split.i ], [ 31, %for.cond375.preheader.i ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.inc480.split.i ], [ 0, %for.cond375.preheader.i ]
  %t3.343.i = phi i32 [ %inc481.i, %for.inc480.split.i ], [ 0, %for.cond375.preheader.i ]
  %69 = mul nsw i64 %indvar101, -32
  %70 = or i64 %69, 1
  %indvar101.tr = trunc i64 %indvar101 to i32
  %71 = shl i32 %indvar101.tr, 5
  %72 = or i32 %71, 31
  %umin = call i32 @llvm.umin.i32(i32 %72, i32 2199)
  %73 = zext i32 %umin to i64
  %74 = add i64 %70, %73
  %umin74 = call i32 @llvm.umin.i32(i32 %indvars.iv72, i32 2199)
  %narrow94 = add nuw nsw i32 %umin74, 1
  %75 = zext i32 %narrow94 to i64
  %mul439.i = shl nsw i32 %t3.343.i, 5
  %add443.i = or i32 %mul439.i, 31
  %76 = icmp ult i32 %add443.i, 2199
  %cond451.i = select i1 %76, i32 %add443.i, i32 2199
  %cmp452.not23.i = icmp ugt i32 %mul439.i, %cond451.i
  br i1 %cmp452.not23.i, label %for.inc480.split.i, label %for.body423.preheader.i.preheader

for.body423.preheader.i.preheader:                ; preds = %for.cond392.preheader.i
  %min.iters.check = icmp eq i64 %74, 0
  br label %for.body423.preheader.i

for.body423.preheader.i:                          ; preds = %for.body423.preheader.i.preheader, %for.cond410.for.inc477_crit_edge.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %for.cond410.for.inc477_crit_edge.i ], [ 32, %for.body423.preheader.i.preheader ]
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %for.cond410.for.inc477_crit_edge.i ], [ 0, %for.body423.preheader.i.preheader ]
  %t5.535.i = phi i32 [ %inc478.i, %for.cond410.for.inc477_crit_edge.i ], [ 0, %for.body423.preheader.i.preheader ]
  br label %for.body423.i

for.body423.i:                                    ; preds = %for.cond425.for.inc474_crit_edge.split.i, %for.body423.preheader.i
  %indvars.iv154.i = phi i64 [ %indvars.iv152.i, %for.body423.preheader.i ], [ %indvars.iv.next155.i, %for.cond425.for.inc474_crit_edge.split.i ]
  br label %for.body438.i

for.body438.i:                                    ; preds = %for.cond440.for.inc471_crit_edge.i, %for.body423.i
  %indvars.iv147.i = phi i64 [ %indvars.iv145.i, %for.body423.i ], [ %indvars.iv.next148.i, %for.cond440.for.inc471_crit_edge.i ]
  %arrayidx457.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay8, i64 %indvars.iv154.i, i64 %indvars.iv147.i
  %77 = load double, double* %arrayidx457.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body453.i, label %vector.ph

vector.ph:                                        ; preds = %for.body438.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %77, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <2 x double> poison, double %77, i32 0
  %broadcast.splat105 = shufflevector <2 x double> %broadcast.splatinsert104, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv141.i, %index
  %78 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv147.i, i64 %offset.idx
  %79 = bitcast double* %78 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %79, align 8, !tbaa !2
  %80 = getelementptr inbounds double, double* %78, i64 2
  %81 = bitcast double* %80 to <2 x double>*
  %wide.load103 = load <2 x double>, <2 x double>* %81, align 8, !tbaa !2
  %82 = fmul <2 x double> %broadcast.splat, %wide.load
  %83 = fmul <2 x double> %broadcast.splat105, %wide.load103
  %84 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv154.i, i64 %offset.idx
  %85 = bitcast double* %84 to <2 x double>*
  %wide.load106 = load <2 x double>, <2 x double>* %85, align 8, !tbaa !2
  %86 = getelementptr inbounds double, double* %84, i64 2
  %87 = bitcast double* %86 to <2 x double>*
  %wide.load107 = load <2 x double>, <2 x double>* %87, align 8, !tbaa !2
  %88 = fadd <2 x double> %wide.load106, %82
  %89 = fadd <2 x double> %wide.load107, %83
  %90 = bitcast double* %84 to <2 x double>*
  store <2 x double> %88, <2 x double>* %90, align 8, !tbaa !2
  %91 = bitcast double* %86 to <2 x double>*
  store <2 x double> %89, <2 x double>* %91, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %92 = icmp eq i64 %index.next, %74
  br i1 %92, label %for.cond440.for.inc471_crit_edge.i, label %vector.body, !llvm.loop !19

for.body453.i:                                    ; preds = %for.body438.i, %for.body453.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %for.body453.i ], [ %indvars.iv141.i, %for.body438.i ]
  %arrayidx461.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay9, i64 %indvars.iv147.i, i64 %indvars.iv143.i
  %93 = load double, double* %arrayidx461.i, align 8, !tbaa !2
  %mul462.i = fmul double %77, %93
  %arrayidx466.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv154.i, i64 %indvars.iv143.i
  %94 = load double, double* %arrayidx466.i, align 8, !tbaa !2
  %add467.i = fadd double %94, %mul462.i
  store double %add467.i, double* %arrayidx466.i, align 8, !tbaa !2
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next144.i, %75
  br i1 %exitcond75.not, label %for.cond440.for.inc471_crit_edge.i, label %for.body453.i, !llvm.loop !21

for.cond440.for.inc471_crit_edge.i:               ; preds = %vector.body, %for.body453.i
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %indvars.iv156.i
  br i1 %exitcond151.not.i, label %for.cond425.for.inc474_crit_edge.split.i, label %for.body438.i, !llvm.loop !23

for.cond425.for.inc474_crit_edge.split.i:         ; preds = %for.cond440.for.inc471_crit_edge.i
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next155.i, %67
  br i1 %exitcond79.not, label %for.cond410.for.inc477_crit_edge.i, label %for.body423.i, !llvm.loop !24

for.cond410.for.inc477_crit_edge.i:               ; preds = %for.cond425.for.inc474_crit_edge.split.i
  %inc478.i = add nuw nsw i32 %t5.535.i, 1
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 32
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 32
  %exitcond158.not.i = icmp eq i32 %inc478.i, 75
  br i1 %exitcond158.not.i, label %for.inc480.split.i, label %for.body423.preheader.i, !llvm.loop !25

for.inc480.split.i:                               ; preds = %for.cond410.for.inc477_crit_edge.i, %for.cond392.preheader.i
  %inc481.i = add nuw nsw i32 %t3.343.i, 1
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 32
  %exitcond159.not.i = icmp eq i32 %inc481.i, 69
  %indvars.iv.next73 = add nuw nsw i32 %indvars.iv72, 32
  %indvar.next102 = add i64 %indvar101, 1
  br i1 %exitcond159.not.i, label %for.inc483.i, label %for.cond392.preheader.i, !llvm.loop !26

for.inc483.i:                                     ; preds = %for.inc480.split.i, %for.cond375.preheader.i
  %inc484.i = add nuw nsw i32 %t2.344.i, 1
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 32
  %exitcond160.not.i = icmp eq i32 %inc484.i, 57
  %indvars.iv.next77 = add nuw nsw i32 %indvars.iv76, 32
  br i1 %exitcond160.not.i, label %for.body522.preheader.i.preheader, label %for.cond375.preheader.i, !llvm.loop !27

for.body522.preheader.i.preheader:                ; preds = %for.inc483.i
  %arraydecay10 = bitcast i8* %call.i to [1800 x double]*
  br label %for.body522.preheader.i

for.body522.preheader.i:                          ; preds = %for.body522.preheader.i.preheader, %for.inc566.i
  %indvar161.i = phi i64 [ %indvar.next162.i, %for.inc566.i ], [ 0, %for.body522.preheader.i.preheader ]
  %95 = shl nuw nsw i64 %indvar161.i, 5
  %96 = or i64 %95, 1
  %97 = or i64 %95, 2
  %98 = or i64 %95, 3
  %99 = or i64 %95, 4
  %100 = or i64 %95, 5
  %101 = or i64 %95, 6
  %102 = or i64 %95, 7
  %103 = or i64 %95, 8
  %104 = or i64 %95, 9
  %105 = or i64 %95, 10
  %106 = or i64 %95, 11
  %107 = or i64 %95, 12
  %108 = or i64 %95, 13
  %109 = or i64 %95, 14
  %110 = or i64 %95, 15
  %111 = or i64 %95, 16
  %112 = or i64 %95, 17
  %113 = or i64 %95, 18
  %114 = or i64 %95, 19
  %115 = or i64 %95, 20
  %116 = or i64 %95, 21
  %117 = or i64 %95, 22
  %118 = or i64 %95, 23
  %119 = or i64 %95, 24
  %120 = or i64 %95, 25
  %121 = or i64 %95, 26
  %122 = or i64 %95, 27
  %123 = or i64 %95, 28
  %124 = or i64 %95, 29
  %125 = or i64 %95, 30
  %126 = or i64 %95, 31
  br label %for.body522.i

for.body522.i:                                    ; preds = %for.cond524.for.inc563_crit_edge.i, %for.body522.preheader.i
  %indvar165.i = phi i64 [ 0, %for.body522.preheader.i ], [ %indvar.next166.i, %for.cond524.for.inc563_crit_edge.i ]
  %t3.450.i = phi i32 [ 0, %for.body522.preheader.i ], [ %inc564.i, %for.cond524.for.inc563_crit_edge.i ]
  %127 = shl nuw nsw i64 %indvar165.i, 5
  %128 = trunc i64 %127 to i32
  %129 = or i32 %128, 31
  %umin169.i = tail call i32 @llvm.umin.i32(i32 %129, i32 1799) #8
  %smax170.i = tail call i32 @llvm.smax.i32(i32 %umin169.i, i32 %128) #8
  %130 = trunc i64 %indvar165.i to i32
  %131 = mul i32 %130, -32
  %132 = add i32 %smax170.i, %131
  %133 = zext i32 %132 to i64
  %134 = shl nuw nsw i64 %133, 3
  %135 = add nuw nsw i64 %134, 8
  %mul538.i = shl nsw i32 %t3.450.i, 5
  %add542.i = or i32 %mul538.i, 31
  %136 = icmp ult i32 %add542.i, 1799
  %cond550.i = select i1 %136, i32 %add542.i, i32 1799
  %cmp551.not45.i = icmp ugt i32 %mul538.i, %cond550.i
  br i1 %cmp551.not45.i, label %for.cond524.for.inc563_crit_edge.i, label %for.body537.preheader.i

for.body537.preheader.i:                          ; preds = %for.body522.i
  %scevgep167.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %95, i64 %127
  %scevgep167168.i = bitcast double* %scevgep167.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.1.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %96, i64 %127
  %scevgep167168.1.i = bitcast double* %scevgep167.1.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.1.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.2.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %97, i64 %127
  %scevgep167168.2.i = bitcast double* %scevgep167.2.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.2.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.3.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %98, i64 %127
  %scevgep167168.3.i = bitcast double* %scevgep167.3.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.3.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.4.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %99, i64 %127
  %scevgep167168.4.i = bitcast double* %scevgep167.4.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.4.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.5.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %100, i64 %127
  %scevgep167168.5.i = bitcast double* %scevgep167.5.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.5.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.6.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %101, i64 %127
  %scevgep167168.6.i = bitcast double* %scevgep167.6.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.6.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.7.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %102, i64 %127
  %scevgep167168.7.i = bitcast double* %scevgep167.7.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.7.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.8.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %103, i64 %127
  %scevgep167168.8.i = bitcast double* %scevgep167.8.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.8.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.9.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %104, i64 %127
  %scevgep167168.9.i = bitcast double* %scevgep167.9.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.9.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.10.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %105, i64 %127
  %scevgep167168.10.i = bitcast double* %scevgep167.10.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.10.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.11.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %106, i64 %127
  %scevgep167168.11.i = bitcast double* %scevgep167.11.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.11.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.12.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %107, i64 %127
  %scevgep167168.12.i = bitcast double* %scevgep167.12.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.12.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.13.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %108, i64 %127
  %scevgep167168.13.i = bitcast double* %scevgep167.13.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.13.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.14.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %109, i64 %127
  %scevgep167168.14.i = bitcast double* %scevgep167.14.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.14.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.15.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %110, i64 %127
  %scevgep167168.15.i = bitcast double* %scevgep167.15.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.15.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.16.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %111, i64 %127
  %scevgep167168.16.i = bitcast double* %scevgep167.16.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.16.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.17.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %112, i64 %127
  %scevgep167168.17.i = bitcast double* %scevgep167.17.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.17.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.18.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %113, i64 %127
  %scevgep167168.18.i = bitcast double* %scevgep167.18.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.18.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.19.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %114, i64 %127
  %scevgep167168.19.i = bitcast double* %scevgep167.19.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.19.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.20.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %115, i64 %127
  %scevgep167168.20.i = bitcast double* %scevgep167.20.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.20.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.21.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %116, i64 %127
  %scevgep167168.21.i = bitcast double* %scevgep167.21.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.21.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.22.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %117, i64 %127
  %scevgep167168.22.i = bitcast double* %scevgep167.22.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.22.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.23.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %118, i64 %127
  %scevgep167168.23.i = bitcast double* %scevgep167.23.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.23.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.24.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %119, i64 %127
  %scevgep167168.24.i = bitcast double* %scevgep167.24.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.24.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.25.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %120, i64 %127
  %scevgep167168.25.i = bitcast double* %scevgep167.25.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.25.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.26.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %121, i64 %127
  %scevgep167168.26.i = bitcast double* %scevgep167.26.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.26.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.27.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %122, i64 %127
  %scevgep167168.27.i = bitcast double* %scevgep167.27.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.27.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.28.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %123, i64 %127
  %scevgep167168.28.i = bitcast double* %scevgep167.28.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.28.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.29.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %124, i64 %127
  %scevgep167168.29.i = bitcast double* %scevgep167.29.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.29.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.30.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %125, i64 %127
  %scevgep167168.30.i = bitcast double* %scevgep167.30.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.30.i, i8 0, i64 %135, i1 false) #8
  %scevgep167.31.i = getelementptr [1800 x double], [1800 x double]* %arraydecay10, i64 %126, i64 %127
  %scevgep167168.31.i = bitcast double* %scevgep167.31.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep167168.31.i, i8 0, i64 %135, i1 false) #8
  br label %for.cond524.for.inc563_crit_edge.i

for.cond524.for.inc563_crit_edge.i:               ; preds = %for.body537.preheader.i, %for.body522.i
  %inc564.i = add nuw nsw i32 %t3.450.i, 1
  %indvar.next166.i = add nuw nsw i64 %indvar165.i, 1
  %exitcond176.not.i = icmp eq i64 %indvar.next166.i, 57
  br i1 %exitcond176.not.i, label %for.inc566.i, label %for.body522.i, !llvm.loop !28

for.inc566.i:                                     ; preds = %for.cond524.for.inc563_crit_edge.i
  %indvar.next162.i = add nuw nsw i64 %indvar161.i, 1
  %exitcond177.not.i = icmp eq i64 %indvar.next162.i, 50
  br i1 %exitcond177.not.i, label %for.cond589.preheader.i, label %for.body522.preheader.i, !llvm.loop !29

for.cond589.preheader.i:                          ; preds = %for.inc566.i, %for.inc791.i
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %for.inc791.i ], [ 32, %for.inc566.i ]
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %for.inc791.i ], [ 0, %for.inc566.i ]
  %t2.593.i = phi i32 [ %inc792.i, %for.inc791.i ], [ 0, %for.inc566.i ]
  br label %for.cond608.preheader.split.i

for.cond608.preheader.split.i:                    ; preds = %for.inc788.i, %for.cond589.preheader.i
  %indvar135 = phi i64 [ %indvar.next136, %for.inc788.i ], [ 0, %for.cond589.preheader.i ]
  %indvars.iv80 = phi i32 [ %indvars.iv.next81, %for.inc788.i ], [ 31, %for.cond589.preheader.i ]
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i, %for.inc788.i ], [ 0, %for.cond589.preheader.i ]
  %t3.592.i = phi i32 [ %inc789.i, %for.inc788.i ], [ 0, %for.cond589.preheader.i ]
  %137 = mul nsw i64 %indvar135, -32
  %138 = or i64 %137, 1
  %indvar135.tr = trunc i64 %indvar135 to i32
  %139 = shl i32 %indvar135.tr, 5
  %140 = or i32 %139, 31
  %umin137 = call i32 @llvm.umin.i32(i32 %140, i32 1799)
  %141 = zext i32 %umin137 to i64
  %142 = add i64 %138, %141
  %umin92 = call i32 @llvm.umin.i32(i32 %indvars.iv80, i32 1799)
  %narrow95 = add nuw nsw i32 %umin92, 1
  %143 = zext i32 %narrow95 to i64
  %mul655.i = shl nsw i32 %t3.592.i, 5
  %add659.i = or i32 %mul655.i, 31
  %144 = icmp ult i32 %add659.i, 1799
  %cond667.i = select i1 %144, i32 %add659.i, i32 1799
  %cmp668.not53.i = icmp ugt i32 %mul655.i, %cond667.i
  br i1 %cmp668.not53.i, label %for.inc788.i, label %for.body624.i.preheader

for.body624.i.preheader:                          ; preds = %for.cond608.preheader.split.i
  %min.iters.check138 = icmp eq i64 %142, 0
  br label %for.body624.i

for.body624.i:                                    ; preds = %for.body624.i.preheader, %for.cond626.for.inc693_crit_edge.i
  %indvars.iv84 = phi i32 [ %indvars.iv.next85, %for.cond626.for.inc693_crit_edge.i ], [ 31, %for.body624.i.preheader ]
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i, %for.cond626.for.inc693_crit_edge.i ], [ 0, %for.body624.i.preheader ]
  %t5.765.i = phi i32 [ %inc694.i, %for.cond626.for.inc693_crit_edge.i ], [ 0, %for.body624.i.preheader ]
  %umin86 = call i32 @llvm.umin.i32(i32 %indvars.iv84, i32 1999)
  %narrow96 = add nuw nsw i32 %umin86, 1
  %145 = zext i32 %narrow96 to i64
  %mul640.i = shl nsw i32 %t5.765.i, 5
  %add644.i = or i32 %mul640.i, 31
  %146 = icmp ult i32 %add644.i, 1999
  %cond652.i = select i1 %146, i32 %add644.i, i32 1999
  %cmp653.not55.i = icmp ugt i32 %mul640.i, %cond652.i
  br i1 %cmp653.not55.i, label %for.cond626.for.inc693_crit_edge.i, label %for.body639.i

for.body639.i:                                    ; preds = %for.body624.i, %for.cond641.for.inc690_crit_edge.split.i
  %indvars.iv188.i = phi i64 [ %indvars.iv.next189.i, %for.cond641.for.inc690_crit_edge.split.i ], [ %indvars.iv186.i, %for.body624.i ]
  br label %for.body654.i

for.body654.i:                                    ; preds = %for.cond656.for.inc687_crit_edge.i, %for.body639.i
  %indvars.iv184.i = phi i64 [ %indvars.iv182.i, %for.body639.i ], [ %indvars.iv.next185.i, %for.cond656.for.inc687_crit_edge.i ]
  %arrayidx673.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv188.i, i64 %indvars.iv184.i
  %147 = load double, double* %arrayidx673.i, align 8, !tbaa !2
  br i1 %min.iters.check138, label %for.body669.i, label %vector.ph139

vector.ph139:                                     ; preds = %for.body654.i
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %147, i32 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <2 x double> poison, double %147, i32 0
  %broadcast.splat153 = shufflevector <2 x double> %broadcast.splatinsert152, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next143, %vector.body134 ]
  %offset.idx147 = add i64 %indvars.iv178.i, %index142
  %148 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay7, i64 %indvars.iv184.i, i64 %offset.idx147
  %149 = bitcast double* %148 to <2 x double>*
  %wide.load148 = load <2 x double>, <2 x double>* %149, align 8, !tbaa !2
  %150 = getelementptr inbounds double, double* %148, i64 2
  %151 = bitcast double* %150 to <2 x double>*
  %wide.load149 = load <2 x double>, <2 x double>* %151, align 8, !tbaa !2
  %152 = fmul <2 x double> %broadcast.splat151, %wide.load148
  %153 = fmul <2 x double> %broadcast.splat153, %wide.load149
  %154 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv188.i, i64 %offset.idx147
  %155 = bitcast double* %154 to <2 x double>*
  %wide.load154 = load <2 x double>, <2 x double>* %155, align 8, !tbaa !2
  %156 = getelementptr inbounds double, double* %154, i64 2
  %157 = bitcast double* %156 to <2 x double>*
  %wide.load155 = load <2 x double>, <2 x double>* %157, align 8, !tbaa !2
  %158 = fadd <2 x double> %wide.load154, %152
  %159 = fadd <2 x double> %wide.load155, %153
  %160 = bitcast double* %154 to <2 x double>*
  store <2 x double> %158, <2 x double>* %160, align 8, !tbaa !2
  %161 = bitcast double* %156 to <2 x double>*
  store <2 x double> %159, <2 x double>* %161, align 8, !tbaa !2
  %index.next143 = add i64 %index142, 4
  %162 = icmp eq i64 %index.next143, %142
  br i1 %162, label %for.cond656.for.inc687_crit_edge.i, label %vector.body134, !llvm.loop !30

for.body669.i:                                    ; preds = %for.body654.i, %for.body669.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %for.body669.i ], [ %indvars.iv178.i, %for.body654.i ]
  %arrayidx677.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay7, i64 %indvars.iv184.i, i64 %indvars.iv180.i
  %163 = load double, double* %arrayidx677.i, align 8, !tbaa !2
  %mul678.i = fmul double %147, %163
  %arrayidx682.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv188.i, i64 %indvars.iv180.i
  %164 = load double, double* %arrayidx682.i, align 8, !tbaa !2
  %add683.i = fadd double %164, %mul678.i
  store double %add683.i, double* %arrayidx682.i, align 8, !tbaa !2
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next181.i, %143
  br i1 %exitcond83.not, label %for.cond656.for.inc687_crit_edge.i, label %for.body669.i, !llvm.loop !31

for.cond656.for.inc687_crit_edge.i:               ; preds = %vector.body134, %for.body669.i
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next185.i, %145
  br i1 %exitcond87.not, label %for.cond641.for.inc690_crit_edge.split.i, label %for.body654.i, !llvm.loop !32

for.cond641.for.inc690_crit_edge.split.i:         ; preds = %for.cond656.for.inc687_crit_edge.i
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next189.i, %indvars.iv206.i
  br i1 %exitcond192.not.i, label %for.cond626.for.inc693_crit_edge.i, label %for.body639.i, !llvm.loop !33

for.cond626.for.inc693_crit_edge.i:               ; preds = %for.cond641.for.inc690_crit_edge.split.i, %for.body624.i
  %inc694.i = add nuw nsw i32 %t5.765.i, 1
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 32
  %exitcond193.not.i = icmp eq i32 %inc694.i, 63
  %indvars.iv.next85 = add nuw nsw i32 %indvars.iv84, 32
  br i1 %exitcond193.not.i, label %for.body715.i, label %for.body624.i, !llvm.loop !34

for.body715.i:                                    ; preds = %for.cond626.for.inc693_crit_edge.i, %for.cond717.for.inc784_crit_edge.split.i
  %indvar111 = phi i64 [ %indvar.next112, %for.cond717.for.inc784_crit_edge.split.i ], [ 0, %for.cond626.for.inc693_crit_edge.i ]
  %indvars.iv88 = phi i32 [ %indvars.iv.next89, %for.cond717.for.inc784_crit_edge.split.i ], [ 31, %for.cond626.for.inc693_crit_edge.i ]
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i, %for.cond717.for.inc784_crit_edge.split.i ], [ 0, %for.cond626.for.inc693_crit_edge.i ]
  %t5.885.i = phi i32 [ %inc785.i, %for.cond717.for.inc784_crit_edge.split.i ], [ 0, %for.cond626.for.inc693_crit_edge.i ]
  %165 = mul nsw i64 %indvar111, -32
  %166 = or i64 %165, 1
  %indvar111.tr = trunc i64 %indvar111 to i32
  %167 = shl i32 %indvar111.tr, 5
  %168 = or i32 %167, 31
  %umin113 = call i32 @llvm.umin.i32(i32 %168, i32 2199)
  %169 = zext i32 %umin113 to i64
  %170 = add i64 %166, %169
  %umin90 = call i32 @llvm.umin.i32(i32 %indvars.iv88, i32 2199)
  %narrow97 = add nuw nsw i32 %umin90, 1
  %171 = zext i32 %narrow97 to i64
  %mul746.i = shl nsw i32 %t5.885.i, 5
  %add750.i = or i32 %mul746.i, 31
  %172 = icmp ult i32 %add750.i, 2199
  %cond758.i = select i1 %172, i32 %add750.i, i32 2199
  %cmp759.not73.i = icmp ugt i32 %mul746.i, %cond758.i
  br i1 %cmp759.not73.i, label %for.cond717.for.inc784_crit_edge.split.i, label %for.body730.i.preheader

for.body730.i.preheader:                          ; preds = %for.body715.i
  %min.iters.check114 = icmp eq i64 %170, 0
  br label %for.body730.i

for.body730.i:                                    ; preds = %for.body730.i.preheader, %for.cond732.for.inc781_crit_edge.split.i
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %for.cond732.for.inc781_crit_edge.split.i ], [ %indvars.iv186.i, %for.body730.i.preheader ]
  br label %for.body745.i

for.body745.i:                                    ; preds = %for.cond747.for.inc778_crit_edge.i, %for.body730.i
  %indvars.iv198.i = phi i64 [ %indvars.iv178.i, %for.body730.i ], [ %indvars.iv.next199.i, %for.cond747.for.inc778_crit_edge.i ]
  %arrayidx764.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay10, i64 %indvars.iv200.i, i64 %indvars.iv198.i
  %173 = load double, double* %arrayidx764.i, align 8, !tbaa !2
  br i1 %min.iters.check114, label %for.body760.i, label %vector.ph115

vector.ph115:                                     ; preds = %for.body745.i
  %broadcast.splatinsert126 = insertelement <2 x double> poison, double %173, i32 0
  %broadcast.splat127 = shufflevector <2 x double> %broadcast.splatinsert126, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %173, i32 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next119, %vector.body110 ]
  %offset.idx123 = add i64 %indvars.iv194.i, %index118
  %174 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv198.i, i64 %offset.idx123
  %175 = bitcast double* %174 to <2 x double>*
  %wide.load124 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !2
  %176 = getelementptr inbounds double, double* %174, i64 2
  %177 = bitcast double* %176 to <2 x double>*
  %wide.load125 = load <2 x double>, <2 x double>* %177, align 8, !tbaa !2
  %178 = fmul <2 x double> %broadcast.splat127, %wide.load124
  %179 = fmul <2 x double> %broadcast.splat129, %wide.load125
  %180 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay16, i64 %indvars.iv200.i, i64 %offset.idx123
  %181 = bitcast double* %180 to <2 x double>*
  %wide.load130 = load <2 x double>, <2 x double>* %181, align 8, !tbaa !2
  %182 = getelementptr inbounds double, double* %180, i64 2
  %183 = bitcast double* %182 to <2 x double>*
  %wide.load131 = load <2 x double>, <2 x double>* %183, align 8, !tbaa !2
  %184 = fadd <2 x double> %wide.load130, %178
  %185 = fadd <2 x double> %wide.load131, %179
  %186 = bitcast double* %180 to <2 x double>*
  store <2 x double> %184, <2 x double>* %186, align 8, !tbaa !2
  %187 = bitcast double* %182 to <2 x double>*
  store <2 x double> %185, <2 x double>* %187, align 8, !tbaa !2
  %index.next119 = add i64 %index118, 4
  %188 = icmp eq i64 %index.next119, %170
  br i1 %188, label %for.cond747.for.inc778_crit_edge.i, label %vector.body110, !llvm.loop !35

for.body760.i:                                    ; preds = %for.body745.i, %for.body760.i
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %for.body760.i ], [ %indvars.iv194.i, %for.body745.i ]
  %arrayidx768.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay13, i64 %indvars.iv198.i, i64 %indvars.iv196.i
  %189 = load double, double* %arrayidx768.i, align 8, !tbaa !2
  %mul769.i = fmul double %173, %189
  %arrayidx773.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay16, i64 %indvars.iv200.i, i64 %indvars.iv196.i
  %190 = load double, double* %arrayidx773.i, align 8, !tbaa !2
  %add774.i = fadd double %190, %mul769.i
  store double %add774.i, double* %arrayidx773.i, align 8, !tbaa !2
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next197.i, %171
  br i1 %exitcond91.not, label %for.cond747.for.inc778_crit_edge.i, label %for.body760.i, !llvm.loop !36

for.cond747.for.inc778_crit_edge.i:               ; preds = %vector.body110, %for.body760.i
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next199.i, %143
  br i1 %exitcond93.not, label %for.cond732.for.inc781_crit_edge.split.i, label %for.body745.i, !llvm.loop !37

for.cond732.for.inc781_crit_edge.split.i:         ; preds = %for.cond747.for.inc778_crit_edge.i
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next201.i, %indvars.iv206.i
  br i1 %exitcond203.not.i, label %for.cond717.for.inc784_crit_edge.split.i, label %for.body730.i, !llvm.loop !38

for.cond717.for.inc784_crit_edge.split.i:         ; preds = %for.cond732.for.inc781_crit_edge.split.i, %for.body715.i
  %inc785.i = add nuw nsw i32 %t5.885.i, 1
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 32
  %exitcond204.not.i = icmp eq i32 %inc785.i, 69
  %indvars.iv.next89 = add nuw nsw i32 %indvars.iv88, 32
  %indvar.next112 = add i64 %indvar111, 1
  br i1 %exitcond204.not.i, label %for.inc788.i, label %for.body715.i, !llvm.loop !39

for.inc788.i:                                     ; preds = %for.cond717.for.inc784_crit_edge.split.i, %for.cond608.preheader.split.i
  %inc789.i = add nuw nsw i32 %t3.592.i, 1
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 32
  %exitcond205.not.i = icmp eq i32 %inc789.i, 57
  %indvars.iv.next81 = add nuw nsw i32 %indvars.iv80, 32
  %indvar.next136 = add i64 %indvar135, 1
  br i1 %exitcond205.not.i, label %for.inc791.i, label %for.cond608.preheader.split.i, !llvm.loop !40

for.inc791.i:                                     ; preds = %for.inc788.i
  %inc792.i = add nuw nsw i32 %t2.593.i, 1
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 32
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 32
  %exitcond208.not.i = icmp eq i32 %inc792.i, 50
  br i1 %exitcond208.not.i, label %kernel_3mm.exit, label %for.cond589.preheader.i, !llvm.loop !41

kernel_3mm.exit:                                  ; preds = %for.inc791.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_3mm.exit
  %191 = load i8*, i8** %argv, align 8, !tbaa !42
  %strcmpload = load i8, i8* %191, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %193 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %192) #9
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %195 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i60 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i62, %if.end.i ]
  %196 = add nuw nsw i64 %indvars.iv.i60, %195
  %197 = trunc i64 %196 to i32
  %rem.i61 = urem i32 %197, 20
  %cmp5.i = icmp eq i32 %rem.i61, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %198) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %arrayidx8.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay16, i64 %indvars.iv4.i, i64 %indvars.iv.i60
  %200 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %200) #9
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i60, 1
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, 2200
  br i1 %exitcond.not.i63, label %for.inc10.i, label %for.body4.i, !llvm.loop !44

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !45

print_array.exit:                                 ; preds = %for.inc10.i
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !42
  %203 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %202) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_3mm.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i50) #8
  tail call void @free(i8* %call.i51) #8
  tail call void @free(i8* %call.i52) #8
  tail call void @free(i8* %call.i53) #8
  tail call void @free(i8* %call.i54) #8
  tail call void @free(i8* %call.i55) #8
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
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !7, !22, !20}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7, !20}
!31 = distinct !{!31, !7, !22, !20}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7, !20}
!36 = distinct !{!36, !7, !22, !20}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !4, i64 0}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
