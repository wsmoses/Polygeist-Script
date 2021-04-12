; ModuleID = 'syr2k.plutopar.c'
source_filename = "syr2k.plutopar.c"
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
  %call.i = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #7
  %call.i25 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %call.i26 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %arraydecay3 = bitcast i8* %call.i25 to [2000 x double]*
  %arraydecay4 = bitcast i8* %call.i26 to [2000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc17.i, %entry
  %indvars.iv8.i = phi i64 [ 0, %entry ], [ %indvars.iv.next9.i, %for.inc17.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv8.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.600000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %3 = add i32 %1, 2
  %rem9.i = urem i32 %3, 2000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fdiv double %conv10.i, 2.000000e+03
  %arrayidx16.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !6

for.inc17.i:                                      ; preds = %for.body3.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 2600
  br i1 %exitcond10.not.i, label %for.cond24.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond24.preheader.i.preheader:                 ; preds = %for.inc17.i
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  br label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.cond24.preheader.i.preheader, %for.inc41.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc41.i ], [ 0, %for.cond24.preheader.i.preheader ]
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i, %for.cond24.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond24.preheader.i ], [ %indvars.iv.next12.i, %for.body27.i ]
  %4 = mul nuw nsw i64 %indvars.iv11.i, %indvars.iv16.i
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 3
  %rem30.i = urem i32 %6, 2600
  %conv31.i = sitofp i32 %rem30.i to double
  %div33.i = fdiv double %conv31.i, 2.000000e+03
  %arrayidx37.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %indvars.iv11.i
  store double %div33.i, double* %arrayidx37.i, align 8, !tbaa !2
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond15.not.i, label %for.inc41.i, label %for.body27.i, !llvm.loop !9

for.inc41.i:                                      ; preds = %for.body27.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2600
  br i1 %exitcond18.not.i, label %init_array.exit, label %for.cond24.preheader.i, !llvm.loop !10

init_array.exit:                                  ; preds = %for.inc41.i
  tail call void (...) @polybench_timer_start() #7
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc48.i, %init_array.exit
  %indvar = phi i64 [ %indvar.next, %for.inc48.i ], [ 0, %init_array.exit ]
  %indvars.iv36 = phi i32 [ %indvars.iv.next37, %for.inc48.i ], [ 31, %init_array.exit ]
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.inc48.i ], [ 1, %init_array.exit ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.inc48.i ], [ 0, %init_array.exit ]
  %t2.08.i = phi i32 [ %inc49.i, %for.inc48.i ], [ 0, %init_array.exit ]
  %7 = shl nuw nsw i64 %indvar, 5
  %8 = shl nuw nsw i64 %indvar, 5
  %umin38 = call i32 @llvm.umin.i32(i32 %indvars.iv36, i32 2599)
  %narrow = add nuw nsw i32 %umin38, 1
  %9 = zext i32 %narrow to i64
  %mul.i = shl nsw i32 %t2.08.i, 5
  %add15.i = or i32 %mul.i, 31
  %10 = icmp ult i32 %add15.i, 2599
  %cond23.i = select i1 %10, i32 %add15.i, i32 2599
  %cmp24.not3.i = icmp ugt i32 %mul.i, %cond23.i
  br i1 %cmp24.not3.i, label %for.inc48.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond9.preheader.i, %for.cond12.for.inc45_crit_edge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond12.for.inc45_crit_edge.i ], [ 31, %for.cond9.preheader.i ]
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.cond12.for.inc45_crit_edge.i ], [ 0, %for.cond9.preheader.i ]
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %for.cond12.for.inc45_crit_edge.i ], [ 0, %for.cond9.preheader.i ]
  %11 = mul nsw i64 %indvars.iv32.i, -32
  %12 = or i64 %11, 1
  %13 = shl nuw nsw i64 %indvars.iv32.i, 5
  %14 = or i64 %13, 31
  %15 = mul nsw i64 %indvars.iv32.i, -32
  %16 = or i64 %15, 1
  %17 = shl nuw nsw i64 %indvars.iv32.i, 5
  %18 = or i64 %17, 31
  %19 = shl nsw i64 %indvars.iv32.i, 5
  %20 = or i64 %19, 31
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc42.i, %for.body11.i
  %indvar54 = phi i64 [ %indvar.next55, %for.inc42.i ], [ 0, %for.body11.i ]
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.inc42.i ], [ %indvars.iv28.i, %for.body11.i ]
  %21 = add i64 %7, %indvar54
  %umin59 = call i64 @llvm.umin.i64(i64 %14, i64 %21)
  %22 = add i64 %12, %umin59
  %23 = add i64 %22, -4
  %24 = lshr i64 %23, 2
  %25 = add nuw nsw i64 %24, 1
  %26 = add i64 %8, %indvar54
  %umin56 = call i64 @llvm.umin.i64(i64 %18, i64 %26)
  %27 = add i64 %16, %umin56
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv30.i)
  %cmp30.i = icmp ult i64 %indvars.iv30.i, %20
  %cond36.v.i = select i1 %cmp30.i, i64 %indvars.iv30.i, i64 %20
  %28 = and i64 %cond36.v.i, 4294967295
  %cmp37.not1.i = icmp ugt i64 %19, %28
  br i1 %cmp37.not1.i, label %for.inc42.i, label %for.body38.i.preheader

