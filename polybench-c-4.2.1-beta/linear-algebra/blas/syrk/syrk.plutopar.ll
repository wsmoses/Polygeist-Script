; ModuleID = 'syrk.plutopar.c'
source_filename = "syrk.plutopar.c"
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
  %call.i19 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %arraydecay2 = bitcast i8* %call.i19 to [2000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.600000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2600
  br i1 %exitcond9.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv10.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next11.i, %for.body17.i ]
  %3 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv15.i
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 2
  %rem20.i = urem i32 %5, 2000
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.000000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv10.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next11.i, 2600
  br i1 %exitcond14.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 2600
  br i1 %exitcond17.not.i, label %init_array.exit, label %for.cond14.preheader.i, !llvm.loop !10

init_array.exit:                                  ; preds = %for.inc31.i
  tail call void (...) @polybench_timer_start() #7
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc48.i, %init_array.exit
  %indvar = phi i64 [ %indvar.next, %for.inc48.i ], [ 0, %init_array.exit ]
  %indvars.iv29 = phi i32 [ %indvars.iv.next30, %for.inc48.i ], [ 31, %init_array.exit ]
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.inc48.i ], [ 1, %init_array.exit ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.inc48.i ], [ 0, %init_array.exit ]
  %t2.08.i = phi i32 [ %inc49.i, %for.inc48.i ], [ 0, %init_array.exit ]
  %6 = shl nuw nsw i64 %indvar, 5
  %7 = shl nuw nsw i64 %indvar, 5
  %umin31 = call i32 @llvm.umin.i32(i32 %indvars.iv29, i32 2599)
  %narrow = add nuw nsw i32 %umin31, 1
  %8 = zext i32 %narrow to i64
  %mul.i = shl nsw i32 %t2.08.i, 5
  %add15.i = or i32 %mul.i, 31
  %9 = icmp ult i32 %add15.i, 2599
  %cond23.i = select i1 %9, i32 %add15.i, i32 2599
  %cmp24.not3.i = icmp ugt i32 %mul.i, %cond23.i
  br i1 %cmp24.not3.i, label %for.inc48.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond9.preheader.i, %for.cond12.for.inc45_crit_edge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond12.for.inc45_crit_edge.i ], [ 31, %for.cond9.preheader.i ]
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.cond12.for.inc45_crit_edge.i ], [ 0, %for.cond9.preheader.i ]
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i21, %for.cond12.for.inc45_crit_edge.i ], [ 0, %for.cond9.preheader.i ]
  %10 = mul nsw i64 %indvars.iv32.i, -32
  %11 = or i64 %10, 1
  %12 = shl nuw nsw i64 %indvars.iv32.i, 5
  %13 = or i64 %12, 31
  %14 = mul nsw i64 %indvars.iv32.i, -32
  %15 = or i64 %14, 1
  %16 = shl nuw nsw i64 %indvars.iv32.i, 5
  %17 = or i64 %16, 31
  %18 = shl nsw i64 %indvars.iv32.i, 5
  %19 = or i64 %18, 31
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc42.i, %for.body11.i
  %indvar47 = phi i64 [ %indvar.next48, %for.inc42.i ], [ 0, %for.body11.i ]
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.inc42.i ], [ %indvars.iv28.i, %for.body11.i ]
  %20 = add i64 %6, %indvar47
  %umin52 = call i64 @llvm.umin.i64(i64 %13, i64 %20)
  %21 = add i64 %11, %umin52
  %22 = add i64 %21, -4
  %23 = lshr i64 %22, 2
  %24 = add nuw nsw i64 %23, 1
  %25 = add i64 %7, %indvar47
  %umin49 = call i64 @llvm.umin.i64(i64 %17, i64 %25)
  %26 = add i64 %15, %umin49
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv30.i)
  %cmp30.i = icmp ult i64 %indvars.iv30.i, %19
  %cond36.v.i = select i1 %cmp30.i, i64 %indvars.iv30.i, i64 %19
  %27 = and i64 %cond36.v.i, 4294967295
  %cmp37.not1.i = icmp ugt i64 %18, %27
  br i1 %cmp37.not1.i, label %for.inc42.i, label %for.body38.i.preheader

