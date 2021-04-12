; ModuleID = 'atax.pluto.c'
source_filename = "atax.pluto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i27 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %call.i28 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %call.i29 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #8
  %arraydecay4 = bitcast i8* %call.i27 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %0 = trunc i64 %indvars.iv.i to i32
  %conv2.i = sitofp i32 %0 to double
  %div.i = fdiv double %conv2.i, 2.200000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %1 = trunc i64 %indvars.iv.next.i to i32
  %conv2.i.1 = sitofp i32 %1 to double
  %div.i.1 = fdiv double %conv2.i.1, 2.200000e+03
  %add.i.1 = fadd double %div.i.1, 1.000000e+00
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i
  store double %add.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 2200
  br i1 %exitcond.not.i.1, label %for.cond7.preheader.i.preheader, label %for.body.i, !llvm.loop !6

for.cond7.preheader.i.preheader:                  ; preds = %for.body.i
  %arraydecay = bitcast i8* %call.i to [2200 x double]*
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i.preheader, %for.inc22.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %for.inc22.i ], [ 0, %for.cond7.preheader.i.preheader ]
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i, %for.cond7.preheader.i
  %indvars.iv4.i = phi i64 [ 0, %for.cond7.preheader.i ], [ %indvars.iv.next5.i, %for.body10.i ]
  %2 = add nuw nsw i64 %indvars.iv4.i, %indvars.iv8.i
  %3 = trunc i64 %2 to i32
  %rem.i = urem i32 %3, 2200
  %conv12.i = sitofp i32 %rem.i to double
  %div14.i = fdiv double %conv12.i, 9.000000e+03
  %arrayidx18.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv4.i
  store double %div14.i, double* %arrayidx18.i, align 8, !tbaa !2
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2200
  br i1 %exitcond7.not.i, label %for.inc22.i, label %for.body10.i, !llvm.loop !8

for.inc22.i:                                      ; preds = %for.body10.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 1800
  br i1 %exitcond10.not.i, label %init_array.exit, label %for.cond7.preheader.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc22.i
  tail call void (...) @polybench_timer_start() #8
  %arraydecay8 = bitcast i8* %call.i29 to double*
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.inc22.i32, %init_array.exit
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %for.inc22.i32 ]
  %t2.03.i = phi i32 [ 0, %init_array.exit ], [ %inc23.i, %for.inc22.i32 ]
  %4 = shl nuw nsw i64 %indvar.i, 5
  %mul.i = shl nuw nsw i32 %t2.03.i, 5
  %add11.i = or i32 %mul.i, 31
  %5 = icmp ult i32 %add11.i, 1799
  %cond19.i = select i1 %5, i32 %add11.i, i32 1799
  %cmp20.not1.i = icmp ugt i32 %mul.i, %cond19.i
  br i1 %cmp20.not1.i, label %for.inc22.i32, label %for.body21.preheader.i

for.body21.preheader.i:                           ; preds = %for.body.i30
  %6 = trunc i64 %4 to i32
  %7 = or i32 %6, 31
  %umin.i = tail call i32 @llvm.umin.i32(i32 %7, i32 1799) #8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %umin.i, i32 %6) #8
  %8 = trunc i64 %indvar.i to i32
  %9 = mul i32 %8, -32
  %10 = add i32 %smax.i, %9
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 8
  %scevgep.i = getelementptr double, double* %arraydecay8, i64 %4
  %scevgep25.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep25.i, i8 0, i64 %13, i1 false) #8
  br label %for.inc22.i32

for.inc22.i32:                                    ; preds = %for.body21.preheader.i, %for.body.i30
  %inc23.i = add nuw nsw i32 %t2.03.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond.not.i31 = icmp eq i64 %indvar.next.i, 57
  br i1 %exitcond.not.i31, label %for.cond43.preheader.i, label %for.body.i30, !llvm.loop !10

for.cond43.preheader.i:                           ; preds = %for.inc22.i32, %for.inc111.i
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %for.inc111.i ], [ 31, %for.inc22.i32 ]
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.inc111.i ], [ 0, %for.inc22.i32 ]
  %t2.111.i = phi i32 [ %inc112.i, %for.inc111.i ], [ 0, %for.inc22.i32 ]
  %umin42 = call i32 @llvm.umin.i32(i32 %indvars.iv40, i32 1799)
  %narrow = add nuw nsw i32 %umin42, 1
  %14 = zext i32 %narrow to i64
  %mul60.i = shl nsw i32 %t2.111.i, 5
  %add64.i = or i32 %mul60.i, 31
  %15 = icmp ult i32 %add64.i, 1799
  %cond72.i = select i1 %15, i32 %add64.i, i32 1799
  %cmp73.not6.i = icmp ugt i32 %mul60.i, %cond72.i
  br i1 %cmp73.not6.i, label %for.inc111.i, label %for.body59.i

