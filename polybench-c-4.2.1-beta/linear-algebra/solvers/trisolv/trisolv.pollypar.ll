; ModuleID = 'trisolv.c'
source_filename = "trisolv.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext46 = alloca { i64, i8*, i8* }, align 8
  %polly.par.userContext = alloca { i8*, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
  %call.i23 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i24 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay3 = bitcast i8* %call.i23 to double*
  %arraydecay4 = bitcast i8* %call.i24 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %entry.split
  %indvars.iv8.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next9.i, %for.inc14.i ]
  %0 = add nuw i64 %indvars.iv8.i, 1
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv8.i
  store double -9.990000e+02, double* %arrayidx.i, align 8, !tbaa !2
  %1 = trunc i64 %indvars.iv8.i to i32
  %conv.i = sitofp i32 %1 to double
  %arrayidx2.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv8.i
  store double %conv.i, double* %arrayidx2.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv8.i, 4001
  %xtraiter = and i64 %0, 1
  %3 = icmp eq i64 %indvars.iv8.i, 0
  br i1 %3, label %for.inc14.i.unr-lcssa, label %for.body.i.new

for.body.i.new:                                   ; preds = %for.body.i
  %unroll_iter = and i64 %0, -2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.i.new ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.i.new ], [ %niter.nsub.1, %for.body6.i ]
  %4 = sub nuw nsw i64 %2, %indvars.iv.i
  %5 = trunc i64 %4 to i32
  %conv8.i = sitofp i32 %5 to double
  %mul.i = fmul double %conv8.i, 2.000000e+00
  %div.i = fdiv double %mul.i, 4.000000e+03
  %arrayidx13.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx13.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %6 = sub nuw nsw i64 %2, %indvars.iv.next.i
  %7 = trunc i64 %6 to i32
  %conv8.i.1 = sitofp i32 %7 to double
  %mul.i.1 = fmul double %conv8.i.1, 2.000000e+00
  %div.i.1 = fdiv double %mul.i.1, 4.000000e+03
  %arrayidx13.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.next.i
  store double %div.i.1, double* %arrayidx13.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.inc14.i.unr-lcssa, label %for.body6.i, !llvm.loop !6

for.inc14.i.unr-lcssa:                            ; preds = %for.body6.i, %for.body.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc14.i, label %for.body6.i.epil

for.body6.i.epil:                                 ; preds = %for.inc14.i.unr-lcssa
  %8 = sub nuw nsw i64 %2, %indvars.iv.i.unr
  %9 = trunc i64 %8 to i32
  %conv8.i.epil = sitofp i32 %9 to double
  %mul.i.epil = fmul double %conv8.i.epil, 2.000000e+00
  %div.i.epil = fdiv double %mul.i.epil, 4.000000e+03
  %arrayidx13.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i.unr
  store double %div.i.epil, double* %arrayidx13.i.epil, align 8, !tbaa !2
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc14.i.unr-lcssa, %for.body6.i.epil
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %polly.loop_preheader, label %for.body.i, !llvm.loop !8

kernel_trisolv.exit:                              ; preds = %polly.parallel.for45
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i, %if.then
  %indvars.iv.i35 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i38, %for.inc.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i35
  %15 = load double, double* %arrayidx.i36, align 8, !tbaa !2
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %15) #9
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp3.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i37
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i37
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i35, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, 4000
  br i1 %exitcond.not.i39, label %print_array.exit, label %for.body.i37, !llvm.loop !11

print_array.exit:                                 ; preds = %for.inc.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %18) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* nonnull %call.i23) #8
  tail call void @free(i8* %call.i24) #8
  ret i32 0

polly.parallel.for45:                             ; preds = %polly.parallel.for45, %polly.loop_preheader
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %22, %polly.parallel.for45 ]
  %polly.access.call.i23 = getelementptr double, double* %arraydecay3, i64 %polly.indvar
  %polly.access.call.i23.reload = load double, double* %polly.access.call.i23, align 8, !alias.scope !12, !noalias !14
  %20 = mul nuw nsw i64 %polly.indvar, 32008
  %scevgep = getelementptr i8, i8* %call.i, i64 %20
  %scevgep42 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep42, align 8, !alias.scope !16, !noalias !17
  %p_div.i33 = fdiv double %polly.access.call.i23.reload, %_p_scalar_
  %21 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep43 = getelementptr i8, i8* %call.i23, i64 %21
  %scevgep4344 = bitcast i8* %scevgep43 to double*
  store double %p_div.i33, double* %scevgep4344, align 8, !alias.scope !12, !noalias !14
  %22 = add nuw nsw i64 %polly.indvar, 1
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i8* %call.i23, i8** %polly.subfn.storeaddr.call.i2347, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 %22, i64 4000, i64 1, { i64, i8*, i8* }* nonnull %polly.par.userContext46) #8
  %exitcond.not = icmp eq i64 %22, 4000
  br i1 %exitcond.not, label %kernel_trisolv.exit, label %polly.parallel.for45

