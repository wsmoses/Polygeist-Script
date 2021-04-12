; ModuleID = 'syr2k.c'
source_filename = "syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8
@.str.ident.11 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.12 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.11, i32 0, i32 0) }, align 8
@.str.ident.14 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.15 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.14, i32 0, i32 0) }, align 8
@.str.ident.17 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.18 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.17, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
polly.exiting:
  %polly.par.userContext117 = alloca { i8*, i8*, [2600 x double]* }, align 8
  %polly.par.userContext114 = alloca { [2600 x double]* }, align 8
  %polly.par.userContext52 = alloca { i8* }, align 8
  %polly.par.userContext47 = alloca { i8*, i8* }, align 8
  %polly.par.userContext = alloca { i8*, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #8
  %call.i45 = bitcast i8* %call.i to [2600 x double]*
  %call.i25 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %call.i26 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %arraydecay3 = bitcast i8* %call.i25 to [2000 x double]*
  %arraydecay4 = bitcast i8* %call.i26 to [2000 x double]*
  %polly.subfn.storeaddr.call.i26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i26, i8** %polly.subfn.storeaddr.call.i26, align 8
  %polly.subfn.storeaddr.call.i25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 1
  store i8* %call.i25, i8** %polly.subfn.storeaddr.call.i25, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8*, i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i2548 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext47, i64 0, i32 0
  store i8* %call.i25, i8** %polly.subfn.storeaddr.call.i2548, align 8
  %polly.subfn.storeaddr.call.i2649 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext47, i64 0, i32 1
  store i8* %call.i26, i8** %polly.subfn.storeaddr.call.i2649, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8*, i8* }* nonnull %polly.par.userContext47) #8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext52, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8* }* nonnull %polly.par.userContext52) #8
  tail call void (...) @polybench_timer_start() #8
  %polly.access.cast.call.i25 = bitcast i8* %call.i25 to double*
  %polly.access.call.i25 = getelementptr double, double* %polly.access.cast.call.i25, i64 5200000
  %0 = bitcast i8* %call.i to double*
  %1 = icmp ule double* %polly.access.call.i25, %0
  %polly.access.arraydecay.merge70 = getelementptr [2600 x double], [2600 x double]* %call.i45, i64 0, i64 6760000
  %2 = icmp ule double* %polly.access.arraydecay.merge70, %polly.access.cast.call.i25
  %3 = or i1 %2, %1
  %polly.access.cast.call.i26 = bitcast i8* %call.i26 to double*
  %polly.access.call.i26 = getelementptr double, double* %polly.access.cast.call.i26, i64 5200000
  %4 = icmp ule double* %polly.access.call.i26, %0
  %5 = icmp ule double* %polly.access.arraydecay.merge70, %polly.access.cast.call.i26
  %6 = or i1 %5, %4
  %7 = and i1 %3, %6
  br i1 %7, label %polly.exiting57, label %for.cond1.preheader.i28

for.cond1.preheader.i28:                          ; preds = %polly.exiting, %for.inc43.i
  %indvars.iv16.i27 = phi i64 [ %indvars.iv.next17.i36, %for.inc43.i ], [ 0, %polly.exiting ]
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc43.i ], [ 1, %polly.exiting ]
  %8 = add nsw i64 %indvars.iv16.i27, -3
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %11 = add nuw i64 %indvars.iv16.i27, 1
  %12 = add nuw i64 %indvars.iv16.i27, 1
  %min.iters.check127 = icmp ult i64 %indvars.iv16.i27, 3
  br i1 %min.iters.check127, label %for.body3.i32.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %for.cond1.preheader.i28
  %n.vec130 = and i64 %11, -4
  %xtraiter = and i64 %10, 1
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %middle.block124.unr-lcssa, label %vector.ph128.new

