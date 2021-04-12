; ModuleID = 'bicg.plutopar.c'
source_filename = "bicg.plutopar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i36 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #8
  %call.i37 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %call.i38 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #8
  %call.i39 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %arraydecay = bitcast i8* %call.i to [1800 x double]*
  %arraydecay6 = bitcast i8* %call.i38 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i.1, %for.body.i ]
  %rem.lhs.trunc.i = trunc i32 %i.03.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 1800
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 1.800000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %0 = trunc i32 %i.03.i to i16
  %rem.lhs.trunc.i.1 = or i16 %0, 1
  %rem1.i.1 = urem i16 %rem.lhs.trunc.i.1, 1800
  %conv.i.1 = uitofp i16 %rem1.i.1 to double
  %div.i.1 = fdiv double %conv.i.1, 1.800000e+03
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i
  store double %div.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %inc.i.1 = add nuw nsw i32 %i.03.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 1800
  br i1 %exitcond.not.i.1, label %for.body5.i.preheader, label %for.body.i, !llvm.loop !6

for.body5.i.preheader:                            ; preds = %for.body.i
  %arraydecay5 = bitcast i8* %call.i39 to double*
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.preheader, %for.inc27.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc27.i ], [ 0, %for.body5.i.preheader ]
  %i.15.i = phi i32 [ %inc28.i, %for.inc27.i ], [ 0, %for.body5.i.preheader ]
  %rem6.lhs.trunc.i = trunc i32 %i.15.i to i16
  %rem62.i = urem i16 %rem6.lhs.trunc.i, 2200
  %conv7.i = uitofp i16 %rem62.i to double
  %div9.i = fdiv double %conv7.i, 2.200000e+03
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv10.i
  store double %div9.i, double* %arrayidx11.i, align 8, !tbaa !2
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body5.i
  %indvars.iv6.i = phi i64 [ 0, %for.body5.i ], [ %indvars.iv.next7.i, %for.body15.i ]
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %1 = mul nuw nsw i64 %indvars.iv.next7.i, %indvars.iv10.i
  %2 = trunc i64 %1 to i32
  %rem16.i = urem i32 %2, 2200
  %conv17.i = sitofp i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.200000e+03
  %arrayidx23.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 1800
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body15.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body15.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %inc28.i = add nuw nsw i32 %i.15.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i, 2200
  br i1 %exitcond12.not.i, label %init_array.exit, label %for.body5.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #8
  %arraydecay9 = bitcast i8* %call.i37 to double*
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.inc22.i, %init_array.exit
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %for.inc22.i ]
  %t2.03.i = phi i32 [ 0, %init_array.exit ], [ %inc23.i, %for.inc22.i ]
  %3 = shl nuw nsw i64 %indvar.i, 5
  %mul.i = shl nuw nsw i32 %t2.03.i, 5
  %add11.i = or i32 %mul.i, 31
  %4 = icmp ult i32 %add11.i, 2199
  %cond19.i = select i1 %4, i32 %add11.i, i32 2199
  %cmp20.not1.i = icmp ugt i32 %mul.i, %cond19.i
  br i1 %cmp20.not1.i, label %for.inc22.i, label %for.body21.preheader.i

for.body21.preheader.i:                           ; preds = %for.body.i40
  %5 = trunc i64 %3 to i32
  %6 = or i32 %5, 31
  %umin.i = tail call i32 @llvm.umin.i32(i32 %6, i32 2199) #8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %umin.i, i32 %5) #8
  %7 = trunc i64 %indvar.i to i32
  %8 = mul i32 %7, -32
  %9 = add i32 %smax.i, %8
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = add nuw nsw i64 %11, 8
  %scevgep.i = getelementptr double, double* %arraydecay9, i64 %3
  %scevgep25.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep25.i, i8 0, i64 %12, i1 false) #8
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.body21.preheader.i, %for.body.i40
  %inc23.i = add nuw nsw i32 %t2.03.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond.not.i41 = icmp eq i64 %indvar.next.i, 69
  br i1 %exitcond.not.i41, label %for.cond43.preheader.i, label %for.body.i40, !llvm.loop !10

