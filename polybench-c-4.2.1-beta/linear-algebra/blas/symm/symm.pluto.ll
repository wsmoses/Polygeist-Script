; ModuleID = 'symm.pluto.c'
source_filename = "symm.pluto.c"
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
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %call.i26 = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #6
  %call.i27 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  %arraydecay4 = bitcast i8* %call.i27 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc16.i, %entry
  %indvars.iv10.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i, %for.inc16.i ]
  %0 = add nuw nsw i64 %indvars.iv10.i, 2600
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %1 = add nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %2 = trunc i64 %1 to i32
  %rem.i = urem i32 %2, 100
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %3 = sub nuw nsw i64 %0, %indvars.iv.i
  %4 = trunc i64 %3 to i32
  %rem8.urem.i = urem i32 %4, 100
  %conv9.i = sitofp i32 %rem8.urem.i to double
  %div11.i = fdiv double %conv9.i, 2.000000e+03
  %arrayidx15.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div11.i, double* %arrayidx15.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2600
  br i1 %exitcond.not.i, label %for.inc16.i, label %for.body3.i, !llvm.loop !6

for.inc16.i:                                      ; preds = %for.body3.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, 2000
  br i1 %exitcond13.not.i, label %for.cond23.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond23.preheader.i.preheader:                 ; preds = %for.inc16.i
  %arraydecay3 = bitcast i8* %call.i26 to [2000 x double]*
  br label %for.cond23.preheader.i

for.cond19.loopexit.i:                            ; preds = %for.body43.i, %middle.block, %for.end38.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next26.i, 2000
  br i1 %exitcond27.not.i, label %init_array.exit, label %for.cond23.preheader.i, !llvm.loop !9

for.cond23.preheader.i:                           ; preds = %for.cond23.preheader.i.preheader, %for.cond19.loopexit.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.cond19.loopexit.i ], [ 0, %for.cond23.preheader.i.preheader ]
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.cond19.loopexit.i ], [ 1, %for.cond23.preheader.i.preheader ]
  %5 = sub nsw i64 1995, %indvars.iv25.i
  %6 = lshr i64 %5, 2
  %7 = add nuw nsw i64 %6, 1
  %8 = sub nsw i64 1999, %indvars.iv25.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i, %for.cond23.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %for.cond23.preheader.i ], [ %indvars.iv.next15.i, %for.body26.i ]
  %9 = add nuw nsw i64 %indvars.iv14.i, %indvars.iv25.i
  %10 = trunc i64 %9 to i32
  %rem28.i = urem i32 %10, 100
  %conv29.i = sitofp i32 %rem28.i to double
  %div31.i = fdiv double %conv29.i, 2.000000e+03
  %arrayidx35.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %indvars.iv14.i
  store double %div31.i, double* %arrayidx35.i, align 8, !tbaa !2
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next15.i, %indvars.iv20.i
  br i1 %exitcond19.not.i, label %for.end38.i, label %for.body26.i, !llvm.loop !10

for.end38.i:                                      ; preds = %for.body26.i
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %cmp414.i = icmp ult i64 %indvars.iv25.i, 1999
  br i1 %cmp414.i, label %for.body43.i.preheader, label %for.cond19.loopexit.i

for.body43.i.preheader:                           ; preds = %for.end38.i
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body43.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %for.body43.i.preheader
  %n.vec = and i64 %8, -4
  %ind.end = add i64 %indvars.iv20.i, %n.vec
  %xtraiter = and i64 %7, 3
  %11 = icmp ult i64 %5, 12
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %offset.idx = add i64 %indvars.iv20.i, %index
  %12 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %offset.idx
  %13 = bitcast double* %12 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %13, align 8, !tbaa !2
  %14 = getelementptr inbounds double, double* %12, i64 2
  %15 = bitcast double* %14 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %15, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %indvars.iv20.i, %index.next
  %16 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %offset.idx.1
  %17 = bitcast double* %16 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %17, align 8, !tbaa !2
  %18 = getelementptr inbounds double, double* %16, i64 2
  %19 = bitcast double* %18 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %19, align 8, !tbaa !2
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %indvars.iv20.i, %index.next.1
  %20 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %offset.idx.2
  %21 = bitcast double* %20 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %21, align 8, !tbaa !2
  %22 = getelementptr inbounds double, double* %20, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %23, align 8, !tbaa !2
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %indvars.iv20.i, %index.next.2
  %24 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %offset.idx.3
  %25 = bitcast double* %24 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %25, align 8, !tbaa !2
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %27, align 8, !tbaa !2
  %index.next.3 = add i64 %index, 16
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !11

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %indvars.iv20.i, %index.epil
  %28 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %offset.idx.epil
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %29, align 8, !tbaa !2
  %30 = getelementptr inbounds double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %31, align 8, !tbaa !2
  %index.next.epil = add i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !13

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.cond19.loopexit.i, label %for.body43.i.preheader70