vector.ph128.new:                                 ; preds = %vector.ph128
  %unroll_iter = and i64 %10, 9223372036854775806
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph128.new
  %index131 = phi i64 [ 0, %vector.ph128.new ], [ %index.next132.1, %vector.body126 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph128.new ], [ %niter.nsub.1, %vector.body126 ]
  %14 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %index131
  %15 = bitcast double* %14 to <2 x double>*
  %wide.load135 = load <2 x double>, <2 x double>* %15, align 8, !tbaa !2
  %16 = getelementptr inbounds double, double* %14, i64 2
  %17 = bitcast double* %16 to <2 x double>*
  %wide.load136 = load <2 x double>, <2 x double>* %17, align 8, !tbaa !2
  %18 = fmul <2 x double> %wide.load135, <double 1.200000e+00, double 1.200000e+00>
  %19 = fmul <2 x double> %wide.load136, <double 1.200000e+00, double 1.200000e+00>
  %20 = bitcast double* %14 to <2 x double>*
  store <2 x double> %18, <2 x double>* %20, align 8, !tbaa !2
  %21 = bitcast double* %16 to <2 x double>*
  store <2 x double> %19, <2 x double>* %21, align 8, !tbaa !2
  %index.next132 = or i64 %index131, 4
  %22 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %index.next132
  %23 = bitcast double* %22 to <2 x double>*
  %wide.load135.1 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !2
  %24 = getelementptr inbounds double, double* %22, i64 2
  %25 = bitcast double* %24 to <2 x double>*
  %wide.load136.1 = load <2 x double>, <2 x double>* %25, align 8, !tbaa !2
  %26 = fmul <2 x double> %wide.load135.1, <double 1.200000e+00, double 1.200000e+00>
  %27 = fmul <2 x double> %wide.load136.1, <double 1.200000e+00, double 1.200000e+00>
  %28 = bitcast double* %22 to <2 x double>*
  store <2 x double> %26, <2 x double>* %28, align 8, !tbaa !2
  %29 = bitcast double* %24 to <2 x double>*
  store <2 x double> %27, <2 x double>* %29, align 8, !tbaa !2
  %index.next132.1 = add i64 %index131, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block124.unr-lcssa, label %vector.body126, !llvm.loop !6

