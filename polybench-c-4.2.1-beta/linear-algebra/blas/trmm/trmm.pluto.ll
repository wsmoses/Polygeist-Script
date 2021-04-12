; ModuleID = 'trmm.pluto.c'
source_filename = "trmm.pluto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #7
  %call.i20 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %arraydecay = bitcast i8* %call.i to [2000 x double]*
  %arraydecay2 = bitcast i8* %call.i20 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %entry
  %indvars.iv10.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i, %for.inc27.i ]
  %cmp21.not.i = icmp eq i64 %indvars.iv10.i, 0
  br i1 %cmp21.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %0 = add nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv10.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body3.i, %for.cond1.preheader.i
  %arrayidx10.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv10.i
  store double 1.000000e+00, double* %arrayidx10.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv10.i, 2600
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %for.body14.i ]
  %3 = sub nuw nsw i64 %2, %indvars.iv6.i
  %4 = trunc i64 %3 to i32
  %rem16.urem.i = urem i32 %4, 2600
  %conv17.i = sitofp i32 %rem16.urem.i to double
  %div19.i = fdiv double %conv17.i, 2.600000e+03
  %arrayidx23.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 2600
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body14.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body14.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, 2000
  br i1 %exitcond13.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #7
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.inc142.i, %init_array.exit
  %indvar = phi i64 [ %indvar.next, %for.inc142.i ], [ 0, %init_array.exit ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc142.i ], [ 31, %init_array.exit ]
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i23, %for.inc142.i ], [ 0, %init_array.exit ]
  %t2.013.i = phi i32 [ %inc143.i, %for.inc142.i ], [ 0, %init_array.exit ]
  %5 = mul nsw i64 %indvar, -32
  %6 = or i64 %5, 1
  %indvar.tr = trunc i64 %indvar to i32
  %7 = shl i32 %indvar.tr, 5
  %8 = or i32 %7, 31
  %umin50 = call i32 @llvm.umin.i32(i32 %8, i32 2599)
  %9 = zext i32 %umin50 to i64
  %10 = add i64 %6, %9
  %11 = shl nuw nsw i64 %indvar, 8
  %12 = or i64 %11, 8
  %13 = mul nsw i64 %indvar, -32
  %indvar.tr74 = trunc i64 %indvar to i32
  %14 = shl i32 %indvar.tr74, 5
  %15 = or i32 %14, 31
  %umin42 = call i32 @llvm.umin.i32(i32 %15, i32 2599)
  %16 = zext i32 %umin42 to i64
  %17 = add i64 %13, %16
  %18 = shl nsw i64 %17, 3
  %19 = add i64 %12, %18
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 2599)
  %narrow = add nuw nsw i32 %umin, 1
  %20 = zext i32 %narrow to i64
  %mul103.i = shl nsw i32 %t2.013.i, 5
  %add107.i = or i32 %mul103.i, 31
  %21 = icmp ult i32 %add107.i, 2599
  %cond115.i = select i1 %21, i32 %add107.i, i32 2599
  %cmp116.not1.i = icmp ugt i32 %mul103.i, %cond115.i
  br i1 %cmp116.not1.i, label %for.inc142.i, label %for.body45.lr.ph.i.preheader

for.body45.lr.ph.i.preheader:                     ; preds = %for.cond12.preheader.i
  %22 = add i64 %12, %18
  %min.iters.check = icmp eq i64 %10, 0
  br label %for.body45.lr.ph.i

