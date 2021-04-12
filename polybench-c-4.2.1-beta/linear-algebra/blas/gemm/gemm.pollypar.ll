; ModuleID = 'gemm.c'
source_filename = "gemm.c"
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

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext44 = alloca { i8*, i8*, i8* }, align 8
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(36800000) i8* @malloc(i64 36800000) #8
  %call.i28 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %call.i29 = tail call noalias dereferenceable_or_null(47840000) i8* @malloc(i64 47840000) #8
  %arraydecay = bitcast i8* %call.i to [2300 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry.split
  %indvars.iv9.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next10.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv9.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv9.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2300
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2000
  br i1 %exitcond11.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay3 = bitcast i8* %call.i28 to [2600 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv12.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next13.i, %for.body17.i ]
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next13.i, %indvars.iv16.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 2600
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.600000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv12.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next13.i, 2600
  br i1 %exitcond15.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond18.not.i, label %for.cond38.preheader.i.preheader, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i.preheader:                 ; preds = %for.inc31.i
  %arraydecay4 = bitcast i8* %call.i29 to [2300 x double]*
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.cond38.preheader.i.preheader, %for.inc55.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc55.i ], [ 0, %for.cond38.preheader.i.preheader ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next20.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv19.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv24.i
  %7 = trunc i64 %6 to i32
  %rem44.i = urem i32 %7, 2300
  %conv45.i = sitofp i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 2.300000e+03
  %arrayidx51.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv24.i, i64 %indvars.iv19.i
  store double %div47.i, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, 2300
  br i1 %exitcond23.not.i, label %for.inc55.i, label %for.body41.i, !llvm.loop !11

for.inc55.i:                                      ; preds = %for.body41.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 2600
  br i1 %exitcond26.not.i, label %polly.exiting, label %for.cond38.preheader.i, !llvm.loop !12

land.lhs.true:                                    ; preds = %polly.exiting
  %8 = load i8*, i8** %argv, align 8, !tbaa !13
  %strcmpload = load i8, i8* %8, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %9) #9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %12 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i35 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i37, %if.end.i ]
  %13 = add nuw nsw i64 %indvars.iv.i35, %12
  %14 = trunc i64 %13 to i32
  %rem.i36 = urem i32 %14, 20
  %cmp5.i = icmp eq i32 %rem.i36, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %15) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %arrayidx8.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i35
  %17 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %17) #9
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2300
  br i1 %exitcond.not.i38, label %for.inc10.i, label %for.body4.i, !llvm.loop !15

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i39 = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i39, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !16

print_array.exit:                                 ; preds = %for.inc10.i
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %19) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %polly.exiting
  tail call void @free(i8* nonnull %call.i) #8
  tail call void @free(i8* %call.i28) #8
  tail call void @free(i8* %call.i29) #8
  ret i32 0

polly.exiting:                                    ; preds = %for.inc55.i
  tail call void (...) @polybench_timer_start() #8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i28 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext44, i64 0, i32 0
  store i8* %call.i28, i8** %polly.subfn.storeaddr.call.i28, align 8
  %polly.subfn.storeaddr.call.i29 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext44, i64 0, i32 1
  store i8* %call.i29, i8** %polly.subfn.storeaddr.call.i29, align 8
  %polly.subfn.storeaddr.call.i45 = getelementptr inbounds { i8*, i8*, i8* }, { i8*, i8*, i8* }* %polly.par.userContext44, i64 0, i32 2
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i45, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 63, i64 1, { i8*, i8*, i8* }* nonnull %polly.par.userContext44) #8
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
  %polly.subfunc.arg.call.i = load i8*, i8** %0, align 8
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
  %7 = mul nsw i64 %polly.indvar4.us, -32
  %smin29 = call i64 @llvm.smin.i64(i64 %7, i64 -2268)
  %8 = add nsw i64 %smin29, 2300
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2268)
  %9 = shl nsw i64 %polly.indvar4.us, 5
  %10 = add nsw i64 %smin, 2299
  %min.iters.check = icmp eq i64 %8, 0
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %11 = add nsw i64 %polly.indvar10.us, %6
  %12 = mul i64 %11, 18400
  br i1 %min.iters.check, label %polly.stmt.for.body3.i34.us, label %vector.body

vector.body:                                      ; preds = %polly.loop_preheader14.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polly.loop_preheader14.us ]
  %13 = add nuw nsw i64 %index, %9
  %14 = shl i64 %13, 3
  %15 = add i64 %14, %12
  %16 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %15
  %17 = bitcast i8* %16 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %17, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %18 = getelementptr i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %19, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %20 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %21 = fmul <2 x double> %wide.load30, <double 1.200000e+00, double 1.200000e+00>
  %22 = bitcast i8* %16 to <2 x double>*
  store <2 x double> %20, <2 x double>* %22, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %23 = bitcast i8* %18 to <2 x double>*
  store <2 x double> %21, <2 x double>* %23, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %index.next = add i64 %index, 4
  %24 = icmp eq i64 %index.next, %8
  br i1 %24, label %polly.loop_exit15.us, label %vector.body, !llvm.loop !23

