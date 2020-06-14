; ModuleID = 'IPUT.bc'
source_filename = "add.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@prev_bb = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @50, i32 0, i32 0), align 4
@0 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@5 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@6 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@7 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@8 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@10 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@11 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@12 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@14 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@15 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@17 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@18 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@20 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@22 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@25 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@26 = private unnamed_addr constant [10 x i8] c"scanf_RET\00", align 1
@27 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@28 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@29 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@30 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@31 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@33 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@34 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@36 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@38 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@39 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@40 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@41 = private unnamed_addr constant [5 x i8] c"cmp3\00", align 1
@42 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@43 = private unnamed_addr constant [11 x i8] c"(i32 2789)\00", align 1
@44 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@45 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@46 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@47 = private unnamed_addr constant [9 x i8] c"if.else4\00", align 1
@48 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@50 = private unnamed_addr constant [8 x i8] c"if.end5\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @stg_update_store(i32* %retval, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp_main = bitcast i32* %x to i8*
  call void @stg_symbolic_variable(i8* %tmp_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %tmp_main1 = bitcast i32* %y to i8*
  call void @stg_symbolic_variable(i8* %tmp_main1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %tmp_main2 = bitcast i32* %x to i8*
  call void @stg_input_int(i8* %tmp_main2, i32 0)
  %tmp_main3 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0))
  %add = add nsw i32 %tmp_main3, 5
  call void @stg_update_op(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @12, i32 0, i32 0))
  store i32 %add, i32* %x, align 4
  call void @stg_update_store(i32* %x, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0))
  %tmp_main4 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0))
  %cmp = icmp sgt i32 %tmp_main4, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @21, i32 0, i32 0))
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @24, i32 0, i32 0))
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %y)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @26, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 10, i32* %y, align 4
  call void @stg_update_store(i32* %y, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp_main5 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @31, i32 0, i32 0))
  %cmp1 = icmp sgt i32 %tmp_main5, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @36, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @37, i32 0, i32 0))
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.end
  %tmp_main6 = load i32, i32* %y, align 4
  call void @stg_update_load(i32* %y, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @40, i32 0, i32 0))
  %cmp3 = icmp ne i32 %tmp_main6, 2789
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @45, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %cmp3)
  br label %if.end5

if.else4:                                         ; preds = %if.end
  call void @stg_assert(i1 zeroext true)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then2
  call void @stg_end_test()
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @49, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable(i8*, i8*) #1

declare void @stg_input_int(i8*, i32) #1

declare i32 @scanf(i8*, ...) #1

declare void @stg_assert(i1 zeroext) #1

declare void @stg_end_test() #1

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_cast(i8*, i8*, i8*, i8*)

declare void @stg_update_pc(i1, i8*)

declare void @stg_set_symbolic(i8*, i8*)

declare void @stg_update_char(i8*, i8*)

declare void @stg_update_phi(i8*, i8*, i8*)

declare void @stg_update_int(i8*, i32)

declare void @stg_update_load(i32*, i8*)

declare void @stg_update_store(i32*, i8*)

declare void @stg_update_load_i8(i8*, i8*)

declare void @stg_update_store_i8(i8*, i8*)

declare void @stg_update_load_float(float*, i8*)

declare void @stg_update_store_float(float*, i8*)

declare void @stg_update_cmp(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_load_i64(i64*, i8*)

declare void @stg_update_store_i64(i64*, i8*)

declare void @stg_update_store_double(double*, i8*)

declare void @stg_update_load_double(double*, i8*)

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
