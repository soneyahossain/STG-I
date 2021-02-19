; ModuleID = 'PUT.bc'
source_filename = "llvm.sin+cos_test.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"H\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z24isIsoscelesRightTriangledd(double %theta, double %hypotenuse) #0 {
entry:
  %retval = alloca i1, align 1
  %theta.addr = alloca double, align 8
  %hypotenuse.addr = alloca double, align 8
  %height = alloca double, align 8
  %base = alloca double, align 8
  store double %theta, double* %theta.addr, align 8
  store double %hypotenuse, double* %hypotenuse.addr, align 8
  %0 = load double, double* %theta.addr, align 8
  %1 = call double @llvm.sin.f64(double %0)
  %2 = load double, double* %hypotenuse.addr, align 8
  %3 = call double @llvm.sqrt.f64(double %2)
  %mul = fmul double %1, %3
  store double %mul, double* %height, align 8
  %4 = load double, double* %theta.addr, align 8
  %5 = call double @llvm.cos.f64(double %4)
  %6 = load double, double* %hypotenuse.addr, align 8
  %7 = call double @llvm.sqrt.f64(double %6)
  %mul1 = fmul double %5, %7
  store double %mul1, double* %base, align 8
  %8 = load double, double* %height, align 8
  %9 = load double, double* %base, align 8
  %sub = fsub double %8, %9
  %cmp = fcmp olt double %sub, 1.000000e-03
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %theta = alloca double, align 8
  %hyp_sqr = alloca double, align 8
  %is_isosceles = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store double 9.000000e+01, double* %theta, align 8
  store double 4.000000e+00, double* %hyp_sqr, align 8
  call void @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %theta, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_double(double* %hyp_sqr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %0 = load double, double* %theta, align 8
  %mul = fmul double %0, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %theta, align 8
  %1 = load double, double* %theta, align 8
  %2 = load double, double* %hyp_sqr, align 8
  %call = call zeroext i1 @_Z24isIsoscelesRightTriangledd(double %1, double %2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %is_isosceles, align 1
  call void @stg_end_test()
  %3 = load i8, i8* %is_isosceles, align 1
  %tobool = trunc i8 %3 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare void @stg_begin_test() #3

declare void @stg_symbolic_variable_double(double*, i8*) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
