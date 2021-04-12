; ModuleID = 'gramschmidt.plutopar.c'
source_filename = "gramschmidt.plutopar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #9
  %call.i30 = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #9
  %call.i31 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #9
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  %arraydecay3 = bitcast i8* %call.i30 to [2600 x double]*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(41600000) %call.i31, i8 0, i64 41600000, i1 false)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc12.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %mul5.i = fmul double %div.i, 1.000000e+02
  %add.i = fadd double %mul5.i, 1.000000e+01
  %arrayidx7.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx7.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2600
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body3.i, !llvm.loop !6

for.inc12.i:                                      ; preds = %for.body3.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2000
  br i1 %exitcond9.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc12.i
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(54080000) %call.i30, i8 0, i64 54080000, i1 false) #9
  tail call void (...) @polybench_timer_start() #9
  br label %for.body25.lr.ph.i

for.body25.lr.ph.i:                               ; preds = %for.inc91.i, %init_array.exit
  %indvars.iv44 = phi i32 [ %indvars.iv.next45, %for.inc91.i ], [ 30, %init_array.exit ]
  %indvars.iv42 = phi i32 [ %indvars.iv.next43, %for.inc91.i ], [ 31, %init_array.exit ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc91.i ], [ 1, %init_array.exit ]
  %indvars.iv50.i = phi i32 [ %indvars.iv.next51.i, %for.inc91.i ], [ 82, %init_array.exit ]
  %indvar.i = phi i64 [ %indvar.next.i, %for.inc91.i ], [ 0, %init_array.exit ]
  %t2.08.i = phi i32 [ %inc92.i, %for.inc91.i ], [ 0, %init_array.exit ]
  %2 = shl nuw nsw i64 %indvar.i, 5
  %3 = trunc i64 %2 to i32
  %4 = or i64 %2, 1
  %5 = or i32 %3, 31
  %mul.i = shl nsw i32 %t2.08.i, 5
  %add29.i = or i32 %mul.i, 31
  %6 = icmp ult i32 %add29.i, 2598
  %cond37.i = select i1 %6, i32 %add29.i, i32 2598
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc88.i, %for.body25.lr.ph.i
  %indvars.iv46 = phi i32 [ %indvars.iv.next47, %for.inc88.i ], [ %indvars.iv44, %for.body25.lr.ph.i ]
  %indvar37.i = phi i32 [ %indvar.next38.i, %for.inc88.i ], [ 0, %for.body25.lr.ph.i ]
  %t4.07.i = phi i32 [ %inc89.i, %for.inc88.i ], [ %t2.08.i, %for.body25.lr.ph.i ]
  %7 = shl nuw nsw i32 %indvar37.i, 5
  %8 = add nuw nsw i32 %7, %3
  %9 = add nuw nsw i32 %5, %7
  %umin.i = tail call i32 @llvm.umin.i32(i32 %9, i32 2599) #9
  %mul38.i = shl nsw i32 %t4.07.i, 5
  %add39.i = or i32 %mul38.i, 30
  %cmp40.i = icmp ult i32 %cond37.i, %add39.i
  %cond57.i = select i1 %cmp40.i, i32 %cond37.i, i32 %add39.i
  %cmp58.not4.i = icmp ugt i32 %mul.i, %cond57.i
  br i1 %cmp58.not4.i, label %for.inc88.i, label %for.body59.lr.ph.i

for.body59.lr.ph.i:                               ; preds = %for.body25.i
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv42, i32 %indvars.iv46)
  %umin48 = call i32 @llvm.umin.i32(i32 %umin, i32 2598)
  %10 = add i32 %indvars.iv, %umin48
  %add72.i = or i32 %mul38.i, 31
  %11 = icmp ult i32 %add72.i, 2599
  %cond80.i = select i1 %11, i32 %add72.i, i32 2599
  %wide.trip.count = zext i32 %10 to i64
  br label %for.body59.i

