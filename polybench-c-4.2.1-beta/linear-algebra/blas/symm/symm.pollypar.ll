; ModuleID = 'symm.c'
source_filename = "symm.c"
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
  %polly.par.userContext115 = alloca { [2000 x double]*, i8*, i8* }, align 8
  %polly.par.userContext52 = alloca { i8* }, align 8
  %polly.par.userContext49 = alloca { i8* }, align 8
  %polly.par.userContext44 = alloca { i8*, i8* }, align 8
  %polly.par.userContext = alloca { i8*, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %call.i26 = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #8
  %call.i2642 = bitcast i8* %call.i26 to [2000 x double]*
  %call.i27 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  %arraydecay4 = bitcast i8* %call.i27 to [2600 x double]*
  %polly.subfn.storeaddr.call.i27 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i27, i8** %polly.subfn.storeaddr.call.i27, align 8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 1
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8*, i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i45 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext44, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i45, align 8
  %polly.subfn.storeaddr.call.i2746 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext44, i64 0, i32 1
  store i8* %call.i27, i8** %polly.subfn.storeaddr.call.i2746, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8*, i8* }* nonnull %polly.par.userContext44) #8
  %polly.subfn.storeaddr.call.i26 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext49, i64 0, i32 0
  store i8* %call.i26, i8** %polly.subfn.storeaddr.call.i26, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8* }* nonnull %polly.par.userContext49) #8
  %polly.subfn.storeaddr.call.i2653 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext52, i64 0, i32 0
  store i8* %call.i26, i8** %polly.subfn.storeaddr.call.i2653, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.15, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_16 to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8* }* nonnull %polly.par.userContext52) #8
  tail call void (...) @polybench_timer_start() #8
  %polly.access.cast.call.i27 = bitcast i8* %call.i27 to double*
  %polly.access.call.i27 = getelementptr double, double* %polly.access.cast.call.i27, i64 5200000
  %polly.access.cast.call.i = bitcast i8* %call.i to double*
  %0 = icmp ule double* %polly.access.call.i27, %polly.access.cast.call.i
  %polly.access.call.i71 = getelementptr double, double* %polly.access.cast.call.i, i64 5200000
  %1 = icmp ule double* %polly.access.call.i71, %polly.access.cast.call.i27
  %2 = or i1 %1, %0
  %polly.access.arraydecay3.merge = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 0, i64 4000000
  %3 = icmp ule double* %polly.access.arraydecay3.merge, %polly.access.cast.call.i
  %polly.access.arraydecay3.merge113 = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 0, i64 2000
  %4 = icmp ule double* %polly.access.call.i71, %polly.access.arraydecay3.merge113
  %5 = or i1 %3, %4
  %6 = and i1 %5, %2
  br i1 %6, label %polly.loop_preheader, label %for.cond1.preheader.i28

for.cond1.preheader.i28:                          ; preds = %polly.exiting, %for.inc53.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc53.i ], [ 0, %polly.exiting ]
  %cmp51.not.i = icmp eq i64 %indvars.iv15.i, 0
  %arrayidx41.i = getelementptr inbounds [2000 x double], [2000 x double]* %call.i2642, i64 %indvars.iv15.i, i64 %indvars.iv15.i
  %7 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  br i1 %cmp51.not.i, label %vector.ph, label %for.cond4.preheader.us.i.preheader

for.cond4.preheader.us.i.preheader:               ; preds = %for.cond1.preheader.i28
  %xtraiter = and i64 %indvars.iv15.i, 1
  %8 = icmp eq i64 %indvars.iv15.i, 1
  %unroll_iter = and i64 %indvars.iv15.i, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond4.preheader.us.i

vector.ph:                                        ; preds = %for.cond1.preheader.i28
  %broadcast.splatinsert = insertelement <2 x double> poison, double %7, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert173 = insertelement <2 x double> poison, double %7, i32 0
  %broadcast.splat174 = shufflevector <2 x double> %broadcast.splatinsert173, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %9 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 0, i64 %index
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %10, align 8, !tbaa !2
  %11 = getelementptr inbounds double, double* %9, i64 2
  %12 = bitcast double* %11 to <2 x double>*
  %wide.load170 = load <2 x double>, <2 x double>* %12, align 8, !tbaa !2
  %13 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %14 = fmul <2 x double> %wide.load170, <double 1.200000e+00, double 1.200000e+00>
  %15 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 0, i64 %index
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load171 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %17 = getelementptr inbounds double, double* %15, i64 2
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load172 = load <2 x double>, <2 x double>* %18, align 8, !tbaa !2
  %19 = fmul <2 x double> %wide.load171, <double 1.500000e+00, double 1.500000e+00>
  %20 = fmul <2 x double> %wide.load172, <double 1.500000e+00, double 1.500000e+00>
  %21 = fmul <2 x double> %broadcast.splat, %19
  %22 = fmul <2 x double> %broadcast.splat174, %20
  %23 = fadd <2 x double> %13, %21
  %24 = fadd <2 x double> %14, %22
  %25 = fadd <2 x double> %23, zeroinitializer
  %26 = fadd <2 x double> %24, zeroinitializer
  %27 = bitcast double* %9 to <2 x double>*
  store <2 x double> %25, <2 x double>* %27, align 8, !tbaa !2
  %28 = bitcast double* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %28, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %29 = icmp eq i64 %index.next, 2600
  br i1 %29, label %for.inc53.i, label %vector.body, !llvm.loop !6

