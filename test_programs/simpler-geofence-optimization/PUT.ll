; ModuleID = 'PUT.bc'
source_filename = "simpler_geofence.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %inside = alloca i8, align 1
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  store i8 0, i8* %inside, align 1
  %0 = load i32, i32* %lon.addr, align 4
  %1 = load i32, i32* %low_lon.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %lon.addr, align 4
  %3 = load i32, i32* %high_lon.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %lat.addr, align 4
  %5 = load i32, i32* %high_lat.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %if.then
  %6 = load i32, i32* %lat.addr, align 4
  %7 = load i32, i32* %low_lat.addr, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  store i8 1, i8* %inside, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %8 = load i8, i8* %inclusion.addr, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end6
  %9 = load i8, i8* %inside, align 1
  %tobool8 = trunc i8 %9 to i1
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  store i8 0, i8* %inside, align 1
  br label %if.end10

if.else:                                          ; preds = %if.then7
  store i8 1, i8* %inside, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end6
  %10 = load i8, i8* %inside, align 1
  %tobool12 = trunc i8 %10 to i1
  ret i1 %tobool12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %lat, i32 %lon, i32 %altitude, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %altitude.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  store i32 %altitude, i32* %altitude.addr, align 4
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  %0 = load i32, i32* %lat.addr, align 4
  %1 = load i32, i32* %lon.addr, align 4
  %2 = load i8, i8* %inclusion.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i32, i32* %high_lat.addr, align 4
  %4 = load i32, i32* %low_lat.addr, align 4
  %5 = load i32, i32* %high_lon.addr, align 4
  %6 = load i32, i32* %low_lon.addr, align 4
  %call = call zeroext i1 @_Z11insideFenceiibiiii(i32 %0, i32 %1, i1 zeroext %tobool, i32 %3, i32 %4, i32 %5, i32 %6)
  ret i1 %call
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %lat = alloca i32, align 4
  %lon = alloca i32, align 4
  %altitude = alloca i32, align 4
  %inclusion = alloca i32, align 4
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %isGeofenced = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast i32* %lat to i8*
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %2 = bitcast i32* %lon to i8*
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = bitcast i32* %altitude to i8*
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double 0.000000e+00, double 5.000000e+02, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %6 = bitcast i32* %inclusion to i8*
  %7 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, i8* %7, double 0.000000e+00, double 0.000000e+00)
  %8 = bitcast i32* %high_lat to i8*
  %9 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %9, double 0.000000e+00, double 0.000000e+00)
  %10 = bitcast i32* %low_lat to i8*
  %11 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %11, double 0.000000e+00, double 0.000000e+00)
  %12 = bitcast i32* %high_lon to i8*
  %13 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %13, double 0.000000e+00, double 0.000000e+00)
  %14 = bitcast i32* %low_lon to i8*
  %15 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), double -1.000000e+02, double 1.000000e+02, i8* %15, double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %16 = bitcast i32* %lat to i8*
  call void @stg_input_int(i8* %16, i32 10)
  %17 = bitcast i32* %lon to i8*
  call void @stg_input_int(i8* %17, i32 30)
  %18 = bitcast i32* %altitude to i8*
  call void @stg_input_int(i8* %18, i32 200)
  %19 = bitcast i32* %inclusion to i8*
  call void @stg_input_int(i8* %19, i32 0)
  %20 = bitcast i32* %high_lat to i8*
  call void @stg_input_int(i8* %20, i32 20)
  %21 = bitcast i32* %low_lat to i8*
  call void @stg_input_int(i8* %21, i32 5)
  %22 = bitcast i32* %high_lon to i8*
  call void @stg_input_int(i8* %22, i32 40)
  %23 = bitcast i32* %low_lon to i8*
  call void @stg_input_int(i8* %23, i32 20)
  %24 = load i32, i32* %lat, align 4
  %25 = load i32, i32* %lon, align 4
  %26 = load i32, i32* %altitude, align 4
  %27 = load i32, i32* %high_lat, align 4
  %28 = load i32, i32* %low_lat, align 4
  %29 = load i32, i32* %high_lon, align 4
  %30 = load i32, i32* %low_lon, align 4
  %call = call zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %24, i32 %25, i32 %26, i1 zeroext false, i32 %27, i32 %28, i32 %29, i32 %30)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isGeofenced, align 1
  call void @stg_end_test()
  %31 = load i8, i8* %isGeofenced, align 1
  %tobool = trunc i8 %31 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #2

declare void @stg_begin_test() #2

declare void @stg_input_int(i8*, i32) #2

declare void @stg_end_test() #2

declare void @stg_record_test(i1 zeroext) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
