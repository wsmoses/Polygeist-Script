; ModuleID = 'durbin.c'
source_filename = "durbin.c"
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

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext = alloca { i64, i8*, double*, [4000 x double]* }, align 8
  %div.i.s2a = alloca double, align 8
  %z.i = alloca [4000 x double], align 16
  %call.i = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #9
  %call.i15 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #9
  %arraydecay = bitcast i8* %call.i to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry.split
  %indvars.iv.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next.i.4, %for.body.i ]
  %0 = trunc i64 %indvars.iv.i to i32
  %1 = sub nuw nsw i32 4001, %0
  %conv.i = sitofp i32 %1 to double
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.i
  store double %conv.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %2 = trunc i64 %indvars.iv.next.i to i32
  %3 = sub nuw nsw i32 4001, %2
  %conv.i.1 = sitofp i32 %3 to double
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i
  store double %conv.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %4 = trunc i64 %indvars.iv.next.i.1 to i32
  %5 = sub nuw nsw i32 4001, %4
  %conv.i.2 = sitofp i32 %5 to double
  %arrayidx.i.2 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.1
  store double %conv.i.2, double* %arrayidx.i.2, align 8, !tbaa !2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %6 = trunc i64 %indvars.iv.next.i.2 to i32
  %7 = sub nuw nsw i32 4001, %6
  %conv.i.3 = sitofp i32 %7 to double
  %arrayidx.i.3 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.2
  store double %conv.i.3, double* %arrayidx.i.3, align 8, !tbaa !2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %8 = trunc i64 %indvars.iv.next.i.3 to i32
  %9 = sub nuw nsw i32 4001, %8
  %conv.i.4 = sitofp i32 %9 to double
  %arrayidx.i.4 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.3
  store double %conv.i.4, double* %arrayidx.i.4, align 8, !tbaa !2
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 4000
  br i1 %exitcond.not.i.4, label %polly.loop_preheader, label %for.body.i, !llvm.loop !6

kernel_durbin.exit:                               ; preds = %polly.stmt.for.body36.preheader.i52
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %z.i53) #9
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_durbin.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !8
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i20 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i24, %if.end.i ]
  %i.02.i21 = phi i32 [ 0, %if.then ], [ %inc.i25, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i21 to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i22
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %arrayidx.i23 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i20
  %16 = load double, double* %arrayidx.i23, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16) #10
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i20, 1
  %inc.i25 = add nuw nsw i32 %i.02.i21, 1
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i24, 4000
  br i1 %exitcond.not.i26, label %print_array.exit, label %for.body.i22, !llvm.loop !10

print_array.exit:                                 ; preds = %if.end.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %18) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_durbin.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* nonnull %call.i15) #9
  ret i32 0