polly.loop_preheader:                             ; preds = %for.inc14.i
  tail call void (...) @polybench_timer_start() #8
  %polly.subfn.storeaddr.call.i24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i24, i8** %polly.subfn.storeaddr.call.i24, align 8
  %polly.subfn.storeaddr.call.i23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 1
  store i8* %call.i23, i8** %polly.subfn.storeaddr.call.i23, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 4000, i64 1, { i8*, i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i64, i8*, i8* }, { i64, i8*, i8* }* %polly.par.userContext46, i64 0, i32 0
  %polly.subfn.storeaddr.call.i2347 = getelementptr inbounds { i64, i8*, i8* }, { i64, i8*, i8* }* %polly.par.userContext46, i64 0, i32 1
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i64, i8*, i8* }, { i64, i8*, i8* }* %polly.par.userContext46, i64 0, i32 2
  br label %polly.parallel.for45
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
  %polly.subfunc.arg.call.i24 = load i8*, i8** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to double**
  %polly.subfunc.arg.call.i232 = load double*, double** %2, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body.i28, %middle.block
  %4 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %4, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body.i28:                          ; preds = %polly.stmt.for.body.i28.preheader, %polly.stmt.for.body.i28
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.stmt.for.body.i28 ], [ %polly.indvar.ph, %polly.stmt.for.body.i28.preheader ]
  %5 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i24, i64 %5
  %scevgep1 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep1, align 8, !alias.scope !15, !noalias !18
  %polly.access.polly.subfunc.arg.call.i23 = getelementptr double, double* %polly.subfunc.arg.call.i232, i64 %polly.indvar
  store double %_p_scalar_, double* %polly.access.polly.subfunc.arg.call.i23, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond.not, label %polly.par.checkNext, label %polly.stmt.for.body.i28, !llvm.loop !19

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %6 = add i64 %smax, 1
  %7 = sub i64 %6, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %polly.stmt.for.body.i28.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.loop_preheader
  %n.vec = and i64 %7, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %8 = add i64 %n.vec, -4
  %9 = lshr exact i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %xtraiter = and i64 %10, 1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %10, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %12 = shl i64 %offset.idx, 3
  %13 = getelementptr i8, i8* %polly.subfunc.arg.call.i24, i64 %12
  %14 = bitcast i8* %13 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %14, align 8, !alias.scope !15, !noalias !18
  %15 = getelementptr i8, i8* %13, i64 16
  %16 = bitcast i8* %15 to <2 x double>*
  %wide.load5 = load <2 x double>, <2 x double>* %16, align 8, !alias.scope !15, !noalias !18
  %17 = getelementptr double, double* %polly.subfunc.arg.call.i232, i64 %offset.idx
  %18 = bitcast double* %17 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %18, align 8, !alias.scope !12, !noalias !14
  %19 = getelementptr double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  store <2 x double> %wide.load5, <2 x double>* %20, align 8, !alias.scope !12, !noalias !14
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %polly.indvar.LB, %index.next
  %21 = shl i64 %offset.idx.1, 3
  %22 = getelementptr i8, i8* %polly.subfunc.arg.call.i24, i64 %21
  %23 = bitcast i8* %22 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %23, align 8, !alias.scope !15, !noalias !18
  %24 = getelementptr i8, i8* %22, i64 16
  %25 = bitcast i8* %24 to <2 x double>*
  %wide.load5.1 = load <2 x double>, <2 x double>* %25, align 8, !alias.scope !15, !noalias !18
  %26 = getelementptr double, double* %polly.subfunc.arg.call.i232, i64 %offset.idx.1
  %27 = bitcast double* %26 to <2 x double>*
  store <2 x double> %wide.load.1, <2 x double>* %27, align 8, !alias.scope !12, !noalias !14
  %28 = getelementptr double, double* %26, i64 2
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> %wide.load5.1, <2 x double>* %29, align 8, !alias.scope !12, !noalias !14
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !22

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %polly.indvar.LB, %index.unr
  %30 = shl i64 %offset.idx.epil, 3
  %31 = getelementptr i8, i8* %polly.subfunc.arg.call.i24, i64 %30
  %32 = bitcast i8* %31 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %32, align 8, !alias.scope !15, !noalias !18
  %33 = getelementptr i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <2 x double>*
  %wide.load5.epil = load <2 x double>, <2 x double>* %34, align 8, !alias.scope !15, !noalias !18
  %35 = getelementptr double, double* %polly.subfunc.arg.call.i232, i64 %offset.idx.epil
  %36 = bitcast double* %35 to <2 x double>*
  store <2 x double> %wide.load.epil, <2 x double>* %36, align 8, !alias.scope !12, !noalias !14
  %37 = getelementptr double, double* %35, i64 2
  %38 = bitcast double* %37 to <2 x double>*
  store <2 x double> %wide.load5.epil, <2 x double>* %38, align 8, !alias.scope !12, !noalias !14
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.body.i28.preheader