for.cond26.loopexit.i:                            ; preds = %for.body82.lr.ph.i, %for.body59.i
  %indvar.next36.i = add nuw nsw i64 %indvar35.i, 1
  %exitcond.not = icmp eq i64 %indvar.next36.i, %wide.trip.count
  br i1 %exitcond.not, label %for.inc88.i, label %for.body59.i, !llvm.loop !9

for.body59.i:                                     ; preds = %for.cond26.loopexit.i, %for.body59.lr.ph.i
  %indvar35.i = phi i64 [ 0, %for.body59.lr.ph.i ], [ %indvar.next36.i, %for.cond26.loopexit.i ]
  %t5.05.i = phi i32 [ %mul.i, %for.body59.lr.ph.i ], [ %add61.i, %for.cond26.loopexit.i ]
  %12 = add nuw nsw i64 %4, %indvar35.i
  %13 = trunc i64 %12 to i32
  %umax.i = tail call i32 @llvm.umax.i32(i32 %8, i32 %13) #9
  %add61.i = add nuw nsw i32 %t5.05.i, 1
  %cmp62.i = icmp ugt i32 %mul38.i, %add61.i
  %cond68.i = select i1 %cmp62.i, i32 %mul38.i, i32 %add61.i
  %cmp81.not2.i = icmp sgt i32 %cond68.i, %cond80.i
  br i1 %cmp81.not2.i, label %for.cond26.loopexit.i, label %for.body82.lr.ph.i

for.body82.lr.ph.i:                               ; preds = %for.body59.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %umin.i, i32 %umax.i) #9
  %14 = sub i32 %smax.i, %umax.i
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = add nuw nsw i64 %16, 8
  %18 = add nuw nsw i64 %indvar35.i, %2
  %19 = zext i32 %umax.i to i64
  %scevgep39.i = getelementptr [2600 x double], [2600 x double]* %arraydecay3, i64 %18, i64 %19
  %scevgep3940.i = bitcast double* %scevgep39.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep3940.i, i8 0, i64 %17, i1 false) #9
  br label %for.cond26.loopexit.i

for.inc88.i:                                      ; preds = %for.cond26.loopexit.i, %for.body25.i
  %inc89.i = add nuw nsw i32 %t4.07.i, 1
  %indvar.next38.i = add nuw nsw i32 %indvar37.i, 1
  %exitcond.not.i32 = icmp eq i32 %indvar.next38.i, %indvars.iv50.i
  %indvars.iv.next47 = add i32 %indvars.iv46, 32
  br i1 %exitcond.not.i32, label %for.inc91.i, label %for.body25.i, !llvm.loop !10

for.inc91.i:                                      ; preds = %for.inc88.i
  %inc92.i = add nuw nsw i32 %t2.08.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %indvars.iv.next51.i = add nsw i32 %indvars.iv50.i, -1
  %exitcond52.not.i = icmp eq i64 %indvar.next.i, 82
  %indvars.iv.next = add nsw i32 %indvars.iv, -32
  %indvars.iv.next43 = add nuw nsw i32 %indvars.iv42, 32
  %indvars.iv.next45 = add nuw nsw i32 %indvars.iv44, 32
  br i1 %exitcond52.not.i, label %for.cond98.preheader.i.preheader, label %for.body25.lr.ph.i, !llvm.loop !11

for.cond98.preheader.i.preheader:                 ; preds = %for.inc91.i
  %arraydecay4 = bitcast i8* %call.i31 to [2600 x double]*
  br label %for.cond98.preheader.i

for.cond98.preheader.i:                           ; preds = %for.cond98.preheader.i.preheader, %for.inc368.i
  %indvar68 = phi i32 [ 0, %for.cond98.preheader.i.preheader ], [ %indvar.next69, %for.inc368.i ]
  %indvars.iv80.i = phi i64 [ 0, %for.cond98.preheader.i.preheader ], [ %indvars.iv.next81.pre-phi.i, %for.inc368.i ]
  %indvars.iv59.i = phi i32 [ 1, %for.cond98.preheader.i.preheader ], [ %indvars.iv.next60.i, %for.inc368.i ]
  %20 = add i32 %indvar68, 1
  %21 = add i32 %indvar68, 1
  br label %for.body101.i