for.cond4.preheader.us.i:                         ; preds = %for.cond4.preheader.us.i.preheader, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.cond4.for.end_crit_edge.us.i ], [ 0, %for.cond4.preheader.us.i.preheader ]
  %arrayidx8.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv9.i
  %30 = load double, double* %arrayidx8.us.i, align 8, !tbaa !2
  %mul.us.i = fmul double %30, 1.500000e+00
  br i1 %8, label %for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.cond4.preheader.us.i, %for.body6.us.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30.1, %for.body6.us.i ], [ 0, %for.cond4.preheader.us.i ]
  %temp2.03.us.i = phi double [ %add27.us.i.1, %for.body6.us.i ], [ 0.000000e+00, %for.cond4.preheader.us.i ]
  %niter = phi i64 [ %niter.nsub.1, %for.body6.us.i ], [ %unroll_iter, %for.cond4.preheader.us.i ]
  %arrayidx12.us.i = getelementptr inbounds [2000 x double], [2000 x double]* %call.i2642, i64 %indvars.iv15.i, i64 %indvars.iv.i29
  %31 = load double, double* %arrayidx12.us.i, align 8, !tbaa !2
  %mul13.us.i = fmul double %mul.us.i, %31
  %arrayidx17.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i29, i64 %indvars.iv9.i
  %32 = load double, double* %arrayidx17.us.i, align 8, !tbaa !2
  %add.us.i = fadd double %32, %mul13.us.i
  store double %add.us.i, double* %arrayidx17.us.i, align 8, !tbaa !2
  %arrayidx21.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.i29, i64 %indvars.iv9.i
  %33 = load double, double* %arrayidx21.us.i, align 8, !tbaa !2
  %mul26.us.i = fmul double %31, %33
  %add27.us.i = fadd double %temp2.03.us.i, %mul26.us.i
  %indvars.iv.next.i30 = or i64 %indvars.iv.i29, 1
  %arrayidx12.us.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %call.i2642, i64 %indvars.iv15.i, i64 %indvars.iv.next.i30
  %34 = load double, double* %arrayidx12.us.i.1, align 8, !tbaa !2
  %mul13.us.i.1 = fmul double %mul.us.i, %34
  %arrayidx17.us.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i30, i64 %indvars.iv9.i
  %35 = load double, double* %arrayidx17.us.i.1, align 8, !tbaa !2
  %add.us.i.1 = fadd double %35, %mul13.us.i.1
  store double %add.us.i.1, double* %arrayidx17.us.i.1, align 8, !tbaa !2
  %arrayidx21.us.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next.i30, i64 %indvars.iv9.i
  %36 = load double, double* %arrayidx21.us.i.1, align 8, !tbaa !2
  %mul26.us.i.1 = fmul double %34, %36
  %add27.us.i.1 = fadd double %add27.us.i, %mul26.us.i.1
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i29, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %for.body6.us.i, !llvm.loop !9

for.cond4.for.end_crit_edge.us.i.unr-lcssa:       ; preds = %for.body6.us.i, %for.cond4.preheader.us.i
  %add27.us.i.lcssa.ph = phi double [ undef, %for.cond4.preheader.us.i ], [ %add27.us.i.1, %for.body6.us.i ]
  %indvars.iv.i29.unr = phi i64 [ 0, %for.cond4.preheader.us.i ], [ %indvars.iv.next.i30.1, %for.body6.us.i ]
  %temp2.03.us.i.unr = phi double [ 0.000000e+00, %for.cond4.preheader.us.i ], [ %add27.us.i.1, %for.body6.us.i ]
  br i1 %lcmp.mod.not, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i.epil

for.body6.us.i.epil:                              ; preds = %for.cond4.for.end_crit_edge.us.i.unr-lcssa
  %arrayidx12.us.i.epil = getelementptr inbounds [2000 x double], [2000 x double]* %call.i2642, i64 %indvars.iv15.i, i64 %indvars.iv.i29.unr
  %37 = load double, double* %arrayidx12.us.i.epil, align 8, !tbaa !2
  %mul13.us.i.epil = fmul double %mul.us.i, %37
  %arrayidx17.us.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i29.unr, i64 %indvars.iv9.i
  %38 = load double, double* %arrayidx17.us.i.epil, align 8, !tbaa !2
  %add.us.i.epil = fadd double %38, %mul13.us.i.epil
  store double %add.us.i.epil, double* %arrayidx17.us.i.epil, align 8, !tbaa !2
  %arrayidx21.us.i.epil = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.i29.unr, i64 %indvars.iv9.i
  %39 = load double, double* %arrayidx21.us.i.epil, align 8, !tbaa !2
  %mul26.us.i.epil = fmul double %37, %39
  %add27.us.i.epil = fadd double %temp2.03.us.i.unr, %mul26.us.i.epil
  br label %for.cond4.for.end_crit_edge.us.i

