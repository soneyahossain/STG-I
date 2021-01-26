; ModuleID = 'PUT.bc'
source_filename = "max.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z8find_maxii(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @stg_begin_test()
  %0 = bitcast i32* %a to i8*
  %1 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), double 0xC1E0000000000000, double 0x41DFFFFFFFC00000, i8* %1, double 0.000000e+00, double 0.000000e+00)
  %2 = bitcast i32* %b to i8*
  %3 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double 0xC1E0000000000000, double 0x41DFFFFFFFC00000, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %4, i32 0)
  %5 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %5, i32 1)
  %6 = load i32, i32* %a, align 4
  %7 = load i32, i32* %b, align 4
  %call = call i32 @_Z8find_maxii(i32 %6, i32 %7)
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #2

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