for.body45.lr.ph.i:                               ; preds = %for.body45.lr.ph.i.preheader, %for.inc139.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.inc139.i ], [ 0, %for.body45.lr.ph.i.preheader ]
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.inc139.i ], [ 0, %for.body45.lr.ph.i.preheader ]
  %indvars.iv31.i = phi i32 [ %indvars.iv.next32.i, %for.inc139.i ], [ 1, %for.body45.lr.ph.i.preheader ]
  %indvars.iv27.i = phi i32 [ %indvars.iv.next28.i, %for.inc139.i ], [ 0, %for.body45.lr.ph.i.preheader ]
  %t3.010.i = phi i32 [ %inc140.i, %for.inc139.i ], [ 0, %for.body45.lr.ph.i.preheader ]
  %23 = mul nuw nsw i64 %indvars.iv41.i, 665600
  %24 = add i64 %11, %23
  %25 = add i64 %19, %23
  %26 = shl nuw nsw i64 %indvars.iv41.i, 5
  %27 = trunc i64 %26 to i32
  %28 = or i64 %26, 1
  %mul.i = shl nsw i32 %t3.010.i, 5
  %add49.i = or i32 %mul.i, 31
  %29 = icmp ult i32 %add49.i, 1998
  %cond57.i = select i1 %29, i32 %add49.i, i32 1998
  %30 = zext i32 %cond57.i to i64
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.inc136.i, %for.body45.lr.ph.i
  %indvar44 = phi i32 [ %indvar.next45, %for.inc136.i ], [ 0, %for.body45.lr.ph.i ]
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.inc136.i ], [ %indvars.iv41.i, %for.body45.lr.ph.i ]
  %indvars.iv29.i = phi i32 [ %indvars.iv.next30.i, %for.inc136.i ], [ %indvars.iv27.i, %for.body45.lr.ph.i ]
  %31 = shl i32 %indvar44, 5
  %32 = add i32 %31, %27
  %33 = shl nsw i64 %indvars.iv43.i, 5
  %34 = or i64 %33, 30
  %cmp60.i = icmp ugt i64 %34, %30
  %35 = trunc i64 %34 to i32
  %cond77.i = select i1 %cmp60.i, i32 %cond57.i, i32 %35
  %cmp78.not6.i = icmp ugt i32 %mul.i, %cond77.i
  br i1 %cmp78.not6.i, label %for.inc136.i, label %for.body79.lr.ph.i

for.body79.lr.ph.i:                               ; preds = %for.body45.i
  %36 = or i64 %33, 31
  %37 = icmp ult i64 %36, 1999
  %cond10060.i = select i1 %37, i64 %36, i64 1999
  %38 = trunc i64 %cond10060.i to i32
  %39 = zext i32 %cond77.i to i64
  br label %for.body79.i

for.cond46.loopexit.i:                            ; preds = %for.cond104.for.inc130_crit_edge.i, %for.body79.i
  %indvars.iv.next34.i = add nuw nsw i32 %indvars.iv33.i, 1
  %exitcond29.not = icmp eq i64 %indvars.iv39.i, %39
  %indvar.next41 = add i64 %indvar40, 1
  br i1 %exitcond29.not, label %for.inc136.i, label %for.body79.i, !llvm.loop !10

for.body79.i:                                     ; preds = %for.cond46.loopexit.i, %for.body79.lr.ph.i
  %indvar40 = phi i64 [ %indvar.next41, %for.cond46.loopexit.i ], [ 0, %for.body79.lr.ph.i ]
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.cond46.loopexit.i ], [ %indvars.iv37.i, %for.body79.lr.ph.i ]
  %indvars.iv33.i = phi i32 [ %indvars.iv.next34.i, %for.cond46.loopexit.i ], [ %indvars.iv31.i, %for.body79.lr.ph.i ]
  %40 = mul i64 %indvar40, 20800
  %41 = add i64 %24, %40
  %scevgep = getelementptr i8, i8* %call.i20, i64 %41
  %42 = add i64 %25, %40
  %scevgep43 = getelementptr i8, i8* %call.i20, i64 %42
  %43 = add i64 %28, %indvar40
  %44 = trunc i64 %43 to i32
  %umax = call i32 @llvm.umax.i32(i32 %32, i32 %44)
  %45 = zext i32 %umax to i64
  %46 = mul nuw nsw i64 %45, 20800
  %47 = add nuw nsw i64 %11, %46
  %48 = add i64 %22, %46
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %cmp82.i = icmp ugt i64 %33, %indvars.iv.next40.i
  %cond88.v.i = select i1 %cmp82.i, i64 %33, i64 %indvars.iv.next40.i
  %cond88.i = trunc i64 %cond88.v.i to i32
  %cmp101.not3.i = icmp sgt i32 %cond88.i, %38
  br i1 %cmp101.not3.i, label %for.cond46.loopexit.i, label %for.body102.lr.ph.i

for.body102.lr.ph.i:                              ; preds = %for.body79.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %indvars.iv29.i, i32 %indvars.iv33.i) #7
  %49 = zext i32 %umax.i to i64
  br label %for.body102.i

for.body102.i:                                    ; preds = %for.cond104.for.inc130_crit_edge.i, %for.body102.lr.ph.i
  %indvar46 = phi i64 [ %indvar.next47, %for.cond104.for.inc130_crit_edge.i ], [ 0, %for.body102.lr.ph.i ]
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.cond104.for.inc130_crit_edge.i ], [ %49, %for.body102.lr.ph.i ]
  %50 = mul nuw nsw i64 %indvar46, 20800
  %arrayidx119.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv35.i, i64 %indvars.iv39.i
  %51 = load double, double* %arrayidx119.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body117.i.preheader.new, label %vector.memcheck