middle.block124.unr-lcssa:                        ; preds = %vector.body126, %vector.ph128
  %index131.unr = phi i64 [ 0, %vector.ph128 ], [ %index.next132.1, %vector.body126 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block124, label %vector.body126.epil

vector.body126.epil:                              ; preds = %middle.block124.unr-lcssa
  %30 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %index131.unr
  %31 = bitcast double* %30 to <2 x double>*
  %wide.load135.epil = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %32 = getelementptr inbounds double, double* %30, i64 2
  %33 = bitcast double* %32 to <2 x double>*
  %wide.load136.epil = load <2 x double>, <2 x double>* %33, align 8, !tbaa !2
  %34 = fmul <2 x double> %wide.load135.epil, <double 1.200000e+00, double 1.200000e+00>
  %35 = fmul <2 x double> %wide.load136.epil, <double 1.200000e+00, double 1.200000e+00>
  %36 = bitcast double* %30 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !tbaa !2
  %37 = bitcast double* %32 to <2 x double>*
  store <2 x double> %35, <2 x double>* %37, align 8, !tbaa !2
  br label %middle.block124

middle.block124:                                  ; preds = %middle.block124.unr-lcssa, %vector.body126.epil
  %cmp.n134 = icmp eq i64 %11, %n.vec130
  br i1 %cmp.n134, label %for.cond9.preheader.i.preheader, label %for.body3.i32.preheader

for.body3.i32.preheader:                          ; preds = %for.cond1.preheader.i28, %middle.block124
  %indvars.iv.i29.ph = phi i64 [ 0, %for.cond1.preheader.i28 ], [ %n.vec130, %middle.block124 ]
  br label %for.body3.i32

for.body3.i32:                                    ; preds = %for.body3.i32.preheader, %for.body3.i32
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %for.body3.i32 ], [ %indvars.iv.i29.ph, %for.body3.i32.preheader ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %indvars.iv.i29
  %38 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %38, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %indvars.iv14.i
  br i1 %exitcond.not.i31, label %for.cond9.preheader.i.preheader, label %for.body3.i32, !llvm.loop !9

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i32, %middle.block124
  %min.iters.check = icmp eq i64 %indvars.iv16.i27, 0
  %n.vec = and i64 %12, -2
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc40.i
  %indvars.iv11.i33 = phi i64 [ %indvars.iv.next12.i35, %for.inc40.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx20.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv16.i27, i64 %indvars.iv11.i33
  %arrayidx30.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i27, i64 %indvars.iv11.i33
  %39 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %40 = load double, double* %arrayidx30.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond9.preheader.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %39, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %40, i32 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %41 = or i64 %index, 1
  %42 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %index, i64 %indvars.iv11.i33
  %43 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %41, i64 %indvars.iv11.i33
  %44 = load double, double* %42, align 8, !tbaa !2
  %45 = load double, double* %43, align 8, !tbaa !2
  %46 = insertelement <2 x double> poison, double %44, i32 0
  %47 = insertelement <2 x double> %46, double %45, i32 1
  %48 = fmul <2 x double> %47, <double 1.500000e+00, double 1.500000e+00>
  %49 = fmul <2 x double> %broadcast.splat, %48
  %50 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %index, i64 %indvars.iv11.i33
  %51 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %41, i64 %indvars.iv11.i33
  %52 = load double, double* %50, align 8, !tbaa !2
  %53 = load double, double* %51, align 8, !tbaa !2
  %54 = insertelement <2 x double> poison, double %52, i32 0
  %55 = insertelement <2 x double> %54, double %53, i32 1
  %56 = fmul <2 x double> %55, <double 1.500000e+00, double 1.500000e+00>
  %57 = fmul <2 x double> %broadcast.splat123, %56
  %58 = fadd <2 x double> %49, %57
  %59 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %index
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %60, align 8, !tbaa !2
  %61 = fadd <2 x double> %wide.load, %58
  %62 = bitcast double* %59 to <2 x double>*
  store <2 x double> %61, <2 x double>* %62, align 8, !tbaa !2
  %index.next = add i64 %index, 2
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc40.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block
  %indvars.iv7.i.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.body11.i ], [ %indvars.iv7.i.ph, %for.body11.i.preheader ]
  %arrayidx15.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv7.i, i64 %indvars.iv11.i33
  %64 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %mul16.i = fmul double %64, 1.500000e+00
  %mul21.i = fmul double %39, %mul16.i
  %arrayidx25.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv7.i, i64 %indvars.iv11.i33
  %65 = load double, double* %arrayidx25.i, align 8, !tbaa !2
  %mul26.i = fmul double %65, 1.500000e+00
  %mul31.i = fmul double %40, %mul26.i
  %add.i = fadd double %mul21.i, %mul31.i
  %arrayidx35.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv16.i27, i64 %indvars.iv7.i
  %66 = load double, double* %arrayidx35.i, align 8, !tbaa !2
  %add36.i = fadd double %66, %add.i
  store double %add36.i, double* %arrayidx35.i, align 8, !tbaa !2
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond10.not.i34 = icmp eq i64 %indvars.iv.next8.i, %indvars.iv14.i
  br i1 %exitcond10.not.i34, label %for.inc40.i, label %for.body11.i, !llvm.loop !12

for.inc40.i:                                      ; preds = %for.body11.i, %middle.block
  %indvars.iv.next12.i35 = add nuw nsw i64 %indvars.iv11.i33, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i35, 2000
  br i1 %exitcond13.not.i, label %for.inc43.i, label %for.cond9.preheader.i, !llvm.loop !13

for.inc43.i:                                      ; preds = %for.inc40.i
  %indvars.iv.next17.i36 = add nuw nsw i64 %indvars.iv16.i27, 1
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond18.not.i37 = icmp eq i64 %indvars.iv.next17.i36, 2600
  br i1 %exitcond18.not.i37, label %kernel_syr2k.exit, label %for.cond1.preheader.i28, !llvm.loop !14

kernel_syr2k.exit:                                ; preds = %for.inc43.i, %polly.exiting57
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit
  %67 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %67, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %69 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %68) #9
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %71 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i38 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i40, %if.end.i ]
  %72 = add nuw nsw i64 %indvars.iv.i38, %71
  %73 = trunc i64 %72 to i32
  %rem.i39 = urem i32 %73, 20
  %cmp5.i = icmp eq i32 %rem.i39, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %74) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i45, i64 %indvars.iv4.i, i64 %indvars.iv.i38
  %76 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %76) #9
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, 2600
  br i1 %exitcond.not.i41, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc10.i
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %78) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit
  tail call void @free(i8* nonnull %call.i) #8
  tail call void @free(i8* %call.i25) #8
  tail call void @free(i8* %call.i26) #8
  ret i32 0

