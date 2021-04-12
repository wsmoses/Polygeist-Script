; ModuleID = 'gesummv.plutopar.c'
source_filename = "gesummv.plutopar.c"
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
  %call.i = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #8
  %call.i31 = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #8
  %call.i32 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #8
  %call.i33 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #8
  %call.i34 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #8
  %arraydecay = bitcast i8* %call.i to [2800 x double]*
  %arraydecay5 = bitcast i8* %call.i31 to [2800 x double]*
  %arraydecay6 = bitcast i8* %call.i33 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc24.i ]
  %i.03.i = phi i32 [ 0, %entry ], [ %inc25.i, %for.inc24.i ]
  %rem.lhs.trunc.i = trunc i32 %i.03.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 2800
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 2.800000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv7.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !2
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body5.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem6.i = urem i32 %2, 2800
  %conv7.i = sitofp i32 %rem6.i to double
  %div9.i = fdiv double %conv7.i, 2.800000e+03
  %arrayidx13.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div9.i, double* %arrayidx13.i, align 8, !tbaa !2
  %3 = add i32 %1, 2
  %rem16.i = urem i32 %3, 2800
  %conv17.i = sitofp i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.800000e+03
  %arrayidx23.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2800
  br i1 %exitcond.not.i, label %for.inc24.i, label %for.body5.i, !llvm.loop !6

for.inc24.i:                                      ; preds = %for.body5.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %inc25.i = add nuw nsw i32 %i.03.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2800
  br i1 %exitcond9.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc24.i
  tail call void (...) @polybench_timer_start() #8
  %arraydecay11 = bitcast i8* %call.i34 to double*
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.inc23.i, %init_array.exit
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %for.inc23.i ]
  %t2.03.i = phi i32 [ 0, %init_array.exit ], [ %inc24.i, %for.inc23.i ]
  %4 = shl nuw nsw i64 %indvar.i, 5
  %mul.i = shl nuw nsw i32 %t2.03.i, 5
  %add12.i = or i32 %mul.i, 31
  %5 = icmp ult i32 %add12.i, 2799
  %cond20.i = select i1 %5, i32 %add12.i, i32 2799
  %cmp21.not1.i = icmp ugt i32 %mul.i, %cond20.i
  br i1 %cmp21.not1.i, label %for.inc23.i, label %for.body22.preheader.i

for.body22.preheader.i:                           ; preds = %for.body.i35
  %6 = trunc i64 %4 to i32
  %7 = or i32 %6, 31
  %umin.i = tail call i32 @llvm.umin.i32(i32 %7, i32 2799) #8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %umin.i, i32 %6) #8
  %8 = trunc i64 %indvar.i to i32
  %9 = mul i32 %8, -32
  %10 = add i32 %smax.i, %9
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 8
  %scevgep.i = getelementptr double, double* %arraydecay11, i64 %4
  %scevgep30.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep30.i, i8 0, i64 %13, i1 false) #8
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %for.body22.preheader.i, %for.body.i35
  %inc24.i = add nuw nsw i32 %t2.03.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond.not.i36 = icmp eq i64 %indvar.next.i, 88
  br i1 %exitcond.not.i36, label %for.cond43.preheader.i, label %for.body.i35, !llvm.loop !9

for.cond43.preheader.i:                           ; preds = %for.inc23.i, %for.inc111.i
  %indvars.iv48 = phi i32 [ %indvars.iv.next49, %for.inc111.i ], [ 31, %for.inc23.i ]
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc111.i ], [ 0, %for.inc23.i ]
  %t2.111.i = phi i32 [ %inc112.i, %for.inc111.i ], [ 0, %for.inc23.i ]
  %umin50 = call i32 @llvm.umin.i32(i32 %indvars.iv48, i32 2799)
  %narrow = add nuw nsw i32 %umin50, 1
  %14 = zext i32 %narrow to i64
  %mul60.i = shl nsw i32 %t2.111.i, 5
  %add64.i = or i32 %mul60.i, 31
  %15 = icmp ult i32 %add64.i, 2799
  %cond72.i = select i1 %15, i32 %add64.i, i32 2799
  %cmp73.not6.i = icmp ugt i32 %mul60.i, %cond72.i
  br i1 %cmp73.not6.i, label %for.inc111.i, label %for.body59.i

