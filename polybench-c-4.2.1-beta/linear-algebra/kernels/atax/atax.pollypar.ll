; ModuleID = 'atax.c'
source_filename = "atax.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8
@.str.ident.11 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.12 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.11, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
polly.exiting:
  %polly.par.userContext59 = alloca { i64, i8*, [2200 x double]*, double* }, align 8
  %add.i31.s2a = alloca double, align 8
  %polly.par.userContext41 = alloca { i8* }, align 8
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #9
  %call.i43 = bitcast i8* %call.i to [2200 x double]*
  %call.i27 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #9
  %call.i28 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #9
  %polly.subfn.storeaddr.call.i27 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i27, i8** %polly.subfn.storeaddr.call.i27, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 2200, i64 1, { i8* }* nonnull %polly.par.userContext) #9
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext41, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 57, i64 1, { i8* }* nonnull %polly.par.userContext41) #9
  tail call void (...) @polybench_timer_start() #9
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(17600) %call.i28, i8 0, i64 17600, i1 false) #9
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i64, i8*, [2200 x double]*, double* }, { i64, i8*, [2200 x double]*, double* }* %polly.par.userContext59, i64 0, i32 0
  %polly.subfn.storeaddr.call.i28 = getelementptr inbounds { i64, i8*, [2200 x double]*, double* }, { i64, i8*, [2200 x double]*, double* }* %polly.par.userContext59, i64 0, i32 1
  %polly.subfn.storeaddr.arraydecay.merge = getelementptr inbounds { i64, i8*, [2200 x double]*, double* }, { i64, i8*, [2200 x double]*, double* }* %polly.par.userContext59, i64 0, i32 2
  %0 = bitcast [2200 x double]** %polly.subfn.storeaddr.arraydecay.merge to i8**
  %polly.subfn.storeaddr.add.i31.s2a = getelementptr inbounds { i64, i8*, [2200 x double]*, double* }, { i64, i8*, [2200 x double]*, double* }* %polly.par.userContext59, i64 0, i32 3
  br label %polly.loop_preheader49

kernel_atax.exit:                                 ; preds = %polly.parallel.for58
  %arraydecay7 = bitcast i8* %call.i28 to double*
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %1 = load i8*, i8** %argv, align 8, !tbaa !2
  %strcmpload = load i8, i8* %1, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %2) #10
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.body.i35

for.body.i35:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i34 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i37, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i35
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %5) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i35
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.i34
  %7 = load double, double* %arrayidx.i36, align 8, !tbaa !6
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %7) #10
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2200
  br i1 %exitcond.not.i38, label %print_array.exit, label %for.body.i35, !llvm.loop !8

print_array.exit:                                 ; preds = %if.end.i
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %9) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_atax.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i27) #9
  tail call void @free(i8* nonnull %call.i28) #9
  ret i32 0

polly.parallel.for58:                             ; preds = %polly.stmt.for.body8.i
  store double %p_add.i31.1, double* %add.i31.s2a, align 8
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i8* %call.i28, i8** %polly.subfn.storeaddr.call.i28, align 8
  store i8* %call.i, i8** %0, align 8
  store double* %add.i31.s2a, double** %polly.subfn.storeaddr.add.i31.s2a, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 2200, i64 1, { i64, i8*, [2200 x double]*, double* }* nonnull %polly.par.userContext59) #9
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond61.not = icmp eq i64 %polly.indvar_next, 1800
  br i1 %exitcond61.not, label %kernel_atax.exit, label %polly.loop_preheader49, !llvm.loop !10

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader49
  %.phiops.0 = phi double [ 0.000000e+00, %polly.loop_preheader49 ], [ %p_add.i31.1, %polly.stmt.for.body8.i ]
  %polly.indvar51 = phi i64 [ 0, %polly.loop_preheader49 ], [ %polly.indvar_next52.1, %polly.stmt.for.body8.i ]
  %scevgep54 = getelementptr [2200 x double], [2200 x double]* %call.i43, i64 %polly.indvar, i64 %polly.indvar51
  %_p_scalar_ = load double, double* %scevgep54, align 8, !alias.scope !11, !noalias !13
  %11 = shl nuw nsw i64 %polly.indvar51, 3
  %scevgep55 = getelementptr i8, i8* %call.i27, i64 %11
  %scevgep5556 = bitcast i8* %scevgep55 to double*
  %_p_scalar_57 = load double, double* %scevgep5556, align 8, !alias.scope !14, !noalias !16
  %p_mul.i = fmul double %_p_scalar_, %_p_scalar_57
  %p_add.i31 = fadd double %.phiops.0, %p_mul.i
  %polly.indvar_next52 = or i64 %polly.indvar51, 1
  %scevgep54.1 = getelementptr [2200 x double], [2200 x double]* %call.i43, i64 %polly.indvar, i64 %polly.indvar_next52
  %_p_scalar_.1 = load double, double* %scevgep54.1, align 8, !alias.scope !11, !noalias !13
  %12 = shl nuw nsw i64 %polly.indvar_next52, 3
  %scevgep55.1 = getelementptr i8, i8* %call.i27, i64 %12
  %scevgep5556.1 = bitcast i8* %scevgep55.1 to double*
  %_p_scalar_57.1 = load double, double* %scevgep5556.1, align 8, !alias.scope !14, !noalias !16
  %p_mul.i.1 = fmul double %_p_scalar_.1, %_p_scalar_57.1
  %p_add.i31.1 = fadd double %p_add.i31, %p_mul.i.1
  %polly.indvar_next52.1 = add nuw nsw i64 %polly.indvar51, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next52.1, 2200
  br i1 %exitcond.not.1, label %polly.parallel.for58, label %polly.stmt.for.body8.i, !llvm.loop !17