polly.exiting57:                                  ; preds = %polly.exiting
  %80 = bitcast { [2600 x double]* }* %polly.par.userContext114 to i8**
  store i8* %call.i, i8** %80, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.15, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_16 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { [2600 x double]* }* nonnull %polly.par.userContext114) #8
  %polly.subfn.storeaddr.call.i25118 = getelementptr inbounds { i8*, i8*, [2600 x double]* }, { i8*, i8*, [2600 x double]* }* %polly.par.userContext117, i64 0, i32 0
  store i8* %call.i25, i8** %polly.subfn.storeaddr.call.i25118, align 8
  %polly.subfn.storeaddr.call.i26119 = getelementptr inbounds { i8*, i8*, [2600 x double]* }, { i8*, i8*, [2600 x double]* }* %polly.par.userContext117, i64 0, i32 1
  store i8* %call.i26, i8** %polly.subfn.storeaddr.call.i26119, align 8
  %polly.subfn.storeaddr.arraydecay.merge120 = getelementptr inbounds { i8*, i8*, [2600 x double]* }, { i8*, i8*, [2600 x double]* }* %polly.par.userContext117, i64 0, i32 2
  %81 = bitcast [2600 x double]** %polly.subfn.storeaddr.arraydecay.merge120 to i8**
  store i8* %call.i, i8** %81, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.18, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_19 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8*, i8*, [2600 x double]* }* nonnull %polly.par.userContext117) #8
  br label %kernel_syr2k.exit
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

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i26 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2568)
  %4 = add nsw i64 %smin23, 2599
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2600
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 1999
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 16000
  br label %polly.stmt.for.body3.i.us

polly.stmt.for.body3.i.us:                        ; preds = %polly.stmt.for.body3.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body3.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, %10
  %15 = add i32 %14, 2
  %16 = urem i32 %15, 2000
  %p_conv10.i.us = sitofp i32 %16 to double
  %p_div12.i.us = fdiv double %p_conv10.i.us, 2.000000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i26, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div12.i.us, double* %scevgep19.us, align 8, !alias.scope !19, !noalias !21, !llvm.access.group !24
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body3.i.us, !llvm.loop !25

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body3.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 63
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_10(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i25 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2568)
  %4 = add nsw i64 %smin23, 2599
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2600
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 1999
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 16000
  br label %polly.stmt.for.body3.i.us

polly.stmt.for.body3.i.us:                        ; preds = %polly.stmt.for.body3.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body3.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, %10
  %15 = add i32 %14, 1
  %16 = urem i32 %15, 2600
  %p_conv.i.us = sitofp i32 %16 to double
  %p_div.i.us = fdiv double %p_conv.i.us, 2.600000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i25, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div.i.us, double* %scevgep19.us, align 8, !alias.scope !22, !noalias !27, !llvm.access.group !28
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body3.i.us, !llvm.loop !29

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body3.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 63
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2568)
  %4 = add nsw i64 %smin23, 2599
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2600
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2568)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 2599
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 20800
  br label %polly.stmt.for.body27.i.us

polly.stmt.for.body27.i.us:                       ; preds = %polly.stmt.for.body27.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body27.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, %10
  %15 = add i32 %14, 3
  %16 = urem i32 %15, 2600
  %p_conv31.i.us = sitofp i32 %16 to double
  %p_div33.i.us = fdiv double %p_conv31.i.us, 2.000000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div33.i.us, double* %scevgep19.us, align 8, !alias.scope !23, !noalias !31, !llvm.access.group !32
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body27.i.us, !llvm.loop !33

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body27.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 82
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_16(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to [2600 x double]**
  %polly.subfunc.arg.arraydecay.merge = load [2600 x double]*, [2600 x double]** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit10.loopexit.us, %polly.loop_if7.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvars.iv.next30 = add i64 %indvars.iv29, -32
  %exitcond37.not = icmp eq i64 %polly.indvar, %smax36
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond37.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = shl i64 %polly.indvar.LB, 5
  %4 = mul i64 %polly.indvar.LB, -32
  %smax36 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvar = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next, %polly.loop_exit3 ]
  %indvars.iv33.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv33, %polly.loop_exit3 ]
  %indvars.iv29 = phi i64 [ %4, %polly.loop_preheader ], [ %indvars.iv.next30, %polly.loop_exit3 ]
  %indvars.iv = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %5 = add i64 %polly.indvar.LB, %indvar
  %6 = shl i64 %5, 5
  %7 = add i64 %polly.indvar.LB, %indvar
  %8 = shl i64 %7, 5
  %indvars.iv33 = add i64 %indvars.iv33.in, 1
  %smin31 = call i64 @llvm.smin.i64(i64 %indvars.iv29, i64 -2568)
  %9 = add nsw i64 %smin31, 2599
  %smax = call i64 @llvm.smax.i64(i64 %9, i64 0)
  %polly.loop_guard = icmp sgt i64 %polly.indvar, -1
  br i1 %polly.loop_guard, label %polly.loop_if7.preheader, label %polly.loop_exit3

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %10 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard1138 = icmp sgt i64 %10, -2600
  %11 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard1138, label %polly.loop_if7.us, label %polly.loop_exit3