for.cond4.for.end_crit_edge.us.i:                 ; preds = %for.cond4.for.end_crit_edge.us.i.unr-lcssa, %for.body6.us.i.epil
  %add27.us.i.lcssa = phi double [ %add27.us.i.lcssa.ph, %for.cond4.for.end_crit_edge.us.i.unr-lcssa ], [ %add27.us.i.epil, %for.body6.us.i.epil ]
  %arrayidx31.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv9.i
  %40 = load double, double* %arrayidx31.us.i, align 8, !tbaa !2
  %mul32.us.i = fmul double %40, 1.200000e+00
  %mul42.us.i = fmul double %7, %mul.us.i
  %add43.us.i = fadd double %mul42.us.i, %mul32.us.i
  %mul44.us.i = fmul double %add27.us.i.lcssa, 1.500000e+00
  %add45.us.i = fadd double %mul44.us.i, %add43.us.i
  store double %add45.us.i, double* %arrayidx31.us.i, align 8, !tbaa !2
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2600
  br i1 %exitcond11.not.i, label %for.inc53.i, label %for.cond4.preheader.us.i, !llvm.loop !10

for.inc53.i:                                      ; preds = %for.cond4.for.end_crit_edge.us.i, %vector.body
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 2000
  br i1 %exitcond17.not.i, label %kernel_symm.exit, label %for.cond1.preheader.i28, !llvm.loop !11

kernel_symm.exit:                                 ; preds = %for.inc53.i, %polly.loop_exit121
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_symm.exit
  %41 = load i8*, i8** %argv, align 8, !tbaa !12
  %strcmpload = load i8, i8* %41, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %42) #9
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %45 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i32 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i34, %if.end.i ]
  %46 = add nuw nsw i64 %indvars.iv.i32, %45
  %47 = trunc i64 %46 to i32
  %rem.i33 = urem i32 %47, 20
  %cmp5.i = icmp eq i32 %rem.i33, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %48) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i32
  %50 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %50) #9
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, 2600
  br i1 %exitcond.not.i35, label %for.inc10.i, label %for.body4.i, !llvm.loop !14

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !15

print_array.exit:                                 ; preds = %for.inc10.i
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %52) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_symm.exit
  tail call void @free(i8* nonnull %call.i) #8
  tail call void @free(i8* %call.i26) #8
  tail call void @free(i8* %call.i27) #8
  ret i32 0

polly.loop_exit121:                               ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond165.not = icmp eq i64 %polly.indvar_next, 2000
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %kernel_symm.exit, label %polly.loop_preheader120

polly.loop_preheader:                             ; preds = %polly.exiting
  %54 = bitcast { [2000 x double]*, i8*, i8* }* %polly.par.userContext115 to i8**
  store i8* %call.i26, i8** %54, align 8
  %polly.subfn.storeaddr.call.i116 = getelementptr inbounds { [2000 x double]*, i8*, i8* }, { [2000 x double]*, i8*, i8* }* %polly.par.userContext115, i64 0, i32 1
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i116, align 8
  %polly.subfn.storeaddr.call.i27117 = getelementptr inbounds { [2000 x double]*, i8*, i8* }, { [2000 x double]*, i8*, i8* }* %polly.par.userContext115, i64 0, i32 2
  store i8* %call.i27, i8** %polly.subfn.storeaddr.call.i27117, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.18, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_19 to void (i32*, i32*, ...)*), i64 0, i64 2600, i64 1, { [2000 x double]*, i8*, i8* }* nonnull %polly.par.userContext115) #8
  br label %polly.loop_preheader120

polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa: ; preds = %polly.stmt.for.body6.us.i, %polly.loop_preheader126
  %p_add27.us.i.lcssa.ph = phi double [ undef, %polly.loop_preheader126 ], [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ]
  %temp2.03.us.i.phiops.0.unr = phi double [ 0.000000e+00, %polly.loop_preheader126 ], [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ]
  %polly.indvar128.unr = phi i64 [ 0, %polly.loop_preheader126 ], [ %polly.indvar_next129.1, %polly.stmt.for.body6.us.i ]
  br i1 %lcmp.mod178.not, label %polly.stmt.for.cond4.for.end_crit_edge.us.i, label %polly.stmt.for.body6.us.i.epil

polly.stmt.for.body6.us.i.epil:                   ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa
  %scevgep135.epil = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 %polly.indvar, i64 %polly.indvar128.unr
  %_p_scalar_136.epil = load double, double* %scevgep135.epil, align 8, !alias.scope !16, !noalias !18
  %p_mul13.us.i.epil = fmul double %p_mul.us.i, %_p_scalar_136.epil
  %55 = mul nuw nsw i64 %polly.indvar128.unr, 20800
  %scevgep138.epil = getelementptr i8, i8* %scevgep137, i64 %55
  %scevgep138139.epil = bitcast i8* %scevgep138.epil to double*
  %_p_scalar_140.epil = load double, double* %scevgep138139.epil, align 8, !alias.scope !19, !noalias !21
  %p_add.us.i.epil = fadd double %_p_scalar_140.epil, %p_mul13.us.i.epil
  store double %p_add.us.i.epil, double* %scevgep138139.epil, align 8, !alias.scope !19, !noalias !21
  %scevgep142.epil = getelementptr i8, i8* %scevgep141, i64 %55
  %scevgep142143.epil = bitcast i8* %scevgep142.epil to double*
  %_p_scalar_144.epil = load double, double* %scevgep142143.epil, align 8, !alias.scope !20, !noalias !22
  %p_mul26.us.i.epil = fmul double %_p_scalar_136.epil, %_p_scalar_144.epil
  %p_add27.us.i.epil = fadd double %temp2.03.us.i.phiops.0.unr, %p_mul26.us.i.epil
  br label %polly.stmt.for.cond4.for.end_crit_edge.us.i

