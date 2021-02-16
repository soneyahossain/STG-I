; ModuleID = 'PUT.bc'
source_filename = "simple_geofence.int4.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"got same value\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got different value\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
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

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiiiiiii(i32 %lat, i32 %lon, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %inclusion.addr = alloca i32, align 4
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %inside = alloca i8, align 1
  %inside_ = alloca i8, align 1
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  store i32 %inclusion, i32* %inclusion.addr, align 4
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  store i8 0, i8* %inside, align 1
  %0 = load i32, i32* %lon.addr, align 4
  %1 = load i32, i32* %low_lon.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %lon.addr, align 4
  %3 = load i32, i32* %high_lon.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i32, i32* %lat.addr, align 4
  %5 = load i32, i32* %high_lat.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %6 = load i32, i32* %lat.addr, align 4
  %7 = load i32, i32* %low_lat.addr, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %conv = zext i1 %8 to i32
  %9 = load i32, i32* %inclusion.addr, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %conv5 = zext i1 %lnot to i32
  %xor = xor i32 %conv, %conv5
  %tobool6 = icmp ne i32 %xor, 0
  %frombool = zext i1 %tobool6 to i8
  store i8 %frombool, i8* %inside_, align 1
  %10 = load i32, i32* %lon.addr, align 4
  %11 = load i32, i32* %low_lon.addr, align 4
  %cmp7 = icmp sge i32 %10, %11
  br i1 %cmp7, label %land.lhs.true8, label %if.end14

land.lhs.true8:                                   ; preds = %land.end
  %12 = load i32, i32* %lon.addr, align 4
  %13 = load i32, i32* %high_lon.addr, align 4
  %cmp9 = icmp sle i32 %12, %13
  br i1 %cmp9, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true8
  %14 = load i32, i32* %lat.addr, align 4
  %15 = load i32, i32* %high_lat.addr, align 4
  %cmp10 = icmp sle i32 %14, %15
  br i1 %cmp10, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %if.then
  %16 = load i32, i32* %lat.addr, align 4
  %17 = load i32, i32* %low_lat.addr, align 4
  %cmp12 = icmp sge i32 %16, %17
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true11
  store i8 1, i8* %inside, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true11, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true8, %land.end
  %18 = load i32, i32* %inclusion.addr, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end14
  %19 = load i8, i8* %inside, align 1
  %tobool17 = trunc i8 %19 to i1
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  store i8 0, i8* %inside, align 1
  br label %if.end19

if.else:                                          ; preds = %if.then16
  store i8 1, i8* %inside, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end14
  %20 = load i8, i8* %inside, align 1
  %tobool21 = trunc i8 %20 to i1
  %conv22 = zext i1 %tobool21 to i32
  %21 = load i8, i8* %inside_, align 1
  %tobool23 = trunc i8 %21 to i1
  %conv24 = zext i1 %tobool23 to i32
  %cmp25 = icmp eq i32 %conv22, %conv24
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end29

if.else27:                                        ; preds = %if.end20
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %22 = load i8, i8* %inside, align 1
  %tobool30 = trunc i8 %22 to i1
  ret i1 %tobool30
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiiiiiii(i32 %lat, i32 %lon, i32 %altitude, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %retval = alloca i1, align 1
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %altitude.addr = alloca i32, align 4
  %inclusion.addr = alloca i32, align 4
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %acceptable = alloca i8, align 1
  %max_vertical_altitude = alloca i32, align 4
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  store i32 %altitude, i32* %altitude.addr, align 4
  store i32 %inclusion, i32* %inclusion.addr, align 4
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  store i8 1, i8* %acceptable, align 1
  store i32 400, i32* %max_vertical_altitude, align 4
  %0 = load i32, i32* %high_lon.addr, align 4
  %1 = load i32, i32* %low_lon.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %high_lat.addr, align 4
  %3 = load i32, i32* %low_lat.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %altitude.addr, align 4
  %5 = load i32, i32* %max_vertical_altitude, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %acceptable, align 1
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %lat.addr, align 4
  %7 = load i32, i32* %lon.addr, align 4
  %8 = load i32, i32* %inclusion.addr, align 4
  %9 = load i32, i32* %high_lat.addr, align 4
  %10 = load i32, i32* %low_lat.addr, align 4
  %11 = load i32, i32* %high_lon.addr, align 4
  %12 = load i32, i32* %low_lon.addr, align 4
  %call = call zeroext i1 @_Z11insideFenceiiiiiii(i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %acceptable, align 1
  %13 = load i8, i8* %acceptable, align 1
  %tobool = trunc i8 %13 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %14 = load i1, i1* %retval, align 1
  ret i1 %14
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %lat = alloca i32, align 4
  %lon = alloca i32, align 4
  %altitude = alloca i32, align 4
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %inclusion = alloca i32, align 4
  %params = alloca %struct.__sFILE*, align 8
  %buf = alloca [1001 x i8], align 16
  %expected = alloca i32, align 4
  %isGeofenced = alloca i8, align 1
  %testPassed = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.else:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call %struct.__sFILE* @"\01_fopen"(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct.__sFILE* %call1, %struct.__sFILE** %params, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %tobool = icmp ne %struct.__sFILE* %4, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = bitcast i32* %lat to i8*
  %7 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %7, double 0.000000e+00, double 0.000000e+00)
  %8 = bitcast i32* %lon to i8*
  %9 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %9, double 0.000000e+00, double 0.000000e+00)
  %10 = bitcast i32* %altitude to i8*
  %11 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %11, double 0.000000e+00, double 0.000000e+00)
  %12 = bitcast i32* %inclusion to i8*
  %13 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %13, double 0.000000e+00, double 0.000000e+00)
  %14 = bitcast i32* %high_lat to i8*
  %15 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %15, double 0.000000e+00, double 0.000000e+00)
  %16 = bitcast i32* %low_lat to i8*
  %17 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %17, double 0.000000e+00, double 0.000000e+00)
  %18 = bitcast i32* %high_lon to i8*
  %19 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %19, double 0.000000e+00, double 0.000000e+00)
  %20 = bitcast i32* %low_lon to i8*
  %21 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %21, double 0.000000e+00, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then9, %if.end4
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i32 0, i32 0
  %22 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct.__sFILE* %22)
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx7 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i64 0, i64 0
  %23 = load i8, i8* %arrayidx7, align 16
  %conv = sext i8 %23 to i32
  %cmp8 = icmp eq i32 %conv, 35
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  br label %while.cond