for.body43.i.preheader70:                         ; preds = %for.body43.i.preheader, %middle.block
  %indvars.iv22.i.ph = phi i64 [ %indvars.iv20.i, %for.body43.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.preheader70, %for.body43.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %for.body43.i ], [ %indvars.iv22.i.ph, %for.body43.i.preheader70 ]
  %arrayidx47.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %indvars.iv22.i
  store double -9.990000e+02, double* %arrayidx47.i, align 8, !tbaa !2
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next23.i, 2000
  br i1 %exitcond24.not.i, label %for.cond19.loopexit.i, label %for.body43.i, !llvm.loop !15

init_array.exit:                                  ; preds = %for.cond19.loopexit.i
  tail call void (...) @polybench_timer_start() #6
  %arrayidx9.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 0, i64 0
  %32 = load double, double* %arrayidx9.i, align 8, !tbaa !2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %32, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %32, i32 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %init_array.exit
  %index45 = phi i64 [ 0, %init_array.exit ], [ %index.next46, %vector.body43 ]
  %33 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 0, i64 %index45
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = getelementptr inbounds double, double* %33, i64 2
  %36 = bitcast double* %35 to <2 x double>*
  %wide.load49 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2
  %37 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %38 = fmul <2 x double> %wide.load49, <double 1.200000e+00, double 1.200000e+00>
  %39 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 0, i64 %index45
  %40 = bitcast double* %39 to <2 x double>*
  %wide.load50 = load <2 x double>, <2 x double>* %40, align 8, !tbaa !2
  %41 = getelementptr inbounds double, double* %39, i64 2
  %42 = bitcast double* %41 to <2 x double>*
  %wide.load51 = load <2 x double>, <2 x double>* %42, align 8, !tbaa !2
  %43 = fmul <2 x double> %wide.load50, <double 1.500000e+00, double 1.500000e+00>
  %44 = fmul <2 x double> %wide.load51, <double 1.500000e+00, double 1.500000e+00>
  %45 = fmul <2 x double> %43, %broadcast.splat
  %46 = fmul <2 x double> %44, %broadcast.splat53
  %47 = fadd <2 x double> %37, %45
  %48 = fadd <2 x double> %38, %46
  %49 = fadd <2 x double> %47, zeroinitializer
  %50 = fadd <2 x double> %48, zeroinitializer
  %51 = bitcast double* %33 to <2 x double>*
  store <2 x double> %49, <2 x double>* %51, align 8, !tbaa !2
  %52 = bitcast double* %35 to <2 x double>*
  store <2 x double> %50, <2 x double>* %52, align 8, !tbaa !2
  %index.next46 = add i64 %index45, 4
  %53 = icmp eq i64 %index.next46, 2600
  br i1 %53, label %vector.ph57, label %vector.body43, !llvm.loop !17

vector.ph57:                                      ; preds = %vector.body43
  %arrayidx49.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 1, i64 1
  %54 = load double, double* %arrayidx49.i, align 8, !tbaa !2
  %arrayidx27.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 1, i64 0
  %55 = load double, double* %arrayidx27.i, align 8, !tbaa !2
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %55, i32 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %54, i32 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph57
  %index58 = phi i64 [ 0, %vector.ph57 ], [ %index.next59, %vector.body56 ]
  %56 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 1, i64 %index58
  %57 = bitcast double* %56 to <2 x double>*
  %wide.load62 = load <2 x double>, <2 x double>* %57, align 8, !tbaa !2
  %58 = fmul <2 x double> %wide.load62, <double 1.500000e+00, double 1.500000e+00>
  %59 = fmul <2 x double> %58, %broadcast.splat64
  %60 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 0, i64 %index58
  %61 = bitcast double* %60 to <2 x double>*
  %wide.load65 = load <2 x double>, <2 x double>* %61, align 8, !tbaa !2
  %62 = fadd <2 x double> %wide.load65, %59
  %63 = bitcast double* %60 to <2 x double>*
  store <2 x double> %62, <2 x double>* %63, align 8, !tbaa !2
  %64 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 0, i64 %index58
  %65 = bitcast double* %64 to <2 x double>*
  %wide.load66 = load <2 x double>, <2 x double>* %65, align 8, !tbaa !2
  %66 = fmul <2 x double> %broadcast.splat64, %wide.load66
  %67 = fadd <2 x double> %66, zeroinitializer
  %68 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 1, i64 %index58
  %69 = bitcast double* %68 to <2 x double>*
  %wide.load67 = load <2 x double>, <2 x double>* %69, align 8, !tbaa !2
  %70 = fmul <2 x double> %wide.load67, <double 1.200000e+00, double 1.200000e+00>
  %71 = fmul <2 x double> %58, %broadcast.splat69
  %72 = fadd <2 x double> %70, %71
  %73 = fmul <2 x double> %67, <double 1.500000e+00, double 1.500000e+00>
  %74 = fadd <2 x double> %73, %72
  %75 = bitcast double* %68 to <2 x double>*
  store <2 x double> %74, <2 x double>* %75, align 8, !tbaa !2
  %index.next59 = add i64 %index58, 2
  %76 = icmp eq i64 %index.next59, 2600
  br i1 %76, label %for.cond64.preheader.i, label %vector.body56, !llvm.loop !18