for.body101.i:                                    ; preds = %for.body101.i, %for.cond98.preheader.i
  %indvars.iv.i33 = phi i64 [ 0, %for.cond98.preheader.i ], [ %indvars.iv.next.i34.4, %for.body101.i ]
  %nrm.011.i = phi double [ 0.000000e+00, %for.cond98.preheader.i ], [ %add111.i.4, %for.body101.i ]
  %arrayidx105.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i33, i64 %indvars.iv80.i
  %22 = load double, double* %arrayidx105.i, align 8, !tbaa !2
  %mul110.i = fmul double %22, %22
  %add111.i = fadd double %nrm.011.i, %mul110.i
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1
  %arrayidx105.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i34, i64 %indvars.iv80.i
  %23 = load double, double* %arrayidx105.i.1, align 8, !tbaa !2
  %mul110.i.1 = fmul double %23, %23
  %add111.i.1 = fadd double %add111.i, %mul110.i.1
  %indvars.iv.next.i34.1 = add nuw nsw i64 %indvars.iv.i33, 2
  %arrayidx105.i.2 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i34.1, i64 %indvars.iv80.i
  %24 = load double, double* %arrayidx105.i.2, align 8, !tbaa !2
  %mul110.i.2 = fmul double %24, %24
  %add111.i.2 = fadd double %add111.i.1, %mul110.i.2
  %indvars.iv.next.i34.2 = add nuw nsw i64 %indvars.iv.i33, 3
  %arrayidx105.i.3 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i34.2, i64 %indvars.iv80.i
  %25 = load double, double* %arrayidx105.i.3, align 8, !tbaa !2
  %mul110.i.3 = fmul double %25, %25
  %add111.i.3 = fadd double %add111.i.2, %mul110.i.3
  %indvars.iv.next.i34.3 = add nuw nsw i64 %indvars.iv.i33, 4
  %arrayidx105.i.4 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i34.3, i64 %indvars.iv80.i
  %26 = load double, double* %arrayidx105.i.4, align 8, !tbaa !2
  %mul110.i.4 = fmul double %26, %26
  %add111.i.4 = fadd double %add111.i.3, %mul110.i.4
  %indvars.iv.next.i34.4 = add nuw nsw i64 %indvars.iv.i33, 5
  %exitcond53.not.i.4 = icmp eq i64 %indvars.iv.next.i34.4, 2000
  br i1 %exitcond53.not.i.4, label %for.end114.i, label %for.body101.i, !llvm.loop !12

for.end114.i:                                     ; preds = %for.body101.i
  %call.i35 = tail call double @sqrt(double %add111.i.4) #9
  %arrayidx118.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv80.i, i64 %indvars.iv80.i
  store double %call.i35, double* %arrayidx118.i, align 8, !tbaa !2
  br label %for.body135.i

for.body135.i:                                    ; preds = %for.inc167.i, %for.end114.i
  %indvars.iv49 = phi i32 [ %indvars.iv.next50, %for.inc167.i ], [ 31, %for.end114.i ]
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.inc167.i ], [ 0, %for.end114.i ]
  %t4.214.i = phi i32 [ %inc168.i, %for.inc167.i ], [ 0, %for.end114.i ]
  %umin51 = call i32 @llvm.umin.i32(i32 %indvars.iv49, i32 1999)
  %narrow = add nuw nsw i32 %umin51, 1
  %27 = zext i32 %narrow to i64
  %mul136.i = shl nuw nsw i32 %t4.214.i, 5
  %add140.i = or i32 %mul136.i, 31
  %28 = icmp ult i32 %add140.i, 1999
  %cond148.i = select i1 %28, i32 %add140.i, i32 1999
  %cmp149.not12.i = icmp ugt i32 %mul136.i, %cond148.i
  br i1 %cmp149.not12.i, label %for.inc167.i, label %for.body150.i

