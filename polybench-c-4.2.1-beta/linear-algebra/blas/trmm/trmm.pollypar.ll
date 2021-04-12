; ModuleID = 'trmm.c'
source_filename = "trmm.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
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
entry.split:
  %polly.par.userContext41 = alloca { i8* }, align 8
  %polly.par.userContext37 = alloca { i8* }, align 8
  %polly.par.userContext = alloca { i8*, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #8
  %call.i20 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %arraydecay = bitcast i8* %call.i to [2000 x double]*
  %arraydecay2 = bitcast i8* %call.i20 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %entry.split
  %indvars.iv10.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next11.i, %for.inc27.i ]
  %cmp21.not.i = icmp eq i64 %indvars.iv10.i, 0
  br i1 %cmp21.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %0 = add nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv10.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body3.i, %for.cond1.preheader.i
  %arrayidx10.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv10.i
  store double 1.000000e+00, double* %arrayidx10.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv10.i, 2600
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %for.body14.i ]
  %3 = sub nuw nsw i64 %2, %indvars.iv6.i
  %4 = trunc i64 %3 to i32
  %rem16.urem.i = urem i32 %4, 2600
  %conv17.i = sitofp i32 %rem16.urem.i to double
  %div19.i = fdiv double %conv17.i, 2.600000e+03
  %arrayidx23.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 2600
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body14.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body14.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, 2000
  br i1 %exitcond13.not.i, label %polly.exiting, label %for.cond1.preheader.i, !llvm.loop !9

land.lhs.true:                                    ; preds = %polly.exiting
  %5 = load i8*, i8** %argv, align 8, !tbaa !10
  %strcmpload = load i8, i8* %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %9 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %10 = add nuw nsw i64 %indvars.iv.i27, %9
  %11 = trunc i64 %10 to i32
  %rem.i28 = urem i32 %11, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %14 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %14) #9
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !12

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !13

print_array.exit:                                 ; preds = %for.inc10.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !10
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %16) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %polly.exiting
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* nonnull %call.i20) #8
  ret i32 0

polly.exiting:                                    ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #8
  %polly.subfn.storeaddr.call.i20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i20, i8** %polly.subfn.storeaddr.call.i20, align 8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %polly.par.userContext, i64 0, i32 1
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 2600, i64 1, { i8*, i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i2038 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext37, i64 0, i32 0
  store i8* %call.i20, i8** %polly.subfn.storeaddr.call.i2038, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8* }* nonnull %polly.par.userContext37) #8
  %polly.subfn.storeaddr.call.i2042 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext41, i64 0, i32 0
  store i8* %call.i20, i8** %polly.subfn.storeaddr.call.i2042, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 2600, i64 1, { i8* }* nonnull %polly.par.userContext41) #8
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end
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
  %polly.subfunc.arg.call.i20 = load i8*, i8** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %2, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 16000
  %scevgep15 = getelementptr i8, i8* %polly.subfunc.arg.call.i20, i64 20800
  %polly.access.cast.polly.subfunc.arg.call.i20 = bitcast i8* %polly.subfunc.arg.call.i20 to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %4 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %4, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond25.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond25.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_exit9:                                 ; preds = %polly.stmt.for.body6.us.i
  %polly.indvar_next5 = add nuw nsw i64 %polly.indvar4, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond24.not = icmp eq i64 %polly.indvar_next5, 1999
  br i1 %exitcond24.not, label %polly.loop_exit3, label %polly.loop_preheader8

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %5 = shl i64 %polly.indvar, 3
  %scevgep16 = getelementptr i8, i8* %scevgep15, i64 %5
  br label %polly.loop_preheader8

polly.stmt.for.body6.us.i:                        ; preds = %polly.loop_preheader8, %polly.stmt.for.body6.us.i
  %polly.indvar10 = phi i64 [ 0, %polly.loop_preheader8 ], [ %polly.indvar_next11, %polly.stmt.for.body6.us.i ]
  %6 = sub nsw i64 %polly.indvar4, %polly.indvar10
  %polly.access.mul.polly.subfunc.arg.call.i20 = mul nuw nsw i64 %polly.indvar10, 2600
  %polly.access.add.polly.subfunc.arg.call.i20 = add nsw i64 %polly.access.mul.polly.subfunc.arg.call.i20, %polly.indvar
  %polly.access.polly.subfunc.arg.call.i20 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i20, i64 %polly.access.add.polly.subfunc.arg.call.i20
  %polly.access.polly.subfunc.arg.call.i20.reload = load double, double* %polly.access.polly.subfunc.arg.call.i20, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !18
  %7 = mul nuw nsw i64 %polly.indvar10, 16008
  %8 = mul nsw i64 %6, 16000
  %9 = add nsw i64 %8, %7
  %scevgep13 = getelementptr i8, i8* %scevgep, i64 %9
  %scevgep1314 = bitcast i8* %scevgep13 to double*
  %_p_scalar_ = load double, double* %scevgep1314, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !18
  %_p_scalar_19 = load double, double* %scevgep1718, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !18
  %p_mul.us.i = fmul double %_p_scalar_, %_p_scalar_19
  %p_add17.us.i = fadd double %polly.access.polly.subfunc.arg.call.i20.reload, %p_mul.us.i
  store double %p_add17.us.i, double* %polly.access.polly.subfunc.arg.call.i20, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !18
  %polly.indvar_next11 = add nuw nsw i64 %polly.indvar10, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next11, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit9, label %polly.stmt.for.body6.us.i, !llvm.loop !20