for.body117.i.preheader.new:                      ; preds = %for.body102.i, %vector.memcheck
  br label %for.body117.i

vector.memcheck:                                  ; preds = %for.body102.i
  %52 = add i64 %48, %50
  %scevgep49 = getelementptr i8, i8* %call.i20, i64 %52
  %53 = add i64 %47, %50
  %scevgep48 = getelementptr i8, i8* %call.i20, i64 %53
  %bound0 = icmp ult i8* %scevgep, %scevgep49
  %bound1 = icmp ult i8* %scevgep48, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body117.i.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %51, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %51, i32 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv.i21, %index
  %54 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv35.i, i64 %offset.idx
  %55 = bitcast double* %54 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %55, align 8, !tbaa !2, !alias.scope !11
  %56 = getelementptr inbounds double, double* %54, i64 2
  %57 = bitcast double* %56 to <2 x double>*
  %wide.load51 = load <2 x double>, <2 x double>* %57, align 8, !tbaa !2, !alias.scope !11
  %58 = fmul <2 x double> %broadcast.splat, %wide.load
  %59 = fmul <2 x double> %broadcast.splat53, %wide.load51
  %60 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv39.i, i64 %offset.idx
  %61 = bitcast double* %60 to <2 x double>*
  %wide.load54 = load <2 x double>, <2 x double>* %61, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %62 = getelementptr inbounds double, double* %60, i64 2
  %63 = bitcast double* %62 to <2 x double>*
  %wide.load55 = load <2 x double>, <2 x double>* %63, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %64 = fadd <2 x double> %wide.load54, %58
  %65 = fadd <2 x double> %wide.load55, %59
  %66 = bitcast double* %60 to <2 x double>*
  store <2 x double> %64, <2 x double>* %66, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %67 = bitcast double* %62 to <2 x double>*
  store <2 x double> %65, <2 x double>* %67, align 8, !tbaa !2, !alias.scope !14, !noalias !11
  %index.next = add i64 %index, 4
  %68 = icmp eq i64 %index.next, %10
  br i1 %68, label %for.cond104.for.inc130_crit_edge.i, label %vector.body, !llvm.loop !16

for.body117.i:                                    ; preds = %for.body117.i, %for.body117.i.preheader.new
  %indvars.iv25.i = phi i64 [ %indvars.iv.i21, %for.body117.i.preheader.new ], [ %indvars.iv.next26.i.1, %for.body117.i ]
  %arrayidx123.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv35.i, i64 %indvars.iv25.i
  %69 = load double, double* %arrayidx123.i, align 8, !tbaa !2
  %mul124.i = fmul double %51, %69
  %arrayidx128.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv39.i, i64 %indvars.iv25.i
  %70 = load double, double* %arrayidx128.i, align 8, !tbaa !2
  %add129.i = fadd double %70, %mul124.i
  store double %add129.i, double* %arrayidx128.i, align 8, !tbaa !2
  %indvars.iv.next26.i = or i64 %indvars.iv25.i, 1
  %arrayidx123.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv35.i, i64 %indvars.iv.next26.i
  %71 = load double, double* %arrayidx123.i.1, align 8, !tbaa !2
  %mul124.i.1 = fmul double %51, %71
  %arrayidx128.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv39.i, i64 %indvars.iv.next26.i
  %72 = load double, double* %arrayidx128.i.1, align 8, !tbaa !2
  %add129.i.1 = fadd double %72, %mul124.i.1
  store double %add129.i.1, double* %arrayidx128.i.1, align 8, !tbaa !2
  %indvars.iv.next26.i.1 = add nuw nsw i64 %indvars.iv25.i, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next26.i.1, %20
  br i1 %exitcond.not.1, label %for.cond104.for.inc130_crit_edge.i, label %for.body117.i, !llvm.loop !18

for.cond104.for.inc130_crit_edge.i:               ; preds = %vector.body, %for.body117.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %cmp101.not.not.i = icmp ult i64 %indvars.iv35.i, %cond10060.i
  %indvar.next47 = add i64 %indvar46, 1
  br i1 %cmp101.not.not.i, label %for.body102.i, label %for.cond46.loopexit.i, !llvm.loop !19