polly.stmt.for.body3.i34.us:                      ; preds = %polly.loop_preheader14.us, %polly.stmt.for.body3.i34.us
  %polly.indvar16.us = phi i64 [ %polly.indvar_next17.us, %polly.stmt.for.body3.i34.us ], [ 0, %polly.loop_preheader14.us ]
  %25 = add nuw nsw i64 %polly.indvar16.us, %9
  %26 = shl i64 %25, 3
  %27 = add i64 %26, %12
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %27
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  %_p_scalar_.us = load double, double* %scevgep19.us, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %p_mul.i.us = fmul double %_p_scalar_.us, 1.200000e+00
  store double %p_mul.i.us, double* %scevgep19.us, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !22
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %10
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body3.i34.us, !llvm.loop !26

polly.loop_exit15.us:                             ; preds = %vector.body, %polly.stmt.for.body3.i34.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 72
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
  %0 = bitcast i8* %polly.kmpc.shared to double**
  %polly.subfunc.arg.call.i2836 = load double*, double** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i29 = load i8*, i8** %2, align 8
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
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.split.us.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next44 = add i64 %indvars.iv43, -32
  %exitcond50.not = icmp eq i64 %polly.indvar, %smax49
  br i1 %exitcond50.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %7 = mul i64 %polly.indvar.LB, -32
  %smax49 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv43 = phi i64 [ %7, %polly.loop_preheader ], [ %indvars.iv.next44, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin45 = call i64 @llvm.smin.i64(i64 %indvars.iv43, i64 -1968)
  %8 = add nsw i64 %smin45, 1999
  %smax = call i64 @llvm.smax.i64(i64 %8, i64 0)
  %9 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard51 = icmp sgt i64 %9, -2000
  %10 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard51, label %polly.loop_preheader8.us, label %polly.loop_exit3

polly.loop_preheader8.us:                         ; preds = %polly.loop_preheader2, %polly.loop_exit9.split.us.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader2 ]
  %smin41 = call i64 @llvm.smin.i64(i64 %indvars.iv39, i64 -2268)
  %11 = shl nsw i64 %polly.indvar4.us, 5
  %12 = add nsw i64 %smin41, 2299
  br label %polly.loop_if.us.us