polly.stmt.for.cond4.for.end_crit_edge.us.i:      ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, %polly.stmt.for.body6.us.i.epil
  %p_add27.us.i.lcssa = phi double [ %p_add27.us.i.lcssa.ph, %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa ], [ %p_add27.us.i.epil, %polly.stmt.for.body6.us.i.epil ]
  %scevgep157 = getelementptr i8, i8* %scevgep156, i64 %61
  %scevgep157158 = bitcast i8* %scevgep157 to double*
  %_p_scalar_159 = load double, double* %scevgep157158, align 8, !alias.scope !19, !noalias !21
  %p_mul32.us.i = fmul double %_p_scalar_159, 1.200000e+00
  %p_mul42.us.i = fmul double %p_mul.us.i, %_p_scalar_149
  %p_add43.us.i = fadd double %p_mul42.us.i, %p_mul32.us.i
  %p_mul44.us.i = fmul double %p_add27.us.i.lcssa, 1.500000e+00
  %p_add45.us.i = fadd double %p_mul44.us.i, %p_add43.us.i
  store double %p_add45.us.i, double* %scevgep157158, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next123 = add nuw nsw i64 %polly.indvar122, 1
  %exitcond164.not = icmp eq i64 %polly.indvar_next123, 2600
  br i1 %exitcond164.not, label %polly.loop_exit121, label %polly.loop_preheader126

polly.loop_preheader120:                          ; preds = %polly.loop_preheader, %polly.loop_exit121
  %indvar = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next, %polly.loop_exit121 ]
  %polly.indvar = phi i64 [ 1, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit121 ]
  %56 = add i64 %indvar, 1
  %57 = mul nuw nsw i64 %polly.indvar, 20800
  %scevgep156 = getelementptr i8, i8* %call.i, i64 %57
  %polly.access.add.arraydecay3.merge147 = mul nuw nsw i64 %polly.indvar, 2001
  %polly.access.arraydecay3.merge148 = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 0, i64 %polly.access.add.arraydecay3.merge147
  %polly.access.mul.call.i27132 = mul nuw nsw i64 %polly.indvar, 2600
  %_p_scalar_149 = load double, double* %polly.access.arraydecay3.merge148, align 8, !alias.scope !16, !noalias !18
  %xtraiter177 = and i64 %56, 1
  %58 = icmp eq i64 %indvar, 0
  %unroll_iter179 = and i64 %56, -2
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br label %polly.loop_preheader126

polly.stmt.for.body6.us.i:                        ; preds = %polly.loop_preheader126, %polly.stmt.for.body6.us.i
  %temp2.03.us.i.phiops.0 = phi double [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ], [ 0.000000e+00, %polly.loop_preheader126 ]
  %polly.indvar128 = phi i64 [ %polly.indvar_next129.1, %polly.stmt.for.body6.us.i ], [ 0, %polly.loop_preheader126 ]
  %niter180 = phi i64 [ %niter180.nsub.1, %polly.stmt.for.body6.us.i ], [ %unroll_iter179, %polly.loop_preheader126 ]
  %scevgep135 = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 %polly.indvar, i64 %polly.indvar128
  %_p_scalar_136 = load double, double* %scevgep135, align 8, !alias.scope !16, !noalias !18
  %p_mul13.us.i = fmul double %p_mul.us.i, %_p_scalar_136
  %59 = mul nuw nsw i64 %polly.indvar128, 20800
  %scevgep138 = getelementptr i8, i8* %scevgep137, i64 %59
  %scevgep138139 = bitcast i8* %scevgep138 to double*
  %_p_scalar_140 = load double, double* %scevgep138139, align 8, !alias.scope !19, !noalias !21
  %p_add.us.i = fadd double %_p_scalar_140, %p_mul13.us.i
  store double %p_add.us.i, double* %scevgep138139, align 8, !alias.scope !19, !noalias !21
  %scevgep142 = getelementptr i8, i8* %scevgep141, i64 %59
  %scevgep142143 = bitcast i8* %scevgep142 to double*
  %_p_scalar_144 = load double, double* %scevgep142143, align 8, !alias.scope !20, !noalias !22
  %p_mul26.us.i = fmul double %_p_scalar_136, %_p_scalar_144
  %p_add27.us.i = fadd double %temp2.03.us.i.phiops.0, %p_mul26.us.i
  %polly.indvar_next129 = or i64 %polly.indvar128, 1
  %scevgep135.1 = getelementptr [2000 x double], [2000 x double]* %call.i2642, i64 %polly.indvar, i64 %polly.indvar_next129
  %_p_scalar_136.1 = load double, double* %scevgep135.1, align 8, !alias.scope !16, !noalias !18
  %p_mul13.us.i.1 = fmul double %p_mul.us.i, %_p_scalar_136.1
  %60 = mul nuw nsw i64 %polly.indvar_next129, 20800
  %scevgep138.1 = getelementptr i8, i8* %scevgep137, i64 %60
  %scevgep138139.1 = bitcast i8* %scevgep138.1 to double*
  %_p_scalar_140.1 = load double, double* %scevgep138139.1, align 8, !alias.scope !19, !noalias !21
  %p_add.us.i.1 = fadd double %_p_scalar_140.1, %p_mul13.us.i.1
  store double %p_add.us.i.1, double* %scevgep138139.1, align 8, !alias.scope !19, !noalias !21
  %scevgep142.1 = getelementptr i8, i8* %scevgep141, i64 %60
  %scevgep142143.1 = bitcast i8* %scevgep142.1 to double*
  %_p_scalar_144.1 = load double, double* %scevgep142143.1, align 8, !alias.scope !20, !noalias !22
  %p_mul26.us.i.1 = fmul double %_p_scalar_136.1, %_p_scalar_144.1
  %p_add27.us.i.1 = fadd double %p_add27.us.i, %p_mul26.us.i.1
  %polly.indvar_next129.1 = add nuw nsw i64 %polly.indvar128, 2
  %niter180.nsub.1 = add i64 %niter180, -2
  %niter180.ncmp.1 = icmp eq i64 %niter180.nsub.1, 0
  br i1 %niter180.ncmp.1, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %polly.stmt.for.body6.us.i