for.body150.i:                                    ; preds = %for.body135.i, %for.body150.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %for.body150.i ], [ %indvars.iv54.i, %for.body135.i ]
  %arrayidx154.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv56.i, i64 %indvars.iv80.i
  %29 = load double, double* %arrayidx154.i, align 8, !tbaa !2
  %div159.i = fdiv double %29, %call.i35
  %arrayidx163.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv56.i, i64 %indvars.iv80.i
  store double %div159.i, double* %arrayidx163.i, align 8, !tbaa !2
  %indvars.iv.next57.i = or i64 %indvars.iv56.i, 1
  %arrayidx154.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next57.i, i64 %indvars.iv80.i
  %30 = load double, double* %arrayidx154.i.1, align 8, !tbaa !2
  %div159.i.1 = fdiv double %30, %call.i35
  %arrayidx163.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next57.i, i64 %indvars.iv80.i
  store double %div159.i.1, double* %arrayidx163.i.1, align 8, !tbaa !2
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2
  %exitcond52.not.1 = icmp eq i64 %indvars.iv.next57.i.1, %27
  br i1 %exitcond52.not.1, label %for.inc167.i, label %for.body150.i, !llvm.loop !13

for.inc167.i:                                     ; preds = %for.body150.i, %for.body135.i
  %inc168.i = add nuw nsw i32 %t4.214.i, 1
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 32
  %exitcond58.not.i = icmp eq i32 %inc168.i, 63
  %indvars.iv.next50 = add nuw nsw i32 %indvars.iv49, 32
  br i1 %exitcond58.not.i, label %land.lhs.true.i, label %for.body135.i, !llvm.loop !14

land.lhs.true.i:                                  ; preds = %for.inc167.i
  %cmp172.i = icmp ult i64 %indvars.iv80.i, 2599
  br i1 %cmp172.i, label %if.then173.i, label %land.lhs.true.for.inc368_crit_edge.i

land.lhs.true.for.inc368_crit_edge.i:             ; preds = %land.lhs.true.i
  %.pre.i = add nuw nsw i64 %indvars.iv80.i, 1
  br label %for.inc368.i

if.then173.i:                                     ; preds = %land.lhs.true.i
  %cmp175.i = icmp ult i64 %indvars.iv80.i, 30
  %31 = add nuw nsw i64 %indvars.iv80.i, 1
  %32 = trunc i64 %31 to i32
  %div185.i = lshr i32 %32, 5
  %cond187.i = select i1 %cmp175.i, i32 0, i32 %div185.i
  %33 = shl nuw nsw i32 %cond187.i, 5
  %34 = zext i32 %cond187.i to i64
  %35 = shl nuw i32 %cond187.i, 5
  %36 = or i32 %35, 31
  %37 = shl nuw i32 %cond187.i, 5
  %38 = or i32 %37, 31
  br label %for.cond205.preheader.i