for.cond64.preheader.i:                           ; preds = %vector.body56, %for.inc146.i
  %indvar = phi i64 [ %indvar.next, %for.inc146.i ], [ 0, %vector.body56 ]
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc146.i ], [ 2, %vector.body56 ]
  %77 = add i64 %indvar, 1
  %arrayidx75.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 0
  %arrayidx134.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv16.i
  %78 = load double, double* %arrayidx75.i, align 8, !tbaa !2
  %79 = load double, double* %arrayidx134.i, align 8, !tbaa !2
  %xtraiter71 = and i64 %77, 1
  %80 = icmp eq i64 %indvar, 0
  %unroll_iter73 = and i64 %77, -2
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br label %for.body67.i

for.body67.i:                                     ; preds = %for.end120.i, %for.cond64.preheader.i
  %indvars.iv13.i = phi i64 [ 0, %for.cond64.preheader.i ], [ %indvars.iv.next14.i, %for.end120.i ]
  %arrayidx71.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv13.i
  %81 = load double, double* %arrayidx71.i, align 8, !tbaa !2
  %mul72.i = fmul double %81, 1.500000e+00
  %mul76.i = fmul double %mul72.i, %78
  %arrayidx79.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 0, i64 %indvars.iv13.i
  %82 = load double, double* %arrayidx79.i, align 8, !tbaa !2
  %add80.i = fadd double %82, %mul76.i
  store double %add80.i, double* %arrayidx79.i, align 8, !tbaa !2
  %arrayidx83.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 0, i64 %indvars.iv13.i
  %83 = load double, double* %arrayidx83.i, align 8, !tbaa !2
  %mul87.i = fmul double %78, %83
  %add88.i = fadd double %mul87.i, 0.000000e+00
  br i1 %80, label %for.end120.i.unr-lcssa, label %for.body92.i

for.body92.i:                                     ; preds = %for.body67.i, %for.body92.i
  %indvars.iv10.i33 = phi i64 [ %indvars.iv.next11.i34.1, %for.body92.i ], [ 1, %for.body67.i ]
  %temp2.04.i = phi double [ %add117.i.1, %for.body92.i ], [ %add88.i, %for.body67.i ]
  %niter74 = phi i64 [ %niter74.nsub.1, %for.body92.i ], [ %unroll_iter73, %for.body67.i ]
  %arrayidx101.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i33
  %84 = load double, double* %arrayidx101.i, align 8, !tbaa !2
  %mul102.i = fmul double %mul72.i, %84
  %arrayidx106.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv10.i33, i64 %indvars.iv13.i
  %85 = load double, double* %arrayidx106.i, align 8, !tbaa !2
  %add107.i = fadd double %85, %mul102.i
  store double %add107.i, double* %arrayidx106.i, align 8, !tbaa !2
  %arrayidx111.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv10.i33, i64 %indvars.iv13.i
  %86 = load double, double* %arrayidx111.i, align 8, !tbaa !2
  %mul116.i = fmul double %84, %86
  %add117.i = fadd double %temp2.04.i, %mul116.i
  %indvars.iv.next11.i34 = add nuw nsw i64 %indvars.iv10.i33, 1
  %arrayidx101.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv.next11.i34
  %87 = load double, double* %arrayidx101.i.1, align 8, !tbaa !2
  %mul102.i.1 = fmul double %mul72.i, %87
  %arrayidx106.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next11.i34, i64 %indvars.iv13.i
  %88 = load double, double* %arrayidx106.i.1, align 8, !tbaa !2
  %add107.i.1 = fadd double %88, %mul102.i.1
  store double %add107.i.1, double* %arrayidx106.i.1, align 8, !tbaa !2
  %arrayidx111.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next11.i34, i64 %indvars.iv13.i
  %89 = load double, double* %arrayidx111.i.1, align 8, !tbaa !2
  %mul116.i.1 = fmul double %87, %89
  %add117.i.1 = fadd double %add117.i, %mul116.i.1
  %indvars.iv.next11.i34.1 = add nuw nsw i64 %indvars.iv10.i33, 2
  %niter74.nsub.1 = add i64 %niter74, -2
  %niter74.ncmp.1 = icmp eq i64 %niter74.nsub.1, 0
  br i1 %niter74.ncmp.1, label %for.end120.i.unr-lcssa, label %for.body92.i, !llvm.loop !19