for.body38.i.preheader:                           ; preds = %for.body25.i
  %min.iters.check = icmp ult i64 %27, 4
  br i1 %min.iters.check, label %for.body38.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %for.body38.i.preheader
  %n.vec = and i64 %27, -4
  %ind.end = add i64 %indvars.iv.i27, %n.vec
  %xtraiter = and i64 %25, 1
  %29 = icmp eq i64 %24, 0
  br i1 %29, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %25, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %indvars.iv.i27, %index
  %30 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx
  %31 = bitcast double* %30 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %32 = getelementptr inbounds double, double* %30, i64 2
  %33 = bitcast double* %32 to <2 x double>*
  %wide.load57 = load <2 x double>, <2 x double>* %33, align 8, !tbaa !2
  %34 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %35 = fmul <2 x double> %wide.load57, <double 1.200000e+00, double 1.200000e+00>
  %36 = bitcast double* %30 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !tbaa !2
  %37 = bitcast double* %32 to <2 x double>*
  store <2 x double> %35, <2 x double>* %37, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %indvars.iv.i27, %index.next
  %38 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx.1
  %39 = bitcast double* %38 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %39, align 8, !tbaa !2
  %40 = getelementptr inbounds double, double* %38, i64 2
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load57.1 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !2
  %42 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %43 = fmul <2 x double> %wide.load57.1, <double 1.200000e+00, double 1.200000e+00>
  %44 = bitcast double* %38 to <2 x double>*
  store <2 x double> %42, <2 x double>* %44, align 8, !tbaa !2
  %45 = bitcast double* %40 to <2 x double>*
  store <2 x double> %43, <2 x double>* %45, align 8, !tbaa !2
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !11

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %indvars.iv.i27, %index.unr
  %46 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx.epil
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %47, align 8, !tbaa !2
  %48 = getelementptr inbounds double, double* %46, i64 2
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load57.epil = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %50 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %51 = fmul <2 x double> %wide.load57.epil, <double 1.200000e+00, double 1.200000e+00>
  %52 = bitcast double* %46 to <2 x double>*
  store <2 x double> %50, <2 x double>* %52, align 8, !tbaa !2
  %53 = bitcast double* %48 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !tbaa !2
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %27, %n.vec
  br i1 %cmp.n, label %for.inc42.i, label %for.body38.i.preheader58

for.body38.i.preheader58:                         ; preds = %for.body38.i.preheader, %middle.block
  %indvars.iv26.i.ph = phi i64 [ %indvars.iv.i27, %for.body38.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i.preheader58, %for.body38.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.body38.i ], [ %indvars.iv26.i.ph, %for.body38.i.preheader58 ]
  %arrayidx40.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %indvars.iv26.i
  %54 = load double, double* %arrayidx40.i, align 8, !tbaa !2
  %mul41.i = fmul double %54, 1.200000e+00
  store double %mul41.i, double* %arrayidx40.i, align 8, !tbaa !2
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv26.i, %umin
  br i1 %exitcond.not, label %for.inc42.i, label %for.body38.i, !llvm.loop !13

for.inc42.i:                                      ; preds = %for.body38.i, %middle.block, %for.body25.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next31.i, %9
  %indvar.next55 = add i64 %indvar54, 1
  br i1 %exitcond39.not, label %for.cond12.for.inc45_crit_edge.i, label %for.body25.i, !llvm.loop !15