polly.loop_preheader126:                          ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i, %polly.loop_preheader120
  %polly.indvar122 = phi i64 [ 0, %polly.loop_preheader120 ], [ %polly.indvar_next123, %polly.stmt.for.cond4.for.end_crit_edge.us.i ]
  %61 = shl nuw nsw i64 %polly.indvar122, 3
  %scevgep137 = getelementptr i8, i8* %call.i, i64 %61
  %scevgep141 = getelementptr i8, i8* %call.i27, i64 %61
  %polly.access.add.call.i27133 = add nuw nsw i64 %polly.indvar122, %polly.access.mul.call.i27132
  %polly.access.call.i27134 = getelementptr double, double* %polly.access.cast.call.i27, i64 %polly.access.add.call.i27133
  %_p_scalar_ = load double, double* %polly.access.call.i27134, align 8, !alias.scope !20, !noalias !22
  %p_mul.us.i = fmul double %_p_scalar_, 1.500000e+00
  br i1 %58, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %polly.stmt.for.body6.us.i
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
  %polly.subfunc.arg.call.i27 = load i8*, i8** %0, align 8
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
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -1968)
  %4 = add nsw i64 %smin23, 1999
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2000
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
  %11 = add i32 %10, 2600
  %12 = mul i64 %9, 20800
  br label %polly.stmt.for.body3.i.us

polly.stmt.for.body3.i.us:                        ; preds = %polly.stmt.for.body3.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body3.i.us ]
  %13 = add nuw nsw i64 %polly.indvar16.us, %7
  %14 = trunc i64 %13 to i32
  %15 = sub i32 %11, %14
  %16 = urem i32 %15, 100
  %p_conv9.i.us = sitofp i32 %16 to double
  %p_div11.i.us = fdiv double %p_conv9.i.us, 2.000000e+03
  %17 = shl i64 %13, 3
  %18 = add i64 %17, %12
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div11.i.us, double* %scevgep19.us, align 8, !alias.scope !23, !noalias !25, !llvm.access.group !28
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
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 82
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
  %polly.subfunc.arg.call.i = load i8*, i8** %0, align 8
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
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -1968)
  %4 = add nsw i64 %smin23, 1999
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2000
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
  br label %polly.stmt.for.body3.i.us

polly.stmt.for.body3.i.us:                        ; preds = %polly.stmt.for.body3.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body3.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, %10
  %15 = urem i32 %14, 100
  %p_conv.i.us = sitofp i32 %15 to double
  %p_div.i.us = fdiv double %p_conv.i.us, 2.000000e+03
  %16 = shl i64 %12, 3
  %17 = add i64 %16, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %17
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div.i.us, double* %scevgep19.us, align 8, !alias.scope !26, !noalias !31, !llvm.access.group !32
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body3.i.us, !llvm.loop !33

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body3.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 82
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
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

polly.loop_exit3:                                 ; preds = %polly.loop_exit10.loopexit.us, %polly.loop_if7.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvars.iv.next31 = add i64 %indvars.iv30, -32
  %exitcond38.not = icmp eq i64 %polly.indvar, %smax37
  br i1 %exitcond38.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = shl i64 %polly.indvar.LB, 5
  %4 = mul i64 %polly.indvar.LB, -32
  %smax37 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv34.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv34, %polly.loop_exit3 ]
  %indvars.iv30 = phi i64 [ %4, %polly.loop_preheader ], [ %indvars.iv.next31, %polly.loop_exit3 ]
  %indvars.iv = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %indvars.iv34 = add i64 %indvars.iv34.in, 1
  %smin32 = call i64 @llvm.smin.i64(i64 %indvars.iv30, i64 -1968)
  %5 = add nsw i64 %smin32, 1999
  %smax = call i64 @llvm.smax.i64(i64 %5, i64 0)
  %polly.loop_guard = icmp sgt i64 %polly.indvar, -1
  br i1 %polly.loop_guard, label %polly.loop_if7.preheader, label %polly.loop_exit3

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %6 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard1139 = icmp sgt i64 %6, -2000
  %7 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard1139, label %polly.loop_if7.us, label %polly.loop_exit3

polly.loop_if7.us:                                ; preds = %polly.loop_if7.preheader, %polly.loop_exit10.loopexit.us
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %polly.loop_exit10.loopexit.us ], [ %indvars.iv, %polly.loop_if7.preheader ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit10.loopexit.us ], [ 0, %polly.loop_if7.preheader ]
  %8 = shl nsw i64 %polly.indvar4.us, 5
  %9 = sub nsw i64 %7, %8
  br label %polly.loop_if15.us