for.body38.i.preheader:                           ; preds = %for.body25.i
  %min.iters.check = icmp ult i64 %26, 4
  br i1 %min.iters.check, label %for.body38.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %for.body38.i.preheader
  %n.vec = and i64 %26, -4
  %ind.end = add i64 %indvars.iv.i20, %n.vec
  %xtraiter = and i64 %24, 1
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %24, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %indvars.iv.i20, %index
  %29 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %30, align 8, !tbaa !2
  %31 = getelementptr inbounds double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load50 = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %34 = fmul <2 x double> %wide.load50, <double 1.200000e+00, double 1.200000e+00>
  %35 = bitcast double* %29 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !tbaa !2
  %36 = bitcast double* %31 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %indvars.iv.i20, %index.next
  %37 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx.1
  %38 = bitcast double* %37 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %38, align 8, !tbaa !2
  %39 = getelementptr inbounds double, double* %37, i64 2
  %40 = bitcast double* %39 to <2 x double>*
  %wide.load50.1 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !2
  %41 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %42 = fmul <2 x double> %wide.load50.1, <double 1.200000e+00, double 1.200000e+00>
  %43 = bitcast double* %37 to <2 x double>*
  store <2 x double> %41, <2 x double>* %43, align 8, !tbaa !2
  %44 = bitcast double* %39 to <2 x double>*
  store <2 x double> %42, <2 x double>* %44, align 8, !tbaa !2
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !11

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %indvars.iv.i20, %index.unr
  %45 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %offset.idx.epil
  %46 = bitcast double* %45 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %46, align 8, !tbaa !2
  %47 = getelementptr inbounds double, double* %45, i64 2
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load50.epil = load <2 x double>, <2 x double>* %48, align 8, !tbaa !2
  %49 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %50 = fmul <2 x double> %wide.load50.epil, <double 1.200000e+00, double 1.200000e+00>
  %51 = bitcast double* %45 to <2 x double>*
  store <2 x double> %49, <2 x double>* %51, align 8, !tbaa !2
  %52 = bitcast double* %47 to <2 x double>*
  store <2 x double> %50, <2 x double>* %52, align 8, !tbaa !2
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %26, %n.vec
  br i1 %cmp.n, label %for.inc42.i, label %for.body38.i.preheader51

for.body38.i.preheader51:                         ; preds = %for.body38.i.preheader, %middle.block
  %indvars.iv26.i.ph = phi i64 [ %indvars.iv.i20, %for.body38.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i.preheader51, %for.body38.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.body38.i ], [ %indvars.iv26.i.ph, %for.body38.i.preheader51 ]
  %arrayidx40.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %indvars.iv26.i
  %53 = load double, double* %arrayidx40.i, align 8, !tbaa !2
  %mul41.i = fmul double %53, 1.200000e+00
  store double %mul41.i, double* %arrayidx40.i, align 8, !tbaa !2
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv26.i, %umin
  br i1 %exitcond.not, label %for.inc42.i, label %for.body38.i, !llvm.loop !13

for.inc42.i:                                      ; preds = %for.body38.i, %middle.block, %for.body25.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next31.i, %8
  %indvar.next48 = add i64 %indvar47, 1
  br i1 %exitcond32.not, label %for.cond12.for.inc45_crit_edge.i, label %for.body25.i, !llvm.loop !15

for.cond12.for.inc45_crit_edge.i:                 ; preds = %for.inc42.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 32
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next33.i, %indvars.iv38.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  br i1 %exitcond.not.i22, label %for.inc48.i, label %for.body11.i, !llvm.loop !16

for.inc48.i:                                      ; preds = %for.cond12.for.inc45_crit_edge.i, %for.cond9.preheader.i
  %inc49.i = add nuw nsw i32 %t2.08.i, 1
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 32
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond40.not.i = icmp eq i32 %inc49.i, 82
  %indvars.iv.next30 = add nuw nsw i32 %indvars.iv29, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond40.not.i, label %for.cond70.preheader.i, label %for.cond9.preheader.i, !llvm.loop !17