for.body59.i:                                     ; preds = %for.cond43.preheader.i, %for.cond61.for.inc108_crit_edge.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond61.for.inc108_crit_edge.i ], [ 31, %for.cond43.preheader.i ]
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %t3.19.i = phi i32 [ %inc109.i, %for.cond61.for.inc108_crit_edge.i ], [ 0, %for.cond43.preheader.i ]
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 2799)
  %narrow64 = add nuw nsw i32 %umin, 1
  %16 = zext i32 %narrow64 to i64
  %mul75.i = shl nsw i32 %t3.19.i, 5
  %add79.i = or i32 %mul75.i, 31
  %17 = icmp ult i32 %add79.i, 2799
  %cond87.i = select i1 %17, i32 %add79.i, i32 2799
  %cmp88.not4.i = icmp ugt i32 %mul75.i, %cond87.i
  br i1 %cmp88.not4.i, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i

for.body74.i:                                     ; preds = %for.body59.i, %for.cond76.for.inc105_crit_edge.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.cond76.for.inc105_crit_edge.i ], [ %indvars.iv35.i, %for.body59.i ]
  %arrayidx98.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv37.i
  %.pre.i = load double, double* %arrayidx98.i, align 8, !tbaa !2
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.body89.i, %for.body74.i
  %18 = phi double [ %.pre.i, %for.body74.i ], [ %add99.i.3, %for.body89.i ]
  %indvars.iv33.i = phi i64 [ %indvars.iv.i37, %for.body74.i ], [ %indvars.iv.next34.i.3, %for.body89.i ]
  %arrayidx93.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv37.i, i64 %indvars.iv33.i
  %19 = load double, double* %arrayidx93.i, align 8, !tbaa !2
  %arrayidx95.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv33.i
  %20 = load double, double* %arrayidx95.i, align 8, !tbaa !2
  %mul96.i = fmul double %19, %20
  %add99.i = fadd double %18, %mul96.i
  %indvars.iv.next34.i = or i64 %indvars.iv33.i, 1
  %arrayidx93.i.1 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv37.i, i64 %indvars.iv.next34.i
  %21 = load double, double* %arrayidx93.i.1, align 8, !tbaa !2
  %arrayidx95.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next34.i
  %22 = load double, double* %arrayidx95.i.1, align 8, !tbaa !2
  %mul96.i.1 = fmul double %21, %22
  %add99.i.1 = fadd double %add99.i, %mul96.i.1
  %indvars.iv.next34.i.1 = or i64 %indvars.iv33.i, 2
  %arrayidx93.i.2 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv37.i, i64 %indvars.iv.next34.i.1
  %23 = load double, double* %arrayidx93.i.2, align 8, !tbaa !2
  %arrayidx95.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next34.i.1
  %24 = load double, double* %arrayidx95.i.2, align 8, !tbaa !2
  %mul96.i.2 = fmul double %23, %24
  %add99.i.2 = fadd double %add99.i.1, %mul96.i.2
  %indvars.iv.next34.i.2 = or i64 %indvars.iv33.i, 3
  %arrayidx93.i.3 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv37.i, i64 %indvars.iv.next34.i.2
  %25 = load double, double* %arrayidx93.i.3, align 8, !tbaa !2
  %arrayidx95.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next34.i.2
  %26 = load double, double* %arrayidx95.i.3, align 8, !tbaa !2
  %mul96.i.3 = fmul double %25, %26
  %add99.i.3 = fadd double %add99.i.2, %mul96.i.3
  %indvars.iv.next34.i.3 = add nuw nsw i64 %indvars.iv33.i, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next34.i.3, %16
  br i1 %exitcond.not.3, label %for.cond76.for.inc105_crit_edge.i, label %for.body89.i, !llvm.loop !10