polly.loop_if7.us:                                ; preds = %polly.loop_if7.preheader, %polly.loop_exit10.loopexit.us
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %polly.loop_exit10.loopexit.us ], [ %indvars.iv, %polly.loop_if7.preheader ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit10.loopexit.us ], [ 0, %polly.loop_if7.preheader ]
  %12 = mul i64 %polly.indvar4.us, -32
  %13 = add i64 %6, %12
  %14 = mul i64 %polly.indvar4.us, -32
  %15 = add i64 %8, %14
  %16 = shl nsw i64 %polly.indvar4.us, 5
  %17 = sub nsw i64 %11, %16
  br label %polly.loop_if15.us

polly.loop_if15.us:                               ; preds = %polly.loop_if7.us, %polly.loop_exit18.us
  %indvars.iv27 = phi i64 [ %indvars.iv25, %polly.loop_if7.us ], [ %indvars.iv.next28, %polly.loop_exit18.us ]
  %polly.indvar12.us = phi i64 [ 0, %polly.loop_if7.us ], [ %polly.indvar_next13.us, %polly.loop_exit18.us ]
  %18 = add i64 %13, %polly.indvar12.us
  %smin42 = call i64 @llvm.smin.i64(i64 %18, i64 31)
  %19 = add i64 %smin42, -3
  %20 = lshr i64 %19, 2
  %21 = add nuw nsw i64 %20, 1
  %22 = add i64 %15, %polly.indvar12.us
  %smin40 = call i64 @llvm.smin.i64(i64 %22, i64 31)
  %23 = add nsw i64 %smin40, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv27, i64 31)
  %24 = add nsw i64 %polly.indvar12.us, %17
  %polly.loop_guard19.us39 = icmp sgt i64 %24, -1
  br i1 %polly.loop_guard19.us39, label %polly.stmt.for.body3.i32.preheader.us, label %polly.loop_exit18.us

polly.stmt.for.body3.i32.us:                      ; preds = %polly.stmt.for.body3.i32.us.preheader, %polly.stmt.for.body3.i32.us
  %polly.indvar20.us = phi i64 [ %polly.indvar_next21.us, %polly.stmt.for.body3.i32.us ], [ %polly.indvar20.us.ph, %polly.stmt.for.body3.i32.us.preheader ]
  %25 = add nuw nsw i64 %polly.indvar20.us, %16
  %scevgep.us = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %25
  %_p_scalar_.us = load double, double* %scevgep.us, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %p_mul.i.us = fmul double %_p_scalar_.us, 1.200000e+00
  store double %p_mul.i.us, double* %scevgep.us, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %polly.indvar_next21.us = add nuw nsw i64 %polly.indvar20.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar20.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit18.us, label %polly.stmt.for.body3.i32.us, !llvm.loop !41

polly.loop_exit18.us:                             ; preds = %polly.stmt.for.body3.i32.us, %middle.block, %polly.loop_if15.us
  %polly.indvar_next13.us = add nuw nsw i64 %polly.indvar12.us, 1
  %indvars.iv.next28 = add i64 %indvars.iv27, 1
  %exitcond32.not = icmp eq i64 %polly.indvar12.us, %smax
  br i1 %exitcond32.not, label %polly.loop_exit10.loopexit.us, label %polly.loop_if15.us