polly.stmt.for.body36.preheader.i52.unr-lcssa:    ; preds = %polly.stmt.for.body7.i, %polly.loop_preheader31
  %p_add.i.lcssa.ph = phi double [ undef, %polly.loop_preheader31 ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %sum.01.i.phiops.0.unr = phi double [ 0.000000e+00, %polly.loop_preheader31 ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %polly.indvar33.unr = phi i64 [ 0, %polly.loop_preheader31 ], [ %polly.indvar_next34.1, %polly.stmt.for.body7.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body36.preheader.i52, label %polly.stmt.for.body36.preheader.i52.epilog-lcssa

polly.stmt.for.body36.preheader.i52.epilog-lcssa: ; preds = %polly.stmt.for.body36.preheader.i52.unr-lcssa
  %20 = mul nsw i64 %polly.indvar33.unr, -8
  %scevgep36.epil = getelementptr i8, i8* %scevgep, i64 %20
  %scevgep3637.epil = bitcast i8* %scevgep36.epil to double*
  %_p_scalar_.epil = load double, double* %scevgep3637.epil, align 8, !alias.scope !11, !noalias !13
  %21 = shl nuw nsw i64 %polly.indvar33.unr, 3
  %scevgep38.epil = getelementptr i8, i8* %call.i15, i64 %21
  %scevgep3839.epil = bitcast i8* %scevgep38.epil to double*
  %_p_scalar_40.epil = load double, double* %scevgep3839.epil, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i.epil = fmul double %_p_scalar_.epil, %_p_scalar_40.epil
  %p_add.i.epil = fadd double %sum.01.i.phiops.0.unr, %p_mul13.i.epil
  br label %polly.stmt.for.body36.preheader.i52

polly.stmt.for.body36.preheader.i52:              ; preds = %polly.stmt.for.body36.preheader.i52.unr-lcssa, %polly.stmt.for.body36.preheader.i52.epilog-lcssa
  %p_add.i.lcssa = phi double [ %p_add.i.lcssa.ph, %polly.stmt.for.body36.preheader.i52.unr-lcssa ], [ %p_add.i.epil, %polly.stmt.for.body36.preheader.i52.epilog-lcssa ]
  %p_mul.i = fmul double %alpha.05.i.phiops.0, %alpha.05.i.phiops.0
  %p_sub.i = fsub double 1.000000e+00, %p_mul.i
  %p_mul4.i = fmul double %beta.06.i.phiops.0, %p_sub.i
  %scevgep43 = getelementptr i8, i8* %scevgep42, i64 %30
  %scevgep4344 = bitcast i8* %scevgep43 to double*
  %_p_scalar_45 = load double, double* %scevgep4344, align 8, !alias.scope !11, !noalias !13
  %p_add16.i = fadd double %p_add.i.lcssa, %_p_scalar_45
  %p_fneg17.i = fneg double %p_add16.i
  %p_div.i = fdiv double %p_fneg17.i, %p_mul4.i
  store double %p_div.i, double* %div.i.s2a, align 8
  %scevgep47 = getelementptr i8, i8* %scevgep46, i64 %30
  %scevgep4748 = bitcast i8* %scevgep47 to double*
  store double %p_div.i, double* %scevgep4748, align 8, !alias.scope !14, !noalias !16
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i8* %call.i15, i8** %polly.subfn.storeaddr.call.i15, align 8
  store double* %div.i.s2a, double** %polly.subfn.storeaddr.div.i.s2a, align 8
  store [4000 x double]* %z.i, [4000 x double]** %polly.subfn.storeaddr.z.i, align 8
  %22 = add nuw nsw i64 %polly.indvar, 1
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 %22, i64 1, { i64, i8*, double*, [4000 x double]* }* nonnull %polly.par.userContext) #9
  %23 = add nuw nsw i64 %30, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 %call.i15, i8* noundef nonnull align 16 %z.i53, i64 %23, i1 false) #9
  %exitcond54.not = icmp eq i64 %22, 3999
  br i1 %exitcond54.not, label %kernel_durbin.exit, label %polly.loop_preheader31

polly.loop_preheader:                             ; preds = %for.body.i
  %z.i53 = bitcast [4000 x double]* %z.i to i8*
  tail call void (...) @polybench_timer_start() #9
  %arraydecay3 = bitcast i8* %call.i15 to double*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %z.i53) #9
  %24 = load double, double* %arraydecay, align 8, !tbaa !2
  %fneg.i = fneg double %24
  store double %fneg.i, double* %arraydecay3, align 8, !tbaa !2
  %scevgep42 = getelementptr i8, i8* %call.i, i64 8
  %scevgep46 = getelementptr i8, i8* %call.i15, i64 8
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i64, i8*, double*, [4000 x double]* }, { i64, i8*, double*, [4000 x double]* }* %polly.par.userContext, i64 0, i32 0
  %polly.subfn.storeaddr.call.i15 = getelementptr inbounds { i64, i8*, double*, [4000 x double]* }, { i64, i8*, double*, [4000 x double]* }* %polly.par.userContext, i64 0, i32 1
  %polly.subfn.storeaddr.div.i.s2a = getelementptr inbounds { i64, i8*, double*, [4000 x double]* }, { i64, i8*, double*, [4000 x double]* }* %polly.par.userContext, i64 0, i32 2
  %polly.subfn.storeaddr.z.i = getelementptr inbounds { i64, i8*, double*, [4000 x double]* }, { i64, i8*, double*, [4000 x double]* }* %polly.par.userContext, i64 0, i32 3
  br label %polly.loop_preheader31