polly.loop_if15.us:                               ; preds = %polly.loop_if7.us, %polly.loop_exit18.us
  %indvars.iv28 = phi i64 [ %indvars.iv26, %polly.loop_if7.us ], [ %indvars.iv.next29, %polly.loop_exit18.us ]
  %polly.indvar12.us = phi i64 [ 0, %polly.loop_if7.us ], [ %polly.indvar_next13.us, %polly.loop_exit18.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv28, i64 31)
  %10 = add nsw i64 %polly.indvar12.us, %9
  %polly.loop_guard19.us40 = icmp sgt i64 %10, -1
  br i1 %polly.loop_guard19.us40, label %polly.stmt.for.body26.i.preheader.us, label %polly.loop_exit18.us

polly.stmt.for.body26.i.us:                       ; preds = %polly.stmt.for.body26.i.preheader.us, %polly.stmt.for.body26.i.us
  %polly.indvar20.us = phi i64 [ %polly.indvar_next21.us, %polly.stmt.for.body26.i.us ], [ 0, %polly.stmt.for.body26.i.preheader.us ]
  %11 = add nuw nsw i64 %polly.indvar20.us, %8
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, %18
  %14 = urem i32 %13, 100
  %p_conv29.i.us = sitofp i32 %14 to double
  %p_div31.i.us = fdiv double %p_conv29.i.us, 2.000000e+03
  %15 = shl i64 %11, 3
  %16 = add i64 %15, %19
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i26, i64 %16
  %scevgep23.us = bitcast i8* %scevgep.us to double*
  store double %p_div31.i.us, double* %scevgep23.us, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !36
  %polly.indvar_next21.us = add nuw nsw i64 %polly.indvar20.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar20.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit18.us, label %polly.stmt.for.body26.i.us, !llvm.loop !37

polly.loop_exit18.us:                             ; preds = %polly.stmt.for.body26.i.us, %polly.loop_if15.us
  %polly.indvar_next13.us = add nuw nsw i64 %polly.indvar12.us, 1
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  %exitcond33.not = icmp eq i64 %polly.indvar12.us, %smax
  br i1 %exitcond33.not, label %polly.loop_exit10.loopexit.us, label %polly.loop_if15.us

polly.stmt.for.body26.i.preheader.us:             ; preds = %polly.loop_if15.us
  %17 = add nsw i64 %polly.indvar12.us, %7
  %18 = trunc i64 %17 to i32
  %19 = mul i64 %17, 16000
  br label %polly.stmt.for.body26.i.us

polly.loop_exit10.loopexit.us:                    ; preds = %polly.loop_exit18.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next27 = add i64 %indvars.iv26, -32
  %exitcond36.not = icmp eq i64 %polly.indvar4.us, %indvars.iv34.in
  br i1 %exitcond36.not, label %polly.loop_exit3, label %polly.loop_if7.us
}

define internal void @main_polly_subfn_16(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
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
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i26, i64 8
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit10, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, -32
  %indvars.iv.next33 = add i64 %indvars.iv32, -1
  %exitcond36.not = icmp eq i64 %polly.indvar, %smax35
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond36.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %4 = sub i64 63, %polly.indvar.LB
  %smax35 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvar = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next, %polly.loop_exit3 ]
  %indvars.iv32 = phi i64 [ %4, %polly.loop_preheader ], [ %indvars.iv.next33, %polly.loop_exit3 ]
  %indvars.iv = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %5 = mul i64 %indvar, -32
  %6 = add i64 %3, %5
  %7 = mul i64 %indvar, -32
  %8 = add i64 %3, %7
  %9 = sub i64 62, %polly.indvar
  %polly.loop_guard = icmp sgt i64 %9, -1
  br i1 %polly.loop_guard, label %polly.loop_if7.preheader, label %polly.loop_exit3

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %10 = mul nsw i64 %polly.indvar, -32
  %11 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_if7

polly.loop_exit10:                                ; preds = %polly.loop_exit18, %polly.loop_if7
  %polly.indvar_next5 = add nuw i64 %polly.indvar4, 1
  %indvars.iv.next26 = add i64 %indvars.iv25, -32
  %exitcond34.not = icmp eq i64 %polly.indvar_next5, %indvars.iv32
  br i1 %exitcond34.not, label %polly.loop_exit3, label %polly.loop_if7

polly.loop_if7:                                   ; preds = %polly.loop_if7.preheader, %polly.loop_exit10
  %indvars.iv25 = phi i64 [ %indvars.iv, %polly.loop_if7.preheader ], [ %indvars.iv.next26, %polly.loop_exit10 ]
  %polly.indvar4 = phi i64 [ 0, %polly.loop_if7.preheader ], [ %polly.indvar_next5, %polly.loop_exit10 ]
  %12 = mul i64 %polly.indvar4, -32
  %13 = add i64 %6, %12
  %14 = mul i64 %polly.indvar4, -32
  %15 = add i64 %8, %14
  %smin29 = call i64 @llvm.smin.i64(i64 %indvars.iv25, i64 -1967)
  %16 = add nsw i64 %smin29, 1998
  %smax30 = call i64 @llvm.smax.i64(i64 %16, i64 0)
  %17 = shl nsw i64 %polly.indvar4, 5
  %18 = sub nsw i64 %10, %17
  %polly.loop_guard1137 = icmp sgt i64 %18, -1999
  br i1 %polly.loop_guard1137, label %polly.loop_if15, label %polly.loop_exit10

