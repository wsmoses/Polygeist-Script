; ModuleID = 'gramschmidt.c'
source_filename = "gramschmidt.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
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
entry.split:
  %polly.par.userContext72 = alloca { i64, i64, i8*, i8*, i8* }, align 8
  %polly.par.userContext63 = alloca { i64, i64, i8*, i8*, i8* }, align 8
  %polly.par.userContext58 = alloca { i64, i64, i8*, double*, i8* }, align 8
  %call.i38.s2a = alloca double, align 8
  %polly.par.userContext52 = alloca { i64, i64, i8* }, align 8
  %polly.par.userContext = alloca { i64, i64, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #10
  %call.i30 = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #10
  %call.i31 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #10
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(41600000) %call.i31, i8 0, i64 41600000, i1 false)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %entry.split
  %indvars.iv7.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next8.i, %for.inc12.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %mul5.i = fmul double %div.i, 1.000000e+02
  %add.i = fadd double %mul5.i, 1.000000e+01
  %arrayidx7.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx7.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2600
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body3.i, !llvm.loop !6

for.inc12.i:                                      ; preds = %for.body3.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2000
  br i1 %exitcond9.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc12.i
  %arraydecay3 = bitcast i8* %call.i30 to [2600 x double]*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(54080000) %call.i30, i8 0, i64 54080000, i1 false) #10
  tail call void (...) @polybench_timer_start() #10
  %polly.subfn.storeaddr.indvars.iv24.i = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext, i64 0, i32 0
  %polly.subfn.storeaddr. = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext, i64 0, i32 1
  %polly.subfn.storeaddr.call.i30 = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext, i64 0, i32 2
  %polly.subfn.storeaddr.indvars.iv24.i53 = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext52, i64 0, i32 0
  %polly.subfn.storeaddr.54 = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext52, i64 0, i32 1
  %polly.subfn.storeaddr.call.i3055 = getelementptr inbounds { i64, i64, i8* }, { i64, i64, i8* }* %polly.par.userContext52, i64 0, i32 2
  %polly.subfn.storeaddr.indvars.iv24.i59 = getelementptr inbounds { i64, i64, i8*, double*, i8* }, { i64, i64, i8*, double*, i8* }* %polly.par.userContext58, i64 0, i32 0
  %polly.subfn.storeaddr.60 = getelementptr inbounds { i64, i64, i8*, double*, i8* }, { i64, i64, i8*, double*, i8* }* %polly.par.userContext58, i64 0, i32 1
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i64, i64, i8*, double*, i8* }, { i64, i64, i8*, double*, i8* }* %polly.par.userContext58, i64 0, i32 2
  %polly.subfn.storeaddr.call.i38.s2a = getelementptr inbounds { i64, i64, i8*, double*, i8* }, { i64, i64, i8*, double*, i8* }* %polly.par.userContext58, i64 0, i32 3
  %polly.subfn.storeaddr.call.i31 = getelementptr inbounds { i64, i64, i8*, double*, i8* }, { i64, i64, i8*, double*, i8* }* %polly.par.userContext58, i64 0, i32 4
  %polly.subfn.storeaddr.indvars.iv24.i64 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext63, i64 0, i32 0
  %polly.subfn.storeaddr.65 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext63, i64 0, i32 1
  %polly.subfn.storeaddr.call.i3066 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext63, i64 0, i32 2
  %polly.subfn.storeaddr.call.i3167 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext63, i64 0, i32 3
  %polly.subfn.storeaddr.call.i68 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext63, i64 0, i32 4
  %polly.subfn.storeaddr.indvars.iv24.i73 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext72, i64 0, i32 0
  %polly.subfn.storeaddr.74 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext72, i64 0, i32 1
  %polly.subfn.storeaddr.call.i75 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext72, i64 0, i32 2
  %polly.subfn.storeaddr.call.i3176 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext72, i64 0, i32 3
  %polly.subfn.storeaddr.call.i3077 = getelementptr inbounds { i64, i64, i8*, i8*, i8* }, { i64, i64, i8*, i8*, i8* }* %polly.par.userContext72, i64 0, i32 4
  br label %for.cond1.preheader.i32