polly.stmt.for.body.i28.preheader:                ; preds = %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  br label %polly.stmt.for.body.i28
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
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i23 = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %4, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %5, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %6 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %6
  %scevgep3 = getelementptr i8, i8* %polly.subfunc.arg.call.i23, i64 %6
  %scevgep34 = bitcast i8* %scevgep3 to double*
  %polly.access.cast.polly.subfunc.arg.call.i23 = bitcast i8* %polly.subfunc.arg.call.i23 to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body5.i, %polly.stmt.for.body5.i.prol.loopexit
  %7 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %7, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body5.i:                           ; preds = %polly.stmt.for.body5.i.prol.loopexit, %polly.stmt.for.body5.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body5.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body5.i.prol.loopexit ]
  %polly.access.polly.subfunc.arg.call.i23 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i23, i64 %polly.indvar
  %polly.access.polly.subfunc.arg.call.i23.reload = load double, double* %polly.access.polly.subfunc.arg.call.i23, align 8, !alias.scope !12, !noalias !14
  %8 = mul i64 %polly.indvar, 32000
  %scevgep1 = getelementptr i8, i8* %scevgep, i64 %8
  %scevgep12 = bitcast i8* %scevgep1 to double*
  %_p_scalar_ = load double, double* %scevgep12, align 8, !alias.scope !16, !noalias !17
  %_p_scalar_5 = load double, double* %scevgep34, align 8, !alias.scope !12, !noalias !14
  %p_mul.i30 = fmul double %_p_scalar_, %_p_scalar_5
  %p_sub.i = fsub double %polly.access.polly.subfunc.arg.call.i23.reload, %p_mul.i30
  store double %p_sub.i, double* %polly.access.polly.subfunc.arg.call.i23, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next = add i64 %polly.indvar, 1
  %polly.access.polly.subfunc.arg.call.i23.1 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i23, i64 %polly.indvar_next
  %polly.access.polly.subfunc.arg.call.i23.reload.1 = load double, double* %polly.access.polly.subfunc.arg.call.i23.1, align 8, !alias.scope !12, !noalias !14
  %9 = mul i64 %polly.indvar_next, 32000
  %scevgep1.1 = getelementptr i8, i8* %scevgep, i64 %9
  %scevgep12.1 = bitcast i8* %scevgep1.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep12.1, align 8, !alias.scope !16, !noalias !17
  %_p_scalar_5.1 = load double, double* %scevgep34, align 8, !alias.scope !12, !noalias !14
  %p_mul.i30.1 = fmul double %_p_scalar_.1, %_p_scalar_5.1
  %p_sub.i.1 = fsub double %polly.access.polly.subfunc.arg.call.i23.reload.1, %p_mul.i30.1
  store double %p_sub.i.1, double* %polly.access.polly.subfunc.arg.call.i23.1, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body5.i

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %10 = add i64 %smax, 1
  %11 = sub i64 %10, %polly.indvar.LB
  %xtraiter = and i64 %11, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body5.i.prol.loopexit, label %polly.stmt.for.body5.i.prol

polly.stmt.for.body5.i.prol:                      ; preds = %polly.loop_preheader
  %polly.access.polly.subfunc.arg.call.i23.prol = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i23, i64 %polly.indvar.LB
  %polly.access.polly.subfunc.arg.call.i23.reload.prol = load double, double* %polly.access.polly.subfunc.arg.call.i23.prol, align 8, !alias.scope !12, !noalias !14
  %12 = mul i64 %polly.indvar.LB, 32000
  %scevgep1.prol = getelementptr i8, i8* %scevgep, i64 %12
  %scevgep12.prol = bitcast i8* %scevgep1.prol to double*
  %_p_scalar_.prol = load double, double* %scevgep12.prol, align 8, !alias.scope !16, !noalias !17
  %_p_scalar_5.prol = load double, double* %scevgep34, align 8, !alias.scope !12, !noalias !14
  %p_mul.i30.prol = fmul double %_p_scalar_.prol, %_p_scalar_5.prol
  %p_sub.i.prol = fsub double %polly.access.polly.subfunc.arg.call.i23.reload.prol, %p_mul.i30.prol
  store double %p_sub.i.prol, double* %polly.access.polly.subfunc.arg.call.i23.prol, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next.prol = add i64 %polly.indvar.LB, 1
  br label %polly.stmt.for.body5.i.prol.loopexit

polly.stmt.for.body5.i.prol.loopexit:             ; preds = %polly.stmt.for.body5.i.prol, %polly.loop_preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body5.i.prol ], [ %polly.indvar.LB, %polly.loop_preheader ]
  %.not = icmp slt i64 %polly.indvar.LB, %polly.indvar.UB
  br i1 %.not, label %polly.stmt.for.body5.i, label %polly.par.checkNext
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef1"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef0"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef4"}
!17 = !{!15, !12}
!18 = !{!12, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !21}