polly.loop_exit18:                                ; preds = %polly.stmt.for.body43.i, %middle.block, %polly.loop_if15
  %polly.indvar_next13 = add nuw nsw i64 %polly.indvar12, 1
  %indvars.iv.next28 = add i64 %indvars.iv27, -1
  %exitcond31.not = icmp eq i64 %polly.indvar12, %smax30
  br i1 %exitcond31.not, label %polly.loop_exit10, label %polly.loop_if15

polly.loop_if15:                                  ; preds = %polly.loop_if7, %polly.loop_exit18
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %polly.loop_exit18 ], [ %indvars.iv25, %polly.loop_if7 ]
  %polly.indvar12 = phi i64 [ %polly.indvar_next13, %polly.loop_exit18 ], [ 0, %polly.loop_if7 ]
  %19 = sub i64 %13, %polly.indvar12
  %smin42 = call i64 @llvm.smin.i64(i64 %19, i64 -1967)
  %20 = add nsw i64 %smin42, 1998
  %smax43 = call i64 @llvm.smax.i64(i64 %20, i64 0)
  %21 = add nuw nsw i64 %smax43, 1
  %22 = and i64 %21, 9223372036854775806
  %23 = add nsw i64 %22, -2
  %24 = lshr exact i64 %23, 1
  %25 = add nuw i64 %24, 1
  %26 = sub i64 %15, %polly.indvar12
  %smin39 = call i64 @llvm.smin.i64(i64 %26, i64 -1967)
  %27 = add nsw i64 %smin39, 1998
  %smax40 = call i64 @llvm.smax.i64(i64 %27, i64 0)
  %28 = add nuw nsw i64 %smax40, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv27, i64 -1967)
  %29 = add nsw i64 %smin, 1998
  %smax = call i64 @llvm.smax.i64(i64 %29, i64 0)
  %30 = sub nsw i64 %18, %polly.indvar12
  %polly.loop_guard1938 = icmp sgt i64 %30, -1999
  br i1 %polly.loop_guard1938, label %polly.stmt.for.body43.i.preheader, label %polly.loop_exit18

polly.stmt.for.body43.i.preheader:                ; preds = %polly.loop_if15
  %31 = add nsw i64 %polly.indvar12, %11
  %32 = mul i64 %31, 16008
  %min.iters.check = icmp ult i64 %smin39, -1997
  br i1 %min.iters.check, label %polly.stmt.for.body43.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body43.i.preheader
  %n.vec = and i64 %28, 9223372036854775806
  %xtraiter = and i64 %25, 3
  %33 = icmp ult i64 %23, 6
  br i1 %33, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %25, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %34 = add nuw nsw i64 %index, %17
  %35 = shl i64 %34, 3
  %36 = add i64 %35, %32
  %37 = getelementptr i8, i8* %scevgep, i64 %36
  %38 = bitcast i8* %37 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %38, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %index.next = or i64 %index, 2
  %39 = add nuw nsw i64 %index.next, %17
  %40 = shl i64 %39, 3
  %41 = add i64 %40, %32
  %42 = getelementptr i8, i8* %scevgep, i64 %41
  %43 = bitcast i8* %42 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %43, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %index.next.1 = or i64 %index, 4
  %44 = add nuw nsw i64 %index.next.1, %17
  %45 = shl i64 %44, 3
  %46 = add i64 %45, %32
  %47 = getelementptr i8, i8* %scevgep, i64 %46
  %48 = bitcast i8* %47 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %48, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %index.next.2 = or i64 %index, 6
  %49 = add nuw nsw i64 %index.next.2, %17
  %50 = shl i64 %49, 3
  %51 = add i64 %50, %32
  %52 = getelementptr i8, i8* %scevgep, i64 %51
  %53 = bitcast i8* %52 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %53, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %index.next.3 = add i64 %index, 8
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !40

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %54 = add nuw nsw i64 %index.epil, %17
  %55 = shl i64 %54, 3
  %56 = add i64 %55, %32
  %57 = getelementptr i8, i8* %scevgep, i64 %56
  %58 = bitcast i8* %57 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %58, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %index.next.epil = add i64 %index.epil, 2
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !42

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %28, %n.vec
  br i1 %cmp.n, label %polly.loop_exit18, label %polly.stmt.for.body43.i.preheader41

polly.stmt.for.body43.i.preheader41:              ; preds = %polly.stmt.for.body43.i.preheader, %middle.block
  %polly.indvar20.ph = phi i64 [ 0, %polly.stmt.for.body43.i.preheader ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body43.i

polly.stmt.for.body43.i:                          ; preds = %polly.stmt.for.body43.i.preheader41, %polly.stmt.for.body43.i
  %polly.indvar20 = phi i64 [ %polly.indvar_next21, %polly.stmt.for.body43.i ], [ %polly.indvar20.ph, %polly.stmt.for.body43.i.preheader41 ]
  %59 = add nuw nsw i64 %polly.indvar20, %17
  %60 = shl i64 %59, 3
  %61 = add i64 %60, %32
  %scevgep23 = getelementptr i8, i8* %scevgep, i64 %61
  %scevgep2324 = bitcast i8* %scevgep23 to double*
  store double -9.990000e+02, double* %scevgep2324, align 8, !alias.scope !27, !noalias !35, !llvm.access.group !39
  %polly.indvar_next21 = add nuw nsw i64 %polly.indvar20, 1
  %exitcond.not = icmp eq i64 %polly.indvar20, %smax
  br i1 %exitcond.not, label %polly.loop_exit18, label %polly.stmt.for.body43.i, !llvm.loop !44
}