for.body59.i:                                     ; preds = %for.cond43.preheader.i, %for.cond61.for.inc108_crit_edge.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond61.for.inc108_crit_edge.i ], [ 31, %for.cond43.preheader.i ]
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i34, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %t3.19.i = phi i32 [ %inc109.i, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 2199)
  %narrow52 = add nuw nsw i32 %umin, 1
  %16 = zext i32 %narrow52 to i64
  %mul75.i = shl nsw i32 %t3.19.i, 5
  %add79.i = or i32 %mul75.i, 31
  %17 = icmp ult i32 %add79.i, 2199
  %cond87.i = select i1 %17, i32 %add79.i, i32 2199
  %cmp88.not4.i = icmp ugt i32 %mul75.i, %cond87.i
  br i1 %cmp88.not4.i, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i

for.body74.i:                                     ; preds = %for.body59.i, %for.cond76.for.inc105_crit_edge.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.cond76.for.inc105_crit_edge.i ], [ %indvars.iv30.i, %for.body59.i ]
  %arrayidx91.i = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv32.i
  %.pre.i = load double, double* %arrayidx91.i, align 8, !tbaa !2
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.body89.i, %for.body74.i
  %18 = phi double [ %.pre.i, %for.body74.i ], [ %add99.i.3, %for.body89.i ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.i33, %for.body74.i ], [ %indvars.iv.next29.i.3, %for.body89.i ]
  %arrayidx95.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv28.i
  %19 = load double, double* %arrayidx95.i, align 8, !tbaa !2
  %arrayidx97.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv28.i
  %20 = load double, double* %arrayidx97.i, align 8, !tbaa !2
  %mul98.i = fmul double %19, %20
  %add99.i = fadd double %18, %mul98.i
  %indvars.iv.next29.i = or i64 %indvars.iv28.i, 1
  %arrayidx95.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i
  %21 = load double, double* %arrayidx95.i.1, align 8, !tbaa !2
  %arrayidx97.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next29.i
  %22 = load double, double* %arrayidx97.i.1, align 8, !tbaa !2
  %mul98.i.1 = fmul double %21, %22
  %add99.i.1 = fadd double %add99.i, %mul98.i.1
  %indvars.iv.next29.i.1 = or i64 %indvars.iv28.i, 2
  %arrayidx95.i.2 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i.1
  %23 = load double, double* %arrayidx95.i.2, align 8, !tbaa !2
  %arrayidx97.i.2 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next29.i.1
  %24 = load double, double* %arrayidx97.i.2, align 8, !tbaa !2
  %mul98.i.2 = fmul double %23, %24
  %add99.i.2 = fadd double %add99.i.1, %mul98.i.2
  %indvars.iv.next29.i.2 = or i64 %indvars.iv28.i, 3
  %arrayidx95.i.3 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv32.i, i64 %indvars.iv.next29.i.2
  %25 = load double, double* %arrayidx95.i.3, align 8, !tbaa !2
  %arrayidx97.i.3 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next29.i.2
  %26 = load double, double* %arrayidx97.i.3, align 8, !tbaa !2
  %mul98.i.3 = fmul double %25, %26
  %add99.i.3 = fadd double %add99.i.2, %mul98.i.3
  %indvars.iv.next29.i.3 = add nuw nsw i64 %indvars.iv28.i, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next29.i.3, %16
  br i1 %exitcond.not.3, label %for.cond76.for.inc105_crit_edge.i, label %for.body89.i, !llvm.loop !11

for.cond76.for.inc105_crit_edge.i:                ; preds = %for.body89.i
  store double %add99.i.3, double* %arrayidx91.i, align 8, !tbaa !2
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next33.i, %14
  br i1 %exitcond43.not, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i, !llvm.loop !12

for.cond61.for.inc108_crit_edge.i:                ; preds = %for.cond76.for.inc105_crit_edge.i, %for.body59.i
  %inc109.i = add nuw nsw i32 %t3.19.i, 1
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 32
  %exitcond34.not.i = icmp eq i32 %inc109.i, 69
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  br i1 %exitcond34.not.i, label %for.inc111.i, label %for.body59.i, !llvm.loop !13

for.inc111.i:                                     ; preds = %for.cond61.for.inc108_crit_edge.i, %for.cond43.preheader.i
  %inc112.i = add nuw nsw i32 %t2.111.i, 1
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 32
  %exitcond35.not.i = icmp eq i32 %inc112.i, 57
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 32
  br i1 %exitcond35.not.i, label %for.body130.i.preheader, label %for.cond43.preheader.i, !llvm.loop !14