for.cond43.preheader.i:                           ; preds = %for.inc22.i, %for.inc111.i
  %indvars.iv54 = phi i32 [ %indvars.iv.next55, %for.inc111.i ], [ 31, %for.inc22.i ]
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.inc111.i ], [ 0, %for.inc22.i ]
  %t2.111.i = phi i32 [ %inc112.i, %for.inc111.i ], [ 0, %for.inc22.i ]
  %umin56 = call i32 @llvm.umin.i32(i32 %indvars.iv54, i32 2199)
  %narrow = add nuw nsw i32 %umin56, 1
  %13 = zext i32 %narrow to i64
  %mul60.i = shl nsw i32 %t2.111.i, 5
  %add64.i = or i32 %mul60.i, 31
  %14 = icmp ult i32 %add64.i, 2199
  %cond72.i = select i1 %14, i32 %add64.i, i32 2199
  %cmp73.not6.i = icmp ugt i32 %mul60.i, %cond72.i
  br i1 %cmp73.not6.i, label %for.inc111.i, label %for.body59.i

for.body59.i:                                     ; preds = %for.cond43.preheader.i, %for.cond61.for.inc108_crit_edge.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond61.for.inc108_crit_edge.i ], [ 31, %for.cond43.preheader.i ]
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %t3.19.i = phi i32 [ %inc109.i, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 1799)
  %narrow66 = add nuw nsw i32 %umin, 1
  %15 = zext i32 %narrow66 to i64
  %mul75.i = shl nsw i32 %t3.19.i, 5
  %add79.i = or i32 %mul75.i, 31
  %16 = icmp ult i32 %add79.i, 1799
  %cond87.i = select i1 %16, i32 %add79.i, i32 1799
  %cmp88.not4.i = icmp ugt i32 %mul75.i, %cond87.i
  br i1 %cmp88.not4.i, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i

for.body74.i:                                     ; preds = %for.body59.i, %for.cond76.for.inc105_crit_edge.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.cond76.for.inc105_crit_edge.i ], [ %indvars.iv30.i, %for.body59.i ]
  %arrayidx91.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv32.i
  %.pre.i = load double, double* %arrayidx91.i, align 8, !tbaa !2
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.body89.i, %for.body74.i
  %17 = phi double [ %.pre.i, %for.body74.i ], [ %add99.i.3, %for.body89.i ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.i42, %for.body74.i ], [ %indvars.iv.next29.i.3, %for.body89.i ]
  %arrayidx95.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv28.i
  %18 = load double, double* %arrayidx95.i, align 8, !tbaa !2
  %arrayidx97.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv28.i
  %19 = load double, double* %arrayidx97.i, align 8, !tbaa !2
  %mul98.i = fmul double %18, %19
  %add99.i = fadd double %17, %mul98.i
  %indvars.iv.next29.i = or i64 %indvars.iv28.i, 1
  %arrayidx95.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i
  %20 = load double, double* %arrayidx95.i.1, align 8, !tbaa !2
  %arrayidx97.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next29.i
  %21 = load double, double* %arrayidx97.i.1, align 8, !tbaa !2
  %mul98.i.1 = fmul double %20, %21
  %add99.i.1 = fadd double %add99.i, %mul98.i.1
  %indvars.iv.next29.i.1 = or i64 %indvars.iv28.i, 2
  %arrayidx95.i.2 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i.1
  %22 = load double, double* %arrayidx95.i.2, align 8, !tbaa !2
  %arrayidx97.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next29.i.1
  %23 = load double, double* %arrayidx97.i.2, align 8, !tbaa !2
  %mul98.i.2 = fmul double %22, %23
  %add99.i.2 = fadd double %add99.i.1, %mul98.i.2
  %indvars.iv.next29.i.2 = or i64 %indvars.iv28.i, 3
  %arrayidx95.i.3 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i.2
  %24 = load double, double* %arrayidx95.i.3, align 8, !tbaa !2
  %arrayidx97.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next29.i.2
  %25 = load double, double* %arrayidx97.i.3, align 8, !tbaa !2
  %mul98.i.3 = fmul double %24, %25
  %add99.i.3 = fadd double %add99.i.2, %mul98.i.3
  %indvars.iv.next29.i.3 = add nuw nsw i64 %indvars.iv28.i, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next29.i.3, %15
  br i1 %exitcond.not.3, label %for.cond76.for.inc105_crit_edge.i, label %for.body89.i, !llvm.loop !11

