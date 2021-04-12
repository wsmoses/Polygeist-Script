; ModuleID = 'bicg.c'
source_filename = "bicg.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.9 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.10 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.9, i32 0, i32 0) }, align 8
@.str.ident.12 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.13 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.12, i32 0, i32 0) }, align 8
@.str.ident.15 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.16 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.15, i32 0, i32 0) }, align 8
@.str.ident.18 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.19 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.18, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
polly.exiting:
  %polly.par.userContext74 = alloca { i8*, double* }, align 8
  %polly.par.userContext71 = alloca { i8*, double* }, align 8
  %polly.par.userContext63 = alloca { i8* }, align 8
  %polly.par.userContext60 = alloca { i8* }, align 8
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #9
  %call.i36 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #9
  %call.i37 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #9
  %call.i38 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #9
  %call.i39 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #9
  %call.i3965 = bitcast i8* %call.i39 to double*
  %polly.subfn.storeaddr.call.i38 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i38, i8** %polly.subfn.storeaddr.call.i38, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 1800, i64 1, { i8* }* nonnull %polly.par.userContext) #9
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext60, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.10, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_11 to void (i32*, i32*, ...)*), i64 0, i64 69, i64 1, { i8* }* nonnull %polly.par.userContext60) #9
  %polly.subfn.storeaddr.call.i39 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext63, i64 0, i32 0
  store i8* %call.i39, i8** %polly.subfn.storeaddr.call.i39, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.13, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_14 to void (i32*, i32*, ...)*), i64 0, i64 2200, i64 1, { i8* }* nonnull %polly.par.userContext63) #9
  tail call void (...) @polybench_timer_start() #9
  %arraydecay9 = bitcast i8* %call.i37 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(14400) %call.i36, i8 0, i64 14400, i1 false) #9
  %polly.subfn.storeaddr.call.i37 = getelementptr inbounds { i8*, double* }, { i8*, double* }* %polly.par.userContext71, i64 0, i32 0
  store i8* %call.i37, i8** %polly.subfn.storeaddr.call.i37, align 8
  %polly.subfn.storeaddr.arraydecay5.merge = getelementptr inbounds { i8*, double* }, { i8*, double* }* %polly.par.userContext71, i64 0, i32 1
  %0 = bitcast double** %polly.subfn.storeaddr.arraydecay5.merge to i8**
  store i8* %call.i39, i8** %0, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.16, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_17 to void (i32*, i32*, ...)*), i64 0, i64 2200, i64 1, { i8*, double* }* nonnull %polly.par.userContext71) #9
  %polly.subfn.storeaddr.call.i3775 = getelementptr inbounds { i8*, double* }, { i8*, double* }* %polly.par.userContext74, i64 0, i32 0
  store i8* %call.i37, i8** %polly.subfn.storeaddr.call.i3775, align 8
  %polly.subfn.storeaddr.arraydecay5.merge76 = getelementptr inbounds { i8*, double* }, { i8*, double* }* %polly.par.userContext74, i64 0, i32 1
  %1 = bitcast double** %polly.subfn.storeaddr.arraydecay5.merge76 to i8**
  store i8* %call.i39, i8** %1, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.19, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_20 to void (i32*, i32*, ...)*), i64 0, i64 2200, i64 1, { i8*, double* }* nonnull %polly.par.userContext74) #9
  br label %polly.loop_preheader79

kernel_bicg.exit:                                 ; preds = %polly.loop_exit80
  %arraydecay8 = bitcast i8* %call.i36 to double*
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %2 = load i8*, i8** %argv, align 8, !tbaa !2
  %strcmpload = load i8, i8* %2, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3) #10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.body.i47

for.body.i47:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i45 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i49, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i50, %if.end.i ]
  %rem.lhs.trunc.i46 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i46, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i47
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %6) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i47
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx.i48 = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.i45
  %8 = load double, double* %arrayidx.i48, align 8, !tbaa !6
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %8) #10
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1
  %inc.i50 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i49, 1800
  br i1 %exitcond.not.i51, label %for.end.i, label %for.body.i47, !llvm.loop !8

for.end.i:                                        ; preds = %if.end.i
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i52 = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i55, %if.end14.i ]
  %i.15.i53 = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i53 to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %11) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx16.i54 = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i52
  %13 = load double, double* %arrayidx16.i54, align 8, !tbaa !6
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %13) #10
  %indvars.iv.next7.i55 = add nuw nsw i64 %indvars.iv6.i52, 1
  %inc19.i = add nuw nsw i32 %i.15.i53, 1
  %exitcond8.not.i56 = icmp eq i64 %indvars.iv.next7.i55, 2200
  br i1 %exitcond8.not.i56, label %print_array.exit, label %for.body9.i, !llvm.loop !10