polly.loop_preheader8:                            ; preds = %polly.loop_preheader2, %polly.loop_exit9
  %indvars.iv = phi i64 [ 1, %polly.loop_preheader2 ], [ %indvars.iv.next, %polly.loop_exit9 ]
  %polly.indvar4 = phi i64 [ 0, %polly.loop_preheader2 ], [ %polly.indvar_next5, %polly.loop_exit9 ]
  %10 = mul nuw nsw i64 %polly.indvar4, 20800
  %scevgep17 = getelementptr i8, i8* %scevgep16, i64 %10
  %scevgep1718 = bitcast i8* %scevgep17 to double*
  br label %polly.stmt.for.body6.us.i
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
  %polly.subfunc.arg.call.i20 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %polly.access.cast.polly.subfunc.arg.call.i20 = bitcast i8* %polly.subfunc.arg.call.i20 to double*
  br label %polly.loop_preheader

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

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -1967)
  %4 = add nsw i64 %smin23, 1998
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -1999
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %7 = mul nsw i64 %polly.indvar4.us, -32
  %smin29 = call i64 @llvm.smin.i64(i64 %7, i64 -2568)
  %8 = add nsw i64 %smin29, 2600
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2568)
  %9 = shl nsw i64 %polly.indvar4.us, 5
  %10 = add nsw i64 %smin, 2599
  %min.iters.check = icmp eq i64 %8, 0
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %11 = add nsw i64 %polly.indvar10.us, %6
  %polly.access.mul.polly.subfunc.arg.call.i20.us = mul nsw i64 %11, 2600
  %12 = mul i64 %11, 20800
  br i1 %min.iters.check, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.us, label %vector.body

vector.body:                                      ; preds = %polly.loop_preheader14.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polly.loop_preheader14.us ]
  %13 = add nuw nsw i64 %index, %9
  %14 = add nsw i64 %13, %polly.access.mul.polly.subfunc.arg.call.i20.us
  %15 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i20, i64 %14
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %16, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %17 = getelementptr double, double* %15, i64 2
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %18, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %19 = fmul <2 x double> %wide.load, <double 1.500000e+00, double 1.500000e+00>
  %20 = fmul <2 x double> %wide.load30, <double 1.500000e+00, double 1.500000e+00>
  %21 = shl i64 %13, 3
  %22 = add i64 %21, %12
  %23 = getelementptr i8, i8* %polly.subfunc.arg.call.i20, i64 %22
  %24 = bitcast i8* %23 to <2 x double>*
  store <2 x double> %19, <2 x double>* %24, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %25 = getelementptr i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <2 x double>*
  store <2 x double> %20, <2 x double>* %26, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %index.next = add i64 %index, 4
  %27 = icmp eq i64 %index.next, %8
  br i1 %27, label %polly.loop_exit15.us, label %vector.body, !llvm.loop !23

polly.stmt.for.cond4.for.end_crit_edge.us.i.us:   ; preds = %polly.loop_preheader14.us, %polly.stmt.for.cond4.for.end_crit_edge.us.i.us
  %polly.indvar16.us = phi i64 [ %polly.indvar_next17.us, %polly.stmt.for.cond4.for.end_crit_edge.us.i.us ], [ 0, %polly.loop_preheader14.us ]
  %28 = add nuw nsw i64 %polly.indvar16.us, %9
  %polly.access.add.polly.subfunc.arg.call.i20.us = add nsw i64 %28, %polly.access.mul.polly.subfunc.arg.call.i20.us
  %polly.access.polly.subfunc.arg.call.i20.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i20, i64 %polly.access.add.polly.subfunc.arg.call.i20.us
  %polly.access.polly.subfunc.arg.call.i20.reload.us = load double, double* %polly.access.polly.subfunc.arg.call.i20.us, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %p_mul22.us.i.us = fmul double %polly.access.polly.subfunc.arg.call.i20.reload.us, 1.500000e+00
  %29 = shl i64 %28, 3
  %30 = add i64 %29, %12
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i20, i64 %30
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_mul22.us.i.us, double* %scevgep19.us, align 8, !alias.scope !14, !noalias !16, !llvm.access.group !22
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %10
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.us, !llvm.loop !26

