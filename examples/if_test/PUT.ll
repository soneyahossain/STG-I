; ModuleID = 'PUT.bc'
source_filename = "if_else_if_else_min.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [42 x i8] c"among %d, %d, %d ,  minimum number is: %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z8find_miniii(i32 %num1, i32 %num2, i32 %num3) #0 {
entry:
  %num1.addr = alloca i32, align 4
  %num2.addr = alloca i32, align 4
  %num3.addr = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %num1, i32* %num1.addr, align 4
  store i32 %num2, i32* %num2.addr, align 4
  store i32 %num3, i32* %num3.addr, align 4
  %0 = load i32, i32* %num1.addr, align 4
  %1 = load i32, i32* %num2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %num1.addr, align 4
  %3 = load i32, i32* %num3.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %num1.addr, align 4
  store i32 %4, i32* %min, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* %num3.addr, align 4
  store i32 %5, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end8

if.else3:                                         ; preds = %entry
  %6 = load i32, i32* %num2.addr, align 4
  %7 = load i32, i32* %num3.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %8 = load i32, i32* %num2.addr, align 4
  store i32 %8, i32* %min, align 4
  br label %if.end7

if.else6:                                         ; preds = %if.else3
  %9 = load i32, i32* %num3.addr, align 4
  store i32 %9, i32* %min, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %10 = load i32, i32* %num1.addr, align 4
  %11 = load i32, i32* %num2.addr, align 4
  %12 = load i32, i32* %num3.addr, align 4
  %13 = load i32, i32* %min, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %10, i32 %11, i32 %12, i32 %13)
  %14 = load i32, i32* %min, align 4
  ret i32 %14
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %testpassed = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 38, i32* %a, align 4
  store i32 78, i32* %b, align 4
  store i32 78, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %2 = load i32, i32* %c, align 4
  %call = call i32 @_Z8find_miniii(i32 %0, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %testpassed, align 1
  call void @stg_end_test()
  %3 = load i8, i8* %testpassed, align 1
  %tobool1 = trunc i8 %3 to i1
  call void @stg_record_test(i1 zeroext %tobool1)
  store i32 1, i32* %a, align 4
  store i32 4, i32* %b, align 4
  store i32 3, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %b, align 4
  %6 = load i32, i32* %c, align 4
  %call2 = call i32 @_Z8find_miniii(i32 %4, i32 %5, i32 %6)
  %tobool3 = icmp ne i32 %call2, 0
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, i8* %testpassed, align 1
  call void @stg_end_test()
  %7 = load i8, i8* %testpassed, align 1
  %tobool5 = trunc i8 %7 to i1
  call void @stg_record_test(i1 zeroext %tobool5)
  store i32 1, i32* %a, align 4
  store i32 1, i32* %b, align 4
  store i32 1, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %c, align 4
  %call6 = call i32 @_Z8find_miniii(i32 %8, i32 %9, i32 %10)
  %tobool7 = icmp ne i32 %call6, 0
  %frombool8 = zext i1 %tobool7 to i8
  store i8 %frombool8, i8* %testpassed, align 1
  call void @stg_end_test()
  %11 = load i8, i8* %testpassed, align 1
  %tobool9 = trunc i8 %11 to i1
  call void @stg_record_test(i1 zeroext %tobool9)
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
