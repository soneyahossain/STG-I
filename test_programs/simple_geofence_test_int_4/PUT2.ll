; ModuleID = 'PUT2.bc'
source_filename = "simple_geofence.int4.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Missing test parameter file\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid file specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"lat=%d lon=%d alt=%d inc=%d hlat=%d llat=%d hlon=%d llon=%d expected=%d\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"got different value\00"
@str.16 = private unnamed_addr constant [15 x i8] c"got same value\00"

; Function Attrs: nounwind ssp uwtable
define zeroext i1 @_Z11insideFenceiiiiiii(i32 %lat, i32 %lon, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %lon, %low_lon
  %cmp1 = icmp slt i32 %lon, %high_lon
  %or.cond = and i1 %cmp1, %cmp
  %cmp3 = icmp slt i32 %lat, %high_lat
  %or.cond45 = and i1 %cmp3, %or.cond
  %cmp4 = icmp sgt i32 %lat, %low_lat
  %narrow = and i1 %cmp4, %or.cond45
  %tobool = icmp ne i32 %inclusion, 0
  %lnot = xor i1 %tobool, true
  %cmp7 = icmp slt i32 %lon, %low_lon
  %cmp9 = icmp sgt i32 %lon, %high_lon
  %or.cond46 = or i1 %cmp9, %cmp7
  %cmp10 = icmp sgt i32 %lat, %high_lat
  %or.cond47 = or i1 %cmp10, %or.cond46
  %cmp12 = icmp slt i32 %lat, %low_lat
  %or.cond48 = or i1 %cmp12, %or.cond47
  %inside.1.v = xor i1 %tobool, %or.cond48
  %0 = xor i1 %narrow, %lnot
  %1 = xor i1 %0, %inside.1.v
  br i1 %1, label %if.else27, label %if.then26

if.then26:                                        ; preds = %entry
  %puts44 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.16, i64 0, i64 0))
  br label %if.end29

if.else27:                                        ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  ret i1 %inside.1.v
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiiiiiii(i32 %lat, i32 %lon, i32 %altitude, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %high_lon, %low_lon
  %cmp1 = icmp slt i32 %high_lat, %low_lat
  %or.cond = or i1 %cmp1, %cmp
  %cmp2 = icmp sgt i32 %altitude, 400
  %or.cond11 = or i1 %cmp2, %or.cond
  br i1 %or.cond11, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %cmp.i = icmp sgt i32 %lon, %low_lon
  %cmp1.i = icmp slt i32 %lon, %high_lon
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  %cmp3.i = icmp slt i32 %lat, %high_lat
  %or.cond45.i = and i1 %cmp3.i, %or.cond.i
  %cmp4.i = icmp sgt i32 %lat, %low_lat
  %narrow.i = and i1 %cmp4.i, %or.cond45.i
  %tobool.i = icmp ne i32 %inclusion, 0
  %lnot.i = xor i1 %tobool.i, true
  %cmp7.i = icmp slt i32 %lon, %low_lon
  %cmp9.i = icmp sgt i32 %lon, %high_lon
  %or.cond46.i = or i1 %cmp9.i, %cmp7.i
  %cmp10.i = icmp sgt i32 %lat, %high_lat
  %or.cond47.i = or i1 %cmp10.i, %or.cond46.i
  %cmp12.i = icmp slt i32 %lat, %low_lat
  %or.cond48.i = or i1 %cmp12.i, %or.cond47.i
  %inside.1.v.i = xor i1 %tobool.i, %or.cond48.i
  %0 = xor i1 %narrow.i, %lnot.i
  %1 = xor i1 %0, %inside.1.v.i
  br i1 %1, label %if.else27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end4
  %puts44.i = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.16, i64 0, i64 0)) #6
  br label %cleanup

if.else27.i:                                      ; preds = %if.end4
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0)) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else27.i, %if.then26.i, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %inside.1.v.i, %if.then26.i ], [ %inside.1.v.i, %if.else27.i ]
  ret i1 %retval.0
}

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #3 {
entry:
  %lat = alloca i32, align 4
  %lon = alloca i32, align 4
  %altitude = alloca i32, align 4
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %inclusion = alloca i32, align 4
  %buf = alloca [1001 x i8], align 16
  %expected = alloca i32, align 4
  %0 = bitcast i32* %lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = bitcast i32* %altitude to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %high_lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %low_lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = bitcast i32* %high_lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %6 = bitcast i32* %low_lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6
  %7 = bitcast i32* %inclusion to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #6
  %8 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1001, i8* nonnull %8) #6
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !4
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %9)
  tail call void @exit(i32 1) #7
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  %call1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %tobool = icmp eq %struct.__sFILE* %call1, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !4
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %12)
  tail call void @exit(i32 1) #7
  unreachable