polly.loop_exit15.us:                             ; preds = %vector.body, %polly.stmt.for.cond4.for.end_crit_edge.us.i.us
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
  %polly.subfunc.arg.call.i20 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i20, i64 41579200
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.cond4.preheader.i, %middle.block
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.cond4.preheader.i:                 ; preds = %polly.stmt.for.cond4.preheader.i.preheader, %polly.stmt.for.cond4.preheader.i
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.stmt.for.cond4.preheader.i ], [ %polly.indvar.ph, %polly.stmt.for.cond4.preheader.i.preheader ]
  %3 = shl i64 %polly.indvar, 3
  %scevgep1 = getelementptr i8, i8* %scevgep, i64 %3
  %scevgep12 = bitcast i8* %scevgep1 to double*
  %_p_scalar_ = load double, double* %scevgep12, align 8, !alias.scope !14, !noalias !16
  %p_mul22.i = fmul double %_p_scalar_, 1.500000e+00
  store double %p_mul22.i, double* %scevgep12, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond.not, label %polly.par.checkNext, label %polly.stmt.for.cond4.preheader.i, !llvm.loop !28

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %4 = add i64 %smax, 1
  %5 = sub i64 %4, %polly.indvar.LB
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %polly.stmt.for.cond4.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.loop_preheader
  %n.vec = and i64 %5, -4
  %ind.end = add i64 %polly.indvar.LB, %n.vec
  %6 = add i64 %n.vec, -4
  %7 = lshr exact i64 %6, 2
  %8 = add nuw nsw i64 %7, 1
  %xtraiter = and i64 %8, 1
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %8, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %offset.idx = add i64 %polly.indvar.LB, %index
  %10 = shl i64 %offset.idx, 3
  %11 = getelementptr i8, i8* %scevgep, i64 %10
  %12 = bitcast i8* %11 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %12, align 8, !alias.scope !14, !noalias !16
  %13 = getelementptr i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <2 x double>*
  %wide.load3 = load <2 x double>, <2 x double>* %14, align 8, !alias.scope !14, !noalias !16
  %15 = fmul <2 x double> %wide.load, <double 1.500000e+00, double 1.500000e+00>
  %16 = fmul <2 x double> %wide.load3, <double 1.500000e+00, double 1.500000e+00>
  %17 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %15, <2 x double>* %17, align 8, !alias.scope !14, !noalias !16
  %18 = bitcast i8* %13 to <2 x double>*
  store <2 x double> %16, <2 x double>* %18, align 8, !alias.scope !14, !noalias !16
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %polly.indvar.LB, %index.next
  %19 = shl i64 %offset.idx.1, 3
  %20 = getelementptr i8, i8* %scevgep, i64 %19
  %21 = bitcast i8* %20 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %21, align 8, !alias.scope !14, !noalias !16
  %22 = getelementptr i8, i8* %20, i64 16
  %23 = bitcast i8* %22 to <2 x double>*
  %wide.load3.1 = load <2 x double>, <2 x double>* %23, align 8, !alias.scope !14, !noalias !16
  %24 = fmul <2 x double> %wide.load.1, <double 1.500000e+00, double 1.500000e+00>
  %25 = fmul <2 x double> %wide.load3.1, <double 1.500000e+00, double 1.500000e+00>
  %26 = bitcast i8* %20 to <2 x double>*
  store <2 x double> %24, <2 x double>* %26, align 8, !alias.scope !14, !noalias !16
  %27 = bitcast i8* %22 to <2 x double>*
  store <2 x double> %25, <2 x double>* %27, align 8, !alias.scope !14, !noalias !16
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !29

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %polly.indvar.LB, %index.unr
  %28 = shl i64 %offset.idx.epil, 3
  %29 = getelementptr i8, i8* %scevgep, i64 %28
  %30 = bitcast i8* %29 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %30, align 8, !alias.scope !14, !noalias !16
  %31 = getelementptr i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <2 x double>*
  %wide.load3.epil = load <2 x double>, <2 x double>* %32, align 8, !alias.scope !14, !noalias !16
  %33 = fmul <2 x double> %wide.load.epil, <double 1.500000e+00, double 1.500000e+00>
  %34 = fmul <2 x double> %wide.load3.epil, <double 1.500000e+00, double 1.500000e+00>
  %35 = bitcast i8* %29 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !alias.scope !14, !noalias !16
  %36 = bitcast i8* %31 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !alias.scope !14, !noalias !16
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %polly.par.checkNext, label %polly.stmt.for.cond4.preheader.i.preheader

polly.stmt.for.cond4.preheader.i.preheader:       ; preds = %polly.loop_preheader, %middle.block
  %polly.indvar.ph = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %ind.end, %middle.block ]
  br label %polly.stmt.for.cond4.preheader.i
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

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
!9 = distinct !{!9, !7}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !15, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !"polly.alias.scope.domain"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"polly.alias.scope.MemRef2"}
!18 = distinct !{}
!19 = !{!14}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.parallel_accesses", !18}
!22 = distinct !{}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.parallel_accesses", !22}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !24, !27, !25}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !27, !25}
!29 = distinct !{!29, !25}