for.body130.i.preheader:                          ; preds = %for.inc111.i
  %arraydecay7 = bitcast i8* %call.i28 to double*
  br label %for.body130.i

for.body130.i:                                    ; preds = %for.body130.i.preheader, %for.inc151.i
  %indvar36.i = phi i64 [ %indvar.next37.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %t2.214.i = phi i32 [ %inc152.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %27 = shl nuw nsw i64 %indvar36.i, 5
  %mul131.i = shl nuw nsw i32 %t2.214.i, 5
  %add135.i = or i32 %mul131.i, 31
  %28 = icmp ult i32 %add135.i, 2199
  %cond143.i = select i1 %28, i32 %add135.i, i32 2199
  %cmp144.not12.i = icmp ugt i32 %mul131.i, %cond143.i
  br i1 %cmp144.not12.i, label %for.inc151.i, label %for.body145.preheader.i

for.body145.preheader.i:                          ; preds = %for.body130.i
  %29 = trunc i64 %27 to i32
  %30 = or i32 %29, 31
  %umin40.i = tail call i32 @llvm.umin.i32(i32 %30, i32 2199) #8
  %smax41.i = tail call i32 @llvm.smax.i32(i32 %umin40.i, i32 %29) #8
  %31 = trunc i64 %indvar36.i to i32
  %32 = mul i32 %31, -32
  %33 = add i32 %smax41.i, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  %scevgep38.i = getelementptr double, double* %arraydecay7, i64 %27
  %scevgep3839.i = bitcast double* %scevgep38.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep3839.i, i8 0, i64 %36, i1 false) #8
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.body145.preheader.i, %for.body130.i
  %inc152.i = add nuw nsw i32 %t2.214.i, 1
  %indvar.next37.i = add nuw nsw i64 %indvar36.i, 1
  %exitcond46.not.i = icmp eq i64 %indvar.next37.i, 69
  br i1 %exitcond46.not.i, label %for.cond173.preheader.i, label %for.body130.i, !llvm.loop !15

for.cond173.preheader.i:                          ; preds = %for.inc151.i, %for.inc241.i
  %indvar = phi i64 [ %indvar.next, %for.inc241.i ], [ 0, %for.inc151.i ]
  %indvars.iv44 = phi i32 [ %indvars.iv.next45, %for.inc241.i ], [ 31, %for.inc151.i ]
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.inc241.i ], [ 0, %for.inc151.i ]
  %t2.321.i = phi i32 [ %inc242.i, %for.inc241.i ], [ 0, %for.inc151.i ]
  %37 = mul nsw i64 %indvar, -32
  %38 = or i64 %37, 1
  %indvar.tr = trunc i64 %indvar to i32
  %39 = shl i32 %indvar.tr, 5
  %40 = or i32 %39, 31
  %umin55 = call i32 @llvm.umin.i32(i32 %40, i32 2199)
  %41 = zext i32 %umin55 to i64
  %42 = add i64 %38, %41
  %umin46 = call i32 @llvm.umin.i32(i32 %indvars.iv44, i32 2199)
  %narrow53 = add nuw nsw i32 %umin46, 1
  %43 = zext i32 %narrow53 to i64
  %mul205.i = shl nsw i32 %t2.321.i, 5
  %add209.i = or i32 %mul205.i, 31
  %44 = icmp ult i32 %add209.i, 2199
  %cond217.i = select i1 %44, i32 %add209.i, i32 2199
  %cmp218.not15.i = icmp ugt i32 %mul205.i, %cond217.i
  br i1 %cmp218.not15.i, label %for.inc241.i, label %for.body189.i.preheader

for.body189.i.preheader:                          ; preds = %for.cond173.preheader.i
  %min.iters.check = icmp eq i64 %42, 0
  br label %for.body189.i

for.body189.i:                                    ; preds = %for.body189.i.preheader, %for.inc238.i
  %indvars.iv48 = phi i32 [ %indvars.iv.next49, %for.inc238.i ], [ 31, %for.body189.i.preheader ]
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.inc238.i ], [ 0, %for.body189.i.preheader ]
  %t3.320.i = phi i32 [ %inc239.i, %for.inc238.i ], [ 0, %for.body189.i.preheader ]
  %umin50 = call i32 @llvm.umin.i32(i32 %indvars.iv48, i32 1799)
  %narrow54 = add nuw nsw i32 %umin50, 1
  %45 = zext i32 %narrow54 to i64
  %mul190.i = shl nuw nsw i32 %t3.320.i, 5
  %add194.i = or i32 %mul190.i, 31
  %46 = icmp ult i32 %add194.i, 1799
  %cond202.i = select i1 %46, i32 %add194.i, i32 1799
  %cmp203.not17.i = icmp ugt i32 %mul190.i, %cond202.i
  br i1 %cmp203.not17.i, label %for.inc238.i, label %for.body204.i