if.end4:                                          ; preds = %if.else
  %14 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %14, double 0.000000e+00, double 0.000000e+00)
  %15 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %15, double 0.000000e+00, double 0.000000e+00)
  %16 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %16, double 0.000000e+00, double 0.000000e+00)
  %17 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %17, double 0.000000e+00, double 0.000000e+00)
  %18 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %18, double 0.000000e+00, double 0.000000e+00)
  %19 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %19, double 0.000000e+00, double 0.000000e+00)
  %20 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %20, double 0.000000e+00, double 0.000000e+00)
  %21 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %21, double 0.000000e+00, double 0.000000e+00)
  %call524 = call i8* @fgets(i8* nonnull %8, i32 1000, %struct.__sFILE* nonnull %call1)
  %tobool625 = icmp eq i8* %call524, null
  br i1 %tobool625, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end4
  %22 = bitcast i32* %expected to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #6
  %23 = load i8, i8* %8, align 16, !tbaa !8
  %cmp8 = icmp eq i8 %23, 35
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %while.body
  call void @stg_begin_test()
  %call12 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32* nonnull %lon, i32* nonnull %lat, i32* nonnull %altitude, i32* nonnull %inclusion, i32* nonnull %high_lon, i32* nonnull %low_lon, i32* nonnull %high_lat, i32* nonnull %low_lat, i32* nonnull %expected)
  %24 = load i32, i32* %lat, align 4, !tbaa !9
  %25 = load i32, i32* %lon, align 4, !tbaa !9
  %26 = load i32, i32* %altitude, align 4, !tbaa !9
  %27 = load i32, i32* %inclusion, align 4, !tbaa !9
  %28 = load i32, i32* %high_lat, align 4, !tbaa !9
  %29 = load i32, i32* %low_lat, align 4, !tbaa !9
  %30 = load i32, i32* %high_lon, align 4, !tbaa !9
  %31 = load i32, i32* %low_lon, align 4, !tbaa !9
  %32 = load i32, i32* %expected, align 4, !tbaa !9
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = load i32, i32* %lat, align 4, !tbaa !9
  %34 = load i32, i32* %lon, align 4, !tbaa !9
  %35 = load i32, i32* %altitude, align 4, !tbaa !9
  %36 = load i32, i32* %high_lat, align 4, !tbaa !9
  %37 = load i32, i32* %low_lat, align 4, !tbaa !9
  %38 = load i32, i32* %high_lon, align 4, !tbaa !9
  %39 = load i32, i32* %low_lon, align 4, !tbaa !9
  %cmp.i = icmp slt i32 %38, %39
  %cmp1.i = icmp slt i32 %36, %37
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  %cmp2.i = icmp sgt i32 %35, 400
  %or.cond11.i = or i1 %cmp2.i, %or.cond.i
  br i1 %or.cond11.i, label %_Z13checkGeofenceiiiiiiii.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end10
  %40 = load i32, i32* %inclusion, align 4, !tbaa !9
  %cmp.i.i = icmp sgt i32 %34, %39
  %cmp1.i.i = icmp slt i32 %34, %38
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.i.i
  %cmp3.i.i = icmp slt i32 %33, %36
  %or.cond45.i.i = and i1 %cmp3.i.i, %or.cond.i.i
  %cmp4.i.i = icmp sgt i32 %33, %37
  %narrow.i.i = and i1 %cmp4.i.i, %or.cond45.i.i
  %tobool.i.i = icmp ne i32 %40, 0
  %lnot.i.i = xor i1 %tobool.i.i, true
  %cmp7.i.i = icmp slt i32 %34, %39
  %cmp9.i.i = icmp sgt i32 %34, %38
  %or.cond46.i.i = or i1 %cmp9.i.i, %cmp7.i.i
  %cmp10.i.i = icmp sgt i32 %33, %36
  %or.cond47.i.i = or i1 %cmp10.i.i, %or.cond46.i.i
  %cmp12.i.i = icmp slt i32 %33, %37
  %or.cond48.i.i = or i1 %cmp12.i.i, %or.cond47.i.i
  %inside.1.v.i.i = xor i1 %or.cond48.i.i, %tobool.i.i
  %41 = xor i1 %narrow.i.i, %lnot.i.i
  %42 = xor i1 %41, %inside.1.v.i.i
  br i1 %42, label %if.else27.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end4.i
  %puts44.i.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.16, i64 0, i64 0)) #6
  br label %_Z13checkGeofenceiiiiiiii.exit

if.else27.i.i:                                    ; preds = %if.end4.i
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0)) #6
  br label %_Z13checkGeofenceiiiiiiii.exit

_Z13checkGeofenceiiiiiiii.exit:                   ; preds = %if.end10, %if.then26.i.i, %if.else27.i.i
  %retval.0.i = phi i1 [ false, %if.end10 ], [ %inside.1.v.i.i, %if.then26.i.i ], [ %inside.1.v.i.i, %if.else27.i.i ]
  call void @stg_end_test()
  %43 = load i32, i32* %expected, align 4, !tbaa !9
  %tobool15 = icmp eq i32 %43, 0
  %spec.select = xor i1 %retval.0.i, %tobool15
  call void @stg_record_test(i1 zeroext %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %while.body, %_Z13checkGeofenceiiiiiiii.exit
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #6
  %call5 = call i8* @fgets(i8* nonnull %8, i32 1000, %struct.__sFILE* nonnull %call1)
  %tobool6 = icmp eq i8* %call5, null
  br i1 %tobool6, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end4
  %call20 = call i32 @fclose(%struct.__sFILE* nonnull %call1)
  call void @llvm.lifetime.end.p0i8(i64 1001, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 0
}

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #4

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) local_unnamed_addr #5

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) local_unnamed_addr #2

declare void @stg_begin_test() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #2

declare void @stg_end_test() local_unnamed_addr #5

declare void @stg_record_test(i1 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @fclose(%struct.__sFILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
