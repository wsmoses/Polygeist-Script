; ModuleID = 'gemm.plutopar.c'
source_filename = "gemm.plutopar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(36800000) i8* @malloc(i64 36800000) #7
  %call.i28 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %call.i29 = tail call noalias dereferenceable_or_null(47840000) i8* @malloc(i64 47840000) #7
  %arraydecay = bitcast i8* %call.i to [2300 x double]*
  %arraydecay3 = bitcast i8* %call.i28 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv9.i = phi i64 [ 0, %entry ], [ %indvars.iv.next10.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv9.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv9.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2300
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2000
  br i1 %exitcond11.not.i, label %for.cond14.preheader.i, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i:                           ; preds = %for.inc7.i, %for.inc31.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc31.i ], [ 0, %for.inc7.i ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv12.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next13.i, %for.body17.i ]
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next13.i, %indvars.iv16.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 2600
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.600000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv12.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next13.i, 2600
  br i1 %exitcond15.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond18.not.i, label %for.cond38.preheader.i.preheader, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i.preheader:                 ; preds = %for.inc31.i
  %arraydecay4 = bitcast i8* %call.i29 to [2300 x double]*
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.cond38.preheader.i.preheader, %for.inc55.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc55.i ], [ 0, %for.cond38.preheader.i.preheader ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next20.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv19.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv24.i
  %7 = trunc i64 %6 to i32
  %rem44.i = urem i32 %7, 2300
  %conv45.i = sitofp i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 2.300000e+03
  %arrayidx51.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv24.i, i64 %indvars.iv19.i
  store double %div47.i, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, 2300
  br i1 %exitcond23.not.i, label %for.inc55.i, label %for.body41.i, !llvm.loop !11

for.inc55.i:                                      ; preds = %for.body41.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 2600
  br i1 %exitcond26.not.i, label %init_array.exit, label %for.cond38.preheader.i, !llvm.loop !12

init_array.exit:                                  ; preds = %for.inc55.i
  tail call void (...) @polybench_timer_start() #7
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.inc65.i, %init_array.exit
  %indvars.iv39 = phi i32 [ %indvars.iv.next40, %for.inc65.i ], [ 31, %init_array.exit ]
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %for.inc65.i ], [ 0, %init_array.exit ]
  %t2.08.i = phi i32 [ %inc66.i, %for.inc65.i ], [ 0, %init_array.exit ]
  %umin41 = call i32 @llvm.umin.i32(i32 %indvars.iv39, i32 1999)
  %narrow = add nuw nsw i32 %umin41, 1
  %8 = zext i32 %narrow to i64
  %mul.i = shl nsw i32 %t2.08.i, 5
  %add30.i = or i32 %mul.i, 31
  %9 = icmp ult i32 %add30.i, 1999
  %cond38.i = select i1 %9, i32 %add30.i, i32 1999
  %cmp39.not3.i = icmp ugt i32 %mul.i, %cond38.i
  br i1 %cmp39.not3.i, label %for.inc65.i, label %for.body26.i

for.body26.i:                                     ; preds = %for.cond10.preheader.i, %for.cond27.for.inc62_crit_edge.i
  %indvar = phi i64 [ %indvar.next, %for.cond27.for.inc62_crit_edge.i ], [ 0, %for.cond10.preheader.i ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond27.for.inc62_crit_edge.i ], [ 31, %for.cond10.preheader.i ]
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i31, %for.cond27.for.inc62_crit_edge.i ], [ 0, %for.cond10.preheader.i ]
  %t3.06.i = phi i32 [ %inc63.i, %for.cond27.for.inc62_crit_edge.i ], [ 0, %for.cond10.preheader.i ]
  %10 = mul nsw i64 %indvar, -32
  %11 = or i64 %10, 1
  %indvar.tr = trunc i64 %indvar to i32
  %12 = shl i32 %indvar.tr, 5
  %13 = or i32 %12, 31
  %umin59 = call i32 @llvm.umin.i32(i32 %13, i32 2299)
  %14 = zext i32 %umin59 to i64
  %15 = add i64 %11, %14
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 2299)
  %narrow55 = add nuw nsw i32 %umin, 1
  %16 = zext i32 %narrow55 to i64
  %mul41.i = shl nsw i32 %t3.06.i, 5
  %add45.i = or i32 %mul41.i, 31
  %17 = icmp ult i32 %add45.i, 2299
  %cond53.i = select i1 %17, i32 %add45.i, i32 2299
  %cmp54.not1.i = icmp ugt i32 %mul41.i, %cond53.i
  br i1 %cmp54.not1.i, label %for.cond27.for.inc62_crit_edge.i, label %for.body40.i.preheader