for.inc136.i:                                     ; preds = %for.cond46.loopexit.i, %for.body45.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %indvars.iv.next30.i = add nuw nsw i32 %indvars.iv29.i, 32
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next44.i, 63
  %indvar.next45 = add i32 %indvar44, 1
  br i1 %exitcond.not.i22, label %for.inc139.i, label %for.body45.i, !llvm.loop !20

for.inc139.i:                                     ; preds = %for.inc136.i
  %inc140.i = add nuw nsw i32 %t3.010.i, 1
  %indvars.iv.next28.i = add nuw nsw i32 %indvars.iv27.i, 32
  %indvars.iv.next32.i = add nuw nsw i32 %indvars.iv31.i, 32
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 32
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next42.i, 63
  br i1 %exitcond48.not.i, label %for.inc142.i, label %for.body45.lr.ph.i, !llvm.loop !21

for.inc142.i:                                     ; preds = %for.inc139.i, %for.cond12.preheader.i
  %inc143.i = add nuw nsw i32 %t2.013.i, 1
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i21, 32
  %exitcond49.not.i = icmp eq i32 %inc143.i, 82
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond49.not.i, label %for.cond162.preheader.i, label %for.cond12.preheader.i, !llvm.loop !22

for.cond162.preheader.i:                          ; preds = %for.inc142.i, %for.inc227.i
  %indvars.iv34 = phi i32 [ %indvars.iv.next35, %for.inc227.i ], [ 31, %for.inc142.i ]
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.inc227.i ], [ 0, %for.inc142.i ]
  %t2.121.i = phi i32 [ %inc228.i, %for.inc227.i ], [ 0, %for.inc142.i ]
  %umin36 = call i32 @llvm.umin.i32(i32 %indvars.iv34, i32 1999)
  %narrow38 = add nuw nsw i32 %umin36, 1
  %73 = zext i32 %narrow38 to i64
  %mul179.i = shl nsw i32 %t2.121.i, 5
  %add183.i = or i32 %mul179.i, 31
  %74 = icmp ult i32 %add183.i, 1999
  %cond191.i = select i1 %74, i32 %add183.i, i32 1999
  %cmp192.not16.i = icmp ugt i32 %mul179.i, %cond191.i
  br i1 %cmp192.not16.i, label %for.inc227.i, label %for.body178.i

for.body178.i:                                    ; preds = %for.cond162.preheader.i, %for.cond180.for.inc224_crit_edge.i
  %indvar59 = phi i64 [ %indvar.next60, %for.cond180.for.inc224_crit_edge.i ], [ 0, %for.cond162.preheader.i ]
  %indvars.iv30 = phi i32 [ %indvars.iv.next31, %for.cond180.for.inc224_crit_edge.i ], [ 31, %for.cond162.preheader.i ]
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %for.cond180.for.inc224_crit_edge.i ], [ 0, %for.cond162.preheader.i ]
  %t3.119.i = phi i32 [ %inc225.i, %for.cond180.for.inc224_crit_edge.i ], [ 0, %for.cond162.preheader.i ]
  %75 = mul nsw i64 %indvar59, -32
  %76 = or i64 %75, 1
  %indvar59.tr = trunc i64 %indvar59 to i32
  %77 = shl i32 %indvar59.tr, 5
  %78 = or i32 %77, 31
  %umin61 = call i32 @llvm.umin.i32(i32 %78, i32 2599)
  %79 = zext i32 %umin61 to i64
  %80 = add i64 %76, %79
  %umin32 = call i32 @llvm.umin.i32(i32 %indvars.iv30, i32 2599)
  %narrow39 = add nuw nsw i32 %umin32, 1
  %81 = zext i32 %narrow39 to i64
  %mul194.i = shl nsw i32 %t3.119.i, 5
  %add198.i = or i32 %mul194.i, 31
  %82 = icmp ult i32 %add198.i, 2599
  %cond206.i = select i1 %82, i32 %add198.i, i32 2599
  %cmp207.not14.i = icmp ugt i32 %mul194.i, %cond206.i
  br i1 %cmp207.not14.i, label %for.cond180.for.inc224_crit_edge.i, label %for.body193.i.preheader

for.body193.i.preheader:                          ; preds = %for.body178.i
  %min.iters.check62 = icmp eq i64 %80, 0
  br label %for.body193.i

for.body193.i:                                    ; preds = %for.body193.i.preheader, %for.cond195.for.inc221_crit_edge.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.cond195.for.inc221_crit_edge.i ], [ %indvars.iv54.i, %for.body193.i.preheader ]
  br i1 %min.iters.check62, label %for.body208.i, label %vector.body58

