; ModuleID = 'PUT.bc'
source_filename = "llvm.exp_test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"S1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_Z13isGreaterThandf(double %x, float %y) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca double, align 8
  %y.addr = alloca float, align 4
  store double %x, double* %x.addr, align 8
  store float %y, float* %y.addr, align 4
  %0 = load double, double* %x.addr, align 8
  %call = call double @exp(double %0) #4
  %1 = load float, float* %y.addr, align 4
  %conv = fpext float %1 to double
  %call1 = call double @exp(double %conv) #4
  %cmp = fcmp ogt double %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca float, align 4
  %result = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store double 3.400000e+00, double* %x, align 8
  store float 0x400A666660000000, float* %y, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %x, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_float(float* %y, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %0 = load double, double* %x, align 8
  %1 = load float, float* %y, align 4
  %call = call zeroext i1 @_Z13isGreaterThandf(double %0, float %1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %result, align 1
  call void @stg_end_test()
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare dso_local void @stg_begin_test() #3

declare dso_local void @stg_symbolic_variable_double(double*, i8*) #3

declare dso_local void @stg_symbolic_variable_float(float*, i8*) #3

declare dso_local void @stg_end_test() #3

declare dso_local void @stg_record_test(i1 zeroext) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
