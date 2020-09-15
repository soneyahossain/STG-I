; ModuleID = 'PUT.bc'
source_filename = "symbolic_array_2.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@__const.main.arr_2_0 = private unnamed_addr constant [2 x i32] [i32 2, i32 3], align 4
@__const.main.arr_2_1 = private unnamed_addr constant [2 x i32] [i32 2, i32 4], align 4
@__const.main.arr_2_2 = private unnamed_addr constant [2 x i32] [i32 1, i32 4], align 4
@__const.main.arr_2_3 = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4
@__const.main.arr_3_0 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@__const.main.arr_3_1 = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 6], align 4
@__const.main.arr_3_2 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 2], align 4
@__const.main.arr_3_3 = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@__const.main.arr_4_0 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@__const.main.arr_4_1 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 2], align 16
@__const.main.arr_4_2 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 1], align 16
@__const.main.arr_4_3 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 2], align 16
@__const.main.arr_4_4 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@__const.main.arr_4_5 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 2], align 16
@__const.main.arr_4_6 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@__const.main.arr_4_7 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 2], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr_2_0 = alloca [2 x i32], align 4
  %arr_2_1 = alloca [2 x i32], align 4
  %arr_2_2 = alloca [2 x i32], align 4
  %arr_2_3 = alloca [2 x i32], align 4
  %arr_3_0 = alloca [3 x i32], align 4
  %arr_3_1 = alloca [3 x i32], align 4
  %arr_3_2 = alloca [3 x i32], align 4
  %arr_3_3 = alloca [3 x i32], align 4
  %arr_4_0 = alloca [4 x i32], align 16
  %arr_4_1 = alloca [4 x i32], align 16
  %arr_4_2 = alloca [4 x i32], align 16
  %arr_4_3 = alloca [4 x i32], align 16
  %arr_4_4 = alloca [4 x i32], align 16
  %arr_4_5 = alloca [4 x i32], align 16
  %arr_4_6 = alloca [4 x i32], align 16
  %arr_4_7 = alloca [4 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %arr_2_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_0 to i8*), i64 8, i1 false)
  %1 = bitcast [2 x i32]* %arr_2_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_1 to i8*), i64 8, i1 false)
  %2 = bitcast [2 x i32]* %arr_2_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_2 to i8*), i64 8, i1 false)
  %3 = bitcast [2 x i32]* %arr_2_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_3 to i8*), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_0, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay, i32 2)
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_1, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay1, i32 2)
  %arraydecay2 = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_2, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay2, i32 2)
  %arraydecay3 = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_3, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay3, i32 2)
  %4 = bitcast [3 x i32]* %arr_3_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_0 to i8*), i64 12, i1 false)
  %5 = bitcast [3 x i32]* %arr_3_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_1 to i8*), i64 12, i1 false)
  %6 = bitcast [3 x i32]* %arr_3_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_2 to i8*), i64 12, i1 false)
  %7 = bitcast [3 x i32]* %arr_3_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_3 to i8*), i64 12, i1 false)
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_0, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay4, i32 3)
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_1, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay5, i32 3)
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_2, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay6, i32 3)
  %arraydecay7 = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_3, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay7, i32 3)
  %8 = bitcast [4 x i32]* %arr_4_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_0 to i8*), i64 16, i1 false)
  %9 = bitcast [4 x i32]* %arr_4_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_1 to i8*), i64 16, i1 false)
  %10 = bitcast [4 x i32]* %arr_4_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_2 to i8*), i64 16, i1 false)
  %11 = bitcast [4 x i32]* %arr_4_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_3 to i8*), i64 16, i1 false)
  %12 = bitcast [4 x i32]* %arr_4_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_4 to i8*), i64 16, i1 false)
  %13 = bitcast [4 x i32]* %arr_4_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_5 to i8*), i64 16, i1 false)
  %14 = bitcast [4 x i32]* %arr_4_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_6 to i8*), i64 16, i1 false)
  %15 = bitcast [4 x i32]* %arr_4_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_7 to i8*), i64 16, i1 false)
  %arraydecay8 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_0, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay8, i32 4)
  %arraydecay9 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_1, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay9, i32 4)
  %arraydecay10 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_2, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay10, i32 4)
  %arraydecay11 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_3, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay11, i32 4)
  %arraydecay12 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_4, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay12, i32 4)
  %arraydecay13 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_5, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay13, i32 4)
  %arraydecay14 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_6, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay14, i32 4)
  %arraydecay15 = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_7, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay15, i32 4)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline optnone ssp uwtable
define void @_Z25getAverageOfAllEvenNUmberPii(i32* %arr, i32 %size) #2 {
entry:
  %arr.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %sum = alloca i32, align 4
  %avg = alloca double, align 8
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_array(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, i8* %2, double 0.000000e+00, double 0.000000e+00)
  %3 = bitcast i32* %size.addr to i8*
  %4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), double 0.000000e+00, double 4.000000e+00, i8* %4, double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = bitcast i32* %7 to i8*
  call void @stg_input_array(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* %8)
  %9 = bitcast i32* %size.addr to i8*
  %10 = load i32, i32* %size.addr, align 4
  call void @stg_input_int(i8* %9, i32 %10)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %arr.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %rem = srem i32 %15, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %17 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %16, i64 %idxprom2
  %18 = load i32, i32* %arrayidx3, align 4
  %19 = load i32, i32* %sum, align 4
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %sum, align 4
  %20 = load i32, i32* %count, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %21, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  ret void
}

declare void @stg_symbolic_array(i8*, i8*, i32, i8*, double, double, i8*, double, double) #3

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #3

declare void @stg_begin_test() #3

declare void @stg_input_array(i8*, i8*, i32, i8*) #3

declare void @stg_input_int(i8*, i32) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
