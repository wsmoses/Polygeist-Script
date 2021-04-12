; ModuleID = 'mvt.c'
source_filename = "mvt.c"
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
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.9 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.10 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.9, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext58 = alloca { i8*, i8*, i8* }, align 8
  %polly.par.userContext = alloca { i8*, i8*, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
  %call.i37 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i38 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i39 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i40 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %arraydecay = bitcast i8* %call.i37 to double*
  %arraydecay5 = bitcast i8* %call.i38 to double*
  %arraydecay6 = bitcast i8* %call.i39 to double*
  %arraydecay7 = bitcast i8* %call.i40 to double*
  %arraydecay8 = bitcast i8* %call.i to [4000 x double]*
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body25.i
  %add.i = add nuw nsw i32 %i.06.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond10.not.i, label %polly.exiting, label %for.body.i, !llvm.loop !2

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry.split
  %indvars.iv8.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next9.i, %for.cond.loopexit.i ]
  %i.06.i = phi i32 [ 0, %entry.split ], [ %add.i, %for.cond.loopexit.i ]
  %rem.lhs.trunc.i = trunc i32 %i.06.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 4000
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv8.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !4
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %0 = trunc i64 %indvars.iv.next9.i to i16
  %rem22.i = urem i16 %0, 4000
  %conv3.i = uitofp i16 %rem22.i to double
  %div5.i = fdiv double %conv3.i, 4.000000e+03
  %arrayidx7.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv8.i
  store double %div5.i, double* %arrayidx7.i, align 8, !tbaa !4
  %rem9.lhs.trunc.i = add i16 %rem.lhs.trunc.i, 3
  %rem93.i = urem i16 %rem9.lhs.trunc.i, 4000
  %conv10.i = uitofp i16 %rem93.i to double
  %div12.i = fdiv double %conv10.i, 4.000000e+03
  %arrayidx14.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv8.i
  store double %div12.i, double* %arrayidx14.i, align 8, !tbaa !4
  %rem16.lhs.trunc.i = add i16 %rem.lhs.trunc.i, 4
  %rem164.i = urem i16 %rem16.lhs.trunc.i, 4000
  %conv17.i = uitofp i16 %rem164.i to double
  %div19.i = fdiv double %conv17.i, 4.000000e+03
  %arrayidx21.i = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv8.i
  store double %div19.i, double* %arrayidx21.i, align 8, !tbaa !4
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body25.i ]
  %1 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv8.i
  %2 = trunc i64 %1 to i32
  %rem26.i = urem i32 %2, 4000
  %conv27.i = sitofp i32 %rem26.i to double
  %div29.i = fdiv double %conv27.i, 4.000000e+03
  %arrayidx33.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div29.i, double* %arrayidx33.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4000
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body25.i, !llvm.loop !8

land.lhs.true:                                    ; preds = %polly.exiting
  %3 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %3, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %4) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i50 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i54, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i51 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i51, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i52
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i53 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.i50
  %9 = load double, double* %arrayidx.i53, align 8, !tbaa !4
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %9) #9
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i50, 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, 4000
  br i1 %exitcond.not.i55, label %for.end.i, label %for.body.i52, !llvm.loop !11

for.end.i:                                        ; preds = %if.end.i
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %if.end14.i ]
  %i.15.i = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx16.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv6.i
  %14 = load double, double* %arrayidx16.i, align 8, !tbaa !4
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %14) #9
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %inc19.i = add nuw nsw i32 %i.15.i, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i, 4000
  br i1 %exitcond8.not.i, label %print_array.exit, label %for.body9.i, !llvm.loop !12

print_array.exit:                                 ; preds = %if.end14.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %16) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %polly.exiting
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i37) #8
  tail call void @free(i8* nonnull %call.i38) #8
  tail call void @free(i8* %call.i39) #8
  tail call void @free(i8* %call.i40) #8
  ret i32 0

polly.exiting:                                    ; preds = %for.cond.loopexit.i
  tail call void (...) @polybench_timer_start() #8
  %polly.subfn.storeaddr.call.i37 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i37, i8** %polly.subfn.storeaddr.call.i37, align 8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext, i64 0, i32 1
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  %polly.subfn.storeaddr.call.i39 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext, i64 0, i32 2
  store i8* %call.i39, i8** %polly.subfn.storeaddr.call.i39, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 125, i64 1, { i8*, i8*, i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i38 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext58, i64 0, i32 0
  store i8* %call.i38, i8** %polly.subfn.storeaddr.call.i38, align 8
  %polly.subfn.storeaddr.call.i59 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext58, i64 0, i32 1
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i59, align 8
  %polly.subfn.storeaddr.call.i40 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext58, i64 0, i32 2
  store i8* %call.i40, i8** %polly.subfn.storeaddr.call.i40, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.10, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_11 to void (i32*, i32*, ...)*), i64 0, i64 125, i64 1, { i8*, i8*, i8* }* nonnull %polly.par.userContext58) #8
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
  %0 = bitcast i8* %polly.kmpc.shared to double**
  %polly.subfunc.arg.call.i3725 = load double*, double** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to i8**
  %polly.subfunc.arg.call.i39 = load i8*, i8** %4, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %5, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond28.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond28.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_exit9:                                 ; preds = %polly.loop_preheader14
  %polly.indvar_next5 = add nuw nsw i64 %polly.indvar4, 1
  %exitcond27.not = icmp eq i64 %polly.indvar_next5, 125
  br i1 %exitcond27.not, label %polly.loop_exit3, label %polly.loop_preheader8

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %7 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_preheader8