define internal void @main_polly_subfn_19(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to double**
  %polly.subfunc.arg.arraydecay3.merge6 = load double*, double** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to i8**
  %polly.subfunc.arg.call.i27 = load i8*, i8** %4, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %5, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.cond4.preheader.i, %middle.block
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.18, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.cond4.preheader.i:                 ; preds = %polly.stmt.for.cond4.preheader.i.preheader, %polly.stmt.for.cond4.preheader.i
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.stmt.for.cond4.preheader.i ], [ %polly.indvar.ph, %polly.stmt.for.cond4.preheader.i.preheader ]
  %7 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %7
  %scevgep1 = bitcast i8* %scevgep to double*
  %_p_scalar_2 = load double, double* %scevgep1, align 8, !alias.scope !19, !noalias !21
  %p_mul32.i = fmul double %_p_scalar_2, 1.200000e+00
  %scevgep3 = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %7
  %scevgep34 = bitcast i8* %scevgep3 to double*
  %_p_scalar_5 = load double, double* %scevgep34, align 8, !alias.scope !20, !noalias !22
  %p_mul37.i = fmul double %_p_scalar_5, 1.500000e+00
  %p_mul42.i = fmul double %_p_scalar_, %p_mul37.i
  %p_add43.i = fadd double %p_mul32.i, %p_mul42.i
  %p_add45.i = fadd double %p_add43.i, 0.000000e+00
  store double %p_add45.i, double* %scevgep1, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond.not, label %polly.par.checkNext, label %polly.stmt.for.cond4.preheader.i, !llvm.loop !46

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %_p_scalar_ = load double, double* %polly.subfunc.arg.arraydecay3.merge6, align 8, !alias.scope !16, !noalias !18
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %8 = add i64 %smax, 1
  %9 = sub i64 %8, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %9, 4
  br i1 %min.iters.check, label %polly.stmt.for.cond4.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.loop_preheader
  %n.vec = and i64 %9, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %_p_scalar_, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <2 x double> poison, double %_p_scalar_, i32 0
  %broadcast.splat11 = shufflevector <2 x double> %broadcast.splatinsert10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %10 = shl i64 %offset.idx, 3
  %11 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %10
  %12 = bitcast i8* %11 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %12, align 8, !alias.scope !19, !noalias !21
  %13 = getelementptr i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <2 x double>*
  %wide.load7 = load <2 x double>, <2 x double>* %14, align 8, !alias.scope !19, !noalias !21
  %15 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %16 = fmul <2 x double> %wide.load7, <double 1.200000e+00, double 1.200000e+00>
  %17 = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %10
  %18 = bitcast i8* %17 to <2 x double>*
  %wide.load8 = load <2 x double>, <2 x double>* %18, align 8, !alias.scope !20, !noalias !22
  %19 = getelementptr i8, i8* %17, i64 16
  %20 = bitcast i8* %19 to <2 x double>*
  %wide.load9 = load <2 x double>, <2 x double>* %20, align 8, !alias.scope !20, !noalias !22
  %21 = fmul <2 x double> %wide.load8, <double 1.500000e+00, double 1.500000e+00>
  %22 = fmul <2 x double> %wide.load9, <double 1.500000e+00, double 1.500000e+00>
  %23 = fmul <2 x double> %broadcast.splat, %21
  %24 = fmul <2 x double> %broadcast.splat11, %22
  %25 = fadd <2 x double> %15, %23
  %26 = fadd <2 x double> %16, %24
  %27 = fadd <2 x double> %25, zeroinitializer
  %28 = fadd <2 x double> %26, zeroinitializer
  %29 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %27, <2 x double>* %29, align 8, !alias.scope !19, !noalias !21
  %30 = bitcast i8* %13 to <2 x double>*
  store <2 x double> %28, <2 x double>* %30, align 8, !alias.scope !19, !noalias !21
  %index.next = add i64 %index, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.cond4.preheader.i.preheader

polly.stmt.for.cond4.preheader.i.preheader:       ; preds = %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  br label %polly.stmt.for.cond4.preheader.i
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !17, !"polly.alias.scope.MemRef0"}
!17 = distinct !{!17, !"polly.alias.scope.domain"}
!18 = !{!19, !20}
!19 = distinct !{!19, !17, !"polly.alias.scope.MemRef2"}
!20 = distinct !{!20, !17, !"polly.alias.scope.MemRef3"}
!21 = !{!16, !20}
!22 = !{!16, !19}
!23 = distinct !{!23, !24, !"polly.alias.scope.MemRef1"}
!24 = distinct !{!24, !"polly.alias.scope.domain"}
!25 = !{!26, !27}
!26 = distinct !{!26, !24, !"polly.alias.scope.MemRef0"}
!27 = distinct !{!27, !24, !"polly.alias.scope.MemRef3"}
!28 = distinct !{}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.parallel_accesses", !28}
!31 = !{!23, !27}
!32 = distinct !{}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = !{!26, !23}
!36 = distinct !{}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.parallel_accesses", !36}
!39 = distinct !{}
!40 = distinct !{!40, !41, !8}
!41 = !{!"llvm.loop.parallel_accesses", !39}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !41, !45, !8}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !45, !8}
!47 = distinct !{!47, !8}