for.cond205.preheader.i:                          ; preds = %for.inc365.i, %if.then173.i
  %indvar = phi i32 [ %indvar.next, %for.inc365.i ], [ 0, %if.then173.i ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc365.i ], [ %34, %if.then173.i ]
  %indvars.iv61.i = phi i32 [ %indvars.iv.next62.i, %for.inc365.i ], [ %33, %if.then173.i ]
  %39 = shl i32 %indvar, 5
  %40 = add i32 %38, %39
  %umin78 = call i32 @llvm.umin.i32(i32 %40, i32 2599)
  %41 = add i32 %37, %39
  %umax79 = call i32 @llvm.umax.i32(i32 %20, i32 %41)
  %smax80 = call i32 @llvm.smax.i32(i32 %umin78, i32 %umax79)
  %42 = sub i32 %smax80, %umax79
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = shl i32 %indvar, 5
  %46 = add i32 %36, %45
  %umin67 = call i32 @llvm.umin.i32(i32 %46, i32 2599)
  %47 = add i32 %35, %45
  %umax = call i32 @llvm.umax.i32(i32 %21, i32 %47)
  %smax = call i32 @llvm.smax.i32(i32 %umin67, i32 %umax)
  %48 = sub i32 %smax, %umax
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, 1
  %umax71.i = tail call i32 @llvm.umax.i32(i32 %indvars.iv59.i, i32 %indvars.iv61.i) #9
  %51 = zext i32 %umax71.i to i64
  %52 = shl nsw i64 %indvars.iv61, 5
  %53 = trunc i64 %52 to i32
  %.not = icmp ult i64 %indvars.iv80.i, %52
  %cond245.i64 = select i1 %.not, i64 %52, i64 %31
  %54 = trunc i64 %cond245.i64 to i32
  %add249.i = or i32 %53, 31
  %55 = icmp ult i32 %add249.i, 2599
  %cond257.i = select i1 %55, i32 %add249.i, i32 2599
  %cmp258.not15.i = icmp slt i32 %cond257.i, %54
  br i1 %cmp258.not15.i, label %for.inc365.i, label %for.body221.i.preheader

for.body221.i.preheader:                          ; preds = %for.cond205.preheader.i
  %min.iters.check81 = icmp ult i32 %42, 3
  %n.vec84 = and i64 %44, 8589934588
  %ind.end88 = add nuw nsw i64 %n.vec84, %51
  %cmp.n89 = icmp eq i64 %44, %n.vec84
  br label %for.body221.i

for.body221.i:                                    ; preds = %for.body221.i.preheader, %for.inc280.i
  %indvars.iv53 = phi i32 [ %indvars.iv.next54, %for.inc280.i ], [ 31, %for.body221.i.preheader ]
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %for.inc280.i ], [ 0, %for.body221.i.preheader ]
  %t6.020.i = phi i32 [ %inc281.i, %for.inc280.i ], [ 0, %for.body221.i.preheader ]
  %umin55 = call i32 @llvm.umin.i32(i32 %indvars.iv53, i32 1999)
  %narrow65 = add nuw nsw i32 %umin55, 1
  %56 = zext i32 %narrow65 to i64
  %mul222.i = shl nuw nsw i32 %t6.020.i, 5
  %add226.i = or i32 %mul222.i, 31
  %57 = icmp ult i32 %add226.i, 1999
  %cond234.i = select i1 %57, i32 %add226.i, i32 1999
  %cmp235.not17.i = icmp ugt i32 %mul222.i, %cond234.i
  br i1 %cmp235.not17.i, label %for.inc280.i, label %for.body236.i

for.body236.i:                                    ; preds = %for.body221.i, %for.cond246.for.inc277_crit_edge.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.cond246.for.inc277_crit_edge.i ], [ %indvars.iv66.i, %for.body221.i ]
  %arrayidx263.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv68.i, i64 %indvars.iv80.i
  %58 = load double, double* %arrayidx263.i, align 8, !tbaa !2
  br i1 %min.iters.check81, label %for.body259.i.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %for.body236.i
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %58, i32 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %58, i32 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next86, %vector.body77 ]
  %offset.idx90 = add i64 %index85, %51
  %59 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %offset.idx90
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load91 = load <2 x double>, <2 x double>* %60, align 8, !tbaa !2
  %61 = getelementptr inbounds double, double* %59, i64 2
  %62 = bitcast double* %61 to <2 x double>*
  %wide.load92 = load <2 x double>, <2 x double>* %62, align 8, !tbaa !2
  %63 = fmul <2 x double> %broadcast.splat94, %wide.load91
  %64 = fmul <2 x double> %broadcast.splat96, %wide.load92
  %65 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv80.i, i64 %offset.idx90
  %66 = bitcast double* %65 to <2 x double>*
  %wide.load97 = load <2 x double>, <2 x double>* %66, align 8, !tbaa !2
  %67 = getelementptr inbounds double, double* %65, i64 2
  %68 = bitcast double* %67 to <2 x double>*
  %wide.load98 = load <2 x double>, <2 x double>* %68, align 8, !tbaa !2
  %69 = fadd <2 x double> %wide.load97, %63
  %70 = fadd <2 x double> %wide.load98, %64
  %71 = bitcast double* %65 to <2 x double>*
  store <2 x double> %69, <2 x double>* %71, align 8, !tbaa !2
  %72 = bitcast double* %67 to <2 x double>*
  store <2 x double> %70, <2 x double>* %72, align 8, !tbaa !2
  %index.next86 = add i64 %index85, 4
  %73 = icmp eq i64 %index.next86, %n.vec84
  br i1 %73, label %middle.block75, label %vector.body77, !llvm.loop !15