polly.loop_preheader8:                            ; preds = %polly.loop_preheader2, %polly.loop_exit9
  %polly.indvar4 = phi i64 [ 0, %polly.loop_preheader2 ], [ %polly.indvar_next5, %polly.loop_exit9 ]
  %8 = shl i64 %polly.indvar4, 8
  %9 = shl i64 %polly.indvar4, 8
  %scevgep20 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %9
  %scevgep2021 = bitcast i8* %scevgep20 to double*
  %_p_scalar_22 = load double, double* %scevgep2021, align 8, !alias.scope !13, !noalias !15
  %10 = shl i64 %polly.indvar4, 8
  %11 = or i64 %10, 8
  %scevgep20.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %11
  %scevgep2021.1 = bitcast i8* %scevgep20.1 to double*
  %_p_scalar_22.1 = load double, double* %scevgep2021.1, align 8, !alias.scope !13, !noalias !15
  %12 = shl i64 %polly.indvar4, 8
  %13 = or i64 %12, 16
  %scevgep20.2 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %13
  %scevgep2021.2 = bitcast i8* %scevgep20.2 to double*
  %_p_scalar_22.2 = load double, double* %scevgep2021.2, align 8, !alias.scope !13, !noalias !15
  %14 = shl i64 %polly.indvar4, 8
  %15 = or i64 %14, 24
  %scevgep20.3 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %15
  %scevgep2021.3 = bitcast i8* %scevgep20.3 to double*
  %_p_scalar_22.3 = load double, double* %scevgep2021.3, align 8, !alias.scope !13, !noalias !15
  %16 = shl i64 %polly.indvar4, 8
  %17 = or i64 %16, 32
  %scevgep20.4 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %17
  %scevgep2021.4 = bitcast i8* %scevgep20.4 to double*
  %_p_scalar_22.4 = load double, double* %scevgep2021.4, align 8, !alias.scope !13, !noalias !15
  %18 = shl i64 %polly.indvar4, 8
  %19 = or i64 %18, 40
  %scevgep20.5 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %19
  %scevgep2021.5 = bitcast i8* %scevgep20.5 to double*
  %_p_scalar_22.5 = load double, double* %scevgep2021.5, align 8, !alias.scope !13, !noalias !15
  %20 = shl i64 %polly.indvar4, 8
  %21 = or i64 %20, 48
  %scevgep20.6 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %21
  %scevgep2021.6 = bitcast i8* %scevgep20.6 to double*
  %_p_scalar_22.6 = load double, double* %scevgep2021.6, align 8, !alias.scope !13, !noalias !15
  %22 = shl i64 %polly.indvar4, 8
  %23 = or i64 %22, 56
  %scevgep20.7 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %23
  %scevgep2021.7 = bitcast i8* %scevgep20.7 to double*
  %_p_scalar_22.7 = load double, double* %scevgep2021.7, align 8, !alias.scope !13, !noalias !15
  %24 = shl i64 %polly.indvar4, 8
  %25 = or i64 %24, 64
  %scevgep20.8 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %25
  %scevgep2021.8 = bitcast i8* %scevgep20.8 to double*
  %_p_scalar_22.8 = load double, double* %scevgep2021.8, align 8, !alias.scope !13, !noalias !15
  %26 = shl i64 %polly.indvar4, 8
  %27 = or i64 %26, 72
  %scevgep20.9 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %27
  %scevgep2021.9 = bitcast i8* %scevgep20.9 to double*
  %_p_scalar_22.9 = load double, double* %scevgep2021.9, align 8, !alias.scope !13, !noalias !15
  %28 = shl i64 %polly.indvar4, 8
  %29 = or i64 %28, 80
  %scevgep20.10 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %29
  %scevgep2021.10 = bitcast i8* %scevgep20.10 to double*
  %_p_scalar_22.10 = load double, double* %scevgep2021.10, align 8, !alias.scope !13, !noalias !15
  %30 = shl i64 %polly.indvar4, 8
  %31 = or i64 %30, 88
  %scevgep20.11 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %31
  %scevgep2021.11 = bitcast i8* %scevgep20.11 to double*
  %_p_scalar_22.11 = load double, double* %scevgep2021.11, align 8, !alias.scope !13, !noalias !15
  %32 = shl i64 %polly.indvar4, 8
  %33 = or i64 %32, 96
  %scevgep20.12 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %33
  %scevgep2021.12 = bitcast i8* %scevgep20.12 to double*
  %_p_scalar_22.12 = load double, double* %scevgep2021.12, align 8, !alias.scope !13, !noalias !15
  %34 = shl i64 %polly.indvar4, 8
  %35 = or i64 %34, 104
  %scevgep20.13 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %35
  %scevgep2021.13 = bitcast i8* %scevgep20.13 to double*
  %_p_scalar_22.13 = load double, double* %scevgep2021.13, align 8, !alias.scope !13, !noalias !15
  %36 = shl i64 %polly.indvar4, 8
  %37 = or i64 %36, 112
  %scevgep20.14 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %37
  %scevgep2021.14 = bitcast i8* %scevgep20.14 to double*
  %_p_scalar_22.14 = load double, double* %scevgep2021.14, align 8, !alias.scope !13, !noalias !15
  %38 = shl i64 %polly.indvar4, 8
  %39 = or i64 %38, 120
  %scevgep20.15 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %39
  %scevgep2021.15 = bitcast i8* %scevgep20.15 to double*
  %_p_scalar_22.15 = load double, double* %scevgep2021.15, align 8, !alias.scope !13, !noalias !15
  %40 = shl i64 %polly.indvar4, 8
  %41 = or i64 %40, 128
  %scevgep20.16 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %41
  %scevgep2021.16 = bitcast i8* %scevgep20.16 to double*
  %_p_scalar_22.16 = load double, double* %scevgep2021.16, align 8, !alias.scope !13, !noalias !15
  %42 = shl i64 %polly.indvar4, 8
  %43 = or i64 %42, 136
  %scevgep20.17 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %43
  %scevgep2021.17 = bitcast i8* %scevgep20.17 to double*
  %_p_scalar_22.17 = load double, double* %scevgep2021.17, align 8, !alias.scope !13, !noalias !15
  %44 = shl i64 %polly.indvar4, 8
  %45 = or i64 %44, 144
  %scevgep20.18 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %45
  %scevgep2021.18 = bitcast i8* %scevgep20.18 to double*
  %_p_scalar_22.18 = load double, double* %scevgep2021.18, align 8, !alias.scope !13, !noalias !15
  %46 = shl i64 %polly.indvar4, 8
  %47 = or i64 %46, 152
  %scevgep20.19 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %47
  %scevgep2021.19 = bitcast i8* %scevgep20.19 to double*
  %_p_scalar_22.19 = load double, double* %scevgep2021.19, align 8, !alias.scope !13, !noalias !15
  %48 = shl i64 %polly.indvar4, 8
  %49 = or i64 %48, 160
  %scevgep20.20 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %49
  %scevgep2021.20 = bitcast i8* %scevgep20.20 to double*
  %_p_scalar_22.20 = load double, double* %scevgep2021.20, align 8, !alias.scope !13, !noalias !15
  %50 = shl i64 %polly.indvar4, 8
  %51 = or i64 %50, 168
  %scevgep20.21 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %51
  %scevgep2021.21 = bitcast i8* %scevgep20.21 to double*
  %_p_scalar_22.21 = load double, double* %scevgep2021.21, align 8, !alias.scope !13, !noalias !15
  %52 = shl i64 %polly.indvar4, 8
  %53 = or i64 %52, 176
  %scevgep20.22 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %53
  %scevgep2021.22 = bitcast i8* %scevgep20.22 to double*
  %_p_scalar_22.22 = load double, double* %scevgep2021.22, align 8, !alias.scope !13, !noalias !15
  %54 = shl i64 %polly.indvar4, 8
  %55 = or i64 %54, 184
  %scevgep20.23 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %55
  %scevgep2021.23 = bitcast i8* %scevgep20.23 to double*
  %_p_scalar_22.23 = load double, double* %scevgep2021.23, align 8, !alias.scope !13, !noalias !15
  %56 = shl i64 %polly.indvar4, 8
  %57 = or i64 %56, 192
  %scevgep20.24 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %57
  %scevgep2021.24 = bitcast i8* %scevgep20.24 to double*
  %_p_scalar_22.24 = load double, double* %scevgep2021.24, align 8, !alias.scope !13, !noalias !15
  %58 = shl i64 %polly.indvar4, 8
  %59 = or i64 %58, 200
  %scevgep20.25 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %59
  %scevgep2021.25 = bitcast i8* %scevgep20.25 to double*
  %_p_scalar_22.25 = load double, double* %scevgep2021.25, align 8, !alias.scope !13, !noalias !15
  %60 = shl i64 %polly.indvar4, 8
  %61 = or i64 %60, 208
  %scevgep20.26 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %61
  %scevgep2021.26 = bitcast i8* %scevgep20.26 to double*
  %_p_scalar_22.26 = load double, double* %scevgep2021.26, align 8, !alias.scope !13, !noalias !15
  %62 = shl i64 %polly.indvar4, 8
  %63 = or i64 %62, 216
  %scevgep20.27 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %63
  %scevgep2021.27 = bitcast i8* %scevgep20.27 to double*
  %_p_scalar_22.27 = load double, double* %scevgep2021.27, align 8, !alias.scope !13, !noalias !15
  %64 = shl i64 %polly.indvar4, 8
  %65 = or i64 %64, 224
  %scevgep20.28 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %65
  %scevgep2021.28 = bitcast i8* %scevgep20.28 to double*
  %_p_scalar_22.28 = load double, double* %scevgep2021.28, align 8, !alias.scope !13, !noalias !15
  %66 = shl i64 %polly.indvar4, 8
  %67 = or i64 %66, 232
  %scevgep20.29 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %67
  %scevgep2021.29 = bitcast i8* %scevgep20.29 to double*
  %_p_scalar_22.29 = load double, double* %scevgep2021.29, align 8, !alias.scope !13, !noalias !15
  %68 = shl i64 %polly.indvar4, 8
  %69 = or i64 %68, 240
  %scevgep20.30 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %69
  %scevgep2021.30 = bitcast i8* %scevgep20.30 to double*
  %_p_scalar_22.30 = load double, double* %scevgep2021.30, align 8, !alias.scope !13, !noalias !15
  %70 = or i64 %8, 248
  %scevgep20.31 = getelementptr i8, i8* %polly.subfunc.arg.call.i39, i64 %70
  %scevgep2021.31 = bitcast i8* %scevgep20.31 to double*
  %_p_scalar_22.31 = load double, double* %scevgep2021.31, align 8, !alias.scope !13, !noalias !15
  br label %polly.loop_preheader14