vector.body58:                                    ; preds = %for.body193.i, %vector.body58
  %index66 = phi i64 [ %index.next67, %vector.body58 ], [ 0, %for.body193.i ]
  %offset.idx71 = add i64 %indvars.iv50.i, %index66
  %83 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv56.i, i64 %offset.idx71
  %84 = bitcast double* %83 to <2 x double>*
  %wide.load72 = load <2 x double>, <2 x double>* %84, align 8, !tbaa !2
  %85 = getelementptr inbounds double, double* %83, i64 2
  %86 = bitcast double* %85 to <2 x double>*
  %wide.load73 = load <2 x double>, <2 x double>* %86, align 8, !tbaa !2
  %87 = fmul <2 x double> %wide.load72, <double 1.500000e+00, double 1.500000e+00>
  %88 = fmul <2 x double> %wide.load73, <double 1.500000e+00, double 1.500000e+00>
  %89 = bitcast double* %83 to <2 x double>*
  store <2 x double> %87, <2 x double>* %89, align 8, !tbaa !2
  %90 = bitcast double* %85 to <2 x double>*
  store <2 x double> %88, <2 x double>* %90, align 8, !tbaa !2
  %index.next67 = add i64 %index66, 4
  %91 = icmp eq i64 %index.next67, %80
  br i1 %91, label %for.cond195.for.inc221_crit_edge.i, label %vector.body58, !llvm.loop !23

for.body208.i:                                    ; preds = %for.body193.i, %for.body208.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.body208.i ], [ %indvars.iv50.i, %for.body193.i ]
  %arrayidx212.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv56.i, i64 %indvars.iv52.i
  %92 = load double, double* %arrayidx212.i, align 8, !tbaa !2
  %mul213.i = fmul double %92, 1.500000e+00
  store double %mul213.i, double* %arrayidx212.i, align 8, !tbaa !2
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next53.i, %81
  br i1 %exitcond33.not, label %for.cond195.for.inc221_crit_edge.i, label %for.body208.i, !llvm.loop !24

for.cond195.for.inc221_crit_edge.i:               ; preds = %vector.body58, %for.body208.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next57.i, %73
  br i1 %exitcond37.not, label %for.cond180.for.inc224_crit_edge.i, label %for.body193.i, !llvm.loop !26

for.cond180.for.inc224_crit_edge.i:               ; preds = %for.cond195.for.inc221_crit_edge.i, %for.body178.i
  %inc225.i = add nuw nsw i32 %t3.119.i, 1
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 32
  %exitcond58.not.i = icmp eq i32 %inc225.i, 82
  %indvars.iv.next31 = add nuw nsw i32 %indvars.iv30, 32
  %indvar.next60 = add i64 %indvar59, 1
  br i1 %exitcond58.not.i, label %for.inc227.i, label %for.body178.i, !llvm.loop !27

for.inc227.i:                                     ; preds = %for.cond180.for.inc224_crit_edge.i, %for.cond162.preheader.i
  %inc228.i = add nuw nsw i32 %t2.121.i, 1
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 32
  %exitcond59.not.i = icmp eq i32 %inc228.i, 63
  %indvars.iv.next35 = add nuw nsw i32 %indvars.iv34, 32
  br i1 %exitcond59.not.i, label %kernel_trmm.exit, label %for.cond162.preheader.i, !llvm.loop !28

kernel_trmm.exit:                                 ; preds = %for.inc227.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trmm.exit
  %93 = load i8*, i8** %argv, align 8, !tbaa !29
  %strcmpload = load i8, i8* %93, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %95 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %94) #8
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %97 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i24 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i26, %if.end.i ]
  %98 = add nuw nsw i64 %indvars.iv.i24, %97
  %99 = trunc i64 %98 to i32
  %rem.i25 = urem i32 %99, 20
  %cmp5.i = icmp eq i32 %rem.i25, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %100) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv4.i, i64 %indvars.iv.i24
  %102 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %102) #8
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i24, 1
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, 2600
  br i1 %exitcond.not.i27, label %for.inc10.i, label %for.body4.i, !llvm.loop !31

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !32

print_array.exit:                                 ; preds = %for.inc10.i
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !29
  %105 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %104) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trmm.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i20) #7
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
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !7, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !7, !17}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7, !17}
!24 = distinct !{!24, !7, !25, !17}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !4, i64 0}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