print_array.exit:                                 ; preds = %if.end14.i
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %15) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_bicg.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i36) #9
  tail call void @free(i8* nonnull %call.i37) #9
  tail call void @free(i8* %call.i38) #9
  tail call void @free(i8* %call.i39) #9
  ret i32 0

polly.loop_exit80:                                ; preds = %polly.loop_exit86
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, -32
  %exitcond112.not = icmp eq i64 %polly.indvar_next, 69
  br i1 %exitcond112.not, label %kernel_bicg.exit, label %polly.loop_preheader79

polly.loop_exit86:                                ; preds = %polly.loop_exit92
  %polly.indvar_next82 = add nuw nsw i64 %polly.indvar81, 1
  %exitcond111.not = icmp eq i64 %polly.indvar_next82, 57
  br i1 %exitcond111.not, label %polly.loop_exit80, label %polly.loop_preheader85

polly.loop_preheader79:                           ; preds = %polly.exiting, %polly.loop_exit80
  %indvars.iv107 = phi i64 [ 0, %polly.exiting ], [ %indvars.iv.next108, %polly.loop_exit80 ]
  %polly.indvar = phi i64 [ 0, %polly.exiting ], [ %polly.indvar_next, %polly.loop_exit80 ]
  %smin109 = call i64 @llvm.smin.i64(i64 %indvars.iv107, i64 -2168)
  %17 = shl nsw i64 %polly.indvar, 5
  %18 = add nsw i64 %smin109, 2199
  br label %polly.loop_preheader85

polly.loop_exit92:                                ; preds = %polly.stmt.for.body8.i
  store double %p_add28.i.1, double* %polly.access.call.i37, align 8, !alias.scope !11, !noalias !14
  %polly.indvar_next88 = add nuw nsw i64 %polly.indvar87, 1
  %exitcond110.not = icmp eq i64 %polly.indvar87, %18
  br i1 %exitcond110.not, label %polly.loop_exit86, label %polly.loop_preheader91