for.cond70.preheader.i:                           ; preds = %for.inc48.i, %for.inc163.i
  %indvars.iv41 = phi i32 [ %indvars.iv.next42, %for.inc163.i ], [ 31, %for.inc48.i ]
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %for.inc163.i ], [ 1, %for.inc48.i ]
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.inc163.i ], [ 0, %for.inc48.i ]
  %t2.121.i = phi i32 [ %inc164.i, %for.inc163.i ], [ 0, %for.inc48.i ]
  %umin43 = call i32 @llvm.umin.i32(i32 %indvars.iv41, i32 2599)
  %narrow45 = add nuw nsw i32 %umin43, 1
  %54 = zext i32 %narrow45 to i64
  %mul90.i = shl nsw i32 %t2.121.i, 5
  %add94.i = or i32 %mul90.i, 31
  %55 = icmp ult i32 %add94.i, 2599
  %cond102.i = select i1 %55, i32 %add94.i, i32 2599
  %cmp103.not15.i = icmp ugt i32 %mul90.i, %cond102.i
  br i1 %cmp103.not15.i, label %for.inc163.i, label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.cond70.preheader.i, %for.inc160.split.i
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc160.split.i ], [ 31, %for.cond70.preheader.i ]
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %for.inc160.split.i ], [ 0, %for.cond70.preheader.i ]
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.inc160.split.i ], [ 0, %for.cond70.preheader.i ]
  %56 = shl nsw i64 %indvars.iv54.i, 5
  %57 = or i64 %56, 31
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.cond91.for.inc157_crit_edge.i, %for.cond73.preheader.i
  %indvars.iv33 = phi i32 [ %indvars.iv.next34, %for.cond91.for.inc157_crit_edge.i ], [ 31, %for.cond73.preheader.i ]
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.cond91.for.inc157_crit_edge.i ], [ 0, %for.cond73.preheader.i ]
  %t4.118.i = phi i32 [ %inc158.i, %for.cond91.for.inc157_crit_edge.i ], [ 0, %for.cond73.preheader.i ]
  %umin35 = call i32 @llvm.umin.i32(i32 %indvars.iv33, i32 1999)
  %narrow46 = add nuw nsw i32 %umin35, 1
  %58 = zext i32 %narrow46 to i64
  %mul118.i = shl nsw i32 %t4.118.i, 5
  %add122.i = or i32 %mul118.i, 31
  %59 = icmp ult i32 %add122.i, 1999
  %cond130.i = select i1 %59, i32 %add122.i, i32 1999
  %cmp131.not10.i = icmp ugt i32 %mul118.i, %cond130.i
  br i1 %cmp131.not10.i, label %for.cond91.for.inc157_crit_edge.i, label %for.body104.i

for.body104.i:                                    ; preds = %for.body89.i, %for.inc154.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %for.inc154.i ], [ %indvars.iv49.i, %for.body89.i ]
  %umin39 = call i64 @llvm.umin.i64(i64 %indvars.iv37, i64 %indvars.iv51.i)
  %cmp109.i = icmp ult i64 %indvars.iv51.i, %57
  %cond115.v.i = select i1 %cmp109.i, i64 %indvars.iv51.i, i64 %57
  %60 = and i64 %cond115.v.i, 4294967295
  %cmp116.not12.i = icmp ugt i64 %56, %60
  br i1 %cmp116.not12.i, label %for.inc154.i, label %for.body117.i

for.body117.i:                                    ; preds = %for.body104.i, %for.cond119.for.inc151_crit_edge.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %for.cond119.for.inc151_crit_edge.i ], [ %indvars.iv45.i, %for.body104.i ]
  %arrayidx146.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv51.i, i64 %indvars.iv47.i
  %.pre.i = load double, double* %arrayidx146.i, align 8, !tbaa !2
  br label %for.body132.i

