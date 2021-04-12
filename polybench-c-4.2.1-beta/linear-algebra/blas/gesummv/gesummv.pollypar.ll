; ModuleID = 'gesummv.c'
source_filename = "gesummv.c"
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
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #9
  %call.i31 = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #9
  %call.i33 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #9
  %call.i34 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #9
  %arraydecay = bitcast i8* %call.i to [2800 x double]*
  %arraydecay5 = bitcast i8* %call.i31 to [2800 x double]*
  %arraydecay6 = bitcast i8* %call.i33 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i, %entry.split
  %indvars.iv7.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next8.i, %for.inc24.i ]
  %i.03.i = phi i32 [ 0, %entry.split ], [ %inc25.i, %for.inc24.i ]
  %rem.lhs.trunc.i = trunc i32 %i.03.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 2800
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 2.800000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv7.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !2
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body5.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem6.i = urem i32 %2, 2800
  %conv7.i = sitofp i32 %rem6.i to double
  %div9.i = fdiv double %conv7.i, 2.800000e+03
  %arrayidx13.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div9.i, double* %arrayidx13.i, align 8, !tbaa !2
  %3 = add i32 %1, 2
  %rem16.i = urem i32 %3, 2800
  %conv17.i = sitofp i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.800000e+03
  %arrayidx23.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2800
  br i1 %exitcond.not.i, label %for.inc24.i, label %for.body5.i, !llvm.loop !6

for.inc24.i:                                      ; preds = %for.body5.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %inc25.i = add nuw nsw i32 %i.03.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2800
  br i1 %exitcond9.not.i, label %polly.loop_preheader, label %for.body.i, !llvm.loop !8

kernel_gesummv.exit:                              ; preds = %polly.stmt.for.end.i
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gesummv.exit
  %4 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %4, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #10
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.body.i44

for.body.i44:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i41 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i46, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i42 = trunc i32 %i.02.i to i16
  %rem1.i43 = urem i16 %rem.lhs.trunc.i42, 20
  %cmp2.i = icmp eq i16 %rem1.i43, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i44
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %8) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i44
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i45 = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv.i41
  %10 = load double, double* %arrayidx.i45, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %10) #10
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i41, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 2800
  br i1 %exitcond.not.i47, label %print_array.exit, label %for.body.i44, !llvm.loop !11

print_array.exit:                                 ; preds = %if.end.i
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %12) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gesummv.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i31) #9
  tail call void @free(i8* %call.i33) #9
  tail call void @free(i8* nonnull %call.i34) #9
  ret i32 0

polly.stmt.for.end.i:                             ; preds = %polly.stmt.for.body5.i40
  %14 = extractelement <2 x double> %31, i32 1
  %p_mul30.i = fmul double %14, 1.500000e+00
  %15 = extractelement <2 x double> %31, i32 0
  %p_mul33.i = fmul double %15, 1.200000e+00
  %p_add34.i = fadd double %p_mul30.i, %p_mul33.i
  %16 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep77 = getelementptr i8, i8* %call.i34, i64 %16
  %scevgep7778 = bitcast i8* %scevgep77 to double*
  store double %p_add34.i, double* %scevgep7778, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond81.not = icmp eq i64 %polly.indvar_next, 2800
  br i1 %exitcond81.not, label %kernel_gesummv.exit, label %polly.loop_preheader57

polly.loop_preheader:                             ; preds = %for.inc24.i
  tail call void (...) @polybench_timer_start() #9
  %arraydecay11 = bitcast i8* %call.i34 to double*
  %polly.subfn.storeaddr.call.i34 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i34, i8** %polly.subfn.storeaddr.call.i34, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 2800, i64 1, { i8* }* nonnull %polly.par.userContext) #9
  br label %polly.loop_preheader57