for.cond.loopexit.i:                              ; preds = %for.body3.i37
  %call.i38 = tail call double @sqrt(double %add.i34.4) #10
  %arrayidx13.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv24.i, i64 %indvars.iv24.i
  store double %call.i38, double* %arrayidx13.i, align 8, !tbaa !2
  store double %call.i38, double* %call.i38.s2a, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.indvars.iv24.i, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr., align 8
  store i8* %call.i30, i8** %polly.subfn.storeaddr.call.i30, align 8
  %2 = sub nuw nsw i64 2599, %indvars.iv24.i
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 %2, i64 1, { i64, i64, i8* }* nonnull %polly.par.userContext) #10
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.indvars.iv24.i53, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.54, align 8
  store i8* %call.i30, i8** %polly.subfn.storeaddr.call.i3055, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.10, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_11 to void (i32*, i32*, ...)*), i64 0, i64 %2, i64 1, { i64, i64, i8* }* nonnull %polly.par.userContext52) #10
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.indvars.iv24.i59, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.60, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  store double* %call.i38.s2a, double** %polly.subfn.storeaddr.call.i38.s2a, align 8
  store i8* %call.i31, i8** %polly.subfn.storeaddr.call.i31, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.13, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_14 to void (i32*, i32*, ...)*), i64 0, i64 2000, i64 1, { i64, i64, i8*, double*, i8* }* nonnull %polly.par.userContext58) #10
  %3 = add nuw nsw i64 %indvars.iv24.i, 25
  %pexp.p_div_q = lshr i64 %3, 5
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.indvars.iv24.i64, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.65, align 8
  store i8* %call.i30, i8** %polly.subfn.storeaddr.call.i3066, align 8
  store i8* %call.i31, i8** %polly.subfn.storeaddr.call.i3167, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i68, align 8
  %4 = sub nsw i64 82, %pexp.p_div_q
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.16, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_17 to void (i32*, i32*, ...)*), i64 0, i64 %4, i64 1, { i64, i64, i8*, i8*, i8* }* nonnull %polly.par.userContext63) #10
  %5 = add nuw nsw i64 %indvars.iv24.i, 1
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.indvars.iv24.i73, align 8
  store i64 %indvars.iv24.i, i64* %polly.subfn.storeaddr.74, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i75, align 8
  store i8* %call.i31, i8** %polly.subfn.storeaddr.call.i3176, align 8
  store i8* %call.i30, i8** %polly.subfn.storeaddr.call.i3077, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.19, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_20 to void (i32*, i32*, ...)*), i64 0, i64 %4, i64 1, { i64, i64, i8*, i8*, i8* }* nonnull %polly.par.userContext72) #10
  %exitcond26.not.i = icmp eq i64 %5, 2600
  br i1 %exitcond26.not.i, label %kernel_gramschmidt.exit, label %for.cond1.preheader.i32, !llvm.loop !9

for.cond1.preheader.i32:                          ; preds = %for.cond.loopexit.i, %init_array.exit
  %indvars.iv24.i = phi i64 [ 0, %init_array.exit ], [ %5, %for.cond.loopexit.i ]
  br label %for.body3.i37

