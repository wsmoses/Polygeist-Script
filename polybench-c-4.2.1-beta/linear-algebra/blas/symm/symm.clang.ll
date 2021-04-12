; ModuleID = 'symm.c'
source_filename = "symm.c"
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
  br i1 %min.iters.check, label %for.body43.i.preheader56, label %vector.ph

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
  br i1 %cmp.n, label %for.cond19.loopexit.i, label %for.body43.i.preheader56

for.body43.i.preheader56:                         ; preds = %for.body43.i.preheader, %middle.block
  %indvars.iv22.i.ph = phi i64 [ %indvars.iv20.i, %for.body43.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.preheader56, %for.body43.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %for.body43.i ], [ %indvars.iv22.i.ph, %for.body43.i.preheader56 ]
  %arrayidx47.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv25.i, i64 %indvars.iv22.i
  store double -9.990000e+02, double* %arrayidx47.i, align 8, !tbaa !2
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next23.i, 2000
  br i1 %exitcond24.not.i, label %for.cond19.loopexit.i, label %for.body43.i, !llvm.loop !15

init_array.exit:                                  ; preds = %for.cond19.loopexit.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.cond1.preheader.i28

for.cond1.preheader.i28:                          ; preds = %for.inc53.i, %init_array.exit
  %indvars.iv15.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next16.i, %for.inc53.i ]
  %cmp51.not.i = icmp eq i64 %indvars.iv15.i, 0
  %arrayidx41.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv15.i
  %32 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  br i1 %cmp51.not.i, label %vector.ph45, label %for.cond4.preheader.us.i.preheader

for.cond4.preheader.us.i.preheader:               ; preds = %for.cond1.preheader.i28
  %xtraiter57 = and i64 %indvars.iv15.i, 1
  %33 = icmp eq i64 %indvars.iv15.i, 1
  %unroll_iter59 = and i64 %indvars.iv15.i, 9223372036854775806
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br label %for.cond4.preheader.us.i

vector.ph45:                                      ; preds = %for.cond1.preheader.i28
  %broadcast.splatinsert = insertelement <2 x double> poison, double %32, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <2 x double> poison, double %32, i32 0
  %broadcast.splat54 = shufflevector <2 x double> %broadcast.splatinsert53, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph45
  %index46 = phi i64 [ 0, %vector.ph45 ], [ %index.next47, %vector.body44 ]
  %34 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 0, i64 %index46
  %35 = bitcast double* %34 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %35, align 8, !tbaa !2
  %36 = getelementptr inbounds double, double* %34, i64 2
  %37 = bitcast double* %36 to <2 x double>*
  %wide.load50 = load <2 x double>, <2 x double>* %37, align 8, !tbaa !2
  %38 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %39 = fmul <2 x double> %wide.load50, <double 1.200000e+00, double 1.200000e+00>
  %40 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 0, i64 %index46
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load51 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !2
  %42 = getelementptr inbounds double, double* %40, i64 2
  %43 = bitcast double* %42 to <2 x double>*
  %wide.load52 = load <2 x double>, <2 x double>* %43, align 8, !tbaa !2
  %44 = fmul <2 x double> %wide.load51, <double 1.500000e+00, double 1.500000e+00>
  %45 = fmul <2 x double> %wide.load52, <double 1.500000e+00, double 1.500000e+00>
  %46 = fmul <2 x double> %44, %broadcast.splat
  %47 = fmul <2 x double> %45, %broadcast.splat54
  %48 = fadd <2 x double> %38, %46
  %49 = fadd <2 x double> %39, %47
  %50 = fadd <2 x double> %48, zeroinitializer
  %51 = fadd <2 x double> %49, zeroinitializer
  %52 = bitcast double* %34 to <2 x double>*
  store <2 x double> %50, <2 x double>* %52, align 8, !tbaa !2
  %53 = bitcast double* %36 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !tbaa !2
  %index.next47 = add i64 %index46, 4
  %54 = icmp eq i64 %index.next47, 2600
  br i1 %54, label %for.inc53.i, label %vector.body44, !llvm.loop !17