for.cond76.for.inc105_crit_edge.i:                ; preds = %for.body89.i
  store double %add99.i.3, double* %arrayidx98.i, align 8, !tbaa !2
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next38.i, %14
  br i1 %exitcond51.not, label %for.cond61.for.inc108_crit_edge.i, label %for.body74.i, !llvm.loop !11

for.cond61.for.inc108_crit_edge.i:                ; preds = %for.cond76.for.inc105_crit_edge.i, %for.body59.i
  %inc109.i = add nuw nsw i32 %t3.19.i, 1
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 32
  %exitcond39.not.i = icmp eq i32 %inc109.i, 88
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  br i1 %exitcond39.not.i, label %for.inc111.i, label %for.body59.i, !llvm.loop !12

for.inc111.i:                                     ; preds = %for.cond61.for.inc108_crit_edge.i, %for.cond43.preheader.i
  %inc112.i = add nuw nsw i32 %t2.111.i, 1
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 32
  %exitcond40.not.i = icmp eq i32 %inc112.i, 88
  %indvars.iv.next49 = add nuw nsw i32 %indvars.iv48, 32
  br i1 %exitcond40.not.i, label %for.body130.i.preheader, label %for.cond43.preheader.i, !llvm.loop !13

for.body130.i.preheader:                          ; preds = %for.inc111.i
  %arraydecay9 = bitcast i8* %call.i32 to double*
  br label %for.body130.i

for.body130.i:                                    ; preds = %for.body130.i.preheader, %for.inc151.i
  %indvar41.i = phi i64 [ %indvar.next42.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %t2.214.i = phi i32 [ %inc152.i, %for.inc151.i ], [ 0, %for.body130.i.preheader ]
  %27 = shl nuw nsw i64 %indvar41.i, 5
  %mul131.i = shl nuw nsw i32 %t2.214.i, 5
  %add135.i = or i32 %mul131.i, 31
  %28 = icmp ult i32 %add135.i, 2799
  %cond143.i = select i1 %28, i32 %add135.i, i32 2799
  %cmp144.not12.i = icmp ugt i32 %mul131.i, %cond143.i
  br i1 %cmp144.not12.i, label %for.inc151.i, label %for.body145.preheader.i

for.body145.preheader.i:                          ; preds = %for.body130.i
  %29 = trunc i64 %27 to i32
  %30 = or i32 %29, 31
  %umin45.i = tail call i32 @llvm.umin.i32(i32 %30, i32 2799) #8
  %smax46.i = tail call i32 @llvm.smax.i32(i32 %umin45.i, i32 %29) #8
  %31 = trunc i64 %indvar41.i to i32
  %32 = mul i32 %31, -32
  %33 = add i32 %smax46.i, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  %scevgep43.i = getelementptr double, double* %arraydecay9, i64 %27
  %scevgep4344.i = bitcast double* %scevgep43.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep4344.i, i8 0, i64 %36, i1 false) #8
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %for.body145.preheader.i, %for.body130.i
  %inc152.i = add nuw nsw i32 %t2.214.i, 1
  %indvar.next42.i = add nuw nsw i64 %indvar41.i, 1
  %exitcond51.not.i = icmp eq i64 %indvar.next42.i, 88
  br i1 %exitcond51.not.i, label %for.cond171.preheader.i, label %for.body130.i, !llvm.loop !14

for.cond171.preheader.i:                          ; preds = %for.inc151.i, %for.inc239.i
  %indvars.iv56 = phi i32 [ %indvars.iv.next57, %for.inc239.i ], [ 31, %for.inc151.i ]
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %for.inc239.i ], [ 0, %for.inc151.i ]
  %t2.322.i = phi i32 [ %inc240.i, %for.inc239.i ], [ 0, %for.inc151.i ]
  %umin58 = call i32 @llvm.umin.i32(i32 %indvars.iv56, i32 2799)
  %narrow65 = add nuw nsw i32 %umin58, 1
  %37 = zext i32 %narrow65 to i64
  %mul188.i = shl nsw i32 %t2.322.i, 5
  %add192.i = or i32 %mul188.i, 31
  %38 = icmp ult i32 %add192.i, 2799
  %cond200.i = select i1 %38, i32 %add192.i, i32 2799
  %cmp201.not17.i = icmp ugt i32 %mul188.i, %cond200.i
  br i1 %cmp201.not17.i, label %for.inc239.i, label %for.body187.i