polly.loop_preheader49:                           ; preds = %polly.parallel.for58, %polly.exiting
  %polly.indvar = phi i64 [ 0, %polly.exiting ], [ %polly.indvar_next, %polly.parallel.for58 ]
  br label %polly.stmt.for.body8.i
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
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

polly.par.checkNext:                              ; preds = %polly.stmt.for.body.i, %polly.stmt.for.body.i.prol.loopexit
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body.i:                            ; preds = %polly.stmt.for.body.i.prol.loopexit, %polly.stmt.for.body.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body.i.prol.loopexit ]
  %3 = trunc i64 %polly.indvar to i32
  %p_conv2.i = sitofp i32 %3 to double
  %p_div.i = fdiv double %p_conv2.i, 2.200000e+03
  %p_add.i = fadd double %p_div.i, 1.000000e+00
  %4 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %4
  %scevgep1 = bitcast i8* %scevgep to double*
  store double %p_add.i, double* %scevgep1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next = add i64 %polly.indvar, 1
  %5 = trunc i64 %polly.indvar_next to i32
  %p_conv2.i.1 = sitofp i32 %5 to double
  %p_div.i.1 = fdiv double %p_conv2.i.1, 2.200000e+03
  %p_add.i.1 = fadd double %p_div.i.1, 1.000000e+00
  %6 = shl i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %6
  %scevgep1.1 = bitcast i8* %scevgep.1 to double*
  store double %p_add.i.1, double* %scevgep1.1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body.i

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %7 = add i64 %smax, 1
  %8 = sub i64 %7, %polly.indvar.LB
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body.i.prol.loopexit, label %polly.stmt.for.body.i.prol

polly.stmt.for.body.i.prol:                       ; preds = %polly.loop_preheader
  %9 = trunc i64 %polly.indvar.LB to i32
  %p_conv2.i.prol = sitofp i32 %9 to double
  %p_div.i.prol = fdiv double %p_conv2.i.prol, 2.200000e+03
  %p_add.i.prol = fadd double %p_div.i.prol, 1.000000e+00
  %10 = shl i64 %polly.indvar.LB, 3
  %scevgep.prol = getelementptr i8, i8* %polly.subfunc.arg.call.i27, i64 %10
  %scevgep1.prol = bitcast i8* %scevgep.prol to double*
  store double %p_add.i.prol, double* %scevgep1.prol, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next.prol = add i64 %polly.indvar.LB, 1
  br label %polly.stmt.for.body.i.prol.loopexit

polly.stmt.for.body.i.prol.loopexit:              ; preds = %polly.stmt.for.body.i.prol, %polly.loop_preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body.i.prol ], [ %polly.indvar.LB, %polly.loop_preheader ]
  %.not = icmp slt i64 %polly.indvar.LB, %polly.indvar.UB
  br i1 %.not, label %polly.stmt.for.body.i, label %polly.par.checkNext
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_10(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
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
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -1768)
  %4 = add nsw i64 %smin23, 1799
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -1800
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2168)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 2199
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 17600
  br label %polly.stmt.for.body10.i.us