for.body204.i:                                    ; preds = %for.body189.i, %for.cond206.for.inc235_crit_edge.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.cond206.for.inc235_crit_edge.i ], [ %indvars.iv51.i, %for.body189.i ]
  %arrayidx227.i = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv53.i
  %47 = load double, double* %arrayidx227.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body219.i, label %vector.ph

vector.ph:                                        ; preds = %for.body204.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %47, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <2 x double> poison, double %47, i32 0
  %broadcast.splat60 = shufflevector <2 x double> %broadcast.splatinsert59, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv47.i, %index
  %48 = getelementptr inbounds double, double* %arraydecay7, i64 %offset.idx
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %50 = getelementptr inbounds double, double* %48, i64 2
  %51 = bitcast double* %50 to <2 x double>*
  %wide.load56 = load <2 x double>, <2 x double>* %51, align 8, !tbaa !2
  %52 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %offset.idx
  %53 = bitcast double* %52 to <2 x double>*
  %wide.load57 = load <2 x double>, <2 x double>* %53, align 8, !tbaa !2
  %54 = getelementptr inbounds double, double* %52, i64 2
  %55 = bitcast double* %54 to <2 x double>*
  %wide.load58 = load <2 x double>, <2 x double>* %55, align 8, !tbaa !2
  %56 = fmul <2 x double> %wide.load57, %broadcast.splat
  %57 = fmul <2 x double> %wide.load58, %broadcast.splat60
  %58 = fadd <2 x double> %wide.load, %56
  %59 = fadd <2 x double> %wide.load56, %57
  %60 = bitcast double* %48 to <2 x double>*
  store <2 x double> %58, <2 x double>* %60, align 8, !tbaa !2
  %61 = bitcast double* %50 to <2 x double>*
  store <2 x double> %59, <2 x double>* %61, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %62 = icmp eq i64 %index.next, %42
  br i1 %62, label %for.cond206.for.inc235_crit_edge.i, label %vector.body, !llvm.loop !16

for.body219.i:                                    ; preds = %for.body204.i, %for.body219.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.body219.i ], [ %indvars.iv47.i, %for.body204.i ]
  %arrayidx221.i = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv49.i
  %63 = load double, double* %arrayidx221.i, align 8, !tbaa !2
  %arrayidx225.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv49.i
  %64 = load double, double* %arrayidx225.i, align 8, !tbaa !2
  %mul228.i = fmul double %64, %47
  %add229.i = fadd double %63, %mul228.i
  store double %add229.i, double* %arrayidx221.i, align 8, !tbaa !2
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next50.i, %43
  br i1 %exitcond47.not, label %for.cond206.for.inc235_crit_edge.i, label %for.body219.i, !llvm.loop !18

for.cond206.for.inc235_crit_edge.i:               ; preds = %vector.body, %for.body219.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next54.i, %45
  br i1 %exitcond51.not, label %for.inc238.i, label %for.body204.i, !llvm.loop !20

for.inc238.i:                                     ; preds = %for.cond206.for.inc235_crit_edge.i, %for.body189.i
  %inc239.i = add nuw nsw i32 %t3.320.i, 1
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 32
  %exitcond55.not.i = icmp eq i32 %inc239.i, 57
  %indvars.iv.next49 = add nuw nsw i32 %indvars.iv48, 32
  br i1 %exitcond55.not.i, label %for.inc241.i, label %for.body189.i, !llvm.loop !21

for.inc241.i:                                     ; preds = %for.inc238.i, %for.cond173.preheader.i
  %inc242.i = add nuw nsw i32 %t2.321.i, 1
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 32
  %exitcond56.not.i = icmp eq i32 %inc242.i, 69
  %indvars.iv.next45 = add nuw nsw i32 %indvars.iv44, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond56.not.i, label %kernel_atax.exit, label %for.cond173.preheader.i, !llvm.loop !22

kernel_atax.exit:                                 ; preds = %for.inc241.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %65 = load i8*, i8** %argv, align 8, !tbaa !23
  %strcmpload = load i8, i8* %65, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %67 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %66) #9
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i35 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i38, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i36
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %69) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i36
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %arrayidx.i37 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.i35
  %71 = load double, double* %arrayidx.i37, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %71) #9
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i35, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, 2200
  br i1 %exitcond.not.i39, label %print_array.exit, label %for.body.i36, !llvm.loop !25

print_array.exit:                                 ; preds = %if.end.i
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !23
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %73) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_atax.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i27) #8
  tail call void @free(i8* %call.i28) #8
  tail call void @free(i8* %call.i29) #8
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