middle.block75:                                   ; preds = %vector.body77
  br i1 %cmp.n89, label %for.cond246.for.inc277_crit_edge.i, label %for.body259.i.preheader

for.body259.i.preheader:                          ; preds = %for.body236.i, %middle.block75
  %indvars.iv64.i.ph = phi i64 [ %51, %for.body236.i ], [ %ind.end88, %middle.block75 ]
  br label %for.body259.i

for.body259.i:                                    ; preds = %for.body259.i.preheader, %for.body259.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body259.i ], [ %indvars.iv64.i.ph, %for.body259.i.preheader ]
  %arrayidx267.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv64.i
  %74 = load double, double* %arrayidx267.i, align 8, !tbaa !2
  %mul268.i = fmul double %58, %74
  %arrayidx272.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv80.i, i64 %indvars.iv64.i
  %75 = load double, double* %arrayidx272.i, align 8, !tbaa !2
  %add273.i = fadd double %75, %mul268.i
  store double %add273.i, double* %arrayidx272.i, align 8, !tbaa !2
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %76 = trunc i64 %indvars.iv64.i to i32
  %cmp258.not.not.i = icmp sgt i32 %cond257.i, %76
  br i1 %cmp258.not.not.i, label %for.body259.i, label %for.cond246.for.inc277_crit_edge.i, !llvm.loop !17

for.cond246.for.inc277_crit_edge.i:               ; preds = %for.body259.i, %middle.block75
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next69.i, %56
  br i1 %exitcond56.not, label %for.inc280.i, label %for.body236.i, !llvm.loop !19

for.inc280.i:                                     ; preds = %for.cond246.for.inc277_crit_edge.i, %for.body221.i
  %inc281.i = add nuw nsw i32 %t6.020.i, 1
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 32
  %exitcond70.not.i = icmp eq i32 %inc281.i, 63
  %indvars.iv.next54 = add nuw nsw i32 %indvars.iv53, 32
  br i1 %exitcond70.not.i, label %for.body299.i.preheader, label %for.body221.i, !llvm.loop !20

for.body299.i.preheader:                          ; preds = %for.inc280.i
  %min.iters.check = icmp ult i32 %48, 3
  %n.vec = and i64 %50, 8589934588
  %ind.end = add nuw nsw i64 %n.vec, %51
  %cmp.n = icmp eq i64 %50, %n.vec
  br label %for.body299.i