polly.loop_preheader14:                           ; preds = %polly.loop_preheader8, %polly.loop_preheader14
  %polly.indvar10 = phi i64 [ 0, %polly.loop_preheader8 ], [ %polly.indvar_next11, %polly.loop_preheader14 ]
  %71 = add nsw i64 %polly.indvar10, %7
  %polly.access.polly.subfunc.arg.call.i37 = getelementptr double, double* %polly.subfunc.arg.call.i3725, i64 %71
  %72 = mul i64 %71, 32000
  %polly.access.polly.subfunc.arg.call.i37.promoted = load double, double* %polly.access.polly.subfunc.arg.call.i37, align 8, !alias.scope !20, !noalias !21
  %73 = add i64 %9, %72
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %73
  %scevgep19 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep19, align 8, !alias.scope !17, !noalias !22
  %p_mul.i = fmul double %_p_scalar_, %_p_scalar_22
  %p_add.i44 = fadd double %polly.access.polly.subfunc.arg.call.i37.promoted, %p_mul.i
  %74 = add i64 %11, %72
  %scevgep.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %74
  %scevgep19.1 = bitcast i8* %scevgep.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep19.1, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.1 = fmul double %_p_scalar_.1, %_p_scalar_22.1
  %p_add.i44.1 = fadd double %p_add.i44, %p_mul.i.1
  %75 = add i64 %13, %72
  %scevgep.2 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %75
  %scevgep19.2 = bitcast i8* %scevgep.2 to double*
  %_p_scalar_.2 = load double, double* %scevgep19.2, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.2 = fmul double %_p_scalar_.2, %_p_scalar_22.2
  %p_add.i44.2 = fadd double %p_add.i44.1, %p_mul.i.2
  %76 = add i64 %15, %72
  %scevgep.3 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %76
  %scevgep19.3 = bitcast i8* %scevgep.3 to double*
  %_p_scalar_.3 = load double, double* %scevgep19.3, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.3 = fmul double %_p_scalar_.3, %_p_scalar_22.3
  %p_add.i44.3 = fadd double %p_add.i44.2, %p_mul.i.3
  %77 = add i64 %17, %72
  %scevgep.4 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %77
  %scevgep19.4 = bitcast i8* %scevgep.4 to double*
  %_p_scalar_.4 = load double, double* %scevgep19.4, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.4 = fmul double %_p_scalar_.4, %_p_scalar_22.4
  %p_add.i44.4 = fadd double %p_add.i44.3, %p_mul.i.4
  %78 = add i64 %19, %72
  %scevgep.5 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %78
  %scevgep19.5 = bitcast i8* %scevgep.5 to double*
  %_p_scalar_.5 = load double, double* %scevgep19.5, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.5 = fmul double %_p_scalar_.5, %_p_scalar_22.5
  %p_add.i44.5 = fadd double %p_add.i44.4, %p_mul.i.5
  %79 = add i64 %21, %72
  %scevgep.6 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %79
  %scevgep19.6 = bitcast i8* %scevgep.6 to double*
  %_p_scalar_.6 = load double, double* %scevgep19.6, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.6 = fmul double %_p_scalar_.6, %_p_scalar_22.6
  %p_add.i44.6 = fadd double %p_add.i44.5, %p_mul.i.6
  %80 = add i64 %23, %72
  %scevgep.7 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %80
  %scevgep19.7 = bitcast i8* %scevgep.7 to double*
  %_p_scalar_.7 = load double, double* %scevgep19.7, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.7 = fmul double %_p_scalar_.7, %_p_scalar_22.7
  %p_add.i44.7 = fadd double %p_add.i44.6, %p_mul.i.7
  %81 = add i64 %25, %72
  %scevgep.8 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %81
  %scevgep19.8 = bitcast i8* %scevgep.8 to double*
  %_p_scalar_.8 = load double, double* %scevgep19.8, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.8 = fmul double %_p_scalar_.8, %_p_scalar_22.8
  %p_add.i44.8 = fadd double %p_add.i44.7, %p_mul.i.8
  %82 = add i64 %27, %72
  %scevgep.9 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %82
  %scevgep19.9 = bitcast i8* %scevgep.9 to double*
  %_p_scalar_.9 = load double, double* %scevgep19.9, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.9 = fmul double %_p_scalar_.9, %_p_scalar_22.9
  %p_add.i44.9 = fadd double %p_add.i44.8, %p_mul.i.9
  %83 = add i64 %29, %72
  %scevgep.10 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %83
  %scevgep19.10 = bitcast i8* %scevgep.10 to double*
  %_p_scalar_.10 = load double, double* %scevgep19.10, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.10 = fmul double %_p_scalar_.10, %_p_scalar_22.10
  %p_add.i44.10 = fadd double %p_add.i44.9, %p_mul.i.10
  %84 = add i64 %31, %72
  %scevgep.11 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %84
  %scevgep19.11 = bitcast i8* %scevgep.11 to double*
  %_p_scalar_.11 = load double, double* %scevgep19.11, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.11 = fmul double %_p_scalar_.11, %_p_scalar_22.11
  %p_add.i44.11 = fadd double %p_add.i44.10, %p_mul.i.11
  %85 = add i64 %33, %72
  %scevgep.12 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %85
  %scevgep19.12 = bitcast i8* %scevgep.12 to double*
  %_p_scalar_.12 = load double, double* %scevgep19.12, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.12 = fmul double %_p_scalar_.12, %_p_scalar_22.12
  %p_add.i44.12 = fadd double %p_add.i44.11, %p_mul.i.12
  %86 = add i64 %35, %72
  %scevgep.13 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %86
  %scevgep19.13 = bitcast i8* %scevgep.13 to double*
  %_p_scalar_.13 = load double, double* %scevgep19.13, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.13 = fmul double %_p_scalar_.13, %_p_scalar_22.13
  %p_add.i44.13 = fadd double %p_add.i44.12, %p_mul.i.13
  %87 = add i64 %37, %72
  %scevgep.14 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %87
  %scevgep19.14 = bitcast i8* %scevgep.14 to double*
  %_p_scalar_.14 = load double, double* %scevgep19.14, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.14 = fmul double %_p_scalar_.14, %_p_scalar_22.14
  %p_add.i44.14 = fadd double %p_add.i44.13, %p_mul.i.14
  %88 = add i64 %39, %72
  %scevgep.15 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %88
  %scevgep19.15 = bitcast i8* %scevgep.15 to double*
  %_p_scalar_.15 = load double, double* %scevgep19.15, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.15 = fmul double %_p_scalar_.15, %_p_scalar_22.15
  %p_add.i44.15 = fadd double %p_add.i44.14, %p_mul.i.15
  %89 = add i64 %41, %72
  %scevgep.16 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %89
  %scevgep19.16 = bitcast i8* %scevgep.16 to double*
  %_p_scalar_.16 = load double, double* %scevgep19.16, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.16 = fmul double %_p_scalar_.16, %_p_scalar_22.16
  %p_add.i44.16 = fadd double %p_add.i44.15, %p_mul.i.16
  %90 = add i64 %43, %72
  %scevgep.17 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %90
  %scevgep19.17 = bitcast i8* %scevgep.17 to double*
  %_p_scalar_.17 = load double, double* %scevgep19.17, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.17 = fmul double %_p_scalar_.17, %_p_scalar_22.17
  %p_add.i44.17 = fadd double %p_add.i44.16, %p_mul.i.17
  %91 = add i64 %45, %72
  %scevgep.18 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %91
  %scevgep19.18 = bitcast i8* %scevgep.18 to double*
  %_p_scalar_.18 = load double, double* %scevgep19.18, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.18 = fmul double %_p_scalar_.18, %_p_scalar_22.18
  %p_add.i44.18 = fadd double %p_add.i44.17, %p_mul.i.18
  %92 = add i64 %47, %72
  %scevgep.19 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %92
  %scevgep19.19 = bitcast i8* %scevgep.19 to double*
  %_p_scalar_.19 = load double, double* %scevgep19.19, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.19 = fmul double %_p_scalar_.19, %_p_scalar_22.19
  %p_add.i44.19 = fadd double %p_add.i44.18, %p_mul.i.19
  %93 = add i64 %49, %72
  %scevgep.20 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %93
  %scevgep19.20 = bitcast i8* %scevgep.20 to double*
  %_p_scalar_.20 = load double, double* %scevgep19.20, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.20 = fmul double %_p_scalar_.20, %_p_scalar_22.20
  %p_add.i44.20 = fadd double %p_add.i44.19, %p_mul.i.20
  %94 = add i64 %51, %72
  %scevgep.21 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %94
  %scevgep19.21 = bitcast i8* %scevgep.21 to double*
  %_p_scalar_.21 = load double, double* %scevgep19.21, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.21 = fmul double %_p_scalar_.21, %_p_scalar_22.21
  %p_add.i44.21 = fadd double %p_add.i44.20, %p_mul.i.21
  %95 = add i64 %53, %72
  %scevgep.22 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %95
  %scevgep19.22 = bitcast i8* %scevgep.22 to double*
  %_p_scalar_.22 = load double, double* %scevgep19.22, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.22 = fmul double %_p_scalar_.22, %_p_scalar_22.22
  %p_add.i44.22 = fadd double %p_add.i44.21, %p_mul.i.22
  %96 = add i64 %55, %72
  %scevgep.23 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %96
  %scevgep19.23 = bitcast i8* %scevgep.23 to double*
  %_p_scalar_.23 = load double, double* %scevgep19.23, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.23 = fmul double %_p_scalar_.23, %_p_scalar_22.23
  %p_add.i44.23 = fadd double %p_add.i44.22, %p_mul.i.23
  %97 = add i64 %57, %72
  %scevgep.24 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %97
  %scevgep19.24 = bitcast i8* %scevgep.24 to double*
  %_p_scalar_.24 = load double, double* %scevgep19.24, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.24 = fmul double %_p_scalar_.24, %_p_scalar_22.24
  %p_add.i44.24 = fadd double %p_add.i44.23, %p_mul.i.24
  %98 = add i64 %59, %72
  %scevgep.25 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %98
  %scevgep19.25 = bitcast i8* %scevgep.25 to double*
  %_p_scalar_.25 = load double, double* %scevgep19.25, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.25 = fmul double %_p_scalar_.25, %_p_scalar_22.25
  %p_add.i44.25 = fadd double %p_add.i44.24, %p_mul.i.25
  %99 = add i64 %61, %72
  %scevgep.26 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %99
  %scevgep19.26 = bitcast i8* %scevgep.26 to double*
  %_p_scalar_.26 = load double, double* %scevgep19.26, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.26 = fmul double %_p_scalar_.26, %_p_scalar_22.26
  %p_add.i44.26 = fadd double %p_add.i44.25, %p_mul.i.26
  %100 = add i64 %63, %72
  %scevgep.27 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %100
  %scevgep19.27 = bitcast i8* %scevgep.27 to double*
  %_p_scalar_.27 = load double, double* %scevgep19.27, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.27 = fmul double %_p_scalar_.27, %_p_scalar_22.27
  %p_add.i44.27 = fadd double %p_add.i44.26, %p_mul.i.27
  %101 = add i64 %65, %72
  %scevgep.28 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %101
  %scevgep19.28 = bitcast i8* %scevgep.28 to double*
  %_p_scalar_.28 = load double, double* %scevgep19.28, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.28 = fmul double %_p_scalar_.28, %_p_scalar_22.28
  %p_add.i44.28 = fadd double %p_add.i44.27, %p_mul.i.28
  %102 = add i64 %67, %72
  %scevgep.29 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %102
  %scevgep19.29 = bitcast i8* %scevgep.29 to double*
  %_p_scalar_.29 = load double, double* %scevgep19.29, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.29 = fmul double %_p_scalar_.29, %_p_scalar_22.29
  %p_add.i44.29 = fadd double %p_add.i44.28, %p_mul.i.29
  %103 = add i64 %69, %72
  %scevgep.30 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %103
  %scevgep19.30 = bitcast i8* %scevgep.30 to double*
  %_p_scalar_.30 = load double, double* %scevgep19.30, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.30 = fmul double %_p_scalar_.30, %_p_scalar_22.30
  %p_add.i44.30 = fadd double %p_add.i44.29, %p_mul.i.30
  %104 = add i64 %70, %72
  %scevgep.31 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %104
  %scevgep19.31 = bitcast i8* %scevgep.31 to double*
  %_p_scalar_.31 = load double, double* %scevgep19.31, align 8, !alias.scope !17, !noalias !22
  %p_mul.i.31 = fmul double %_p_scalar_.31, %_p_scalar_22.31
  %p_add.i44.31 = fadd double %p_add.i44.30, %p_mul.i.31
  store double %p_add.i44.31, double* %polly.access.polly.subfunc.arg.call.i37, align 8, !alias.scope !20, !noalias !21
  %polly.indvar_next11 = add nuw nsw i64 %polly.indvar10, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next11, 32
  br i1 %exitcond.not, label %polly.loop_exit9, label %polly.loop_preheader14
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_11(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to double**
  %polly.subfunc.arg.call.i3825 = load double*, double** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to i8**
  %polly.subfunc.arg.call.i40 = load i8*, i8** %4, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %5 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %5, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %middle.block
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond28.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond28.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %7 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_preheader8

polly.loop_preheader8:                            ; preds = %polly.loop_preheader2, %middle.block
  %polly.indvar4 = phi i64 [ 0, %polly.loop_preheader2 ], [ %polly.indvar_next5, %middle.block ]
  %8 = shl nsw i64 %polly.indvar4, 5
  %9 = mul nsw i64 %polly.indvar4, 1024000
  %10 = or i64 %8, 1
  %11 = mul nuw nsw i64 %10, 32000
  %12 = or i64 %8, 2
  %13 = mul nuw nsw i64 %12, 32000
  %14 = or i64 %8, 3
  %15 = mul nuw nsw i64 %14, 32000
  %16 = or i64 %8, 4
  %17 = mul nuw nsw i64 %16, 32000
  %18 = or i64 %8, 5
  %19 = mul nuw nsw i64 %18, 32000
  %20 = or i64 %8, 6
  %21 = mul nuw nsw i64 %20, 32000
  %22 = or i64 %8, 7
  %23 = mul nuw nsw i64 %22, 32000
  %24 = or i64 %8, 8
  %25 = mul nuw nsw i64 %24, 32000
  %26 = or i64 %8, 9
  %27 = mul nuw nsw i64 %26, 32000
  %28 = or i64 %8, 10
  %29 = mul nuw nsw i64 %28, 32000
  %30 = or i64 %8, 11
  %31 = mul nuw nsw i64 %30, 32000
  %32 = or i64 %8, 12
  %33 = mul nuw nsw i64 %32, 32000
  %34 = or i64 %8, 13
  %35 = mul nuw nsw i64 %34, 32000
  %36 = or i64 %8, 14
  %37 = mul nuw nsw i64 %36, 32000
  %38 = or i64 %8, 15
  %39 = mul nuw nsw i64 %38, 32000
  %40 = or i64 %8, 16
  %41 = mul nuw nsw i64 %40, 32000
  %42 = or i64 %8, 17
  %43 = mul nuw nsw i64 %42, 32000
  %44 = or i64 %8, 18
  %45 = mul nuw nsw i64 %44, 32000
  %46 = or i64 %8, 19
  %47 = mul nuw nsw i64 %46, 32000
  %48 = or i64 %8, 20
  %49 = mul nuw nsw i64 %48, 32000
  %50 = or i64 %8, 21
  %51 = mul nuw nsw i64 %50, 32000
  %52 = or i64 %8, 22
  %53 = mul nuw nsw i64 %52, 32000
  %54 = or i64 %8, 23
  %55 = mul nuw nsw i64 %54, 32000
  %56 = or i64 %8, 24
  %57 = mul nuw nsw i64 %56, 32000
  %58 = or i64 %8, 25
  %59 = mul nuw nsw i64 %58, 32000
  %60 = or i64 %8, 26
  %61 = mul nuw nsw i64 %60, 32000
  %62 = or i64 %8, 27
  %63 = mul nuw nsw i64 %62, 32000
  %64 = or i64 %8, 28
  %65 = mul nuw nsw i64 %64, 32000
  %66 = or i64 %8, 29
  %67 = mul nuw nsw i64 %66, 32000
  %68 = or i64 %8, 30
  %69 = mul nuw nsw i64 %68, 32000
  %70 = or i64 %8, 31
  %71 = mul nuw nsw i64 %70, 32000
  %72 = shl i64 %70, 3
  %scevgep20.31 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %72
  %scevgep2021.31 = bitcast i8* %scevgep20.31 to double*
  %_p_scalar_22.31 = load double, double* %scevgep2021.31, align 8, !alias.scope !19, !noalias !23
  %73 = shl i64 %68, 3
  %scevgep20.30 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %73
  %scevgep2021.30 = bitcast i8* %scevgep20.30 to double*
  %_p_scalar_22.30 = load double, double* %scevgep2021.30, align 8, !alias.scope !19, !noalias !23
  %74 = shl i64 %66, 3
  %scevgep20.29 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %74
  %scevgep2021.29 = bitcast i8* %scevgep20.29 to double*
  %_p_scalar_22.29 = load double, double* %scevgep2021.29, align 8, !alias.scope !19, !noalias !23
  %75 = shl i64 %64, 3
  %scevgep20.28 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %75
  %scevgep2021.28 = bitcast i8* %scevgep20.28 to double*
  %_p_scalar_22.28 = load double, double* %scevgep2021.28, align 8, !alias.scope !19, !noalias !23
  %76 = shl i64 %62, 3
  %scevgep20.27 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %76
  %scevgep2021.27 = bitcast i8* %scevgep20.27 to double*
  %_p_scalar_22.27 = load double, double* %scevgep2021.27, align 8, !alias.scope !19, !noalias !23
  %77 = shl i64 %60, 3
  %scevgep20.26 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %77
  %scevgep2021.26 = bitcast i8* %scevgep20.26 to double*
  %_p_scalar_22.26 = load double, double* %scevgep2021.26, align 8, !alias.scope !19, !noalias !23
  %78 = shl i64 %58, 3
  %scevgep20.25 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %78
  %scevgep2021.25 = bitcast i8* %scevgep20.25 to double*
  %_p_scalar_22.25 = load double, double* %scevgep2021.25, align 8, !alias.scope !19, !noalias !23
  %79 = shl i64 %56, 3
  %scevgep20.24 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %79
  %scevgep2021.24 = bitcast i8* %scevgep20.24 to double*
  %_p_scalar_22.24 = load double, double* %scevgep2021.24, align 8, !alias.scope !19, !noalias !23
  %80 = shl i64 %54, 3
  %scevgep20.23 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %80
  %scevgep2021.23 = bitcast i8* %scevgep20.23 to double*
  %_p_scalar_22.23 = load double, double* %scevgep2021.23, align 8, !alias.scope !19, !noalias !23
  %81 = shl i64 %52, 3
  %scevgep20.22 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %81
  %scevgep2021.22 = bitcast i8* %scevgep20.22 to double*
  %_p_scalar_22.22 = load double, double* %scevgep2021.22, align 8, !alias.scope !19, !noalias !23
  %82 = shl i64 %50, 3
  %scevgep20.21 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %82
  %scevgep2021.21 = bitcast i8* %scevgep20.21 to double*
  %_p_scalar_22.21 = load double, double* %scevgep2021.21, align 8, !alias.scope !19, !noalias !23
  %83 = shl i64 %48, 3
  %scevgep20.20 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %83
  %scevgep2021.20 = bitcast i8* %scevgep20.20 to double*
  %_p_scalar_22.20 = load double, double* %scevgep2021.20, align 8, !alias.scope !19, !noalias !23
  %84 = shl i64 %46, 3
  %scevgep20.19 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %84
  %scevgep2021.19 = bitcast i8* %scevgep20.19 to double*
  %_p_scalar_22.19 = load double, double* %scevgep2021.19, align 8, !alias.scope !19, !noalias !23
  %85 = shl i64 %44, 3
  %scevgep20.18 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %85
  %scevgep2021.18 = bitcast i8* %scevgep20.18 to double*
  %_p_scalar_22.18 = load double, double* %scevgep2021.18, align 8, !alias.scope !19, !noalias !23
  %86 = shl i64 %42, 3
  %scevgep20.17 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %86
  %scevgep2021.17 = bitcast i8* %scevgep20.17 to double*
  %_p_scalar_22.17 = load double, double* %scevgep2021.17, align 8, !alias.scope !19, !noalias !23
  %87 = shl i64 %40, 3
  %scevgep20.16 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %87
  %scevgep2021.16 = bitcast i8* %scevgep20.16 to double*
  %_p_scalar_22.16 = load double, double* %scevgep2021.16, align 8, !alias.scope !19, !noalias !23
  %88 = shl i64 %38, 3
  %scevgep20.15 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %88
  %scevgep2021.15 = bitcast i8* %scevgep20.15 to double*
  %_p_scalar_22.15 = load double, double* %scevgep2021.15, align 8, !alias.scope !19, !noalias !23
  %89 = shl i64 %36, 3
  %scevgep20.14 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %89
  %scevgep2021.14 = bitcast i8* %scevgep20.14 to double*
  %_p_scalar_22.14 = load double, double* %scevgep2021.14, align 8, !alias.scope !19, !noalias !23
  %90 = shl i64 %34, 3
  %scevgep20.13 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %90
  %scevgep2021.13 = bitcast i8* %scevgep20.13 to double*
  %_p_scalar_22.13 = load double, double* %scevgep2021.13, align 8, !alias.scope !19, !noalias !23
  %91 = shl i64 %32, 3
  %scevgep20.12 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %91
  %scevgep2021.12 = bitcast i8* %scevgep20.12 to double*
  %_p_scalar_22.12 = load double, double* %scevgep2021.12, align 8, !alias.scope !19, !noalias !23
  %92 = shl i64 %30, 3
  %scevgep20.11 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %92
  %scevgep2021.11 = bitcast i8* %scevgep20.11 to double*
  %_p_scalar_22.11 = load double, double* %scevgep2021.11, align 8, !alias.scope !19, !noalias !23
  %93 = shl i64 %28, 3
  %scevgep20.10 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %93
  %scevgep2021.10 = bitcast i8* %scevgep20.10 to double*
  %_p_scalar_22.10 = load double, double* %scevgep2021.10, align 8, !alias.scope !19, !noalias !23
  %94 = shl i64 %26, 3
  %scevgep20.9 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %94
  %scevgep2021.9 = bitcast i8* %scevgep20.9 to double*
  %_p_scalar_22.9 = load double, double* %scevgep2021.9, align 8, !alias.scope !19, !noalias !23
  %95 = shl i64 %24, 3
  %scevgep20.8 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %95
  %scevgep2021.8 = bitcast i8* %scevgep20.8 to double*
  %_p_scalar_22.8 = load double, double* %scevgep2021.8, align 8, !alias.scope !19, !noalias !23
  %96 = shl i64 %22, 3
  %scevgep20.7 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %96
  %scevgep2021.7 = bitcast i8* %scevgep20.7 to double*
  %_p_scalar_22.7 = load double, double* %scevgep2021.7, align 8, !alias.scope !19, !noalias !23
  %97 = shl i64 %20, 3
  %scevgep20.6 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %97
  %scevgep2021.6 = bitcast i8* %scevgep20.6 to double*
  %_p_scalar_22.6 = load double, double* %scevgep2021.6, align 8, !alias.scope !19, !noalias !23
  %98 = shl i64 %18, 3
  %scevgep20.5 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %98
  %scevgep2021.5 = bitcast i8* %scevgep20.5 to double*
  %_p_scalar_22.5 = load double, double* %scevgep2021.5, align 8, !alias.scope !19, !noalias !23
  %99 = shl i64 %16, 3
  %scevgep20.4 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %99
  %scevgep2021.4 = bitcast i8* %scevgep20.4 to double*
  %_p_scalar_22.4 = load double, double* %scevgep2021.4, align 8, !alias.scope !19, !noalias !23
  %100 = shl i64 %14, 3
  %scevgep20.3 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %100
  %scevgep2021.3 = bitcast i8* %scevgep20.3 to double*
  %_p_scalar_22.3 = load double, double* %scevgep2021.3, align 8, !alias.scope !19, !noalias !23
  %101 = shl i64 %12, 3
  %scevgep20.2 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %101
  %scevgep2021.2 = bitcast i8* %scevgep20.2 to double*
  %_p_scalar_22.2 = load double, double* %scevgep2021.2, align 8, !alias.scope !19, !noalias !23
  %102 = shl i64 %10, 3
  %scevgep20.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %102
  %scevgep2021.1 = bitcast i8* %scevgep20.1 to double*
  %_p_scalar_22.1 = load double, double* %scevgep2021.1, align 8, !alias.scope !19, !noalias !23
  %103 = shl i64 %polly.indvar4, 8
  %scevgep20 = getelementptr i8, i8* %polly.subfunc.arg.call.i40, i64 %103
  %scevgep2021 = bitcast i8* %scevgep20 to double*
  %_p_scalar_22 = load double, double* %scevgep2021, align 8, !alias.scope !19, !noalias !23
  %broadcast.splatinsert = insertelement <2 x double> poison, double %_p_scalar_22, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <2 x double> poison, double %_p_scalar_22.1, i32 0
  %broadcast.splat32 = shufflevector <2 x double> %broadcast.splatinsert31, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %_p_scalar_22.2, i32 0
  %broadcast.splat35 = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <2 x double> poison, double %_p_scalar_22.3, i32 0
  %broadcast.splat38 = shufflevector <2 x double> %broadcast.splatinsert37, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %_p_scalar_22.4, i32 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %_p_scalar_22.5, i32 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %_p_scalar_22.6, i32 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <2 x double> poison, double %_p_scalar_22.7, i32 0
  %broadcast.splat50 = shufflevector <2 x double> %broadcast.splatinsert49, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %_p_scalar_22.8, i32 0
  %broadcast.splat53 = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %_p_scalar_22.9, i32 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %_p_scalar_22.10, i32 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <2 x double> poison, double %_p_scalar_22.11, i32 0
  %broadcast.splat62 = shufflevector <2 x double> %broadcast.splatinsert61, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %_p_scalar_22.12, i32 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <2 x double> poison, double %_p_scalar_22.13, i32 0
  %broadcast.splat68 = shufflevector <2 x double> %broadcast.splatinsert67, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %_p_scalar_22.14, i32 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %_p_scalar_22.15, i32 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %_p_scalar_22.16, i32 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %_p_scalar_22.17, i32 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert82 = insertelement <2 x double> poison, double %_p_scalar_22.18, i32 0
  %broadcast.splat83 = shufflevector <2 x double> %broadcast.splatinsert82, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <2 x double> poison, double %_p_scalar_22.19, i32 0
  %broadcast.splat86 = shufflevector <2 x double> %broadcast.splatinsert85, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %_p_scalar_22.20, i32 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <2 x double> poison, double %_p_scalar_22.21, i32 0
  %broadcast.splat92 = shufflevector <2 x double> %broadcast.splatinsert91, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %_p_scalar_22.22, i32 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %_p_scalar_22.23, i32 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %_p_scalar_22.24, i32 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %_p_scalar_22.25, i32 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <2 x double> poison, double %_p_scalar_22.26, i32 0
  %broadcast.splat107 = shufflevector <2 x double> %broadcast.splatinsert106, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %_p_scalar_22.27, i32 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <2 x double> poison, double %_p_scalar_22.28, i32 0
  %broadcast.splat113 = shufflevector <2 x double> %broadcast.splatinsert112, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <2 x double> poison, double %_p_scalar_22.29, i32 0
  %broadcast.splat116 = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %_p_scalar_22.30, i32 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %_p_scalar_22.31, i32 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polly.loop_preheader8
  %index = phi i64 [ 0, %polly.loop_preheader8 ], [ %index.next, %vector.body ]
  %104 = add nsw i64 %index, %7
  %105 = getelementptr double, double* %polly.subfunc.arg.call.i3825, i64 %104
  %106 = shl i64 %104, 3
  %107 = bitcast double* %105 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %107, align 8, !alias.scope !24, !noalias !25
  %108 = add i64 %9, %106
  %109 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %108
  %110 = bitcast i8* %109 to <2 x double>*
  %wide.load29 = load <2 x double>, <2 x double>* %110, align 8, !alias.scope !17, !noalias !22
  %111 = fmul <2 x double> %wide.load29, %broadcast.splat
  %112 = fadd <2 x double> %wide.load, %111
  %113 = add i64 %11, %106
  %114 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %113
  %115 = bitcast i8* %114 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %115, align 8, !alias.scope !17, !noalias !22
  %116 = fmul <2 x double> %wide.load30, %broadcast.splat32
  %117 = fadd <2 x double> %112, %116
  %118 = add i64 %13, %106
  %119 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %118
  %120 = bitcast i8* %119 to <2 x double>*
  %wide.load33 = load <2 x double>, <2 x double>* %120, align 8, !alias.scope !17, !noalias !22
  %121 = fmul <2 x double> %wide.load33, %broadcast.splat35
  %122 = fadd <2 x double> %117, %121
  %123 = add i64 %15, %106
  %124 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %123
  %125 = bitcast i8* %124 to <2 x double>*
  %wide.load36 = load <2 x double>, <2 x double>* %125, align 8, !alias.scope !17, !noalias !22
  %126 = fmul <2 x double> %wide.load36, %broadcast.splat38
  %127 = fadd <2 x double> %122, %126
  %128 = add i64 %17, %106
  %129 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %128
  %130 = bitcast i8* %129 to <2 x double>*
  %wide.load39 = load <2 x double>, <2 x double>* %130, align 8, !alias.scope !17, !noalias !22
  %131 = fmul <2 x double> %wide.load39, %broadcast.splat41
  %132 = fadd <2 x double> %127, %131
  %133 = add i64 %19, %106
  %134 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %133
  %135 = bitcast i8* %134 to <2 x double>*
  %wide.load42 = load <2 x double>, <2 x double>* %135, align 8, !alias.scope !17, !noalias !22
  %136 = fmul <2 x double> %wide.load42, %broadcast.splat44
  %137 = fadd <2 x double> %132, %136
  %138 = add i64 %21, %106
  %139 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %138
  %140 = bitcast i8* %139 to <2 x double>*
  %wide.load45 = load <2 x double>, <2 x double>* %140, align 8, !alias.scope !17, !noalias !22
  %141 = fmul <2 x double> %wide.load45, %broadcast.splat47
  %142 = fadd <2 x double> %137, %141
  %143 = add i64 %23, %106
  %144 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %143
  %145 = bitcast i8* %144 to <2 x double>*
  %wide.load48 = load <2 x double>, <2 x double>* %145, align 8, !alias.scope !17, !noalias !22
  %146 = fmul <2 x double> %wide.load48, %broadcast.splat50
  %147 = fadd <2 x double> %142, %146
  %148 = add i64 %25, %106
  %149 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %148
  %150 = bitcast i8* %149 to <2 x double>*
  %wide.load51 = load <2 x double>, <2 x double>* %150, align 8, !alias.scope !17, !noalias !22
  %151 = fmul <2 x double> %wide.load51, %broadcast.splat53
  %152 = fadd <2 x double> %147, %151
  %153 = add i64 %27, %106
  %154 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %153
  %155 = bitcast i8* %154 to <2 x double>*
  %wide.load54 = load <2 x double>, <2 x double>* %155, align 8, !alias.scope !17, !noalias !22
  %156 = fmul <2 x double> %wide.load54, %broadcast.splat56
  %157 = fadd <2 x double> %152, %156
  %158 = add i64 %29, %106
  %159 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %158
  %160 = bitcast i8* %159 to <2 x double>*
  %wide.load57 = load <2 x double>, <2 x double>* %160, align 8, !alias.scope !17, !noalias !22
  %161 = fmul <2 x double> %wide.load57, %broadcast.splat59
  %162 = fadd <2 x double> %157, %161
  %163 = add i64 %31, %106
  %164 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %163
  %165 = bitcast i8* %164 to <2 x double>*
  %wide.load60 = load <2 x double>, <2 x double>* %165, align 8, !alias.scope !17, !noalias !22
  %166 = fmul <2 x double> %wide.load60, %broadcast.splat62
  %167 = fadd <2 x double> %162, %166
  %168 = add i64 %33, %106
  %169 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %168
  %170 = bitcast i8* %169 to <2 x double>*
  %wide.load63 = load <2 x double>, <2 x double>* %170, align 8, !alias.scope !17, !noalias !22
  %171 = fmul <2 x double> %wide.load63, %broadcast.splat65
  %172 = fadd <2 x double> %167, %171
  %173 = add i64 %35, %106
  %174 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %173
  %175 = bitcast i8* %174 to <2 x double>*
  %wide.load66 = load <2 x double>, <2 x double>* %175, align 8, !alias.scope !17, !noalias !22
  %176 = fmul <2 x double> %wide.load66, %broadcast.splat68
  %177 = fadd <2 x double> %172, %176
  %178 = add i64 %37, %106
  %179 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %178
  %180 = bitcast i8* %179 to <2 x double>*
  %wide.load69 = load <2 x double>, <2 x double>* %180, align 8, !alias.scope !17, !noalias !22
  %181 = fmul <2 x double> %wide.load69, %broadcast.splat71
  %182 = fadd <2 x double> %177, %181
  %183 = add i64 %39, %106
  %184 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %183
  %185 = bitcast i8* %184 to <2 x double>*
  %wide.load72 = load <2 x double>, <2 x double>* %185, align 8, !alias.scope !17, !noalias !22
  %186 = fmul <2 x double> %wide.load72, %broadcast.splat74
  %187 = fadd <2 x double> %182, %186
  %188 = add i64 %41, %106
  %189 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %188
  %190 = bitcast i8* %189 to <2 x double>*
  %wide.load75 = load <2 x double>, <2 x double>* %190, align 8, !alias.scope !17, !noalias !22
  %191 = fmul <2 x double> %wide.load75, %broadcast.splat77
  %192 = fadd <2 x double> %187, %191
  %193 = add i64 %43, %106
  %194 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %193
  %195 = bitcast i8* %194 to <2 x double>*
  %wide.load78 = load <2 x double>, <2 x double>* %195, align 8, !alias.scope !17, !noalias !22
  %196 = fmul <2 x double> %wide.load78, %broadcast.splat80
  %197 = fadd <2 x double> %192, %196
  %198 = add i64 %45, %106
  %199 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %198
  %200 = bitcast i8* %199 to <2 x double>*
  %wide.load81 = load <2 x double>, <2 x double>* %200, align 8, !alias.scope !17, !noalias !22
  %201 = fmul <2 x double> %wide.load81, %broadcast.splat83
  %202 = fadd <2 x double> %197, %201
  %203 = add i64 %47, %106
  %204 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %203
  %205 = bitcast i8* %204 to <2 x double>*
  %wide.load84 = load <2 x double>, <2 x double>* %205, align 8, !alias.scope !17, !noalias !22
  %206 = fmul <2 x double> %wide.load84, %broadcast.splat86
  %207 = fadd <2 x double> %202, %206
  %208 = add i64 %49, %106
  %209 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %208
  %210 = bitcast i8* %209 to <2 x double>*
  %wide.load87 = load <2 x double>, <2 x double>* %210, align 8, !alias.scope !17, !noalias !22
  %211 = fmul <2 x double> %wide.load87, %broadcast.splat89
  %212 = fadd <2 x double> %207, %211
  %213 = add i64 %51, %106
  %214 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %213
  %215 = bitcast i8* %214 to <2 x double>*
  %wide.load90 = load <2 x double>, <2 x double>* %215, align 8, !alias.scope !17, !noalias !22
  %216 = fmul <2 x double> %wide.load90, %broadcast.splat92
  %217 = fadd <2 x double> %212, %216
  %218 = add i64 %53, %106
  %219 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %218
  %220 = bitcast i8* %219 to <2 x double>*
  %wide.load93 = load <2 x double>, <2 x double>* %220, align 8, !alias.scope !17, !noalias !22
  %221 = fmul <2 x double> %wide.load93, %broadcast.splat95
  %222 = fadd <2 x double> %217, %221
  %223 = add i64 %55, %106
  %224 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %223
  %225 = bitcast i8* %224 to <2 x double>*
  %wide.load96 = load <2 x double>, <2 x double>* %225, align 8, !alias.scope !17, !noalias !22
  %226 = fmul <2 x double> %wide.load96, %broadcast.splat98
  %227 = fadd <2 x double> %222, %226
  %228 = add i64 %57, %106
  %229 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %228
  %230 = bitcast i8* %229 to <2 x double>*
  %wide.load99 = load <2 x double>, <2 x double>* %230, align 8, !alias.scope !17, !noalias !22
  %231 = fmul <2 x double> %wide.load99, %broadcast.splat101
  %232 = fadd <2 x double> %227, %231
  %233 = add i64 %59, %106
  %234 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %233
  %235 = bitcast i8* %234 to <2 x double>*
  %wide.load102 = load <2 x double>, <2 x double>* %235, align 8, !alias.scope !17, !noalias !22
  %236 = fmul <2 x double> %wide.load102, %broadcast.splat104
  %237 = fadd <2 x double> %232, %236
  %238 = add i64 %61, %106
  %239 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %238
  %240 = bitcast i8* %239 to <2 x double>*
  %wide.load105 = load <2 x double>, <2 x double>* %240, align 8, !alias.scope !17, !noalias !22
  %241 = fmul <2 x double> %wide.load105, %broadcast.splat107
  %242 = fadd <2 x double> %237, %241
  %243 = add i64 %63, %106
  %244 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %243
  %245 = bitcast i8* %244 to <2 x double>*
  %wide.load108 = load <2 x double>, <2 x double>* %245, align 8, !alias.scope !17, !noalias !22
  %246 = fmul <2 x double> %wide.load108, %broadcast.splat110
  %247 = fadd <2 x double> %242, %246
  %248 = add i64 %65, %106
  %249 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %248
  %250 = bitcast i8* %249 to <2 x double>*
  %wide.load111 = load <2 x double>, <2 x double>* %250, align 8, !alias.scope !17, !noalias !22
  %251 = fmul <2 x double> %wide.load111, %broadcast.splat113
  %252 = fadd <2 x double> %247, %251
  %253 = add i64 %67, %106
  %254 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %253
  %255 = bitcast i8* %254 to <2 x double>*
  %wide.load114 = load <2 x double>, <2 x double>* %255, align 8, !alias.scope !17, !noalias !22
  %256 = fmul <2 x double> %wide.load114, %broadcast.splat116
  %257 = fadd <2 x double> %252, %256
  %258 = add i64 %69, %106
  %259 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %258
  %260 = bitcast i8* %259 to <2 x double>*
  %wide.load117 = load <2 x double>, <2 x double>* %260, align 8, !alias.scope !17, !noalias !22
  %261 = fmul <2 x double> %wide.load117, %broadcast.splat119
  %262 = fadd <2 x double> %257, %261
  %263 = add i64 %71, %106
  %264 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %263
  %265 = bitcast i8* %264 to <2 x double>*
  %wide.load120 = load <2 x double>, <2 x double>* %265, align 8, !alias.scope !17, !noalias !22
  %266 = fmul <2 x double> %wide.load120, %broadcast.splat122
  %267 = fadd <2 x double> %262, %266
  %268 = bitcast double* %105 to <2 x double>*
  store <2 x double> %267, <2 x double>* %268, align 8, !alias.scope !24, !noalias !25
  %index.next = add i64 %index, 2
  %269 = icmp eq i64 %index.next, 32
  br i1 %269, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %polly.indvar_next5 = add nuw nsw i64 %polly.indvar4, 1
  %exitcond27.not = icmp eq i64 %polly.indvar_next5, 125
  br i1 %exitcond27.not, label %polly.loop_exit3, label %polly.loop_preheader8
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
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !3}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !14, !"polly.alias.scope.MemRef3"}
!14 = distinct !{!14, !"polly.alias.scope.domain"}
!15 = !{!16, !17, !18, !19}
!16 = distinct !{!16, !14, !"polly.alias.scope.MemRef0"}
!17 = distinct !{!17, !14, !"polly.alias.scope.MemRef2"}
!18 = distinct !{!18, !14, !"polly.alias.scope.MemRef5"}
!19 = distinct !{!19, !14, !"polly.alias.scope.MemRef7"}
!20 = !{!16}
!21 = !{!17, !13, !18, !19}
!22 = !{!16, !13, !18, !19}
!23 = !{!16, !17, !13, !18}
!24 = !{!18}
!25 = !{!16, !17, !13, !19}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.isvectorized", i32 1}
