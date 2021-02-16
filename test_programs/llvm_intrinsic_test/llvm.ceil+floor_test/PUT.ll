; ModuleID = 'PUT.bc'
source_filename = "llvm.ceil.floor_test.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Y\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13isGreaterThandf(double %x, float %y) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca double, align 8
  %y.addr = alloca float, align 4
  store double %x, double* %x.addr, align 8
  store float %y, float* %y.addr, align 4
  %0 = load double, double* %x.addr, align 8
  %1 = call double @llvm.ceil.f64(double %0)
  %2 = load float, float* %y.addr, align 4
  %conv = fpext float %2 to double
  %add = fadd double %1, %conv
  %3 = load float, float* %y.addr, align 4
  %call = call float @_ZL5floorf(float %3) #4
  %conv1 = fpext float %call to double
  %4 = load double, double* %x.addr, align 8
  %add2 = fadd double %conv1, %4
  %cmp = fcmp ogt double %add, %add2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal float @_ZL5floorf(float %__lcpp_x) #0 {
entry:
  %__lcpp_x.addr = alloca float, align 4
  store float %__lcpp_x, float* %__lcpp_x.addr, align 4
  %0 = load float, float* %__lcpp_x.addr, align 4
  %1 = call float @llvm.floor.f32(float %0)
  ret float %1
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca float, align 4
  %result = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %x)
  %call1 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %y)
  call void @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_float(float* %y, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %0 = load double, double* %x, align 8
  %1 = load float, float* %y, align 4
  %call2 = call zeroext i1 @_Z13isGreaterThandf(double %0, float %1)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %result, align 1
  call void @stg_end_test()
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare i32 @scanf(i8*, ...) #3

declare void @stg_begin_test() #3

declare void @stg_symbolic_variable_double(double*, i8*) #3

declare void @stg_symbolic_variable_float(float*, i8*) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