if.end10:                                         ; preds = %while.body
  call void @stg_begin_test()
  %arraydecay11 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i32 0, i32 0
  %call12 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i32* %lon, i32* %lat, i32* %altitude, i32* %inclusion, i32* %high_lon, i32* %low_lon, i32* %high_lat, i32* %low_lat, i32* %expected)
  %24 = load i32, i32* %lat, align 4
  %25 = load i32, i32* %lon, align 4
  %26 = load i32, i32* %altitude, align 4
  %27 = load i32, i32* %inclusion, align 4
  %28 = load i32, i32* %high_lat, align 4
  %29 = load i32, i32* %low_lat, align 4
  %30 = load i32, i32* %high_lon, align 4
  %31 = load i32, i32* %low_lon, align 4
  %32 = load i32, i32* %expected, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i32 0, i32 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %33 = load i32, i32* %lat, align 4
  %34 = load i32, i32* %lon, align 4
  %35 = load i32, i32* %altitude, align 4
  %36 = load i32, i32* %inclusion, align 4
  %37 = load i32, i32* %high_lat, align 4
  %38 = load i32, i32* %low_lat, align 4
  %39 = load i32, i32* %high_lon, align 4
  %40 = load i32, i32* %low_lon, align 4
  %call14 = call zeroext i1 @_Z13checkGeofenceiiiiiiii(i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %frombool = zext i1 %call14 to i8
  store i8 %frombool, i8* %isGeofenced, align 1
  call void @stg_end_test()
  %41 = load i32, i32* %expected, align 4
  %tobool15 = icmp ne i32 %41, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %42 = load i8, i8* %isGeofenced, align 1
  %tobool16 = trunc i8 %42 to i1
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %43 = load i8, i8* %isGeofenced, align 1
  %tobool17 = trunc i8 %43 to i1
  %lnot = xor i1 %tobool17, true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %tobool16, %cond.true ], [ %lnot, %cond.false ]
  %frombool18 = zext i1 %cond to i8
  store i8 %frombool18, i8* %testPassed, align 1
  %44 = load i8, i8* %testPassed, align 1
  %tobool19 = trunc i8 %44 to i1
  call void @stg_record_test(i1 zeroext %tobool19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %call20 = call i32 @fclose(%struct.__sFILE* %45)
  %46 = load i32, i32* %retval, align 4
  ret i32 %46
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

declare void @stg_begin_test() #1

declare i32 @sscanf(i8*, i8*, ...) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

declare i32 @fclose(%struct.__sFILE*) #1

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