polly.stmt.for.body10.i.us:                       ; preds = %polly.stmt.for.body10.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body10.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, %10
  %15 = urem i32 %14, 2200
  %p_conv12.i.us = sitofp i32 %15 to double
  %p_div14.i.us = fdiv double %p_conv12.i.us, 9.000000e+03
  %16 = shl i64 %12, 3
  %17 = add i64 %16, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %17
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div14.i.us, double* %scevgep19.us, align 8, !alias.scope !21, !noalias !22, !llvm.access.group !23
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body10.i.us, !llvm.loop !24

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body10.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 69
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i28 = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to [2200 x double]**
  %polly.subfunc.arg.arraydecay.merge = load [2200 x double]*, [2200 x double]** %4, align 8
  %5 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %6 = bitcast i8* %5 to double**
  %polly.subfunc.arg.add.i31.s2a = load double*, double** %6, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %7 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %7, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %polly.subfunc.arg.add.i31.s2a8 = bitcast double* %polly.subfunc.arg.add.i31.s2a to i8*
  %scevgep6 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 8
  %uglygep = getelementptr i8, i8* %polly.subfunc.arg.add.i31.s2a8, i64 1
  %scevgep12 = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 1
  %bc = bitcast double* %polly.subfunc.arg.add.i31.s2a to i8*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body24.i.prol.loopexit, %polly.stmt.for.body24.i, %middle.block
  %8 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %8, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body24.i:                          ; preds = %polly.stmt.for.body24.i.prol.loopexit, %polly.stmt.for.body24.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body24.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body24.i.prol.loopexit ]
  %polly.subfunc.arg.add.i31.s2a.reload = load double, double* %polly.subfunc.arg.add.i31.s2a, align 8
  %9 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %9
  %scevgep1 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep1, align 8, !alias.scope !15, !noalias !26
  %scevgep3 = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.indvar
  %_p_scalar_4 = load double, double* %scevgep3, align 8, !alias.scope !11, !noalias !13
  %p_mul33.i = fmul double %polly.subfunc.arg.add.i31.s2a.reload, %_p_scalar_4
  %p_add34.i = fadd double %_p_scalar_, %p_mul33.i
  store double %p_add34.i, double* %scevgep1, align 8, !alias.scope !15, !noalias !26
  %polly.indvar_next = add i64 %polly.indvar, 1
  %polly.subfunc.arg.add.i31.s2a.reload.1 = load double, double* %polly.subfunc.arg.add.i31.s2a, align 8
  %10 = shl i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %10
  %scevgep1.1 = bitcast i8* %scevgep.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep1.1, align 8, !alias.scope !15, !noalias !26
  %scevgep3.1 = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.indvar_next
  %_p_scalar_4.1 = load double, double* %scevgep3.1, align 8, !alias.scope !11, !noalias !13
  %p_mul33.i.1 = fmul double %polly.subfunc.arg.add.i31.s2a.reload.1, %_p_scalar_4.1
  %p_add34.i.1 = fadd double %_p_scalar_.1, %p_mul33.i.1
  store double %p_add34.i.1, double* %scevgep1.1, align 8, !alias.scope !15, !noalias !26
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body24.i, !llvm.loop !27

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %11 = add i64 %smax, 1
  %12 = sub i64 %11, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %12, 4
  br i1 %min.iters.check, label %polly.stmt.for.body24.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %polly.loop_preheader
  %13 = shl i64 %polly.indvar.LB, 3
  %scevgep5 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %13
  %14 = shl i64 %smax, 3
  %scevgep7 = getelementptr i8, i8* %scevgep6, i64 %14
  %scevgep10 = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.indvar.LB
  %scevgep1011 = bitcast double* %scevgep10 to i8*
  %scevgep13 = getelementptr double, double* %scevgep12, i64 %smax
  %scevgep1314 = bitcast double* %scevgep13 to i8*
  %bound0 = icmp ult i8* %scevgep5, %uglygep
  %bound1 = icmp ugt i8* %scevgep7, %bc
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult i8* %scevgep5, %scevgep1314
  %bound116 = icmp ugt i8* %scevgep7, %scevgep1011
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %polly.stmt.for.body24.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %12, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %15 = load double, double* %polly.subfunc.arg.add.i31.s2a, align 8, !alias.scope !29
  %broadcast.splatinsert = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %16 = shl i64 %offset.idx, 3
  %17 = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %16
  %18 = bitcast i8* %17 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %18, align 8, !alias.scope !32, !noalias !34
  %19 = getelementptr i8, i8* %17, i64 16
  %20 = bitcast i8* %19 to <2 x double>*
  %wide.load18 = load <2 x double>, <2 x double>* %20, align 8, !alias.scope !32, !noalias !34
  %21 = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 %offset.idx
  %22 = bitcast double* %21 to <2 x double>*
  %wide.load19 = load <2 x double>, <2 x double>* %22, align 8, !alias.scope !36, !noalias !13
  %23 = getelementptr double, double* %21, i64 2
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load20 = load <2 x double>, <2 x double>* %24, align 8, !alias.scope !36, !noalias !13
  %25 = fmul <2 x double> %broadcast.splat, %wide.load19
  %26 = fmul <2 x double> %broadcast.splat22, %wide.load20
  %27 = fadd <2 x double> %wide.load, %25
  %28 = fadd <2 x double> %wide.load18, %26
  %29 = bitcast i8* %17 to <2 x double>*
  store <2 x double> %27, <2 x double>* %29, align 8, !alias.scope !32, !noalias !34
  %30 = bitcast i8* %19 to <2 x double>*
  store <2 x double> %28, <2 x double>* %30, align 8, !alias.scope !32, !noalias !34
  %index.next = add i64 %index, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.body24.i.preheader