for.body299.i:                                    ; preds = %for.body299.i.preheader, %for.inc362.i
  %indvars.iv57 = phi i32 [ %indvars.iv.next58, %for.inc362.i ], [ 31, %for.body299.i.preheader ]
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc362.i ], [ 0, %for.body299.i.preheader ]
  %t6.126.i = phi i32 [ %inc363.i, %for.inc362.i ], [ 0, %for.body299.i.preheader ]
  %umin59 = call i32 @llvm.umin.i32(i32 %indvars.iv57, i32 1999)
  %narrow66 = add nuw nsw i32 %umin59, 1
  %77 = zext i32 %narrow66 to i64
  %mul300.i = shl nuw nsw i32 %t6.126.i, 5
  %add304.i = or i32 %mul300.i, 31
  %78 = icmp ult i32 %add304.i, 1999
  %cond312.i = select i1 %78, i32 %add304.i, i32 1999
  %cmp313.not23.i = icmp ugt i32 %mul300.i, %cond312.i
  br i1 %cmp313.not23.i, label %for.inc362.i, label %for.body314.i

for.body314.i:                                    ; preds = %for.body299.i, %for.cond324.for.inc359_crit_edge.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.cond324.for.inc359_crit_edge.i ], [ %indvars.iv74.i, %for.body299.i ]
  %arrayidx345.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv76.i, i64 %indvars.iv80.i
  %79 = load double, double* %arrayidx345.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body337.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body314.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %79, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %79, i32 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %51
  %80 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv76.i, i64 %offset.idx
  %81 = bitcast double* %80 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %81, align 8, !tbaa !2
  %82 = getelementptr inbounds double, double* %80, i64 2
  %83 = bitcast double* %82 to <2 x double>*
  %wide.load70 = load <2 x double>, <2 x double>* %83, align 8, !tbaa !2
  %84 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv80.i, i64 %offset.idx
  %85 = bitcast double* %84 to <2 x double>*
  %wide.load71 = load <2 x double>, <2 x double>* %85, align 8, !tbaa !2
  %86 = getelementptr inbounds double, double* %84, i64 2
  %87 = bitcast double* %86 to <2 x double>*
  %wide.load72 = load <2 x double>, <2 x double>* %87, align 8, !tbaa !2
  %88 = fmul <2 x double> %broadcast.splat, %wide.load71
  %89 = fmul <2 x double> %broadcast.splat74, %wide.load72
  %90 = fsub <2 x double> %wide.load, %88
  %91 = fsub <2 x double> %wide.load70, %89
  %92 = bitcast double* %80 to <2 x double>*
  store <2 x double> %90, <2 x double>* %92, align 8, !tbaa !2
  %93 = bitcast double* %82 to <2 x double>*
  store <2 x double> %91, <2 x double>* %93, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %94 = icmp eq i64 %index.next, %n.vec
  br i1 %94, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond324.for.inc359_crit_edge.i, label %for.body337.i.preheader

for.body337.i.preheader:                          ; preds = %for.body314.i, %middle.block
  %indvars.iv72.i.ph = phi i64 [ %51, %for.body314.i ], [ %ind.end, %middle.block ]
  br label %for.body337.i

for.body337.i:                                    ; preds = %for.body337.i.preheader, %for.body337.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.body337.i ], [ %indvars.iv72.i.ph, %for.body337.i.preheader ]
  %arrayidx341.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv76.i, i64 %indvars.iv72.i
  %95 = load double, double* %arrayidx341.i, align 8, !tbaa !2
  %arrayidx349.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv80.i, i64 %indvars.iv72.i
  %96 = load double, double* %arrayidx349.i, align 8, !tbaa !2
  %mul350.i = fmul double %79, %96
  %sub351.i = fsub double %95, %mul350.i
  store double %sub351.i, double* %arrayidx341.i, align 8, !tbaa !2
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %97 = trunc i64 %indvars.iv72.i to i32
  %cmp336.not.not.i = icmp sgt i32 %cond257.i, %97
  br i1 %cmp336.not.not.i, label %for.body337.i, label %for.cond324.for.inc359_crit_edge.i, !llvm.loop !22

for.cond324.for.inc359_crit_edge.i:               ; preds = %for.body337.i, %middle.block
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next77.i, %77
  br i1 %exitcond60.not, label %for.inc362.i, label %for.body314.i, !llvm.loop !23