polly.stmt.for.body3.i32.preheader.us:            ; preds = %polly.loop_if15.us
  %26 = add nsw i64 %polly.indvar12.us, %11
  %min.iters.check = icmp ult i64 %23, 4
  br i1 %min.iters.check, label %polly.stmt.for.body3.i32.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body3.i32.preheader.us
  %n.vec = and i64 %23, -4
  %xtraiter = and i64 %21, 1
  %27 = icmp eq i64 %20, 0
  br i1 %27, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %21, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %28 = add nuw nsw i64 %index, %16
  %29 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %28
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %30, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %31 = getelementptr double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load41 = load <2 x double>, <2 x double>* %32, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %33 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %34 = fmul <2 x double> %wide.load41, <double 1.200000e+00, double 1.200000e+00>
  %35 = bitcast double* %29 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %36 = bitcast double* %31 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %index.next = or i64 %index, 4
  %37 = add nuw nsw i64 %index.next, %16
  %38 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %37
  %39 = bitcast double* %38 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %39, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %40 = getelementptr double, double* %38, i64 2
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load41.1 = load <2 x double>, <2 x double>* %41, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %42 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %43 = fmul <2 x double> %wide.load41.1, <double 1.200000e+00, double 1.200000e+00>
  %44 = bitcast double* %38 to <2 x double>*
  store <2 x double> %42, <2 x double>* %44, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %45 = bitcast double* %40 to <2 x double>*
  store <2 x double> %43, <2 x double>* %45, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !43

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %46 = add nuw nsw i64 %index.unr, %16
  %47 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %46
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %48, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %49 = getelementptr double, double* %47, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load41.epil = load <2 x double>, <2 x double>* %50, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %51 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %52 = fmul <2 x double> %wide.load41.epil, <double 1.200000e+00, double 1.200000e+00>
  %53 = bitcast double* %47 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  %54 = bitcast double* %49 to <2 x double>*
  store <2 x double> %52, <2 x double>* %54, align 8, !alias.scope !35, !noalias !37, !llvm.access.group !40
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %23, %n.vec
  br i1 %cmp.n, label %polly.loop_exit18.us, label %polly.stmt.for.body3.i32.us.preheader

polly.stmt.for.body3.i32.us.preheader:            ; preds = %polly.stmt.for.body3.i32.preheader.us, %middle.block
  %polly.indvar20.us.ph = phi i64 [ 0, %polly.stmt.for.body3.i32.preheader.us ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body3.i32.us

polly.loop_exit10.loopexit.us:                    ; preds = %polly.loop_exit18.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next26 = add i64 %indvars.iv25, -32
  %exitcond35.not = icmp eq i64 %polly.indvar4.us, %indvars.iv33.in
  br i1 %exitcond35.not, label %polly.loop_exit3, label %polly.loop_if7.us
}

define internal void @main_polly_subfn_19(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i25 = load i8*, i8** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i26 = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to [2600 x double]**
  %polly.subfunc.arg.arraydecay.merge = load [2600 x double]*, [2600 x double]** %4, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %5, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %polly.access.cast.polly.subfunc.arg.call.i25 = bitcast i8* %polly.subfunc.arg.call.i25 to double*
  %polly.access.cast.polly.subfunc.arg.call.i26 = bitcast i8* %polly.subfunc.arg.call.i26 to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.split.us.us, %polly.loop_preheader8.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next47 = add i64 %indvars.iv46, 32
  %indvars.iv.next55 = add i64 %indvars.iv54, -32
  %exitcond63.not = icmp eq i64 %polly.indvar, %smax62
  br i1 %exitcond63.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %7 = shl i64 %polly.indvar.LB, 5
  %8 = mul i64 %polly.indvar.LB, -32
  %smax62 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv59.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv59, %polly.loop_exit3 ]
  %indvars.iv54 = phi i64 [ %8, %polly.loop_preheader ], [ %indvars.iv.next55, %polly.loop_exit3 ]
  %indvars.iv46 = phi i64 [ %7, %polly.loop_preheader ], [ %indvars.iv.next47, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %indvars.iv59 = add i64 %indvars.iv59.in, 1
  %smin56 = call i64 @llvm.smin.i64(i64 %indvars.iv54, i64 -2568)
  %9 = add nsw i64 %smin56, 2599
  %smax = call i64 @llvm.smax.i64(i64 %9, i64 0)
  %polly.loop_guard = icmp sgt i64 %polly.indvar, -1
  br i1 %polly.loop_guard, label %polly.loop_preheader8.preheader, label %polly.loop_exit3

polly.loop_preheader8.preheader:                  ; preds = %polly.loop_if
  %10 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard1764 = icmp sgt i64 %10, -2600
  %11 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard1764, label %polly.loop_preheader8.us, label %polly.loop_exit3

polly.loop_preheader8.us:                         ; preds = %polly.loop_preheader8.preheader, %polly.loop_exit9.split.us.us
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %polly.loop_exit9.split.us.us ], [ %indvars.iv46, %polly.loop_preheader8.preheader ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader8.preheader ]
  %12 = shl nsw i64 %polly.indvar4.us, 5
  %13 = sub nsw i64 %11, %12
  br label %polly.loop_if13.us.us