for.body3.i37:                                    ; preds = %for.body3.i37, %for.cond1.preheader.i32
  %indvars.iv.i33 = phi i64 [ 0, %for.cond1.preheader.i32 ], [ %indvars.iv.next.i35.4, %for.body3.i37 ]
  %nrm.02.i = phi double [ 0.000000e+00, %for.cond1.preheader.i32 ], [ %add.i34.4, %for.body3.i37 ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i33, i64 %indvars.iv24.i
  %6 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %6, %6
  %add.i34 = fadd double %nrm.02.i, %mul.i
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1
  %arrayidx5.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35, i64 %indvars.iv24.i
  %7 = load double, double* %arrayidx5.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %7, %7
  %add.i34.1 = fadd double %add.i34, %mul.i.1
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i33, 2
  %arrayidx5.i.2 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.1, i64 %indvars.iv24.i
  %8 = load double, double* %arrayidx5.i.2, align 8, !tbaa !2
  %mul.i.2 = fmul double %8, %8
  %add.i34.2 = fadd double %add.i34.1, %mul.i.2
  %indvars.iv.next.i35.2 = add nuw nsw i64 %indvars.iv.i33, 3
  %arrayidx5.i.3 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.2, i64 %indvars.iv24.i
  %9 = load double, double* %arrayidx5.i.3, align 8, !tbaa !2
  %mul.i.3 = fmul double %9, %9
  %add.i34.3 = fadd double %add.i34.2, %mul.i.3
  %indvars.iv.next.i35.3 = add nuw nsw i64 %indvars.iv.i33, 4
  %arrayidx5.i.4 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.3, i64 %indvars.iv24.i
  %10 = load double, double* %arrayidx5.i.4, align 8, !tbaa !2
  %mul.i.4 = fmul double %10, %10
  %add.i34.4 = fadd double %add.i34.3, %mul.i.4
  %indvars.iv.next.i35.4 = add nuw nsw i64 %indvars.iv.i33, 5
  %exitcond.not.i36.4 = icmp eq i64 %indvars.iv.next.i35.4, 2000
  br i1 %exitcond.not.i36.4, label %for.cond.loopexit.i, label %for.body3.i37, !llvm.loop !10

kernel_gramschmidt.exit:                          ; preds = %for.cond.loopexit.i
  %arraydecay4 = bitcast i8* %call.i31 to [2600 x double]*
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %11 = load i8*, i8** %argv, align 8, !tbaa !11
  %strcmpload = load i8, i8* %11, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %12) #11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv7.i40 = phi i64 [ 0, %if.then ], [ %indvars.iv.next8.i45, %for.inc10.i ]
  %15 = mul nuw nsw i64 %indvars.iv7.i40, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %16 = add nuw nsw i64 %indvars.iv.i41, %15
  %17 = trunc i64 %16 to i32
  %rem.i42 = urem i32 %17, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %18) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv7.i40, i64 %indvars.iv.i41
  %20 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %20) #11
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 2600
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !13

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next8.i45 = add nuw nsw i64 %indvars.iv7.i40, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i45, 2600
  br i1 %exitcond10.not.i, label %for.end12.i, label %for.cond2.preheader.i, !llvm.loop !14

for.end12.i:                                      ; preds = %for.inc10.i
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call14.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #11
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.inc36.i, %for.end12.i
  %indvars.iv15.i46 = phi i64 [ 0, %for.end12.i ], [ %indvars.iv.next16.i48, %for.inc36.i ]
  %23 = mul nuw nsw i64 %indvars.iv15.i46, 2600
  br label %for.body20.i

for.body20.i:                                     ; preds = %if.end27.i, %for.cond18.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next12.i, %if.end27.i ]
  %24 = add nuw nsw i64 %indvars.iv11.i, %23
  %25 = trunc i64 %24 to i32
  %rem23.i = urem i32 %25, 20
  %cmp24.i = icmp eq i32 %rem23.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %for.body20.i
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %26) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %for.body20.i
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx31.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i46, i64 %indvars.iv11.i
  %28 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %28) #11
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond14.not.i47 = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond14.not.i47, label %for.inc36.i, label %for.body20.i, !llvm.loop !15

for.inc36.i:                                      ; preds = %if.end27.i
  %indvars.iv.next16.i48 = add nuw nsw i64 %indvars.iv15.i46, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next16.i48, 2000
  br i1 %exitcond18.not.i, label %print_array.exit, label %for.cond18.preheader.i, !llvm.loop !16

print_array.exit:                                 ; preds = %for.inc36.i
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call39.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #11
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %30) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(i8* %call.i) #10
  tail call void @free(i8* %call.i30) #10
  tail call void @free(i8* nonnull %call.i31) #10
  ret i32 0
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %1 = bitcast i8* %0 to i64*
  %polly.subfunc.arg. = load i64, i64* %1, align 8
  %2 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %3 = bitcast i8* %2 to i8**
  %polly.subfunc.arg.call.i30 = load i8*, i8** %3, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %4 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %4, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %5 = mul i64 %polly.subfunc.arg., 20808
  %6 = add i64 %5, 8
  %scevgep3 = getelementptr i8, i8* %polly.subfunc.arg.call.i30, i64 %6
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %7 = shl i64 %polly.indvar.LB, 3
  %scevgep4 = getelementptr i8, i8* %scevgep3, i64 %7
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %8 = add i64 %smax, 1
  %9 = sub i64 %8, %polly.indvar.LB
  %10 = shl nuw i64 %9, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep4, i8 0, i64 %10, i1 false)
  %11 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %11, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_11(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.indvars.iv24.i = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %2 = bitcast i8* %1 to double**
  %polly.subfunc.arg.call.i301 = load double*, double** %2, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %4 = mul i64 %polly.subfunc.arg.indvars.iv24.i, 2601
  %5 = add i64 %4, 1
  %scevgep = getelementptr double, double* %polly.subfunc.arg.call.i301, i64 %5
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.loop_preheader
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %scevgep2 = getelementptr double, double* %scevgep, i64 %polly.indvar.LB
  %scevgep23 = bitcast double* %scevgep2 to i8*
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %6 = add i64 %smax, 1
  %7 = sub i64 %6, %polly.indvar.LB
  %8 = shl nuw i64 %7, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %scevgep23, i8 0, i64 %8, i1 false)
  %9 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.10, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %9, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