for.body40.i.preheader:                           ; preds = %for.body26.i
  %min.iters.check = icmp eq i64 %15, 0
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.preheader, %for.cond42.for.inc59_crit_edge.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.cond42.for.inc59_crit_edge.i ], [ %indvars.iv39.i, %for.body40.i.preheader ]
  br i1 %min.iters.check, label %for.body55.i, label %vector.body

vector.body:                                      ; preds = %for.body40.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body40.i ]
  %offset.idx = add i64 %indvars.iv.i30, %index
  %18 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv41.i, i64 %offset.idx
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %19, align 8, !tbaa !2
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load60 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !2
  %22 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %23 = fmul <2 x double> %wide.load60, <double 1.200000e+00, double 1.200000e+00>
  %24 = bitcast double* %18 to <2 x double>*
  store <2 x double> %22, <2 x double>* %24, align 8, !tbaa !2
  %25 = bitcast double* %20 to <2 x double>*
  store <2 x double> %23, <2 x double>* %25, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %26 = icmp eq i64 %index.next, %15
  br i1 %26, label %for.cond42.for.inc59_crit_edge.i, label %vector.body, !llvm.loop !13

for.body55.i:                                     ; preds = %for.body40.i, %for.body55.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.body55.i ], [ %indvars.iv.i30, %for.body40.i ]
  %arrayidx57.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv41.i, i64 %indvars.iv37.i
  %27 = load double, double* %arrayidx57.i, align 8, !tbaa !2
  %mul58.i = fmul double %27, 1.200000e+00
  store double %mul58.i, double* %arrayidx57.i, align 8, !tbaa !2
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next38.i, %16
  br i1 %exitcond.not, label %for.cond42.for.inc59_crit_edge.i, label %for.body55.i, !llvm.loop !15

for.cond42.for.inc59_crit_edge.i:                 ; preds = %vector.body, %for.body55.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next42.i, %8
  br i1 %exitcond42.not, label %for.cond27.for.inc62_crit_edge.i, label %for.body40.i, !llvm.loop !17

for.cond27.for.inc62_crit_edge.i:                 ; preds = %for.cond42.for.inc59_crit_edge.i, %for.body26.i
  %inc63.i = add nuw nsw i32 %t3.06.i, 1
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 32
  %exitcond.not.i32 = icmp eq i32 %inc63.i, 72
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i32, label %for.inc65.i, label %for.body26.i, !llvm.loop !18

for.inc65.i:                                      ; preds = %for.cond27.for.inc62_crit_edge.i, %for.cond10.preheader.i
  %inc66.i = add nuw nsw i32 %t2.08.i, 1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 32
  %exitcond43.not.i = icmp eq i32 %inc66.i, 63
  %indvars.iv.next40 = add nuw nsw i32 %indvars.iv39, 32
  br i1 %exitcond43.not.i, label %for.cond87.preheader.i, label %for.cond10.preheader.i, !llvm.loop !19

for.cond87.preheader.i:                           ; preds = %for.inc65.i, %for.inc196.i
  %indvars.iv51 = phi i32 [ %indvars.iv.next52, %for.inc196.i ], [ 31, %for.inc65.i ]
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.inc196.i ], [ 0, %for.inc65.i ]
  %t2.130.i = phi i32 [ %inc197.i, %for.inc196.i ], [ 0, %for.inc65.i ]
  %umin53 = call i32 @llvm.umin.i32(i32 %indvars.iv51, i32 1999)
  %narrow56 = add nuw nsw i32 %umin53, 1
  %28 = zext i32 %narrow56 to i64
  %mul121.i = shl nsw i32 %t2.130.i, 5
  %add125.i = or i32 %mul121.i, 31
  %29 = icmp ult i32 %add125.i, 1999
  %cond133.i = select i1 %29, i32 %add125.i, i32 1999
  %cmp134.not14.i = icmp ugt i32 %mul121.i, %cond133.i
  br i1 %cmp134.not14.i, label %for.inc196.i, label %for.cond104.preheader.i