for.cond12.for.inc45_crit_edge.i:                 ; preds = %for.inc42.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 32
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next33.i, %indvars.iv38.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  br i1 %exitcond.not.i29, label %for.inc48.i, label %for.body11.i, !llvm.loop !16

for.inc48.i:                                      ; preds = %for.cond12.for.inc45_crit_edge.i, %for.cond9.preheader.i
  %inc49.i = add nuw nsw i32 %t2.08.i, 1
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 32
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond40.not.i = icmp eq i32 %inc49.i, 82
  %indvars.iv.next37 = add nuw nsw i32 %indvars.iv36, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond40.not.i, label %for.cond70.preheader.i, label %for.cond9.preheader.i, !llvm.loop !17

for.cond70.preheader.i:                           ; preds = %for.inc48.i, %for.inc174.i
  %indvars.iv48 = phi i32 [ %indvars.iv.next49, %for.inc174.i ], [ 31, %for.inc48.i ]
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.inc174.i ], [ 1, %for.inc48.i ]
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.inc174.i ], [ 0, %for.inc48.i ]
  %t2.121.i = phi i32 [ %inc175.i, %for.inc174.i ], [ 0, %for.inc48.i ]
  %umin50 = call i32 @llvm.umin.i32(i32 %indvars.iv48, i32 2599)
  %narrow52 = add nuw nsw i32 %umin50, 1
  %55 = zext i32 %narrow52 to i64
  %mul90.i = shl nsw i32 %t2.121.i, 5
  %add94.i = or i32 %mul90.i, 31
  %56 = icmp ult i32 %add94.i, 2599
  %cond102.i = select i1 %56, i32 %add94.i, i32 2599
  %cmp103.not15.i = icmp ugt i32 %mul90.i, %cond102.i
  br i1 %cmp103.not15.i, label %for.inc174.i, label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.cond70.preheader.i, %for.inc171.split.i
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc171.split.i ], [ 31, %for.cond70.preheader.i ]
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.inc171.split.i ], [ 0, %for.cond70.preheader.i ]
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.inc171.split.i ], [ 0, %for.cond70.preheader.i ]
  %57 = shl nsw i64 %indvars.iv54.i, 5
  %58 = or i64 %57, 31
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.cond91.for.inc168_crit_edge.i, %for.cond73.preheader.i
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %for.cond91.for.inc168_crit_edge.i ], [ 31, %for.cond73.preheader.i ]
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.cond91.for.inc168_crit_edge.i ], [ 0, %for.cond73.preheader.i ]
  %t4.118.i = phi i32 [ %inc169.i, %for.cond91.for.inc168_crit_edge.i ], [ 0, %for.cond73.preheader.i ]
  %umin42 = call i32 @llvm.umin.i32(i32 %indvars.iv40, i32 1999)
  %narrow53 = add nuw nsw i32 %umin42, 1
  %59 = zext i32 %narrow53 to i64
  %mul118.i = shl nsw i32 %t4.118.i, 5
  %add122.i = or i32 %mul118.i, 31
  %60 = icmp ult i32 %add122.i, 1999
  %cond130.i = select i1 %60, i32 %add122.i, i32 1999
  %cmp131.not10.i = icmp ugt i32 %mul118.i, %cond130.i
  br i1 %cmp131.not10.i, label %for.cond91.for.inc168_crit_edge.i, label %for.body104.i

for.body104.i:                                    ; preds = %for.body89.i, %for.inc165.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.inc165.i ], [ %indvars.iv49.i, %for.body89.i ]
  %umin46 = call i64 @llvm.umin.i64(i64 %indvars.iv44, i64 %indvars.iv51.i)
  %cmp109.i = icmp ult i64 %indvars.iv51.i, %58
  %cond115.v.i = select i1 %cmp109.i, i64 %indvars.iv51.i, i64 %58
  %61 = and i64 %cond115.v.i, 4294967295
  %cmp116.not12.i = icmp ugt i64 %57, %61
  br i1 %cmp116.not12.i, label %for.inc165.i, label %for.body117.i

for.body117.i:                                    ; preds = %for.body104.i, %for.cond119.for.inc162_crit_edge.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.cond119.for.inc162_crit_edge.i ], [ %indvars.iv45.i, %for.body104.i ]
  %arrayidx157.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv51.i, i64 %indvars.iv47.i
  %.pre.i = load double, double* %arrayidx157.i, align 8, !tbaa !2
  br label %for.body132.i