define internal void @main_polly_subfn_14(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %1 = bitcast i8* %0 to i64*
  %polly.subfunc.arg. = load i64, i64* %1, align 8
  %2 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %3 = bitcast i8* %2 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %3, align 8
  %4 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %5 = bitcast i8* %4 to double**
  %polly.subfunc.arg.call.i38.s2a = load double*, double** %5, align 8
  %6 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %7 = bitcast i8* %6 to i8**
  %polly.subfunc.arg.call.i31 = load i8*, i8** %7, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %8 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %8, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %9 = shl i64 %polly.subfunc.arg., 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %9
  %scevgep3 = getelementptr i8, i8* %polly.subfunc.arg.call.i31, i64 %9
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.body16.i, %polly.stmt.for.body16.i.prol.loopexit
  %10 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.13, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %10, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.body16.i:                          ; preds = %polly.stmt.for.body16.i.prol.loopexit, %polly.stmt.for.body16.i
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.body16.i ], [ %polly.indvar.unr.ph, %polly.stmt.for.body16.i.prol.loopexit ]
  %polly.subfunc.arg.call.i38.s2a.reload = load double, double* %polly.subfunc.arg.call.i38.s2a, align 8
  %11 = mul i64 %polly.indvar, 20800
  %scevgep1 = getelementptr i8, i8* %scevgep, i64 %11
  %scevgep12 = bitcast i8* %scevgep1 to double*
  %_p_scalar_ = load double, double* %scevgep12, align 8, !alias.scope !17, !noalias !19
  %p_div.i39 = fdiv double %_p_scalar_, %polly.subfunc.arg.call.i38.s2a.reload
  %scevgep4 = getelementptr i8, i8* %scevgep3, i64 %11
  %scevgep45 = bitcast i8* %scevgep4 to double*
  store double %p_div.i39, double* %scevgep45, align 8, !alias.scope !20, !noalias !22
  %polly.indvar_next = add i64 %polly.indvar, 1
  %polly.subfunc.arg.call.i38.s2a.reload.1 = load double, double* %polly.subfunc.arg.call.i38.s2a, align 8
  %12 = mul i64 %polly.indvar_next, 20800
  %scevgep1.1 = getelementptr i8, i8* %scevgep, i64 %12
  %scevgep12.1 = bitcast i8* %scevgep1.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep12.1, align 8, !alias.scope !17, !noalias !19
  %p_div.i39.1 = fdiv double %_p_scalar_.1, %polly.subfunc.arg.call.i38.s2a.reload.1
  %scevgep4.1 = getelementptr i8, i8* %scevgep3, i64 %12
  %scevgep45.1 = bitcast i8* %scevgep4.1 to double*
  store double %p_div.i39.1, double* %scevgep45.1, align 8, !alias.scope !20, !noalias !22
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.body16.i

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %13 = add i64 %smax, 1
  %14 = sub i64 %13, %polly.indvar.LB
  %xtraiter = and i64 %14, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.body16.i.prol.loopexit, label %polly.stmt.for.body16.i.prol

polly.stmt.for.body16.i.prol:                     ; preds = %polly.loop_preheader
  %polly.subfunc.arg.call.i38.s2a.reload.prol = load double, double* %polly.subfunc.arg.call.i38.s2a, align 8
  %15 = mul i64 %polly.indvar.LB, 20800
  %scevgep1.prol = getelementptr i8, i8* %scevgep, i64 %15
  %scevgep12.prol = bitcast i8* %scevgep1.prol to double*
  %_p_scalar_.prol = load double, double* %scevgep12.prol, align 8, !alias.scope !17, !noalias !19
  %p_div.i39.prol = fdiv double %_p_scalar_.prol, %polly.subfunc.arg.call.i38.s2a.reload.prol
  %scevgep4.prol = getelementptr i8, i8* %scevgep3, i64 %15
  %scevgep45.prol = bitcast i8* %scevgep4.prol to double*
  store double %p_div.i39.prol, double* %scevgep45.prol, align 8, !alias.scope !20, !noalias !22
  %polly.indvar_next.prol = add i64 %polly.indvar.LB, 1
  br label %polly.stmt.for.body16.i.prol.loopexit