polly.loop_preheader85:                           ; preds = %polly.loop_preheader79, %polly.loop_exit86
  %polly.indvar81 = phi i64 [ 0, %polly.loop_preheader79 ], [ %polly.indvar_next82, %polly.loop_exit86 ]
  %19 = mul nsw i64 %polly.indvar81, -32
  %smin113 = call i64 @llvm.smin.i64(i64 %19, i64 -1768)
  %20 = add nsw i64 %smin113, 1800
  %21 = shl nsw i64 %polly.indvar81, 5
  br label %polly.loop_preheader91

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader91
  %p_add28.i106 = phi double [ %polly.access.call.i37.promoted, %polly.loop_preheader91 ], [ %p_add28.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar93 = phi i64 [ 0, %polly.loop_preheader91 ], [ %polly.indvar_next94.1, %polly.stmt.for.body8.i ]
  %niter = phi i64 [ %20, %polly.loop_preheader91 ], [ %niter.nsub.1, %polly.stmt.for.body8.i ]
  %22 = add nuw nsw i64 %polly.indvar93, %21
  %23 = shl i64 %22, 3
  %scevgep = getelementptr i8, i8* %call.i36, i64 %23
  %scevgep96 = bitcast i8* %scevgep to double*
  %_p_scalar_97 = load double, double* %scevgep96, align 8, !alias.scope !16, !noalias !19
  %24 = add nuw nsw i64 %23, %29
  %scevgep98 = getelementptr i8, i8* %call.i, i64 %24
  %scevgep9899 = bitcast i8* %scevgep98 to double*
  %_p_scalar_100 = load double, double* %scevgep9899, align 8, !alias.scope !17, !noalias !20
  %p_mul.i = fmul double %_p_scalar_, %_p_scalar_100
  %p_add.i = fadd double %_p_scalar_97, %p_mul.i
  store double %p_add.i, double* %scevgep96, align 8, !alias.scope !16, !noalias !19
  %scevgep101 = getelementptr i8, i8* %call.i38, i64 %23
  %scevgep101102 = bitcast i8* %scevgep101 to double*
  %_p_scalar_103 = load double, double* %scevgep101102, align 8, !alias.scope !18, !noalias !21
  %p_mul27.i = fmul double %_p_scalar_100, %_p_scalar_103
  %p_add28.i = fadd double %p_add28.i106, %p_mul27.i
  %polly.indvar_next94 = or i64 %polly.indvar93, 1
  %25 = add nuw nsw i64 %polly.indvar_next94, %21
  %26 = shl i64 %25, 3
  %scevgep.1 = getelementptr i8, i8* %call.i36, i64 %26
  %scevgep96.1 = bitcast i8* %scevgep.1 to double*
  %_p_scalar_97.1 = load double, double* %scevgep96.1, align 8, !alias.scope !16, !noalias !19
  %27 = add nuw nsw i64 %26, %29
  %scevgep98.1 = getelementptr i8, i8* %call.i, i64 %27
  %scevgep9899.1 = bitcast i8* %scevgep98.1 to double*
  %_p_scalar_100.1 = load double, double* %scevgep9899.1, align 8, !alias.scope !17, !noalias !20
  %p_mul.i.1 = fmul double %_p_scalar_, %_p_scalar_100.1
  %p_add.i.1 = fadd double %_p_scalar_97.1, %p_mul.i.1
  store double %p_add.i.1, double* %scevgep96.1, align 8, !alias.scope !16, !noalias !19
  %scevgep101.1 = getelementptr i8, i8* %call.i38, i64 %26
  %scevgep101102.1 = bitcast i8* %scevgep101.1 to double*
  %_p_scalar_103.1 = load double, double* %scevgep101102.1, align 8, !alias.scope !18, !noalias !21
  %p_mul27.i.1 = fmul double %_p_scalar_100.1, %_p_scalar_103.1
  %p_add28.i.1 = fadd double %p_add28.i, %p_mul27.i.1
  %polly.indvar_next94.1 = add nuw nsw i64 %polly.indvar93, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit92, label %polly.stmt.for.body8.i

polly.loop_preheader91:                           ; preds = %polly.loop_preheader85, %polly.loop_exit92
  %polly.indvar87 = phi i64 [ 0, %polly.loop_preheader85 ], [ %polly.indvar_next88, %polly.loop_exit92 ]
  %28 = add nuw nsw i64 %polly.indvar87, %17
  %polly.access.call.i37 = getelementptr double, double* %arraydecay9, i64 %28
  %polly.access.arraydecay5.merge = getelementptr double, double* %call.i3965, i64 %28
  %_p_scalar_ = load double, double* %polly.access.arraydecay5.merge, align 8, !alias.scope !15, !noalias !22
  %29 = mul nuw nsw i64 %28, 14400
  %polly.access.call.i37.promoted = load double, double* %polly.access.call.i37, align 8, !alias.scope !11, !noalias !14
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
  %polly.subfunc.arg.call.i38 = load i8*, i8** %0, align 8
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
  %3 = trunc i64 %polly.indvar to i16
  %4 = urem i16 %3, 1800
  %p_conv.i = uitofp i16 %4 to double
  %p_div.i = fdiv double %p_conv.i, 1.800000e+03
  %5 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i38, i64 %5
  %scevgep1 = bitcast i8* %scevgep to double*
  store double %p_div.i, double* %scevgep1, align 8, !alias.scope !23, !noalias !25
  %polly.indvar_next = add i64 %polly.indvar, 1
  %6 = trunc i64 %polly.indvar_next to i16
  %7 = urem i16 %6, 1800
  %p_conv.i.1 = uitofp i16 %7 to double
  %p_div.i.1 = fdiv double %p_conv.i.1, 1.800000e+03
  %8 = shl i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i38, i64 %8
  %scevgep1.1 = bitcast i8* %scevgep.1 to double*
  store double %p_div.i.1, double* %scevgep1.1, align 8, !alias.scope !23, !noalias !25
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body.i

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %9 = add i64 %smax, 1
  %10 = sub i64 %9, %polly.indvar.LB
  %xtraiter = and i64 %10, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body.i.prol.loopexit, label %polly.stmt.for.body.i.prol

polly.stmt.for.body.i.prol:                       ; preds = %polly.loop_preheader
  %11 = trunc i64 %polly.indvar.LB to i16
  %12 = urem i16 %11, 1800
  %p_conv.i.prol = uitofp i16 %12 to double
  %p_div.i.prol = fdiv double %p_conv.i.prol, 1.800000e+03
  %13 = shl i64 %polly.indvar.LB, 3
  %scevgep.prol = getelementptr i8, i8* %polly.subfunc.arg.call.i38, i64 %13
  %scevgep1.prol = bitcast i8* %scevgep.prol to double*
  store double %p_div.i.prol, double* %scevgep1.prol, align 8, !alias.scope !23, !noalias !25
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

define internal void @main_polly_subfn_11(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
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
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
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
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2168)
  %4 = add nsw i64 %smin23, 2199
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2200
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1768)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 1799
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 14400
  br label %polly.stmt.for.body15.i.us