for.inc362.i:                                     ; preds = %for.cond324.for.inc359_crit_edge.i, %for.body299.i
  %inc363.i = add nuw nsw i32 %t6.126.i, 1
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 32
  %exitcond78.not.i = icmp eq i32 %inc363.i, 63
  %indvars.iv.next58 = add nuw nsw i32 %indvars.iv57, 32
  br i1 %exitcond78.not.i, label %for.inc365.i, label %for.body299.i, !llvm.loop !24

for.inc365.i:                                     ; preds = %for.inc362.i, %for.cond205.preheader.i
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %indvars.iv.next62.i = add nuw i32 %indvars.iv61.i, 32
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next62, 82
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond79.not.i, label %for.inc368.i, label %for.cond205.preheader.i, !llvm.loop !25

for.inc368.i:                                     ; preds = %for.inc365.i, %land.lhs.true.for.inc368_crit_edge.i
  %indvars.iv.next81.pre-phi.i = phi i64 [ %.pre.i, %land.lhs.true.for.inc368_crit_edge.i ], [ %31, %for.inc365.i ]
  %indvars.iv.next60.i = add nuw nsw i32 %indvars.iv59.i, 1
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next81.pre-phi.i, 2600
  %indvar.next69 = add i32 %indvar68, 1
  br i1 %exitcond85.not.i, label %kernel_gramschmidt.exit, label %for.cond98.preheader.i, !llvm.loop !26

kernel_gramschmidt.exit:                          ; preds = %for.inc368.i
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %98 = load i8*, i8** %argv, align 8, !tbaa !27
  %strcmpload = load i8, i8* %98, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %100 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %99) #10
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv7.i36 = phi i64 [ 0, %if.then ], [ %indvars.iv.next8.i41, %for.inc10.i ]
  %102 = mul nuw nsw i64 %indvars.iv7.i36, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i37 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i39, %if.end.i ]
  %103 = add nuw nsw i64 %indvars.iv.i37, %102
  %104 = trunc i64 %103 to i32
  %rem.i38 = urem i32 %104, 20
  %cmp5.i = icmp eq i32 %rem.i38, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %105) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv7.i36, i64 %indvars.iv.i37
  %107 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %107) #10
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i37, 1
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.next.i39, 2600
  br i1 %exitcond.not.i40, label %for.inc10.i, label %for.body4.i, !llvm.loop !29

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next8.i41 = add nuw nsw i64 %indvars.iv7.i36, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i41, 2600
  br i1 %exitcond10.not.i, label %for.end12.i, label %for.cond2.preheader.i, !llvm.loop !30

for.end12.i:                                      ; preds = %for.inc10.i
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call14.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.inc36.i, %for.end12.i
  %indvars.iv15.i = phi i64 [ 0, %for.end12.i ], [ %indvars.iv.next16.i, %for.inc36.i ]
  %110 = mul nuw nsw i64 %indvars.iv15.i, 2600
  br label %for.body20.i

for.body20.i:                                     ; preds = %if.end27.i, %for.cond18.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next12.i, %if.end27.i ]
  %111 = add nuw nsw i64 %indvars.iv11.i, %110
  %112 = trunc i64 %111 to i32
  %rem23.i = urem i32 %112, 20
  %cmp24.i = icmp eq i32 %rem23.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %for.body20.i
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %113) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %for.body20.i
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx31.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %115 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %115) #10
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond14.not.i, label %for.inc36.i, label %for.body20.i, !llvm.loop !31

for.inc36.i:                                      ; preds = %if.end27.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next16.i, 2000
  br i1 %exitcond18.not.i, label %print_array.exit, label %for.cond18.preheader.i, !llvm.loop !32

print_array.exit:                                 ; preds = %for.inc36.i
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call39.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %118 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %117) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i30) #9
  tail call void @free(i8* %call.i31) #9
  ret i32 0
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = distinct !{!15, !7, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !7, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7, !16}
!22 = distinct !{!22, !7, !18, !16}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !4, i64 0}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