polly.stmt.for.body5.i40:                         ; preds = %polly.stmt.for.body5.i40, %polly.loop_preheader57
  %polly.indvar59 = phi i64 [ 0, %polly.loop_preheader57 ], [ %polly.indvar_next60.1, %polly.stmt.for.body5.i40 ]
  %17 = phi <2 x double> [ zeroinitializer, %polly.loop_preheader57 ], [ %31, %polly.stmt.for.body5.i40 ]
  %18 = shl nuw nsw i64 %polly.indvar59, 3
  %scevgep64 = getelementptr i8, i8* %scevgep, i64 %18
  %scevgep6465 = bitcast i8* %scevgep64 to double*
  %_p_scalar_ = load double, double* %scevgep6465, align 8, !alias.scope !15, !noalias !18
  %scevgep66 = getelementptr i8, i8* %call.i33, i64 %18
  %scevgep6667 = bitcast i8* %scevgep66 to double*
  %_p_scalar_68 = load double, double* %scevgep6667, align 8, !alias.scope !16, !noalias !19
  %scevgep70 = getelementptr i8, i8* %scevgep69, i64 %18
  %scevgep7071 = bitcast i8* %scevgep70 to double*
  %_p_scalar_72 = load double, double* %scevgep7071, align 8, !alias.scope !17, !noalias !20
  %19 = insertelement <2 x double> poison, double %_p_scalar_68, i32 0
  %20 = insertelement <2 x double> %19, double %_p_scalar_, i32 1
  %21 = insertelement <2 x double> poison, double %_p_scalar_72, i32 0
  %22 = insertelement <2 x double> %21, double %_p_scalar_68, i32 1
  %23 = fmul <2 x double> %20, %22
  %24 = fadd <2 x double> %17, %23
  %polly.indvar_next60 = shl i64 %polly.indvar59, 3
  %25 = or i64 %polly.indvar_next60, 8
  %scevgep64.1 = getelementptr i8, i8* %scevgep, i64 %25
  %scevgep6465.1 = bitcast i8* %scevgep64.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep6465.1, align 8, !alias.scope !15, !noalias !18
  %scevgep66.1 = getelementptr i8, i8* %call.i33, i64 %25
  %scevgep6667.1 = bitcast i8* %scevgep66.1 to double*
  %_p_scalar_68.1 = load double, double* %scevgep6667.1, align 8, !alias.scope !16, !noalias !19
  %scevgep70.1 = getelementptr i8, i8* %scevgep69, i64 %25
  %scevgep7071.1 = bitcast i8* %scevgep70.1 to double*
  %_p_scalar_72.1 = load double, double* %scevgep7071.1, align 8, !alias.scope !17, !noalias !20
  %26 = insertelement <2 x double> poison, double %_p_scalar_68.1, i32 0
  %27 = insertelement <2 x double> %26, double %_p_scalar_.1, i32 1
  %28 = insertelement <2 x double> poison, double %_p_scalar_72.1, i32 0
  %29 = insertelement <2 x double> %28, double %_p_scalar_68.1, i32 1
  %30 = fmul <2 x double> %27, %29
  %31 = fadd <2 x double> %24, %30
  %polly.indvar_next60.1 = add nuw nsw i64 %polly.indvar59, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next60.1, 2800
  br i1 %exitcond.not.1, label %polly.stmt.for.end.i, label %polly.stmt.for.body5.i40

polly.loop_preheader57:                           ; preds = %polly.stmt.for.end.i, %polly.loop_preheader
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.stmt.for.end.i ]
  %polly.access.call.i34 = getelementptr double, double* %arraydecay11, i64 %polly.indvar
  store double 0.000000e+00, double* %polly.access.call.i34, align 8, !alias.scope !12, !noalias !14
  %32 = mul nuw nsw i64 %polly.indvar, 22400
  %scevgep = getelementptr i8, i8* %call.i, i64 %32
  %scevgep69 = getelementptr i8, i8* %call.i31, i64 %32
  br label %polly.stmt.for.body5.i40
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
  %polly.subfunc.arg.call.i34 = load i8*, i8** %0, align 8
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

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %2 = shl i64 %polly.indvar.LB, 3
  %scevgep2 = getelementptr i8, i8* %polly.subfunc.arg.call.i34, i64 %2
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %3 = add i64 %smax, 1
  %4 = sub i64 %3, %polly.indvar.LB
  %5 = shl nuw i64 %4, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep2, i8 0, i64 %5, i1 false)
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { "polly.skip.fn" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!8 = distinct !{!8, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef0"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16, !17}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef3"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef4"}
!17 = distinct !{!17, !13, !"polly.alias.scope.MemRef5"}
!18 = !{!12, !16, !17}
!19 = !{!12, !15, !17}
!20 = !{!12, !15, !16}