for.body132.i:                                    ; preds = %for.body132.i, %for.body117.i
  %62 = phi double [ %.pre.i, %for.body117.i ], [ %add158.i, %for.body132.i ]
  %indvars.iv43.i = phi i64 [ %indvars.iv41.i, %for.body117.i ], [ %indvars.iv.next44.i, %for.body132.i ]
  %arrayidx136.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv47.i, i64 %indvars.iv43.i
  %63 = load double, double* %arrayidx136.i, align 8, !tbaa !2
  %arrayidx141.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv51.i, i64 %indvars.iv43.i
  %64 = load double, double* %arrayidx141.i, align 8, !tbaa !2
  %arrayidx146.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv47.i, i64 %indvars.iv43.i
  %65 = load double, double* %arrayidx146.i, align 8, !tbaa !2
  %66 = insertelement <2 x double> poison, double %63, i32 0
  %67 = insertelement <2 x double> %66, double %65, i32 1
  %68 = fmul <2 x double> %67, <double 1.500000e+00, double 1.500000e+00>
  %arrayidx151.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv51.i, i64 %indvars.iv43.i
  %69 = load double, double* %arrayidx151.i, align 8, !tbaa !2
  %70 = insertelement <2 x double> poison, double %64, i32 0
  %71 = insertelement <2 x double> %70, double %69, i32 1
  %72 = fmul <2 x double> %68, %71
  %shift = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %73 = fadd <2 x double> %72, %shift
  %add153.i = extractelement <2 x double> %73, i32 0
  %add158.i = fadd double %62, %add153.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next44.i, %59
  br i1 %exitcond43.not, label %for.cond119.for.inc162_crit_edge.i, label %for.body132.i, !llvm.loop !18

for.cond119.for.inc162_crit_edge.i:               ; preds = %for.body132.i
  store double %add158.i, double* %arrayidx157.i, align 8, !tbaa !2
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond47.not = icmp eq i64 %indvars.iv47.i, %umin46
  br i1 %exitcond47.not, label %for.inc165.i, label %for.body117.i, !llvm.loop !19

for.inc165.i:                                     ; preds = %for.cond119.for.inc162_crit_edge.i, %for.body104.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next52.i, %55
  br i1 %exitcond51.not, label %for.cond91.for.inc168_crit_edge.i, label %for.body104.i, !llvm.loop !20

for.cond91.for.inc168_crit_edge.i:                ; preds = %for.inc165.i, %for.body89.i
  %inc169.i = add nuw nsw i32 %t4.118.i, 1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 32
  %exitcond53.not.i = icmp eq i32 %inc169.i, 63
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 32
  br i1 %exitcond53.not.i, label %for.inc171.split.i, label %for.body89.i, !llvm.loop !21

for.inc171.split.i:                               ; preds = %for.cond91.for.inc168_crit_edge.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 32
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next55.i, %indvars.iv61.i
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 32
  br i1 %exitcond60.not.i, label %for.inc174.i, label %for.cond73.preheader.i, !llvm.loop !22

for.inc174.i:                                     ; preds = %for.inc171.split.i, %for.cond70.preheader.i
  %inc175.i = add nuw nsw i32 %t2.121.i, 1
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 32
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  %exitcond63.not.i = icmp eq i32 %inc175.i, 82
  %indvars.iv.next49 = add nuw nsw i32 %indvars.iv48, 32
  br i1 %exitcond63.not.i, label %kernel_syr2k.exit, label %for.cond70.preheader.i, !llvm.loop !23

kernel_syr2k.exit:                                ; preds = %for.inc174.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit
  %74 = load i8*, i8** %argv, align 8, !tbaa !24
  %strcmpload = load i8, i8* %74, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %76 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %75) #8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %78 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i30 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i32, %if.end.i ]
  %79 = add nuw nsw i64 %indvars.iv.i30, %78
  %80 = trunc i64 %79 to i32
  %rem.i31 = urem i32 %80, 20
  %cmp5.i = icmp eq i32 %rem.i31, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %81) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i30
  %83 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %83) #8
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i30, 1
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, 2600
  br i1 %exitcond.not.i33, label %for.inc10.i, label %for.body4.i, !llvm.loop !26

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !27

print_array.exit:                                 ; preds = %for.inc10.i
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %86 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %85) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i25) #7
  tail call void @free(i8* %call.i26) #7
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
declare i64 @llvm.umin.i64(i64, i64) #6

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
!11 = distinct !{!11, !7, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !7, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !4, i64 0}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