for.cond76.for.inc105_crit_edge.i:                ; preds = %for.body89.i
  store double %add99.i.3, double* %arrayidx91.i, align 8, !tbaa !2
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next33.i, %13
  br i1 %exitcond57.not, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i, !llvm.loop !12

for.cond61.for.inc108_crit_edge.i:                ; preds = %for.cond76.for.inc105_crit_edge.i, %for.body59.i
  %inc109.i = add nuw nsw i32 %t3.19.i, 1
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 32
  %exitcond34.not.i = icmp eq i32 %inc109.i, 57
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  br i1 %exitcond34.not.i, label %for.inc111.i, label %for.body59.i, !llvm.loop !13

for.inc111.i:                                     ; preds = %for.cond61.for.inc108_crit_edge.i, %for.cond43.preheader.i
  %inc112.i = add nuw nsw i32 %t2.111.i, 1
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 32
  %exitcond35.not.i = icmp eq i32 %inc112.i, 69
  %indvars.iv.next55 = add nuw nsw i32 %indvars.iv54, 32
  br i1 %exitcond35.not.i, label %for.body130.i.preheader, label %for.cond43.preheader.i, !llvm.loop !14

for.body130.i.preheader:                          ; preds = %for.inc111.i
  %arraydecay8 = bitcast i8* %call.i36 to double*
  br label %for.body130.i

for.body130.i:                                    ; preds = %for.body130.i.preheader, %for.inc151.i
  %indvar36.i = phi i64 [ %indvar.next37.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %t2.214.i = phi i32 [ %inc152.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %26 = shl nuw nsw i64 %indvar36.i, 5
  %mul131.i = shl nuw nsw i32 %t2.214.i, 5
  %add135.i = or i32 %mul131.i, 31
  %27 = icmp ult i32 %add135.i, 1799
  %cond143.i = select i1 %27, i32 %add135.i, i32 1799
  %cmp144.not12.i = icmp ugt i32 %mul131.i, %cond143.i
  br i1 %cmp144.not12.i, label %for.inc151.i, label %for.body145.preheader.i

for.body145.preheader.i:                          ; preds = %for.body130.i
  %28 = trunc i64 %26 to i32
  %29 = or i32 %28, 31
  %umin40.i = tail call i32 @llvm.umin.i32(i32 %29, i32 1799) #8
  %smax41.i = tail call i32 @llvm.smax.i32(i32 %umin40.i, i32 %28) #8
  %30 = trunc i64 %indvar36.i to i32
  %31 = mul i32 %30, -32
  %32 = add i32 %smax41.i, %31
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = add nuw nsw i64 %34, 8
  %scevgep38.i = getelementptr double, double* %arraydecay8, i64 %26
  %scevgep3839.i = bitcast double* %scevgep38.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep3839.i, i8 0, i64 %35, i1 false) #8
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.body145.preheader.i, %for.body130.i
  %inc152.i = add nuw nsw i32 %t2.214.i, 1
  %indvar.next37.i = add nuw nsw i64 %indvar36.i, 1
  %exitcond46.not.i = icmp eq i64 %indvar.next37.i, 57
  br i1 %exitcond46.not.i, label %for.cond173.preheader.i, label %for.body130.i, !llvm.loop !15

for.cond173.preheader.i:                          ; preds = %for.inc151.i, %for.inc241.i
  %indvar = phi i64 [ %indvar.next, %for.inc241.i ], [ 0, %for.inc151.i ]
  %indvars.iv58 = phi i32 [ %indvars.iv.next59, %for.inc241.i ], [ 31, %for.inc151.i ]
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.inc241.i ], [ 0, %for.inc151.i ]
  %t2.321.i = phi i32 [ %inc242.i, %for.inc241.i ], [ 0, %for.inc151.i ]
  %36 = mul nsw i64 %indvar, -32
  %37 = or i64 %36, 1
  %indvar.tr = trunc i64 %indvar to i32
  %38 = shl i32 %indvar.tr, 5
  %39 = or i32 %38, 31
  %umin69 = call i32 @llvm.umin.i32(i32 %39, i32 1799)
  %40 = zext i32 %umin69 to i64
  %41 = add i64 %37, %40
  %umin60 = call i32 @llvm.umin.i32(i32 %indvars.iv58, i32 1799)
  %narrow67 = add nuw nsw i32 %umin60, 1
  %42 = zext i32 %narrow67 to i64
  %mul205.i = shl nsw i32 %t2.321.i, 5
  %add209.i = or i32 %mul205.i, 31
  %43 = icmp ult i32 %add209.i, 1799
  %cond217.i = select i1 %43, i32 %add209.i, i32 1799
  %cmp218.not15.i = icmp ugt i32 %mul205.i, %cond217.i
  br i1 %cmp218.not15.i, label %for.inc241.i, label %for.body189.i.preheader