for.end120.i.unr-lcssa:                           ; preds = %for.body92.i, %for.body67.i
  %add117.i.lcssa.ph = phi double [ undef, %for.body67.i ], [ %add117.i.1, %for.body92.i ]
  %indvars.iv10.i33.unr = phi i64 [ 1, %for.body67.i ], [ %indvars.iv.next11.i34.1, %for.body92.i ]
  %temp2.04.i.unr = phi double [ %add88.i, %for.body67.i ], [ %add117.i.1, %for.body92.i ]
  br i1 %lcmp.mod72.not, label %for.end120.i, label %for.body92.i.epil

for.body92.i.epil:                                ; preds = %for.end120.i.unr-lcssa
  %arrayidx101.i.epil = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i33.unr
  %90 = load double, double* %arrayidx101.i.epil, align 8, !tbaa !2
  %mul102.i.epil = fmul double %mul72.i, %90
  %arrayidx106.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv10.i33.unr, i64 %indvars.iv13.i
  %91 = load double, double* %arrayidx106.i.epil, align 8, !tbaa !2
  %add107.i.epil = fadd double %91, %mul102.i.epil
  store double %add107.i.epil, double* %arrayidx106.i.epil, align 8, !tbaa !2
  %arrayidx111.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv10.i33.unr, i64 %indvars.iv13.i
  %92 = load double, double* %arrayidx111.i.epil, align 8, !tbaa !2
  %mul116.i.epil = fmul double %90, %92
  %add117.i.epil = fadd double %temp2.04.i.unr, %mul116.i.epil
  br label %for.end120.i

for.end120.i:                                     ; preds = %for.end120.i.unr-lcssa, %for.body92.i.epil
  %add117.i.lcssa = phi double [ %add117.i.lcssa.ph, %for.end120.i.unr-lcssa ], [ %add117.i.epil, %for.body92.i.epil ]
  %arrayidx124.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %indvars.iv13.i
  %93 = load double, double* %arrayidx124.i, align 8, !tbaa !2
  %mul125.i = fmul double %93, 1.200000e+00
  %mul135.i = fmul double %mul72.i, %79
  %add136.i = fadd double %mul125.i, %mul135.i
  %mul137.i = fmul double %add117.i.lcssa, 1.500000e+00
  %add138.i = fadd double %mul137.i, %add136.i
  store double %add138.i, double* %arrayidx124.i, align 8, !tbaa !2
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next14.i, 2600
  br i1 %exitcond15.not.i, label %for.inc146.i, label %for.body67.i, !llvm.loop !20

for.inc146.i:                                     ; preds = %for.end120.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond18.not.i, label %kernel_symm.exit, label %for.cond64.preheader.i, !llvm.loop !21

kernel_symm.exit:                                 ; preds = %for.inc146.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_symm.exit
  %94 = load i8*, i8** %argv, align 8, !tbaa !22
  %strcmpload = load i8, i8* %94, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %96 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %95) #7
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %98 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i35 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i37, %if.end.i ]
  %99 = add nuw nsw i64 %indvars.iv.i35, %98
  %100 = trunc i64 %99 to i32
  %rem.i36 = urem i32 %100, 20
  %cmp5.i = icmp eq i32 %rem.i36, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %101) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i35
  %103 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %103) #7
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2600
  br i1 %exitcond.not.i38, label %for.inc10.i, label %for.body4.i, !llvm.loop !24

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !25

print_array.exit:                                 ; preds = %for.inc10.i
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %106 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %105) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_symm.exit
  tail call void @free(i8* nonnull %call.i) #6
  tail call void @free(i8* %call.i26) #6
  tail call void @free(i8* %call.i27) #6
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !7, !16, !12}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !7, !12}
!18 = distinct !{!18, !7, !12}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !4, i64 0}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