polly.stmt.for.body7.i:                           ; preds = %polly.stmt.for.body7.i, %polly.loop_preheader31.new
  %sum.01.i.phiops.0 = phi double [ 0.000000e+00, %polly.loop_preheader31.new ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %polly.indvar33 = phi i64 [ 0, %polly.loop_preheader31.new ], [ %polly.indvar_next34.1, %polly.stmt.for.body7.i ]
  %niter = phi i64 [ %unroll_iter, %polly.loop_preheader31.new ], [ %niter.nsub.1, %polly.stmt.for.body7.i ]
  %25 = mul nsw i64 %polly.indvar33, -8
  %scevgep36 = getelementptr i8, i8* %scevgep, i64 %25
  %scevgep3637 = bitcast i8* %scevgep36 to double*
  %_p_scalar_ = load double, double* %scevgep3637, align 8, !alias.scope !11, !noalias !13
  %26 = shl nuw nsw i64 %polly.indvar33, 3
  %scevgep38 = getelementptr i8, i8* %call.i15, i64 %26
  %scevgep3839 = bitcast i8* %scevgep38 to double*
  %_p_scalar_40 = load double, double* %scevgep3839, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i = fmul double %_p_scalar_, %_p_scalar_40
  %p_add.i = fadd double %sum.01.i.phiops.0, %p_mul13.i
  %polly.indvar_next34 = or i64 %polly.indvar33, 1
  %27 = mul nsw i64 %polly.indvar_next34, -8
  %scevgep36.1 = getelementptr i8, i8* %scevgep, i64 %27
  %scevgep3637.1 = bitcast i8* %scevgep36.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep3637.1, align 8, !alias.scope !11, !noalias !13
  %28 = shl nuw nsw i64 %polly.indvar_next34, 3
  %scevgep38.1 = getelementptr i8, i8* %call.i15, i64 %28
  %scevgep3839.1 = bitcast i8* %scevgep38.1 to double*
  %_p_scalar_40.1 = load double, double* %scevgep3839.1, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i.1 = fmul double %_p_scalar_.1, %_p_scalar_40.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul13.i.1
  %polly.indvar_next34.1 = add nuw nsw i64 %polly.indvar33, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.stmt.for.body36.preheader.i52.unr-lcssa, label %polly.stmt.for.body7.i

polly.loop_preheader31:                           ; preds = %polly.loop_preheader, %polly.stmt.for.body36.preheader.i52
  %alpha.05.i.phiops.0 = phi double [ %fneg.i, %polly.loop_preheader ], [ %p_div.i, %polly.stmt.for.body36.preheader.i52 ]
  %beta.06.i.phiops.0 = phi double [ 1.000000e+00, %polly.loop_preheader ], [ %p_mul4.i, %polly.stmt.for.body36.preheader.i52 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %22, %polly.stmt.for.body36.preheader.i52 ]
  %29 = add nuw i64 %polly.indvar, 1
  %30 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %call.i, i64 %30
  %xtraiter = and i64 %29, 1
  %31 = icmp eq i64 %polly.indvar, 0
  br i1 %31, label %polly.stmt.for.body36.preheader.i52.unr-lcssa, label %polly.loop_preheader31.new

polly.loop_preheader31.new:                       ; preds = %polly.loop_preheader31
  %unroll_iter = and i64 %29, -2
  br label %polly.stmt.for.body7.i
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i15 = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to double**
  %polly.subfunc.arg.div.i.s2a = load double*, double** %4, align 8
  %5 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %6 = bitcast i8* %5 to [4000 x double]**
  %polly.subfunc.arg.z.i = load [4000 x double]*, [4000 x double]** %6, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %7 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %7, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %polly.subfunc.arg.div.i.s2a12 = bitcast double* %polly.subfunc.arg.div.i.s2a to i8*
  %8 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep2 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %8
  %scevgep9 = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 1
  %uglygep = getelementptr i8, i8* %polly.subfunc.arg.div.i.s2a12, i64 1
  %scevgep13 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %8
  %9 = add i64 %8, 8
  %scevgep15 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %9
  %scevgep18 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 8
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body20.i.prol.loopexit, %polly.stmt.for.body20.i, %middle.block
  %10 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %10, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body20.i:                          ; preds = %polly.stmt.for.body20.i.prol.loopexit, %polly.stmt.for.body20.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body20.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body20.i.prol.loopexit ]
  %polly.subfunc.arg.div.i.s2a.reload = load double, double* %polly.subfunc.arg.div.i.s2a, align 8
  %11 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %11
  %scevgep1 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep1, align 8, !alias.scope !14, !noalias !16
  %12 = mul i64 %polly.indvar, -8
  %scevgep3 = getelementptr i8, i8* %scevgep2, i64 %12
  %scevgep34 = bitcast i8* %scevgep3 to double*
  %_p_scalar_5 = load double, double* %scevgep34, align 8, !alias.scope !14, !noalias !16
  %p_mul27.i = fmul double %polly.subfunc.arg.div.i.s2a.reload, %_p_scalar_5
  %p_add28.i = fadd double %_p_scalar_, %p_mul27.i
  %scevgep6 = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 %polly.indvar
  store double %p_add28.i, double* %scevgep6, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next = add i64 %polly.indvar, 1
  %polly.subfunc.arg.div.i.s2a.reload.1 = load double, double* %polly.subfunc.arg.div.i.s2a, align 8
  %13 = shl i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %13
  %scevgep1.1 = bitcast i8* %scevgep.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep1.1, align 8, !alias.scope !14, !noalias !16
  %14 = mul i64 %polly.indvar_next, -8
  %scevgep3.1 = getelementptr i8, i8* %scevgep2, i64 %14
  %scevgep34.1 = bitcast i8* %scevgep3.1 to double*
  %_p_scalar_5.1 = load double, double* %scevgep34.1, align 8, !alias.scope !14, !noalias !16
  %p_mul27.i.1 = fmul double %polly.subfunc.arg.div.i.s2a.reload.1, %_p_scalar_5.1
  %p_add28.i.1 = fadd double %_p_scalar_.1, %p_mul27.i.1
  %scevgep6.1 = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 %polly.indvar_next
  store double %p_add28.i.1, double* %scevgep6.1, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body20.i, !llvm.loop !18

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %15 = add i64 %smax, 1
  %16 = sub i64 %15, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %16, 4
  br i1 %min.iters.check, label %polly.stmt.for.body20.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %polly.loop_preheader
  %scevgep7 = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 %polly.indvar.LB
  %scevgep78 = bitcast double* %scevgep7 to i8*
  %scevgep10 = getelementptr double, double* %scevgep9, i64 %smax
  %scevgep1011 = bitcast double* %scevgep10 to i8*
  %17 = mul i64 %smax, -8
  %scevgep14 = getelementptr i8, i8* %scevgep13, i64 %17
  %18 = mul i64 %polly.indvar.LB, -8
  %scevgep16 = getelementptr i8, i8* %scevgep15, i64 %18
  %19 = shl i64 %polly.indvar.LB, 3
  %scevgep17 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %19
  %20 = shl i64 %smax, 3
  %scevgep19 = getelementptr i8, i8* %scevgep18, i64 %20
  %bound0 = icmp ugt i8* %uglygep, %scevgep78
  %bound1 = icmp ult double* %polly.subfunc.arg.div.i.s2a, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ugt i8* %scevgep16, %scevgep78
  %bound121 = icmp ult i8* %scevgep14, %scevgep1011
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ugt i8* %scevgep19, %scevgep78
  %bound124 = icmp ult i8* %scevgep17, %scevgep1011
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %polly.stmt.for.body20.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %16, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %21 = load double, double* %polly.subfunc.arg.div.i.s2a, align 8, !alias.scope !20
  %broadcast.splatinsert = insertelement <2 x double> poison, double %21, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <2 x double> poison, double %21, i32 0
  %broadcast.splat32 = shufflevector <2 x double> %broadcast.splatinsert31, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %22 = shl i64 %offset.idx, 3
  %23 = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %22
  %24 = bitcast i8* %23 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %24, align 8, !alias.scope !23, !noalias !16
  %25 = getelementptr i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <2 x double>*
  %wide.load27 = load <2 x double>, <2 x double>* %26, align 8, !alias.scope !23, !noalias !16
  %27 = mul i64 %offset.idx, -8
  %28 = getelementptr i8, i8* %scevgep2, i64 %27
  %29 = getelementptr i8, i8* %28, i64 -8
  %30 = bitcast i8* %29 to <2 x double>*
  %wide.load28 = load <2 x double>, <2 x double>* %30, align 8, !alias.scope !25, !noalias !16
  %reverse = shufflevector <2 x double> %wide.load28, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %31 = getelementptr i8, i8* %28, i64 -16
  %32 = getelementptr i8, i8* %31, i64 -8
  %33 = bitcast i8* %32 to <2 x double>*
  %wide.load29 = load <2 x double>, <2 x double>* %33, align 8, !alias.scope !25, !noalias !16
  %reverse30 = shufflevector <2 x double> %wide.load29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %34 = fmul <2 x double> %broadcast.splat, %reverse
  %35 = fmul <2 x double> %broadcast.splat32, %reverse30
  %36 = fadd <2 x double> %wide.load, %34
  %37 = fadd <2 x double> %wide.load27, %35
  %38 = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 %offset.idx
  %39 = bitcast double* %38 to <2 x double>*
  store <2 x double> %36, <2 x double>* %39, align 8, !alias.scope !27, !noalias !29
  %40 = getelementptr double, double* %38, i64 2
  %41 = bitcast double* %40 to <2 x double>*
  store <2 x double> %37, <2 x double>* %41, align 8, !alias.scope !27, !noalias !29
  %index.next = add i64 %index, 4
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.body20.i.preheader