for.body189.i.preheader:                          ; preds = %for.cond173.preheader.i
  %min.iters.check = icmp eq i64 %41, 0
  br label %for.body189.i

for.body189.i:                                    ; preds = %for.body189.i.preheader, %for.inc238.i
  %indvars.iv62 = phi i32 [ %indvars.iv.next63, %for.inc238.i ], [ 31, %for.body189.i.preheader ]
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.inc238.i ], [ 0, %for.body189.i.preheader ]
  %t3.320.i = phi i32 [ %inc239.i, %for.inc238.i ], [ 0, %for.body189.i.preheader ]
  %umin64 = call i32 @llvm.umin.i32(i32 %indvars.iv62, i32 2199)
  %narrow68 = add nuw nsw i32 %umin64, 1
  %44 = zext i32 %narrow68 to i64
  %mul190.i = shl nuw nsw i32 %t3.320.i, 5
  %add194.i = or i32 %mul190.i, 31
  %45 = icmp ult i32 %add194.i, 2199
  %cond202.i = select i1 %45, i32 %add194.i, i32 2199
  %cmp203.not17.i = icmp ugt i32 %mul190.i, %cond202.i
  br i1 %cmp203.not17.i, label %for.inc238.i, label %for.body204.i

for.body204.i:                                    ; preds = %for.body189.i, %for.cond206.for.inc235_crit_edge.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.cond206.for.inc235_crit_edge.i ], [ %indvars.iv51.i, %for.body189.i ]
  %arrayidx223.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv53.i
  %46 = load double, double* %arrayidx223.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body219.i, label %vector.ph

vector.ph:                                        ; preds = %for.body204.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %46, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %46, i32 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv47.i, %index
  %47 = getelementptr inbounds double, double* %arraydecay8, i64 %offset.idx
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %48, align 8, !tbaa !2
  %49 = getelementptr inbounds double, double* %47, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load70 = load <2 x double>, <2 x double>* %50, align 8, !tbaa !2
  %51 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %offset.idx
  %52 = bitcast double* %51 to <2 x double>*
  %wide.load71 = load <2 x double>, <2 x double>* %52, align 8, !tbaa !2
  %53 = getelementptr inbounds double, double* %51, i64 2
  %54 = bitcast double* %53 to <2 x double>*
  %wide.load72 = load <2 x double>, <2 x double>* %54, align 8, !tbaa !2
  %55 = fmul <2 x double> %broadcast.splat, %wide.load71
  %56 = fmul <2 x double> %broadcast.splat74, %wide.load72
  %57 = fadd <2 x double> %wide.load, %55
  %58 = fadd <2 x double> %wide.load70, %56
  %59 = bitcast double* %47 to <2 x double>*
  store <2 x double> %57, <2 x double>* %59, align 8, !tbaa !2
  %60 = bitcast double* %49 to <2 x double>*
  store <2 x double> %58, <2 x double>* %60, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %61 = icmp eq i64 %index.next, %41
  br i1 %61, label %for.cond206.for.inc235_crit_edge.i, label %vector.body, !llvm.loop !16