for.cond4.preheader.us.i:                         ; preds = %for.cond4.preheader.us.i.preheader, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.cond4.for.end_crit_edge.us.i ], [ 0, %for.cond4.preheader.us.i.preheader ]
  %arrayidx8.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv9.i
  %55 = load double, double* %arrayidx8.us.i, align 8, !tbaa !2
  %mul.us.i = fmul double %55, 1.500000e+00
  br i1 %33, label %for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.cond4.preheader.us.i, %for.body6.us.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30.1, %for.body6.us.i ], [ 0, %for.cond4.preheader.us.i ]
  %temp2.03.us.i = phi double [ %add27.us.i.1, %for.body6.us.i ], [ 0.000000e+00, %for.cond4.preheader.us.i ]
  %niter60 = phi i64 [ %niter60.nsub.1, %for.body6.us.i ], [ %unroll_iter59, %for.cond4.preheader.us.i ]
  %arrayidx12.us.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv.i29
  %56 = load double, double* %arrayidx12.us.i, align 8, !tbaa !2
  %mul13.us.i = fmul double %mul.us.i, %56
  %arrayidx17.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i29, i64 %indvars.iv9.i
  %57 = load double, double* %arrayidx17.us.i, align 8, !tbaa !2
  %add.us.i = fadd double %57, %mul13.us.i
  store double %add.us.i, double* %arrayidx17.us.i, align 8, !tbaa !2
  %arrayidx21.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.i29, i64 %indvars.iv9.i
  %58 = load double, double* %arrayidx21.us.i, align 8, !tbaa !2
  %mul26.us.i = fmul double %56, %58
  %add27.us.i = fadd double %temp2.03.us.i, %mul26.us.i
  %indvars.iv.next.i30 = or i64 %indvars.iv.i29, 1
  %arrayidx12.us.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv.next.i30
  %59 = load double, double* %arrayidx12.us.i.1, align 8, !tbaa !2
  %mul13.us.i.1 = fmul double %mul.us.i, %59
  %arrayidx17.us.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i30, i64 %indvars.iv9.i
  %60 = load double, double* %arrayidx17.us.i.1, align 8, !tbaa !2
  %add.us.i.1 = fadd double %60, %mul13.us.i.1
  store double %add.us.i.1, double* %arrayidx17.us.i.1, align 8, !tbaa !2
  %arrayidx21.us.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next.i30, i64 %indvars.iv9.i
  %61 = load double, double* %arrayidx21.us.i.1, align 8, !tbaa !2
  %mul26.us.i.1 = fmul double %59, %61
  %add27.us.i.1 = fadd double %add27.us.i, %mul26.us.i.1
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i29, 2
  %niter60.nsub.1 = add i64 %niter60, -2
  %niter60.ncmp.1 = icmp eq i64 %niter60.nsub.1, 0
  br i1 %niter60.ncmp.1, label %for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %for.body6.us.i, !llvm.loop !18

for.cond4.for.end_crit_edge.us.i.unr-lcssa:       ; preds = %for.body6.us.i, %for.cond4.preheader.us.i
  %add27.us.i.lcssa.ph = phi double [ undef, %for.cond4.preheader.us.i ], [ %add27.us.i.1, %for.body6.us.i ]
  %indvars.iv.i29.unr = phi i64 [ 0, %for.cond4.preheader.us.i ], [ %indvars.iv.next.i30.1, %for.body6.us.i ]
  %temp2.03.us.i.unr = phi double [ 0.000000e+00, %for.cond4.preheader.us.i ], [ %add27.us.i.1, %for.body6.us.i ]
  br i1 %lcmp.mod58.not, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i.epil

for.body6.us.i.epil:                              ; preds = %for.cond4.for.end_crit_edge.us.i.unr-lcssa
  %arrayidx12.us.i.epil = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv.i29.unr
  %62 = load double, double* %arrayidx12.us.i.epil, align 8, !tbaa !2
  %mul13.us.i.epil = fmul double %mul.us.i, %62
  %arrayidx17.us.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i29.unr, i64 %indvars.iv9.i
  %63 = load double, double* %arrayidx17.us.i.epil, align 8, !tbaa !2
  %add.us.i.epil = fadd double %63, %mul13.us.i.epil
  store double %add.us.i.epil, double* %arrayidx17.us.i.epil, align 8, !tbaa !2
  %arrayidx21.us.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.i29.unr, i64 %indvars.iv9.i
  %64 = load double, double* %arrayidx21.us.i.epil, align 8, !tbaa !2
  %mul26.us.i.epil = fmul double %62, %64
  %add27.us.i.epil = fadd double %temp2.03.us.i.unr, %mul26.us.i.epil
  br label %for.cond4.for.end_crit_edge.us.i

for.cond4.for.end_crit_edge.us.i:                 ; preds = %for.cond4.for.end_crit_edge.us.i.unr-lcssa, %for.body6.us.i.epil
  %add27.us.i.lcssa = phi double [ %add27.us.i.lcssa.ph, %for.cond4.for.end_crit_edge.us.i.unr-lcssa ], [ %add27.us.i.epil, %for.body6.us.i.epil ]
  %arrayidx31.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv9.i
  %65 = load double, double* %arrayidx31.us.i, align 8, !tbaa !2
  %mul32.us.i = fmul double %65, 1.200000e+00
  %mul42.us.i = fmul double %mul.us.i, %32
  %add43.us.i = fadd double %mul32.us.i, %mul42.us.i
  %mul44.us.i = fmul double %add27.us.i.lcssa, 1.500000e+00
  %add45.us.i = fadd double %mul44.us.i, %add43.us.i
  store double %add45.us.i, double* %arrayidx31.us.i, align 8, !tbaa !2
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2600
  br i1 %exitcond11.not.i, label %for.inc53.i, label %for.cond4.preheader.us.i, !llvm.loop !19

for.inc53.i:                                      ; preds = %for.cond4.for.end_crit_edge.us.i, %vector.body44
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 2000
  br i1 %exitcond17.not.i, label %kernel_symm.exit, label %for.cond1.preheader.i28, !llvm.loop !20

kernel_symm.exit:                                 ; preds = %for.inc53.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_symm.exit
  %66 = load i8*, i8** %argv, align 8, !tbaa !21
  %strcmpload = load i8, i8* %66, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %67) #7
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %70 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i32 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i34, %if.end.i ]
  %71 = add nuw nsw i64 %indvars.iv.i32, %70
  %72 = trunc i64 %71 to i32
  %rem.i33 = urem i32 %72, 20
  %cmp5.i = icmp eq i32 %rem.i33, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %73) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i32
  %75 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %75) #7
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, 2600
  br i1 %exitcond.not.i35, label %for.inc10.i, label %for.body4.i, !llvm.loop !23

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !24

print_array.exit:                                 ; preds = %for.inc10.i
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %77) #7
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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !4, i64 0}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