polly.stmt.for.body20.i.preheader:                ; preds = %vector.memcheck, %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %vector.memcheck ], [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  %43 = add i64 %smax, 1
  %44 = sub i64 %43, %polly.indvar.ph
  %xtraiter = and i64 %44, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body20.i.prol.loopexit, label %polly.stmt.for.body20.i.prol

polly.stmt.for.body20.i.prol:                     ; preds = %polly.stmt.for.body20.i.preheader
  %polly.subfunc.arg.div.i.s2a.reload.prol = load double, double* %polly.subfunc.arg.div.i.s2a, align 8
  %45 = shl i64 %polly.indvar.ph, 3
  %scevgep.prol = getelementptr i8, i8* %polly.subfunc.arg.call.i15, i64 %45
  %scevgep1.prol = bitcast i8* %scevgep.prol to double*
  %_p_scalar_.prol = load double, double* %scevgep1.prol, align 8, !alias.scope !14, !noalias !16
  %46 = mul i64 %polly.indvar.ph, -8
  %scevgep3.prol = getelementptr i8, i8* %scevgep2, i64 %46
  %scevgep34.prol = bitcast i8* %scevgep3.prol to double*
  %_p_scalar_5.prol = load double, double* %scevgep34.prol, align 8, !alias.scope !14, !noalias !16
  %p_mul27.i.prol = fmul double %polly.subfunc.arg.div.i.s2a.reload.prol, %_p_scalar_5.prol
  %p_add28.i.prol = fadd double %_p_scalar_.prol, %p_mul27.i.prol
  %scevgep6.prol = getelementptr [4000 x double], [4000 x double]* %polly.subfunc.arg.z.i, i64 0, i64 %polly.indvar.ph
  store double %p_add28.i.prol, double* %scevgep6.prol, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next.prol = add i64 %polly.indvar.ph, 1
  br label %polly.stmt.for.body20.i.prol.loopexit

polly.stmt.for.body20.i.prol.loopexit:            ; preds = %polly.stmt.for.body20.i.prol, %polly.stmt.for.body20.i.preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body20.i.prol ], [ %polly.indvar.ph, %polly.stmt.for.body20.i.preheader ]
  %47 = icmp eq i64 %smax, %polly.indvar.ph
  br i1 %47, label %polly.par.checkNext, label %polly.stmt.for.body20.i
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { "polly.skip.fn" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef5"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef6"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef10"}
!16 = !{!11, !15}
!17 = !{!11, !14}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!14, !12, !"polly.alias.scope.MemRef6", !24}
!24 = distinct !{!24, !22}
!25 = !{!14, !12, !"polly.alias.scope.MemRef6", !26}
!26 = distinct !{!26, !22}
!27 = !{!15, !12, !"polly.alias.scope.MemRef10", !28}
!28 = distinct !{!28, !22}
!29 = !{!11, !14, !21, !26, !24}
!30 = distinct !{!30, !19}