polly.stmt.for.body24.i.preheader:                ; preds = %vector.memcheck, %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %vector.memcheck ], [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  %32 = add i64 %smax, 1
  %33 = sub i64 %32, %polly.indvar.ph
  %xtraiter = and i64 %33, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body24.i.prol.loopexit, label %polly.stmt.for.body24.i.prol

polly.stmt.for.body24.i.prol:                     ; preds = %polly.stmt.for.body24.i.preheader
  %polly.subfunc.arg.add.i31.s2a.reload.prol = load double, double* %polly.subfunc.arg.add.i31.s2a, align 8
  %34 = shl i64 %polly.indvar.ph, 3
  %scevgep.prol = getelementptr i8, i8* %polly.subfunc.arg.call.i28, i64 %34
  %scevgep1.prol = bitcast i8* %scevgep.prol to double*
  %_p_scalar_.prol = load double, double* %scevgep1.prol, align 8, !alias.scope !15, !noalias !26
  %scevgep3.prol = getelementptr [2200 x double], [2200 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %polly.subfunc.arg.polly.indvar, i64 %polly.indvar.ph
  %_p_scalar_4.prol = load double, double* %scevgep3.prol, align 8, !alias.scope !11, !noalias !13
  %p_mul33.i.prol = fmul double %polly.subfunc.arg.add.i31.s2a.reload.prol, %_p_scalar_4.prol
  %p_add34.i.prol = fadd double %_p_scalar_.prol, %p_mul33.i.prol
  store double %p_add34.i.prol, double* %scevgep1.prol, align 8, !alias.scope !15, !noalias !26
  %polly.indvar_next.prol = add i64 %polly.indvar.ph, 1
  br label %polly.stmt.for.body24.i.prol.loopexit

polly.stmt.for.body24.i.prol.loopexit:            ; preds = %polly.stmt.for.body24.i.prol, %polly.stmt.for.body24.i.preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body24.i.prol ], [ %polly.indvar.ph, %polly.stmt.for.body24.i.preheader ]
  %35 = icmp eq i64 %smax, %polly.indvar.ph
  br i1 %35, label %polly.par.checkNext, label %polly.stmt.for.body24.i
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { "polly.skip.fn" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef1"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef2"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef4"}
!16 = !{!11, !15}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !19, !"polly.alias.scope.MemRef0"}
!19 = distinct !{!19, !"polly.alias.scope.domain"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"polly.alias.scope.MemRef2"}
!22 = !{!18}
!23 = distinct !{}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !23}
!26 = !{!11, !14}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!15, !12, !"polly.alias.scope.MemRef4", !33}
!33 = distinct !{!33, !31}
!34 = !{!11, !14, !30, !35}
!35 = distinct !{!35, !31}
!36 = !{!11, !12, !"polly.alias.scope.MemRef1", !35}
!37 = distinct !{!37, !28}