for.body187.i:                                    ; preds = %for.cond171.preheader.i, %for.cond189.for.inc236_crit_edge.i
  %indvars.iv52 = phi i32 [ %indvars.iv.next53, %for.cond189.for.inc236_crit_edge.i ], [ 31, %for.cond171.preheader.i ]
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.cond189.for.inc236_crit_edge.i ], [ 0, %for.cond171.preheader.i ]
  %t3.320.i = phi i32 [ %inc237.i, %for.cond189.for.inc236_crit_edge.i ], [ 0, %for.cond171.preheader.i ]
  %umin54 = call i32 @llvm.umin.i32(i32 %indvars.iv52, i32 2799)
  %narrow66 = add nuw nsw i32 %umin54, 1
  %39 = zext i32 %narrow66 to i64
  %mul203.i = shl nsw i32 %t3.320.i, 5
  %add207.i = or i32 %mul203.i, 31
  %40 = icmp ult i32 %add207.i, 2799
  %cond215.i = select i1 %40, i32 %add207.i, i32 2799
  %cmp216.not15.i = icmp ugt i32 %mul203.i, %cond215.i
  br i1 %cmp216.not15.i, label %for.cond189.for.inc236_crit_edge.i, label %for.body202.i

for.body202.i:                                    ; preds = %for.body187.i, %for.cond204.for.inc233_crit_edge.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %for.cond204.for.inc233_crit_edge.i ], [ %indvars.iv56.i, %for.body187.i ]
  %arrayidx226.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv58.i
  %.pre67.i = load double, double* %arrayidx226.i, align 8, !tbaa !2
  br label %for.body217.i

for.body217.i:                                    ; preds = %for.body217.i, %for.body202.i
  %41 = phi double [ %.pre67.i, %for.body202.i ], [ %add227.i.3, %for.body217.i ]
  %indvars.iv54.i = phi i64 [ %indvars.iv52.i, %for.body202.i ], [ %indvars.iv.next55.i.3, %for.body217.i ]
  %arrayidx221.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv54.i
  %42 = load double, double* %arrayidx221.i, align 8, !tbaa !2
  %arrayidx223.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv54.i
  %43 = load double, double* %arrayidx223.i, align 8, !tbaa !2
  %mul224.i = fmul double %42, %43
  %add227.i = fadd double %41, %mul224.i
  %indvars.iv.next55.i = or i64 %indvars.iv54.i, 1
  %arrayidx221.i.1 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv.next55.i
  %44 = load double, double* %arrayidx221.i.1, align 8, !tbaa !2
  %arrayidx223.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next55.i
  %45 = load double, double* %arrayidx223.i.1, align 8, !tbaa !2
  %mul224.i.1 = fmul double %44, %45
  %add227.i.1 = fadd double %add227.i, %mul224.i.1
  %indvars.iv.next55.i.1 = or i64 %indvars.iv54.i, 2
  %arrayidx221.i.2 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv.next55.i.1
  %46 = load double, double* %arrayidx221.i.2, align 8, !tbaa !2
  %arrayidx223.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next55.i.1
  %47 = load double, double* %arrayidx223.i.2, align 8, !tbaa !2
  %mul224.i.2 = fmul double %46, %47
  %add227.i.2 = fadd double %add227.i.1, %mul224.i.2
  %indvars.iv.next55.i.2 = or i64 %indvars.iv54.i, 3
  %arrayidx221.i.3 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv.next55.i.2
  %48 = load double, double* %arrayidx221.i.3, align 8, !tbaa !2
  %arrayidx223.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next55.i.2
  %49 = load double, double* %arrayidx223.i.3, align 8, !tbaa !2
  %mul224.i.3 = fmul double %48, %49
  %add227.i.3 = fadd double %add227.i.2, %mul224.i.3
  %indvars.iv.next55.i.3 = add nuw nsw i64 %indvars.iv54.i, 4
  %exitcond55.not.3 = icmp eq i64 %indvars.iv.next55.i.3, %39
  br i1 %exitcond55.not.3, label %for.cond204.for.inc233_crit_edge.i, label %for.body217.i, !llvm.loop !15