for.body219.i:                                    ; preds = %for.body204.i, %for.body219.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.body219.i ], [ %indvars.iv47.i, %for.body204.i ]
  %arrayidx221.i = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv49.i
  %62 = load double, double* %arrayidx221.i, align 8, !tbaa !2
  %arrayidx227.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv49.i
  %63 = load double, double* %arrayidx227.i, align 8, !tbaa !2
  %mul228.i = fmul double %46, %63
  %add229.i = fadd double %62, %mul228.i
  store double %add229.i, double* %arrayidx221.i, align 8, !tbaa !2
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next50.i, %42
  br i1 %exitcond61.not, label %for.cond206.for.inc235_crit_edge.i, label %for.body219.i, !llvm.loop !18

for.cond206.for.inc235_crit_edge.i:               ; preds = %vector.body, %for.body219.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next54.i, %44
  br i1 %exitcond65.not, label %for.inc238.i, label %for.body204.i, !llvm.loop !20

for.inc238.i:                                     ; preds = %for.cond206.for.inc235_crit_edge.i, %for.body189.i
  %inc239.i = add nuw nsw i32 %t3.320.i, 1
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 32
  %exitcond55.not.i = icmp eq i32 %inc239.i, 69
  %indvars.iv.next63 = add nuw nsw i32 %indvars.iv62, 32
  br i1 %exitcond55.not.i, label %for.inc241.i, label %for.body189.i, !llvm.loop !21

for.inc241.i:                                     ; preds = %for.inc238.i, %for.cond173.preheader.i
  %inc242.i = add nuw nsw i32 %t2.321.i, 1
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 32
  %exitcond56.not.i = icmp eq i32 %inc242.i, 57
  %indvars.iv.next59 = add nuw nsw i32 %indvars.iv58, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond56.not.i, label %kernel_bicg.exit, label %for.cond173.preheader.i, !llvm.loop !22

kernel_bicg.exit:                                 ; preds = %for.inc241.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %64 = load i8*, i8** %argv, align 8, !tbaa !23
  %strcmpload = load i8, i8* %64, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %66 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %65) #9
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i46

for.body.i46:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i44 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i48, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i49, %if.end.i ]
  %rem.lhs.trunc.i45 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i45, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i46
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %68) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i46
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %arrayidx.i47 = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.i44
  %70 = load double, double* %arrayidx.i47, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %70) #9
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i44, 1
  %inc.i49 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i48, 1800
  br i1 %exitcond.not.i50, label %for.end.i, label %for.body.i46, !llvm.loop !25

for.end.i:                                        ; preds = %if.end.i
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i51 = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i53, %if.end14.i ]
  %i.15.i52 = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i52 to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %73) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %arrayidx16.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i51
  %75 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %75) #9
  %indvars.iv.next7.i53 = add nuw nsw i64 %indvars.iv6.i51, 1
  %inc19.i = add nuw nsw i32 %i.15.i52, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i53, 2200
  br i1 %exitcond8.not.i, label %print_array.exit, label %for.body9.i, !llvm.loop !26

print_array.exit:                                 ; preds = %if.end14.i
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %77) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_bicg.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i36) #8
  tail call void @free(i8* %call.i37) #8
  tail call void @free(i8* %call.i38) #8
  tail call void @free(i8* %call.i39) #8
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
!16 = distinct !{!16, !7, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !7, !19, !17}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !4, i64 0}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
