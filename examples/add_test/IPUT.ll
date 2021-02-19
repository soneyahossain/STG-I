; ModuleID = 'IPUT.bc'
source_filename = "add.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"(i32 -5)\00", align 1
@3 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@5 = private unnamed_addr constant [24 x i8] c"stg_pause_recording_RET\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@8 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"add_main\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@12 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@13 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"add_main\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@17 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@19 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@20 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@21 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@22 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@24 = private unnamed_addr constant [25 x i8] c"stg_resume_recording_RET\00", align 1
@25 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@26 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@27 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@28 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@29 = private unnamed_addr constant [10 x i8] c"add1_main\00", align 1
@30 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@32 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@33 = private unnamed_addr constant [10 x i8] c"cmp2_main\00", align 1
@34 = private unnamed_addr constant [10 x i8] c"add1_main\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@36 = private unnamed_addr constant [10 x i8] c"(i32 -10)\00", align 1
@37 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@38 = private unnamed_addr constant [10 x i8] c"cmp2_main\00", align 1
@39 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@40 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@41 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@42 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@43 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@44 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@45 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@46 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@47 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@48 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@49 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@50 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@51 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval_main = alloca i32, align 4
  %x_main = alloca i32, align 4
  %y_main = alloca i32, align 4
  %testPassed_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  store i32 0, i32* %x_main, align 4
  call void @stg_update_store_i32(i32* %x_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0))
  store i32 -5, i32* %y_main, align 4
  call void @stg_update_store_i32(i32* %y_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0))
  store i8 0, i8* %testPassed_main, align 1
  call void @stg_update_store_i8(i8* %testPassed_main, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %x_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %y_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_pause_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @5, i32 0, i32 0))
  %tmp_main = load i32, i32* %x_main, align 4
  call void @stg_update_load_i32(i32* %x_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0))
  %tmp_main1 = load i32, i32* %y_main, align 4
  call void @stg_update_load_i32(i32* %y_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0))
  %add_main = add nsw i32 %tmp_main, %tmp_main1
  call void @stg_update_op(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0))
  %cmp_main = icmp sgt i32 %add_main, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @20, i32 0, i32 0))
  br i1 %cmp_main, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %testPassed_main, align 1
  call void @stg_update_store_i8(i8* %testPassed_main, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_resume_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @24, i32 0, i32 0))
  %tmp_main2 = load i32, i32* %x_main, align 4
  call void @stg_update_load_i32(i32* %x_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @26, i32 0, i32 0))
  %tmp_main3 = load i32, i32* %y_main, align 4
  call void @stg_update_load_i32(i32* %y_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @28, i32 0, i32 0))
  %add1_main = add nsw i32 %tmp_main2, %tmp_main3
  call void @stg_update_op(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0))
  %cmp2_main = icmp sgt i32 %add1_main, -10
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @37, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @38, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  br i1 %cmp2_main, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %testPassed_main, align 1
  call void @stg_update_store_i8(i8* %testPassed_main, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @40, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @41, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @stg_end_test()
  %tmp_main4 = load i8, i8* %testPassed_main, align 1
  call void @stg_update_load_i8(i8* %testPassed_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @43, i32 0, i32 0))
  %tobool_main = trunc i8 %tmp_main4 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @48, i32 0, i32 0), i8 %tmp_main4)
  call void @stg_record_test(i1 zeroext %tobool_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @50, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @51, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare void @stg_pause_recording() #1

declare void @stg_resume_recording() #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_una_intrinsic(i8*, i8*, i8*, i8*)

declare void @stg_update_cast_i1(i8*, i8*, i8*, i8*, i8*, i1)

declare void @stg_update_cast_i8(i8*, i8*, i8*, i8*, i8*, i8)

declare void @stg_update_cast_i32(i8*, i8*, i8*, i8*, i8*, i32)

declare void @stg_update_cast_i64(i8*, i8*, i8*, i8*, i8*, i64)

declare void @stg_update_cast_float(i8*, i8*, i8*, i8*, i8*, float)

declare void @stg_update_cast_double(i8*, i8*, i8*, i8*, i8*, double)

declare void @stg_update_pc(i1, i8*)

declare void @stg_update_char(i8*, i8*)

declare void @stg_update_phi(i8*, i8*)

declare void @stg_update_int(i8*, i32, i8*)

declare void @stg_update_load_i32(i32*, i8*)

declare void @stg_update_input_i32(i32*)

declare void @stg_update_input_i64(i64*)

declare void @stg_update_input_float(float*)

declare void @stg_update_input_double(double*)

declare void @stg_update_store_i32(i32*, i8*)

declare void @stg_update_load_i8(i8*, i8*)

declare void @stg_update_store_i8(i8*, i8*)

declare void @stg_update_load_i1(i1*, i8*)

declare void @stg_update_store_i1(i1*, i8*)

declare void @stg_update_load_float(float*, i8*)

declare void @stg_update_store_float(float*, i8*)

declare void @stg_update_cmp(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_load_i64(i64*, i8*)

declare void @stg_update_store_i64(i64*, i8*)

declare void @stg_update_store_double(double*, i8*)

declare void @stg_update_load_double(double*, i8*)

declare void @stg_update_float(i8*, float, i8*)

declare void @stg_update_double(i8*, double, i8*)

declare void @stg_update_bin_intrinsic(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_prev_bb(i8*)

declare void @stg_update_select(i8*, i1, i8*, i8*, i8*, i8*)

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