for.cond204.for.inc233_crit_edge.i:               ; preds = %for.body217.i
  store double %add227.i.3, double* %arrayidx226.i, align 8, !tbaa !2
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next59.i, %37
  br i1 %exitcond59.not, label %for.cond189.for.inc236_crit_edge.i, label %for.body202.i, !llvm.loop !16

for.cond189.for.inc236_crit_edge.i:               ; preds = %for.cond204.for.inc233_crit_edge.i, %for.body187.i
  %inc237.i = add nuw nsw i32 %t3.320.i, 1
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 32
  %exitcond60.not.i = icmp eq i32 %inc237.i, 88
  %indvars.iv.next53 = add nuw nsw i32 %indvars.iv52, 32
  br i1 %exitcond60.not.i, label %for.inc239.i, label %for.body187.i, !llvm.loop !17

for.inc239.i:                                     ; preds = %for.cond189.for.inc236_crit_edge.i, %for.cond171.preheader.i
  %inc240.i = add nuw nsw i32 %t2.322.i, 1
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 32
  %exitcond61.not.i = icmp eq i32 %inc240.i, 88
  %indvars.iv.next57 = add nuw nsw i32 %indvars.iv56, 32
  br i1 %exitcond61.not.i, label %for.body258.i, label %for.cond171.preheader.i, !llvm.loop !18

for.body258.i:                                    ; preds = %for.inc239.i, %for.inc286.i
  %indvar = phi i64 [ %indvar.next, %for.inc286.i ], [ 0, %for.inc239.i ]
  %indvars.iv60 = phi i32 [ %indvars.iv.next61, %for.inc286.i ], [ 31, %for.inc239.i ]
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %for.inc286.i ], [ 0, %for.inc239.i ]
  %t2.425.i = phi i32 [ %inc287.i, %for.inc286.i ], [ 0, %for.inc239.i ]
  %50 = mul nsw i64 %indvar, -32
  %51 = or i64 %50, 1
  %indvar.tr = trunc i64 %indvar to i32
  %52 = shl i32 %indvar.tr, 5
  %53 = or i32 %52, 31
  %umin68 = call i32 @llvm.umin.i32(i32 %53, i32 2799)
  %54 = zext i32 %umin68 to i64
  %55 = add i64 %51, %54
  %umin62 = call i32 @llvm.umin.i32(i32 %indvars.iv60, i32 2799)
  %narrow67 = add nuw nsw i32 %umin62, 1
  %56 = zext i32 %narrow67 to i64
  %mul259.i = shl nuw nsw i32 %t2.425.i, 5
  %add263.i = or i32 %mul259.i, 31
  %57 = icmp ult i32 %add263.i, 2799
  %cond271.i = select i1 %57, i32 %add263.i, i32 2799
  %cmp272.not23.i = icmp ugt i32 %mul259.i, %cond271.i
  br i1 %cmp272.not23.i, label %for.inc286.i, label %for.body273.i.preheader

for.body273.i.preheader:                          ; preds = %for.body258.i
  %min.iters.check = icmp eq i64 %55, 0
  br i1 %min.iters.check, label %for.body273.i, label %vector.body