for.body132.i:                                    ; preds = %for.body132.i, %for.body117.i
  %61 = phi double [ %.pre.i, %for.body117.i ], [ %add147.i.1, %for.body132.i ]
  %indvars.iv43.i = phi i64 [ %indvars.iv41.i, %for.body117.i ], [ %indvars.iv.next44.i.1, %for.body132.i ]
  %arrayidx136.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv51.i, i64 %indvars.iv43.i
  %62 = load double, double* %arrayidx136.i, align 8, !tbaa !2
  %mul137.i = fmul double %62, 1.500000e+00
  %arrayidx141.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv47.i, i64 %indvars.iv43.i
  %63 = load double, double* %arrayidx141.i, align 8, !tbaa !2
  %mul142.i = fmul double %mul137.i, %63
  %add147.i = fadd double %61, %mul142.i
  %indvars.iv.next44.i = or i64 %indvars.iv43.i, 1
  %arrayidx136.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv51.i, i64 %indvars.iv.next44.i
  %64 = load double, double* %arrayidx136.i.1, align 8, !tbaa !2
  %mul137.i.1 = fmul double %64, 1.500000e+00
  %arrayidx141.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv47.i, i64 %indvars.iv.next44.i
  %65 = load double, double* %arrayidx141.i.1, align 8, !tbaa !2
  %mul142.i.1 = fmul double %mul137.i.1, %65
  %add147.i.1 = fadd double %add147.i, %mul142.i.1
  %indvars.iv.next44.i.1 = add nuw nsw i64 %indvars.iv43.i, 2
  %exitcond36.not.1 = icmp eq i64 %indvars.iv.next44.i.1, %58
  br i1 %exitcond36.not.1, label %for.cond119.for.inc151_crit_edge.i, label %for.body132.i, !llvm.loop !18

for.cond119.for.inc151_crit_edge.i:               ; preds = %for.body132.i
  store double %add147.i.1, double* %arrayidx146.i, align 8, !tbaa !2
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond40.not = icmp eq i64 %indvars.iv47.i, %umin39
  br i1 %exitcond40.not, label %for.inc154.i, label %for.body117.i, !llvm.loop !19

for.inc154.i:                                     ; preds = %for.cond119.for.inc151_crit_edge.i, %for.body104.i
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next52.i, %54
  br i1 %exitcond44.not, label %for.cond91.for.inc157_crit_edge.i, label %for.body104.i, !llvm.loop !20

for.cond91.for.inc157_crit_edge.i:                ; preds = %for.inc154.i, %for.body89.i
  %inc158.i = add nuw nsw i32 %t4.118.i, 1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 32
  %exitcond53.not.i = icmp eq i32 %inc158.i, 63
  %indvars.iv.next34 = add nuw nsw i32 %indvars.iv33, 32
  br i1 %exitcond53.not.i, label %for.inc160.split.i, label %for.body89.i, !llvm.loop !21

for.inc160.split.i:                               ; preds = %for.cond91.for.inc157_crit_edge.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 32
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next55.i, %indvars.iv61.i
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 32
  br i1 %exitcond60.not.i, label %for.inc163.i, label %for.cond73.preheader.i, !llvm.loop !22

for.inc163.i:                                     ; preds = %for.inc160.split.i, %for.cond70.preheader.i
  %inc164.i = add nuw nsw i32 %t2.121.i, 1
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 32
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  %exitcond63.not.i = icmp eq i32 %inc164.i, 82
  %indvars.iv.next42 = add nuw nsw i32 %indvars.iv41, 32
  br i1 %exitcond63.not.i, label %kernel_syrk.exit, label %for.cond70.preheader.i, !llvm.loop !23

kernel_syrk.exit:                                 ; preds = %for.inc163.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syrk.exit
  %66 = load i8*, i8** %argv, align 8, !tbaa !24
  %strcmpload = load i8, i8* %66, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %67) #8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %70 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i23 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i25, %if.end.i ]
  %71 = add nuw nsw i64 %indvars.iv.i23, %70
  %72 = trunc i64 %71 to i32
  %rem.i24 = urem i32 %72, 20
  %cmp5.i = icmp eq i32 %rem.i24, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %73) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i23
  %75 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %75) #8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, 2600
  br i1 %exitcond.not.i26, label %for.inc10.i, label %for.body4.i, !llvm.loop !26

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !27

print_array.exit:                                 ; preds = %for.inc10.i
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !24
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %77) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syrk.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i19) #7
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
