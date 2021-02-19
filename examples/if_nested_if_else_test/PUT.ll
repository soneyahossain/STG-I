; ModuleID = 'PUT.bc'
source_filename = "nested_if_else.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Z\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z10isMaxOrMiniii(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.else3:                                         ; preds = %entry
  %4 = load i32, i32* %b.addr, align 4
  %5 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp sgt i32 %4, %5
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i1 true, i1* %retval, align 1
  br label %return

if.else6:                                         ; preds = %if.else3
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.else, %if.then2
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %testpassed = alloca i8, align 1
  store i32 550, i32* %a, align 4
  store i32 38, i32* %b, align 4
  store i32 58, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %2 = load i32, i32* %c, align 4
  %call = call zeroext i1 @_Z10isMaxOrMiniii(i32 %0, i32 %1, i32 %2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %testpassed, align 1
  call void @stg_end_test()
  %3 = load i8, i8* %testpassed, align 1
  %tobool = trunc i8 %3 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  store i32 0, i32* %a, align 4
  store i32 38, i32* %b, align 4
  store i32 10, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %b, align 4
  %6 = load i32, i32* %c, align 4
  %call1 = call zeroext i1 @_Z10isMaxOrMiniii(i32 %4, i32 %5, i32 %6)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %testpassed, align 1
  call void @stg_end_test()
  %7 = load i8, i8* %testpassed, align 1
  %tobool3 = trunc i8 %7 to i1
  call void @stg_record_test(i1 zeroext %tobool3)
  store i32 5, i32* %a, align 4
  store i32 38, i32* %b, align 4
  store i32 58, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %c, align 4
  %call4 = call zeroext i1 @_Z10isMaxOrMiniii(i32 %8, i32 %9, i32 %10)
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %testpassed, align 1
  call void @stg_end_test()
  %11 = load i8, i8* %testpassed, align 1
  %tobool6 = trunc i8 %11 to i1
  call void @stg_record_test(i1 zeroext %tobool6)
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_int(i32*, i8*) #2

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