vector.body:                                      ; preds = %for.body273.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body273.i.preheader ]
  %offset.idx = add i64 %indvars.iv62.i, %index
  %58 = getelementptr inbounds double, double* %arraydecay9, i64 %offset.idx
  %59 = bitcast double* %58 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %59, align 8, !tbaa !2
  %60 = getelementptr inbounds double, double* %58, i64 2
  %61 = bitcast double* %60 to <2 x double>*
  %wide.load69 = load <2 x double>, <2 x double>* %61, align 8, !tbaa !2
  %62 = fmul <2 x double> %wide.load, <double 1.500000e+00, double 1.500000e+00>
  %63 = fmul <2 x double> %wide.load69, <double 1.500000e+00, double 1.500000e+00>
  %64 = getelementptr inbounds double, double* %arraydecay11, i64 %offset.idx
  %65 = bitcast double* %64 to <2 x double>*
  %wide.load70 = load <2 x double>, <2 x double>* %65, align 8, !tbaa !2
  %66 = getelementptr inbounds double, double* %64, i64 2
  %67 = bitcast double* %66 to <2 x double>*
  %wide.load71 = load <2 x double>, <2 x double>* %67, align 8, !tbaa !2
  %68 = fmul <2 x double> %wide.load70, <double 1.200000e+00, double 1.200000e+00>
  %69 = fmul <2 x double> %wide.load71, <double 1.200000e+00, double 1.200000e+00>
  %70 = fadd <2 x double> %62, %68
  %71 = fadd <2 x double> %63, %69
  %72 = bitcast double* %64 to <2 x double>*
  store <2 x double> %70, <2 x double>* %72, align 8, !tbaa !2
  %73 = bitcast double* %66 to <2 x double>*
  store <2 x double> %71, <2 x double>* %73, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %74 = icmp eq i64 %index.next, %55
  br i1 %74, label %for.inc286.i, label %vector.body, !llvm.loop !19

for.body273.i:                                    ; preds = %for.body273.i.preheader, %for.body273.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body273.i ], [ %indvars.iv62.i, %for.body273.i.preheader ]
  %arrayidx275.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv64.i
  %75 = load double, double* %arrayidx275.i, align 8, !tbaa !2
  %mul276.i = fmul double %75, 1.500000e+00
  %arrayidx278.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv64.i
  %76 = load double, double* %arrayidx278.i, align 8, !tbaa !2
  %mul279.i = fmul double %76, 1.200000e+00
  %add280.i = fadd double %mul276.i, %mul279.i
  store double %add280.i, double* %arrayidx278.i, align 8, !tbaa !2
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next65.i, %56
  br i1 %exitcond63.not, label %for.inc286.i, label %for.body273.i, !llvm.loop !21

for.inc286.i:                                     ; preds = %vector.body, %for.body273.i, %for.body258.i
  %inc287.i = add nuw nsw i32 %t2.425.i, 1
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 32
  %exitcond66.not.i = icmp eq i32 %inc287.i, 88
  %indvars.iv.next61 = add nuw nsw i32 %indvars.iv60, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond66.not.i, label %kernel_gesummv.exit, label %for.body258.i, !llvm.loop !23

kernel_gesummv.exit:                              ; preds = %for.inc286.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gesummv.exit
  %77 = load i8*, i8** %argv, align 8, !tbaa !24
  %strcmpload = load i8, i8* %77, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %78) #9
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i42

for.body.i42:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i39 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i44, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i40 = trunc i32 %i.02.i to i16
  %rem1.i41 = urem i16 %rem.lhs.trunc.i40, 20
  %cmp2.i = icmp eq i16 %rem1.i41, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i42
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %81) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i42
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %arrayidx.i43 = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv.i39
  %83 = load double, double* %arrayidx.i43, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %83) #9
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i39, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, 2800
  br i1 %exitcond.not.i45, label %print_array.exit, label %for.body.i42, !llvm.loop !26

print_array.exit:                                 ; preds = %if.end.i
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %86 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %85) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gesummv.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i31) #8
  tail call void @free(i8* %call.i32) #8
  tail call void @free(i8* %call.i33) #8
  tail call void @free(i8* %call.i34) #8
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
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !7, !22, !20}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !7}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !4, i64 0}
!26 = distinct !{!26, !7}
