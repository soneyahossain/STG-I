; ModuleID = 'OddEven.bc'
source_filename = "OddEven.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.OddEven = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d is even\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%d is odd\0A\00", align 1

@_ZN7OddEvenC1Ev = dso_local unnamed_addr alias void (%class.OddEven*), void (%class.OddEven*)* @_ZN7OddEvenC2Ev

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN7OddEvenC2Ev(%class.OddEven* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr, align 8
  %this1 = load %class.OddEven*, %class.OddEven** %this.addr, align 8
  %_number = getelementptr inbounds %class.OddEven, %class.OddEven* %this1, i32 0, i32 0
  store i32 0, i32* %_number, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr, align 8
  %this1 = load %class.OddEven*, %class.OddEven** %this.addr, align 8
  %_number = getelementptr inbounds %class.OddEven, %class.OddEven* %this1, i32 0, i32 0
  %0 = load i32, i32* %_number, align 4
  %rem = srem i32 %0, 2
  %tobool = icmp ne i32 %rem, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_ZN7OddEven5isOddEv(%class.OddEven* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr, align 8
  %this1 = load %class.OddEven*, %class.OddEven** %this.addr, align 8
  %call = call zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %this1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %oe = alloca %class.OddEven, align 4
  store i32 0, i32* %retval, align 4
  call void @_ZN7OddEvenC1Ev(%class.OddEven* %oe)
  %_number = getelementptr inbounds %class.OddEven, %class.OddEven* %oe, i32 0, i32 0
  %0 = bitcast i32* %_number to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double 5.000000e+01, double 6.000000e+01, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %_number1 = getelementptr inbounds %class.OddEven, %class.OddEven* %oe, i32 0, i32 0
  %1 = bitcast i32* %_number1 to i8*
  call void @stg_input_int(i8* %1, i32 5)
  %call = call zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %oe)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_number2 = getelementptr inbounds %class.OddEven, %class.OddEven* %oe, i32 0, i32 0
  %2 = load i32, i32* %_number2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call zeroext i1 @_ZN7OddEven5isOddEv(%class.OddEven* %oe)
  br i1 %call4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %_number6 = getelementptr inbounds %class.OddEven, %class.OddEven* %oe, i32 0, i32 0
  %3 = load i32, i32* %_number6, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #2

declare dso_local void @stg_begin_test() #2

declare dso_local void @stg_input_int(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @stg_end_test() #2

declare dso_local void @stg_record_test(i1 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
