; ModuleID = 'PUT.bc'
source_filename = "fixed_fence.float.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Missing test parameter file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid file specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%f %f %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LON\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofencefffffffff(float %lat, float %lon, float %altitude, float %low_alt, float %high_alt, float %low_lat, float %high_lat, float %low_lon, float %high_lon) #0 {
entry:
  %lat.addr = alloca float, align 4
  %lon.addr = alloca float, align 4
  %altitude.addr = alloca float, align 4
  %low_alt.addr = alloca float, align 4
  %high_alt.addr = alloca float, align 4
  %low_lat.addr = alloca float, align 4
  %high_lat.addr = alloca float, align 4
  %low_lon.addr = alloca float, align 4
  %high_lon.addr = alloca float, align 4
  %inside = alloca i8, align 1
  store float %lat, float* %lat.addr, align 4
  store float %lon, float* %lon.addr, align 4
  store float %altitude, float* %altitude.addr, align 4
  store float %low_alt, float* %low_alt.addr, align 4
  store float %high_alt, float* %high_alt.addr, align 4
  store float %low_lat, float* %low_lat.addr, align 4
  store float %high_lat, float* %high_lat.addr, align 4
  store float %low_lon, float* %low_lon.addr, align 4
  store float %high_lon, float* %high_lon.addr, align 4
  store i8 1, i8* %inside, align 1
  %0 = load float, float* %altitude.addr, align 4
  %1 = load float, float* %low_alt.addr, align 4
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %inside, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load float, float* %altitude.addr, align 4
  %3 = load float, float* %high_alt.addr, align 4
  %cmp1 = fcmp ogt float %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 0, i8* %inside, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load float, float* %lat.addr, align 4
  %5 = load float, float* %low_lat.addr, align 4
  %cmp4 = fcmp olt float %4, %5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i8 0, i8* %inside, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load float, float* %lat.addr, align 4
  %7 = load float, float* %high_lat.addr, align 4
  %cmp7 = fcmp ogt float %6, %7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i8 0, i8* %inside, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %8 = load float, float* %lon.addr, align 4
  %9 = load float, float* %low_lon.addr, align 4
  %cmp10 = fcmp olt float %8, %9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i8 0, i8* %inside, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %10 = load float, float* %lon.addr, align 4
  %11 = load float, float* %high_lon.addr, align 4
  %cmp13 = fcmp ogt float %10, %11
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i8 0, i8* %inside, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %12 = load i8, i8* %inside, align 1
  %tobool = trunc i8 %12 to i1
  ret i1 %tobool
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %lat = alloca float, align 4
  %lon = alloca float, align 4
  %altitude = alloca float, align 4
  %low_alt = alloca float, align 4
  %high_alt = alloca float, align 4
  %high_lat = alloca float, align 4
  %low_lat = alloca float, align 4
  %high_lon = alloca float, align 4
  %low_lon = alloca float, align 4
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
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.else:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call %struct.__sFILE* @"\01_fopen"(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct.__sFILE* %call1, %struct.__sFILE** %params, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %tobool = icmp ne %struct.__sFILE* %4, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  store float 2.000000e+02, float* %altitude, align 4
  store float 7.000000e+01, float* %low_lat, align 4
  store float 8.000000e+01, float* %high_lat, align 4
  store float 1.500000e+02, float* %low_lon, align 4
  store float 1.700000e+02, float* %high_lon, align 4
  store float 0.000000e+00, float* %low_alt, align 4
  store float 4.000000e+02, float* %high_alt, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then9, %if.end4
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i32 0, i32 0
  %6 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct.__sFILE* %6)
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx7 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i64 0, i64 0
  %7 = load i8, i8* %arrayidx7, align 16
  %conv = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv, 35
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  br label %while.cond

if.end10:                                         ; preds = %while.body
  %arraydecay11 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i32 0, i32 0
  %call12 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), float* %lat, float* %lon, i32* %expected)
  call void @stg_begin_test()
  call void @stg_symbolic_variable_float(float* %lat, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_float(float* %lon, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  %8 = load float, float* %lat, align 4
  %9 = load float, float* %lon, align 4
  %call13 = call zeroext i1 @_Z13checkGeofencefffffffff(float %8, float %9, float 2.000000e+02, float 0.000000e+00, float 4.000000e+02, float 7.000000e+01, float 8.000000e+01, float 1.500000e+02, float 1.700000e+02)
  %frombool = zext i1 %call13 to i8
  store i8 %frombool, i8* %isGeofenced, align 1
  call void @stg_end_test()
  %10 = load i32, i32* %expected, align 4
  %tobool14 = icmp ne i32 %10, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %11 = load i8, i8* %isGeofenced, align 1
  %tobool15 = trunc i8 %11 to i1
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %12 = load i8, i8* %isGeofenced, align 1
  %tobool16 = trunc i8 %12 to i1
  %lnot = xor i1 %tobool16, true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %tobool15, %cond.true ], [ %lnot, %cond.false ]
  %frombool17 = zext i1 %cond to i8
  store i8 %frombool17, i8* %testPassed, align 1
  %13 = load i8, i8* %testPassed, align 1
  %tobool18 = trunc i8 %13 to i1
  call void @stg_record_test(i1 zeroext %tobool18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.__sFILE*, %struct.__sFILE** %params, align 8
  %call19 = call i32 @fclose(%struct.__sFILE* %14)
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @sscanf(i8*, i8*, ...) #2

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_float(float*, i8*) #2

declare void @stg_end_test() #2

declare void @stg_record_test(i1 zeroext) #2

declare i32 @fclose(%struct.__sFILE*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