for.cond104.preheader.i:                          ; preds = %for.cond87.preheader.i, %for.inc193.split.i
  %indvar64 = phi i64 [ %indvar.next65, %for.inc193.split.i ], [ 0, %for.cond87.preheader.i ]
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %for.inc193.split.i ], [ 31, %for.cond87.preheader.i ]
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %for.inc193.split.i ], [ 0, %for.cond87.preheader.i ]
  %t3.129.i = phi i32 [ %inc194.i, %for.inc193.split.i ], [ 0, %for.cond87.preheader.i ]
  %30 = mul nsw i64 %indvar64, -32
  %31 = or i64 %30, 1
  %indvar64.tr = trunc i64 %indvar64 to i32
  %32 = shl i32 %indvar64.tr, 5
  %33 = or i32 %32, 31
  %umin66 = call i32 @llvm.umin.i32(i32 %33, i32 2299)
  %34 = zext i32 %umin66 to i64
  %35 = add i64 %31, %34
  %umin45 = call i32 @llvm.umin.i32(i32 %indvars.iv43, i32 2299)
  %narrow57 = add nuw nsw i32 %umin45, 1
  %36 = zext i32 %narrow57 to i64
  %mul151.i = shl nsw i32 %t3.129.i, 5
  %add155.i = or i32 %mul151.i, 31
  %37 = icmp ult i32 %add155.i, 2299
  %cond163.i = select i1 %37, i32 %add155.i, i32 2299
  %cmp164.not9.i = icmp ugt i32 %mul151.i, %cond163.i
  br i1 %cmp164.not9.i, label %for.inc193.split.i, label %for.body120.i.preheader

for.body120.i.preheader:                          ; preds = %for.cond104.preheader.i
  %min.iters.check67 = icmp eq i64 %35, 0
  br label %for.body120.i

for.body120.i:                                    ; preds = %for.body120.i.preheader, %for.cond122.for.inc190_crit_edge.i
  %indvars.iv47 = phi i32 [ %indvars.iv.next48, %for.cond122.for.inc190_crit_edge.i ], [ 31, %for.body120.i.preheader ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.cond122.for.inc190_crit_edge.i ], [ 0, %for.body120.i.preheader ]
  %t4.121.i = phi i32 [ %inc191.i, %for.cond122.for.inc190_crit_edge.i ], [ 0, %for.body120.i.preheader ]
  %umin49 = call i32 @llvm.umin.i32(i32 %indvars.iv47, i32 2599)
  %narrow58 = add nuw nsw i32 %umin49, 1
  %38 = zext i32 %narrow58 to i64
  %mul136.i = shl nsw i32 %t4.121.i, 5
  %add140.i = or i32 %mul136.i, 31
  %39 = icmp ult i32 %add140.i, 2599
  %cond148.i = select i1 %39, i32 %add140.i, i32 2599
  %cmp149.not11.i = icmp ugt i32 %mul136.i, %cond148.i
  br i1 %cmp149.not11.i, label %for.cond122.for.inc190_crit_edge.i, label %for.body135.i

for.body135.i:                                    ; preds = %for.body120.i, %for.cond137.for.inc187_crit_edge.split.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.cond137.for.inc187_crit_edge.split.i ], [ %indvars.iv52.i, %for.body120.i ]
  br label %for.body150.i

for.body150.i:                                    ; preds = %for.cond152.for.inc184_crit_edge.i, %for.body135.i
  %indvars.iv50.i = phi i64 [ %indvars.iv48.i, %for.body135.i ], [ %indvars.iv.next51.i, %for.cond152.for.inc184_crit_edge.i ]
  %arrayidx169.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv54.i, i64 %indvars.iv50.i
  %40 = load double, double* %arrayidx169.i, align 8, !tbaa !2
  %mul170.i = fmul double %40, 1.500000e+00
  br i1 %min.iters.check67, label %for.body165.i, label %vector.ph68

vector.ph68:                                      ; preds = %for.body150.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul170.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %mul170.i, i32 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next72, %vector.body63 ]
  %offset.idx76 = add i64 %indvars.iv44.i, %index71
  %41 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv50.i, i64 %offset.idx76
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load77 = load <2 x double>, <2 x double>* %42, align 8, !tbaa !2
  %43 = getelementptr inbounds double, double* %41, i64 2
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load78 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2
  %45 = fmul <2 x double> %broadcast.splat, %wide.load77
  %46 = fmul <2 x double> %broadcast.splat80, %wide.load78
  %47 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv54.i, i64 %offset.idx76
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load81 = load <2 x double>, <2 x double>* %48, align 8, !tbaa !2
  %49 = getelementptr inbounds double, double* %47, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load82 = load <2 x double>, <2 x double>* %50, align 8, !tbaa !2
  %51 = fadd <2 x double> %wide.load81, %45
  %52 = fadd <2 x double> %wide.load82, %46
  %53 = bitcast double* %47 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !tbaa !2
  %54 = bitcast double* %49 to <2 x double>*
  store <2 x double> %52, <2 x double>* %54, align 8, !tbaa !2
  %index.next72 = add i64 %index71, 4
  %55 = icmp eq i64 %index.next72, %35
  br i1 %55, label %for.cond152.for.inc184_crit_edge.i, label %vector.body63, !llvm.loop !20