polly.loop_if13.us.us:                            ; preds = %polly.loop_exit16.loopexit.us.us, %polly.loop_preheader8.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit16.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %polly.indvar10.us.us = phi i64 [ %polly.indvar_next11.us.us, %polly.loop_exit16.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %14 = shl nsw i64 %polly.indvar10.us.us, 5
  %15 = add nsw i64 %smin, 1999
  br label %polly.loop_if21.us.us

polly.loop_if21.us.us:                            ; preds = %polly.loop_exit24.us.us, %polly.loop_if13.us.us
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %polly.loop_exit24.us.us ], [ %indvars.iv48, %polly.loop_if13.us.us ]
  %polly.indvar18.us.us = phi i64 [ %polly.indvar_next19.us.us, %polly.loop_exit24.us.us ], [ 0, %polly.loop_if13.us.us ]
  %smin52 = call i64 @llvm.smin.i64(i64 %indvars.iv50, i64 31)
  %16 = add nsw i64 %polly.indvar18.us.us, %13
  %polly.loop_guard25.us.us65 = icmp sgt i64 %16, -1
  br i1 %polly.loop_guard25.us.us65, label %polly.loop_preheader30.preheader.us.us, label %polly.loop_exit24.us.us

polly.loop_preheader30.us.us:                     ; preds = %polly.loop_preheader30.preheader.us.us, %polly.loop_exit31.us.us
  %polly.indvar26.us.us = phi i64 [ %polly.indvar_next27.us.us, %polly.loop_exit31.us.us ], [ 0, %polly.loop_preheader30.preheader.us.us ]
  %17 = add nuw nsw i64 %polly.indvar26.us.us, %12
  %18 = mul i64 %17, 16000
  %scevgep41.us.us = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %29, i64 %17
  %scevgep41.promoted.us.us = load double, double* %scevgep41.us.us, align 8, !alias.scope !44, !noalias !37
  br label %polly.stmt.for.body11.i.us.us

polly.stmt.for.body11.i.us.us:                    ; preds = %polly.stmt.for.body11.i.us.us, %polly.loop_preheader30.us.us
  %p_add36.i43.us.us = phi double [ %scevgep41.promoted.us.us, %polly.loop_preheader30.us.us ], [ %p_add36.i.us.us, %polly.stmt.for.body11.i.us.us ]
  %polly.indvar32.us.us = phi i64 [ 0, %polly.loop_preheader30.us.us ], [ %polly.indvar_next33.us.us, %polly.stmt.for.body11.i.us.us ]
  %19 = add nuw nsw i64 %polly.indvar32.us.us, %14
  %polly.access.add.polly.subfunc.arg.call.i25.us.us = add nsw i64 %19, %polly.access.mul.polly.subfunc.arg.call.i25.us.us
  %polly.access.polly.subfunc.arg.call.i25.us.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i25, i64 %polly.access.add.polly.subfunc.arg.call.i25.us.us
  %_p_scalar_.us.us = load double, double* %polly.access.polly.subfunc.arg.call.i25.us.us, align 8, !alias.scope !39, !noalias !45
  %polly.access.polly.subfunc.arg.call.i26.us.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i26, i64 %polly.access.add.polly.subfunc.arg.call.i25.us.us
  %_p_scalar_35.us.us = load double, double* %polly.access.polly.subfunc.arg.call.i26.us.us, align 8, !alias.scope !38, !noalias !46
  %20 = shl i64 %19, 3
  %21 = add i64 %20, %18
  %scevgep.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i25, i64 %21
  %scevgep36.us.us = bitcast i8* %scevgep.us.us to double*
  %_p_scalar_37.us.us = load double, double* %scevgep36.us.us, align 8, !alias.scope !39, !noalias !45
  %scevgep38.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i26, i64 %21
  %scevgep3839.us.us = bitcast i8* %scevgep38.us.us to double*
  %_p_scalar_40.us.us = load double, double* %scevgep3839.us.us, align 8, !alias.scope !38, !noalias !46
  %22 = insertelement <2 x double> poison, double %_p_scalar_37.us.us, i32 0
  %23 = insertelement <2 x double> %22, double %_p_scalar_40.us.us, i32 1
  %24 = fmul <2 x double> %23, <double 1.500000e+00, double 1.500000e+00>
  %25 = insertelement <2 x double> poison, double %_p_scalar_35.us.us, i32 0
  %26 = insertelement <2 x double> %25, double %_p_scalar_.us.us, i32 1
  %27 = fmul <2 x double> %26, %24
  %shift = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %28 = fadd <2 x double> %27, %shift
  %p_add.i.us.us = extractelement <2 x double> %28, i32 0
  %p_add36.i.us.us = fadd double %p_add36.i43.us.us, %p_add.i.us.us
  %polly.indvar_next33.us.us = add nuw nsw i64 %polly.indvar32.us.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar32.us.us, %15
  br i1 %exitcond.not, label %polly.loop_exit31.us.us, label %polly.stmt.for.body11.i.us.us