polly.stmt.for.body16.i.prol.loopexit:            ; preds = %polly.stmt.for.body16.i.prol, %polly.loop_preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.body16.i.prol ], [ %polly.indvar.LB, %polly.loop_preheader ]
  %.not = icmp slt i64 %polly.indvar.LB, %polly.indvar.UB
  br i1 %.not, label %polly.stmt.for.body16.i, label %polly.par.checkNext
}

define internal void @main_polly_subfn_17(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.indvars.iv24.i = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i64*
  %polly.subfunc.arg. = load i64, i64* %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to double**
  %polly.subfunc.arg.call.i3029 = load double*, double** %4, align 8
  %5 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %6 = bitcast i8* %5 to i8**
  %polly.subfunc.arg.call.i31 = load i8*, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %8 = bitcast i8* %7 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %8, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %9 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %9, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %10 = shl i64 %polly.subfunc.arg., 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i31, i64 %10
  %11 = add i64 %10, 8
  %scevgep21 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %11
  %polly.access.mul.polly.subfunc.arg.call.i30 = mul nsw i64 %polly.subfunc.arg.indvars.iv24.i, 2600
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %12 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.16, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %12, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next33 = add i64 %indvars.iv32, -32
  %exitcond38.not = icmp eq i64 %polly.indvar, %smax37
  br i1 %exitcond38.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %.neg = mul i64 %polly.indvar.LB, -32
  %13 = sub i64 %.neg, %polly.subfunc.arg.indvars.iv24.i
  %smax37 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv32 = phi i64 [ %13, %polly.loop_preheader ], [ %indvars.iv.next33, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin34 = call i64 @llvm.smin.i64(i64 %indvars.iv32, i64 -2567)
  %14 = add nsw i64 %smin34, 2598
  %smax = call i64 @llvm.smax.i64(i64 %14, i64 0)
  %15 = shl nsw i64 %polly.indvar, 5
  %16 = add i64 %15, %polly.subfunc.arg.indvars.iv24.i
  %17 = sub i64 0, %16
  %polly.loop_guard39 = icmp sgt i64 %17, -2599
  br i1 %polly.loop_guard39, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %18 = mul nsw i64 %polly.indvar4.us, -32
  %smin40 = call i64 @llvm.smin.i64(i64 %18, i64 -1968)
  %19 = add nsw i64 %smin40, 2000
  %20 = shl nsw i64 %polly.indvar4.us, 5
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %21 = add nsw i64 %polly.indvar10.us, %15
  %22 = add i64 %21, 1
  %23 = add i64 %22, %polly.subfunc.arg.indvars.iv24.i
  %polly.access.add.polly.subfunc.arg.call.i30.us = add i64 %23, %polly.access.mul.polly.subfunc.arg.call.i30
  %polly.access.polly.subfunc.arg.call.i30.us = getelementptr double, double* %polly.subfunc.arg.call.i3029, i64 %polly.access.add.polly.subfunc.arg.call.i30.us
  %24 = shl i64 %21, 3
  %polly.access.polly.subfunc.arg.call.i30.promoted.us = load double, double* %polly.access.polly.subfunc.arg.call.i30.us, align 8, !alias.scope !23, !noalias !24
  br label %polly.stmt.for.body42.i.us

polly.stmt.for.body42.i.us:                       ; preds = %polly.stmt.for.body42.i.us, %polly.loop_preheader14.us
  %p_add56.i30.us = phi double [ %polly.access.polly.subfunc.arg.call.i30.promoted.us, %polly.loop_preheader14.us ], [ %p_add56.i.us.1, %polly.stmt.for.body42.i.us ]
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us.1, %polly.stmt.for.body42.i.us ]
  %niter = phi i64 [ %19, %polly.loop_preheader14.us ], [ %niter.nsub.1, %polly.stmt.for.body42.i.us ]
  %25 = add nuw nsw i64 %polly.indvar16.us, %20
  %26 = mul nuw nsw i64 %25, 20800
  %scevgep19.us = getelementptr i8, i8* %scevgep, i64 %26
  %scevgep1920.us = bitcast i8* %scevgep19.us to double*
  %_p_scalar_.us = load double, double* %scevgep1920.us, align 8, !alias.scope !20, !noalias !22
  %27 = add i64 %26, %24
  %scevgep22.us = getelementptr i8, i8* %scevgep21, i64 %27
  %scevgep2223.us = bitcast i8* %scevgep22.us to double*
  %_p_scalar_24.us = load double, double* %scevgep2223.us, align 8, !alias.scope !17, !noalias !19
  %p_mul51.i.us = fmul double %_p_scalar_.us, %_p_scalar_24.us
  %p_add56.i.us = fadd double %p_add56.i30.us, %p_mul51.i.us
  %polly.indvar_next17.us = or i64 %polly.indvar16.us, 1
  %28 = add nuw nsw i64 %polly.indvar_next17.us, %20
  %29 = mul nuw nsw i64 %28, 20800
  %scevgep19.us.1 = getelementptr i8, i8* %scevgep, i64 %29
  %scevgep1920.us.1 = bitcast i8* %scevgep19.us.1 to double*
  %_p_scalar_.us.1 = load double, double* %scevgep1920.us.1, align 8, !alias.scope !20, !noalias !22
  %30 = add i64 %29, %24
  %scevgep22.us.1 = getelementptr i8, i8* %scevgep21, i64 %30
  %scevgep2223.us.1 = bitcast i8* %scevgep22.us.1 to double*
  %_p_scalar_24.us.1 = load double, double* %scevgep2223.us.1, align 8, !alias.scope !17, !noalias !19
  %p_mul51.i.us.1 = fmul double %_p_scalar_.us.1, %_p_scalar_24.us.1
  %p_add56.i.us.1 = fadd double %p_add56.i.us, %p_mul51.i.us.1
  %polly.indvar_next17.us.1 = add nuw nsw i64 %polly.indvar16.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit15.us, label %polly.stmt.for.body42.i.us

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body42.i.us
  store double %p_add56.i.us.1, double* %polly.access.polly.subfunc.arg.call.i30.us, align 8, !alias.scope !23, !noalias !24
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond35.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond35.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %exitcond36.not = icmp eq i64 %polly.indvar_next5.us, 63
  br i1 %exitcond36.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_20(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.indvars.iv24.i = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i64*
  %polly.subfunc.arg. = load i64, i64* %2, align 8
  %3 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 16
  %4 = bitcast i8* %3 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %4, align 8
  %5 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 24
  %6 = bitcast i8* %5 to i8**
  %polly.subfunc.arg.call.i31 = load i8*, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 32
  %8 = bitcast i8* %7 to double**
  %polly.subfunc.arg.call.i3025 = load double*, double** %8, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %9 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %9, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %10 = shl i64 %polly.subfunc.arg., 3
  %11 = add i64 %10, 8
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %11
  %scevgep21 = getelementptr i8, i8* %polly.subfunc.arg.call.i31, i64 %10
  %polly.access.mul.polly.subfunc.arg.call.i30 = mul nsw i64 %polly.subfunc.arg.indvars.iv24.i, 2600
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %12 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.19, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %12, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next28 = add i64 %indvars.iv27, -32
  %exitcond33.not = icmp eq i64 %polly.indvar, %smax32
  br i1 %exitcond33.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %.neg = mul i64 %polly.indvar.LB, -32
  %13 = sub i64 %.neg, %polly.subfunc.arg.indvars.iv24.i
  %smax32 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv27 = phi i64 [ %13, %polly.loop_preheader ], [ %indvars.iv.next28, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin29 = call i64 @llvm.smin.i64(i64 %indvars.iv27, i64 -2567)
  %14 = add nsw i64 %smin29, 2598
  %smax = call i64 @llvm.smax.i64(i64 %14, i64 0)
  %15 = shl nsw i64 %polly.indvar, 5
  %16 = add i64 %15, %polly.subfunc.arg.indvars.iv24.i
  %17 = sub i64 0, %16
  %polly.loop_guard34 = icmp sgt i64 %17, -2599
  br i1 %polly.loop_guard34, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %18 = mul nsw i64 %polly.indvar4.us, -32
  %smin35 = call i64 @llvm.smin.i64(i64 %18, i64 -1968)
  %19 = add nsw i64 %smin35, 2000
  %20 = shl nsw i64 %polly.indvar4.us, 5
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %21 = add nsw i64 %polly.indvar10.us, %15
  %22 = add i64 %21, 1
  %23 = add i64 %22, %polly.subfunc.arg.indvars.iv24.i
  %polly.access.add.polly.subfunc.arg.call.i30.us = add i64 %23, %polly.access.mul.polly.subfunc.arg.call.i30
  %polly.access.polly.subfunc.arg.call.i30.us = getelementptr double, double* %polly.subfunc.arg.call.i3025, i64 %polly.access.add.polly.subfunc.arg.call.i30.us
  %polly.access.polly.subfunc.arg.call.i30.reload.us = load double, double* %polly.access.polly.subfunc.arg.call.i30.us, align 8, !alias.scope !21, !noalias !24, !llvm.access.group !25
  %24 = shl i64 %21, 3
  br label %polly.stmt.for.body62.i.us

polly.stmt.for.body62.i.us:                       ; preds = %polly.stmt.for.body62.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us.1, %polly.stmt.for.body62.i.us ]
  %niter = phi i64 [ %19, %polly.loop_preheader14.us ], [ %niter.nsub.1, %polly.stmt.for.body62.i.us ]
  %25 = add nuw nsw i64 %polly.indvar16.us, %20
  %26 = mul nuw nsw i64 %25, 20800
  %27 = add i64 %26, %24
  %scevgep19.us = getelementptr i8, i8* %scevgep, i64 %27
  %scevgep1920.us = bitcast i8* %scevgep19.us to double*
  %_p_scalar_.us = load double, double* %scevgep1920.us, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !25
  %scevgep22.us = getelementptr i8, i8* %scevgep21, i64 %26
  %scevgep2223.us = bitcast i8* %scevgep22.us to double*
  %_p_scalar_24.us = load double, double* %scevgep2223.us, align 8, !alias.scope !20, !noalias !22, !llvm.access.group !25
  %p_mul75.i.us = fmul double %polly.access.polly.subfunc.arg.call.i30.reload.us, %_p_scalar_24.us
  %p_sub.i.us = fsub double %_p_scalar_.us, %p_mul75.i.us
  store double %p_sub.i.us, double* %scevgep1920.us, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !25
  %polly.indvar_next17.us = or i64 %polly.indvar16.us, 1
  %28 = add nuw nsw i64 %polly.indvar_next17.us, %20
  %29 = mul nuw nsw i64 %28, 20800
  %30 = add i64 %29, %24
  %scevgep19.us.1 = getelementptr i8, i8* %scevgep, i64 %30
  %scevgep1920.us.1 = bitcast i8* %scevgep19.us.1 to double*
  %_p_scalar_.us.1 = load double, double* %scevgep1920.us.1, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !25
  %scevgep22.us.1 = getelementptr i8, i8* %scevgep21, i64 %29
  %scevgep2223.us.1 = bitcast i8* %scevgep22.us.1 to double*
  %_p_scalar_24.us.1 = load double, double* %scevgep2223.us.1, align 8, !alias.scope !20, !noalias !22, !llvm.access.group !25
  %p_mul75.i.us.1 = fmul double %polly.access.polly.subfunc.arg.call.i30.reload.us, %_p_scalar_24.us.1
  %p_sub.i.us.1 = fsub double %_p_scalar_.us.1, %p_mul75.i.us.1
  store double %p_sub.i.us.1, double* %scevgep1920.us.1, align 8, !alias.scope !17, !noalias !19, !llvm.access.group !25
  %polly.indvar_next17.us.1 = add nuw nsw i64 %polly.indvar16.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit15.us, label %polly.stmt.for.body62.i.us, !llvm.loop !26

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body62.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond30.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond30.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %exitcond31.not = icmp eq i64 %polly.indvar_next5.us, 63
  br i1 %exitcond31.not, label %polly.loop_exit3, label %polly.loop_if.us
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { "polly.skip.fn" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !18, !"polly.alias.scope.MemRef0"}
!18 = distinct !{!18, !"polly.alias.scope.domain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"polly.alias.scope.MemRef2"}
!21 = distinct !{!21, !18, !"polly.alias.scope.MemRef4"}
!22 = !{!17, !21}
!23 = !{!21}
!24 = !{!17, !20}
!25 = distinct !{}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.parallel_accesses", !25}