for.body165.i:                                    ; preds = %for.body150.i, %for.body165.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.body165.i ], [ %indvars.iv44.i, %for.body150.i ]
  %arrayidx174.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv50.i, i64 %indvars.iv46.i
  %56 = load double, double* %arrayidx174.i, align 8, !tbaa !2
  %mul175.i = fmul double %mul170.i, %56
  %arrayidx179.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv54.i, i64 %indvars.iv46.i
  %57 = load double, double* %arrayidx179.i, align 8, !tbaa !2
  %add180.i = fadd double %57, %mul175.i
  store double %add180.i, double* %arrayidx179.i, align 8, !tbaa !2
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next47.i, %36
  br i1 %exitcond46.not, label %for.cond152.for.inc184_crit_edge.i, label %for.body165.i, !llvm.loop !21

for.cond152.for.inc184_crit_edge.i:               ; preds = %vector.body63, %for.body165.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next51.i, %38
  br i1 %exitcond50.not, label %for.cond137.for.inc187_crit_edge.split.i, label %for.body150.i, !llvm.loop !22

for.cond137.for.inc187_crit_edge.split.i:         ; preds = %for.cond152.for.inc184_crit_edge.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next55.i, %28
  br i1 %exitcond54.not, label %for.cond122.for.inc190_crit_edge.i, label %for.body135.i, !llvm.loop !23

for.cond122.for.inc190_crit_edge.i:               ; preds = %for.cond137.for.inc187_crit_edge.split.i, %for.body120.i
  %inc191.i = add nuw nsw i32 %t4.121.i, 1
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 32
  %exitcond56.not.i = icmp eq i32 %inc191.i, 82
  %indvars.iv.next48 = add nuw nsw i32 %indvars.iv47, 32
  br i1 %exitcond56.not.i, label %for.inc193.split.i, label %for.body120.i, !llvm.loop !24

for.inc193.split.i:                               ; preds = %for.cond122.for.inc190_crit_edge.i, %for.cond104.preheader.i
  %inc194.i = add nuw nsw i32 %t3.129.i, 1
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 32
  %exitcond57.not.i = icmp eq i32 %inc194.i, 72
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 32
  %indvar.next65 = add i64 %indvar64, 1
  br i1 %exitcond57.not.i, label %for.inc196.i, label %for.cond104.preheader.i, !llvm.loop !25

for.inc196.i:                                     ; preds = %for.inc193.split.i, %for.cond87.preheader.i
  %inc197.i = add nuw nsw i32 %t2.130.i, 1
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 32
  %exitcond58.not.i = icmp eq i32 %inc197.i, 63
  %indvars.iv.next52 = add nuw nsw i32 %indvars.iv51, 32
  br i1 %exitcond58.not.i, label %kernel_gemm.exit, label %for.cond87.preheader.i, !llvm.loop !26

kernel_gemm.exit:                                 ; preds = %for.inc196.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemm.exit
  %58 = load i8*, i8** %argv, align 8, !tbaa !27
  %strcmpload = load i8, i8* %58, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %59) #8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %62 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i33 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i35, %if.end.i ]
  %63 = add nuw nsw i64 %indvars.iv.i33, %62
  %64 = trunc i64 %63 to i32
  %rem.i34 = urem i32 %64, 20
  %cmp5.i = icmp eq i32 %rem.i34, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %65) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx8.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i33
  %67 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %67) #8
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, 2300
  br i1 %exitcond.not.i36, label %for.inc10.i, label %for.body4.i, !llvm.loop !29

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !30

print_array.exit:                                 ; preds = %for.inc10.i
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %69) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemm.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i28) #7
  tail call void @free(i8* %call.i29) #7
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !7, !16, !14}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7, !14}
!21 = distinct !{!21, !7, !16, !14}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !4, i64 0}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
