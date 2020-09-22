; ModuleID = 'PUT.bc'
source_filename = "classify.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z8classifyiii(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp sle i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, i32* %type, align 4
  %3 = load i32, i32* %a.addr, align 4
  %4 = load i32, i32* %b.addr, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %type, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %type, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %a.addr, align 4
  %7 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %6, %7
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %8 = load i32, i32* %type, align 4
  %add9 = add nsw i32 %8, 2
  store i32 %add9, i32* %type, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %9 = load i32, i32* %b.addr, align 4
  %10 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp eq i32 %9, %10
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %11 = load i32, i32* %type, align 4
  %add13 = add nsw i32 %11, 3
  store i32 %add13, i32* %type, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %12 = load i32, i32* %type, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %a to i8*
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %2 = bitcast i32* %b to i8*
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = bitcast i32* %c to i8*
  %5 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %6 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %6, i32 38)
  %7 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %7, i32 38)
  %8 = bitcast i32* %c to i8*
  call void @stg_input_int(i8* %8, i32 38)
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %c, align 4
  %call = call i32 @_Z8classifyiii(i32 %9, i32 %10, i32 %11)
  store i32 %call, i32* %value, align 4
  call void @stg_end_test()
  %12 = load i32, i32* %value, align 4
  %cmp = icmp sgt i32 %12, 2
  call void @stg_record_test(i1 zeroext %cmp)
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