polly.stmt.for.body15.i.us:                       ; preds = %polly.stmt.for.body15.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body15.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, 1
  %15 = mul i32 %14, %10
  %16 = urem i32 %15, 2200
  %p_conv17.i.us = sitofp i32 %16 to double
  %p_div19.i.us = fdiv double %p_conv17.i.us, 2.200000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div19.i.us, double* %scevgep19.us, align 8, !alias.scope !27, !noalias !28, !llvm.access.group !29
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body15.i.us, !llvm.loop !30

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body15.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 57
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_14(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i39 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body5.i, %polly.stmt.for.body5.i.prol.loopexit
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body5.i:                           ; preds = %polly.stmt.for.body5.i.prol.loopexit, %polly.stmt.for.body5.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body5.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body5.i.prol.loopexit ]
  %3 = trunc i64 %polly.indvar to i16
  %4 = urem i16 %3, 2200
  %p_conv7.i = uitofp i16 %4 to double
  %p_div9.i = fdiv double %p_conv7.i, 2.200000e+03
  %5 = shl i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %5
  %scevgep1 = bitcast i8* %scevgep to double*
  store double %p_div9.i, double* %scevgep1, align 8, !alias.scope !26, !noalias !32
  %polly.indvar_next = add i64 %polly.indvar, 1
  %6 = trunc i64 %polly.indvar_next to i16
  %7 = urem i16 %6, 2200
  %p_conv7.i.1 = uitofp i16 %7 to double
  %p_div9.i.1 = fdiv double %p_conv7.i.1, 2.200000e+03
  %8 = shl i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %8
  %scevgep1.1 = bitcast i8* %scevgep.1 to double*
  store double %p_div9.i.1, double* %scevgep1.1, align 8, !alias.scope !26, !noalias !32
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body5.i

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %9 = add i64 %smax, 1
  %10 = sub i64 %9, %polly.indvar.LB
  %xtraiter = and i64 %10, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body5.i.prol.loopexit, label %polly.stmt.for.body5.i.prol

polly.stmt.for.body5.i.prol:                      ; preds = %polly.loop_preheader
  %11 = trunc i64 %polly.indvar.LB to i16
  %12 = urem i16 %11, 2200
  %p_conv7.i.prol = uitofp i16 %12 to double
  %p_div9.i.prol = fdiv double %p_conv7.i.prol, 2.200000e+03
  %13 = shl i64 %polly.indvar.LB, 3
  %scevgep.prol = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %13
  %scevgep1.prol = bitcast i8* %scevgep.prol to double*
  store double %p_div9.i.prol, double* %scevgep1.prol, align 8, !alias.scope !26, !noalias !32
  %polly.indvar_next.prol = add i64 %polly.indvar.LB, 1
  br label %polly.stmt.for.body5.i.prol.loopexit

polly.stmt.for.body5.i.prol.loopexit:             ; preds = %polly.stmt.for.body5.i.prol, %polly.loop_preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body5.i.prol ], [ %polly.indvar.LB, %polly.loop_preheader ]
  %.not = icmp slt i64 %polly.indvar.LB, %polly.indvar.UB
  br i1 %.not, label %polly.stmt.for.body5.i, label %polly.par.checkNext
}

define internal void @main_polly_subfn_17(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i37 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %2 = shl i64 %polly.indvar.LB, 3
  %scevgep2 = getelementptr i8, i8* %polly.subfunc.arg.call.i37, i64 %2
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %3 = add i64 %smax, 1
  %4 = sub i64 %3, %polly.indvar.LB
  %5 = shl nuw i64 %4, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep2, i8 0, i64 %5, i1 false)
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

define internal void @main_polly_subfn_20(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #7 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to double**
  %polly.subfunc.arg.call.i371 = load double*, double** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %scevgep = getelementptr double, double* %polly.subfunc.arg.call.i371, i64 %polly.indvar.LB
  %scevgep2 = bitcast double* %scevgep to i8*
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %2 = add i64 %smax, 1
  %3 = sub i64 %2, %polly.indvar.LB
  %4 = shl nuw i64 %3, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep2, i8 0, i64 %4, i1 false)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %5, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

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
!11 = !{!12}
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef0"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16, !17, !18}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef1"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef4"}
!17 = distinct !{!17, !13, !"polly.alias.scope.MemRef5"}
!18 = distinct !{!18, !13, !"polly.alias.scope.MemRef6"}
!19 = !{!12, !15, !17, !18}
!20 = !{!12, !15, !16, !18}
!21 = !{!12, !15, !16, !17}
!22 = !{!12, !16, !17, !18}
!23 = distinct !{!23, !24, !"polly.alias.scope.MemRef0"}
!24 = distinct !{!24, !"polly.alias.scope.domain"}
!25 = !{!26, !27}
!26 = distinct !{!26, !24, !"polly.alias.scope.MemRef2"}
!27 = distinct !{!27, !24, !"polly.alias.scope.MemRef3"}
!28 = !{!23, !26}
!29 = distinct !{}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.parallel_accesses", !29}
!32 = !{!23, !27}