polly.loop_if.us.us:                              ; preds = %polly.loop_exit15.loopexit.us.us, %polly.loop_preheader8.us
  %polly.indvar10.us.us = phi i64 [ %polly.indvar_next11.us.us, %polly.loop_exit15.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %13 = mul nsw i64 %polly.indvar10.us.us, -32
  %smin52 = call i64 @llvm.smin.i64(i64 %13, i64 -2568)
  %14 = add nsw i64 %smin52, 2600
  %15 = shl nsw i64 %polly.indvar10.us.us, 5
  br label %polly.loop_preheader20.us.us

polly.loop_preheader20.us.us:                     ; preds = %polly.loop_exit21.us.us, %polly.loop_if.us.us
  %polly.indvar16.us.us = phi i64 [ %polly.indvar_next17.us.us, %polly.loop_exit21.us.us ], [ 0, %polly.loop_if.us.us ]
  %16 = add nsw i64 %polly.indvar16.us.us, %10
  %polly.access.mul.polly.subfunc.arg.call.i28.us.us = mul nsw i64 %16, 2600
  %17 = mul i64 %16, 18400
  br label %polly.loop_preheader26.us.us

polly.loop_preheader26.us.us:                     ; preds = %polly.loop_exit27.us.us, %polly.loop_preheader20.us.us
  %polly.indvar22.us.us = phi i64 [ 0, %polly.loop_preheader20.us.us ], [ %polly.indvar_next23.us.us, %polly.loop_exit27.us.us ]
  %18 = add nuw nsw i64 %polly.indvar22.us.us, %11
  %19 = shl i64 %18, 3
  %20 = add i64 %19, %17
  %scevgep33.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %20
  %scevgep3334.us.us = bitcast i8* %scevgep33.us.us to double*
  %scevgep3334.promoted.us.us = load double, double* %scevgep3334.us.us, align 8, !alias.scope !28, !noalias !19
  br label %polly.stmt.for.body11.i.us.us

polly.stmt.for.body11.i.us.us:                    ; preds = %polly.stmt.for.body11.i.us.us, %polly.loop_preheader26.us.us
  %p_add.i37.us.us = phi double [ %scevgep3334.promoted.us.us, %polly.loop_preheader26.us.us ], [ %p_add.i.us.us.1, %polly.stmt.for.body11.i.us.us ]
  %polly.indvar28.us.us = phi i64 [ 0, %polly.loop_preheader26.us.us ], [ %polly.indvar_next29.us.us.1, %polly.stmt.for.body11.i.us.us ]
  %niter = phi i64 [ %14, %polly.loop_preheader26.us.us ], [ %niter.nsub.1, %polly.stmt.for.body11.i.us.us ]
  %21 = add nuw nsw i64 %polly.indvar28.us.us, %15
  %polly.access.add.polly.subfunc.arg.call.i28.us.us = add nsw i64 %21, %polly.access.mul.polly.subfunc.arg.call.i28.us.us
  %polly.access.polly.subfunc.arg.call.i28.us.us = getelementptr double, double* %polly.subfunc.arg.call.i2836, i64 %polly.access.add.polly.subfunc.arg.call.i28.us.us
  %_p_scalar_.us.us = load double, double* %polly.access.polly.subfunc.arg.call.i28.us.us, align 8, !alias.scope !20, !noalias !29
  %p_mul16.i.us.us = fmul double %_p_scalar_.us.us, 1.500000e+00
  %22 = mul nuw nsw i64 %21, 18400
  %23 = add nuw nsw i64 %22, %19
  %scevgep.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i29, i64 %23
  %scevgep31.us.us = bitcast i8* %scevgep.us.us to double*
  %_p_scalar_32.us.us = load double, double* %scevgep31.us.us, align 8, !alias.scope !21, !noalias !30
  %p_mul21.i.us.us = fmul double %p_mul16.i.us.us, %_p_scalar_32.us.us
  %p_add.i.us.us = fadd double %p_add.i37.us.us, %p_mul21.i.us.us
  %polly.indvar_next29.us.us = or i64 %polly.indvar28.us.us, 1
  %24 = add nuw nsw i64 %polly.indvar_next29.us.us, %15
  %polly.access.add.polly.subfunc.arg.call.i28.us.us.1 = add nsw i64 %24, %polly.access.mul.polly.subfunc.arg.call.i28.us.us
  %polly.access.polly.subfunc.arg.call.i28.us.us.1 = getelementptr double, double* %polly.subfunc.arg.call.i2836, i64 %polly.access.add.polly.subfunc.arg.call.i28.us.us.1
  %_p_scalar_.us.us.1 = load double, double* %polly.access.polly.subfunc.arg.call.i28.us.us.1, align 8, !alias.scope !20, !noalias !29
  %p_mul16.i.us.us.1 = fmul double %_p_scalar_.us.us.1, 1.500000e+00
  %25 = mul nuw nsw i64 %24, 18400
  %26 = add nuw nsw i64 %25, %19
  %scevgep.us.us.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i29, i64 %26
  %scevgep31.us.us.1 = bitcast i8* %scevgep.us.us.1 to double*
  %_p_scalar_32.us.us.1 = load double, double* %scevgep31.us.us.1, align 8, !alias.scope !21, !noalias !30
  %p_mul21.i.us.us.1 = fmul double %p_mul16.i.us.us.1, %_p_scalar_32.us.us.1
  %p_add.i.us.us.1 = fadd double %p_add.i.us.us, %p_mul21.i.us.us.1
  %polly.indvar_next29.us.us.1 = add nuw nsw i64 %polly.indvar28.us.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit27.us.us, label %polly.stmt.for.body11.i.us.us

polly.loop_exit27.us.us:                          ; preds = %polly.stmt.for.body11.i.us.us
  store double %p_add.i.us.us.1, double* %scevgep3334.us.us, align 8, !alias.scope !28, !noalias !19
  %polly.indvar_next23.us.us = add nuw nsw i64 %polly.indvar22.us.us, 1
  %exitcond42.not = icmp eq i64 %polly.indvar22.us.us, %12
  br i1 %exitcond42.not, label %polly.loop_exit21.us.us, label %polly.loop_preheader26.us.us

polly.loop_exit21.us.us:                          ; preds = %polly.loop_exit27.us.us
  %polly.indvar_next17.us.us = add nuw nsw i64 %polly.indvar16.us.us, 1
  %exitcond46.not = icmp eq i64 %polly.indvar16.us.us, %smax
  br i1 %exitcond46.not, label %polly.loop_exit15.loopexit.us.us, label %polly.loop_preheader20.us.us

polly.loop_exit15.loopexit.us.us:                 ; preds = %polly.loop_exit21.us.us
  %polly.indvar_next11.us.us = add nuw nsw i64 %polly.indvar10.us.us, 1
  %exitcond47.not = icmp eq i64 %polly.indvar_next11.us.us, 82
  br i1 %exitcond47.not, label %polly.loop_exit9.split.us.us, label %polly.loop_if.us.us

polly.loop_exit9.split.us.us:                     ; preds = %polly.loop_exit15.loopexit.us.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -32
  %exitcond48.not = icmp eq i64 %polly.indvar_next5.us, 72
  br i1 %exitcond48.not, label %polly.loop_exit3, label %polly.loop_preheader8.us
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !18, !"polly.alias.scope.MemRef0"}
!18 = distinct !{!18, !"polly.alias.scope.domain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"polly.alias.scope.MemRef1"}
!21 = distinct !{!21, !18, !"polly.alias.scope.MemRef3"}
!22 = distinct !{}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.parallel_accesses", !22}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !24, !27, !25}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!17}
!29 = !{!17, !21}
!30 = !{!17, !20}