polly.loop_exit31.us.us:                          ; preds = %polly.stmt.for.body11.i.us.us
  store double %p_add36.i.us.us, double* %scevgep41.us.us, align 8, !alias.scope !44, !noalias !37
  %polly.indvar_next27.us.us = add nuw nsw i64 %polly.indvar26.us.us, 1
  %exitcond53.not = icmp eq i64 %polly.indvar26.us.us, %smin52
  br i1 %exitcond53.not, label %polly.loop_exit24.us.us, label %polly.loop_preheader30.us.us

polly.loop_exit24.us.us:                          ; preds = %polly.loop_exit31.us.us, %polly.loop_if21.us.us
  %polly.indvar_next19.us.us = add nuw nsw i64 %polly.indvar18.us.us, 1
  %indvars.iv.next51 = add i64 %indvars.iv50, 1
  %exitcond57.not = icmp eq i64 %polly.indvar18.us.us, %smax
  br i1 %exitcond57.not, label %polly.loop_exit16.loopexit.us.us, label %polly.loop_if21.us.us

polly.loop_preheader30.preheader.us.us:           ; preds = %polly.loop_if21.us.us
  %29 = add nsw i64 %polly.indvar18.us.us, %11
  %polly.access.mul.polly.subfunc.arg.call.i25.us.us = mul nsw i64 %29, 2000
  br label %polly.loop_preheader30.us.us

polly.loop_exit16.loopexit.us.us:                 ; preds = %polly.loop_exit24.us.us
  %polly.indvar_next11.us.us = add nuw nsw i64 %polly.indvar10.us.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond58.not = icmp eq i64 %polly.indvar_next11.us.us, 63
  br i1 %exitcond58.not, label %polly.loop_exit9.split.us.us, label %polly.loop_if13.us.us

polly.loop_exit9.split.us.us:                     ; preds = %polly.loop_exit16.loopexit.us.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next49 = add i64 %indvars.iv48, -32
  %exitcond61.not = icmp eq i64 %polly.indvar4.us, %indvars.iv59.in
  br i1 %exitcond61.not, label %polly.loop_exit3, label %polly.loop_preheader8.us
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { "polly.skip.fn" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !7, !10, !8}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !7, !8}
!12 = distinct !{!12, !7, !10, !8}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !20, !"polly.alias.scope.MemRef1"}
!20 = distinct !{!20, !"polly.alias.scope.domain"}
!21 = !{!22, !23}
!22 = distinct !{!22, !20, !"polly.alias.scope.MemRef0"}
!23 = distinct !{!23, !20, !"polly.alias.scope.MemRef3"}
!24 = distinct !{}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.parallel_accesses", !24}
!27 = !{!19, !23}
!28 = distinct !{}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.parallel_accesses", !28}
!31 = !{!22, !19}
!32 = distinct !{}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = distinct !{!35, !36, !"polly.alias.scope.MemRef0"}
!36 = distinct !{!36, !"polly.alias.scope.domain"}
!37 = !{!38, !39}
!38 = distinct !{!38, !36, !"polly.alias.scope.MemRef1"}
!39 = distinct !{!39, !36, !"polly.alias.scope.MemRef3"}
!40 = distinct !{}
!41 = distinct !{!41, !42, !10, !8}
!42 = !{!"llvm.loop.parallel_accesses", !40}
!43 = distinct !{!43, !42, !8}
!44 = !{!35}
!45 = !{!35, !38}
!46 = !{!35, !39}
