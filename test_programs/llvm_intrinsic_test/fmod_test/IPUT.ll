; ModuleID = 'IPUT.bc'
source_filename = "fmod.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@0 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@9 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@12 = private unnamed_addr constant [18 x i8] c"tmp_isGreaterThan\00", align 1
@13 = private unnamed_addr constant [18 x i8] c"tmp_isGreaterThan\00", align 1
@14 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan1\00", align 1
@15 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan1\00", align 1
@16 = private unnamed_addr constant [19 x i8] c"fmod_isGreaterThan\00", align 1
@17 = private unnamed_addr constant [18 x i8] c"tmp_isGreaterThan\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"frem\00", align 1
@19 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan1\00", align 1
@20 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan2\00", align 1
@21 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan2\00", align 1
@22 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan3\00", align 1
@23 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan3\00", align 1
@24 = private unnamed_addr constant [20 x i8] c"fmod1_isGreaterThan\00", align 1
@25 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan2\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"frem\00", align 1
@27 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan3\00", align 1
@28 = private unnamed_addr constant [18 x i8] c"cmp_isGreaterThan\00", align 1
@29 = private unnamed_addr constant [19 x i8] c"fmod_isGreaterThan\00", align 1
@30 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@31 = private unnamed_addr constant [20 x i8] c"fmod1_isGreaterThan\00", align 1
@32 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@33 = private unnamed_addr constant [18 x i8] c"cmp_isGreaterThan\00", align 1
@34 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@35 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@37 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@38 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@39 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan4\00", align 1
@40 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan4\00", align 1
@41 = private unnamed_addr constant [18 x i8] c"isGreaterThan_RET\00", align 1
@42 = private unnamed_addr constant [19 x i8] c"tmp_isGreaterThan4\00", align 1
@43 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@44 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@45 = private unnamed_addr constant [18 x i8] c"(double 3.500000)\00", align 1
@46 = private unnamed_addr constant [18 x i8] c"(double 5.600000)\00", align 1
@47 = private unnamed_addr constant [18 x i8] c"(double 2.200000)\00", align 1
@48 = private unnamed_addr constant [18 x i8] c"(double 9.000000)\00", align 1
@49 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@51 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@52 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@53 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@54 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@55 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@56 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@57 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@59 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@60 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@61 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@62 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@63 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@64 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@65 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@66 = private unnamed_addr constant [18 x i8] c"isGreaterThan_RET\00", align 1
@67 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@68 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@69 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@70 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@71 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@72 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@73 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@74 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@75 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@76 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@77 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@78 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@79 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@81 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@82 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isGreaterThan(double %x, double %y, double %a, double %b) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  %retval_isGreaterThan = alloca i1, align 1
  %x.addr_isGreaterThan = alloca double, align 8
  %y.addr_isGreaterThan = alloca double, align 8
  %a.addr_isGreaterThan = alloca double, align 8
  %b.addr_isGreaterThan = alloca double, align 8
  store double %x, double* %x.addr_isGreaterThan, align 8
  call void @stg_update_store_double(double* %x.addr_isGreaterThan, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  store double %y, double* %y.addr_isGreaterThan, align 8
  call void @stg_update_store_double(double* %y.addr_isGreaterThan, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0))
  store double %a, double* %a.addr_isGreaterThan, align 8
  call void @stg_update_store_double(double* %a.addr_isGreaterThan, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  store double %b, double* %b.addr_isGreaterThan, align 8
  call void @stg_update_store_double(double* %b.addr_isGreaterThan, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0))
  %tmp_isGreaterThan = load double, double* %x.addr_isGreaterThan, align 8
  call void @stg_update_load_double(double* %x.addr_isGreaterThan, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @13, i32 0, i32 0))
  %tmp_isGreaterThan1 = load double, double* %y.addr_isGreaterThan, align 8
  call void @stg_update_load_double(double* %y.addr_isGreaterThan, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @15, i32 0, i32 0))
  %fmod_isGreaterThan = frem double %tmp_isGreaterThan, %tmp_isGreaterThan1
  call void @stg_update_op(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @19, i32 0, i32 0))
  %tmp_isGreaterThan2 = load double, double* %a.addr_isGreaterThan, align 8
  call void @stg_update_load_double(double* %a.addr_isGreaterThan, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @21, i32 0, i32 0))
  %tmp_isGreaterThan3 = load double, double* %b.addr_isGreaterThan, align 8
  call void @stg_update_load_double(double* %b.addr_isGreaterThan, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @23, i32 0, i32 0))
  %fmod1_isGreaterThan = frem double %tmp_isGreaterThan2, %tmp_isGreaterThan3
  call void @stg_update_op(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @27, i32 0, i32 0))
  %cmp_isGreaterThan = fcmp ogt double %fmod_isGreaterThan, %fmod1_isGreaterThan
  call void @stg_update_cmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @32, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_isGreaterThan, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @33, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @34, i32 0, i32 0))
  br i1 %cmp_isGreaterThan, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval_isGreaterThan, align 1
  call void @stg_update_store_i1(i1* %retval_isGreaterThan, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @35, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @36, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval_isGreaterThan, align 1
  call void @stg_update_store_i1(i1* %retval_isGreaterThan, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @37, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @38, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else, %if.then
  %tmp_isGreaterThan4 = load i1, i1* %retval_isGreaterThan, align 1
  call void @stg_update_load_i1(i1* %retval_isGreaterThan, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @40, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @42, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @43, i32 0, i32 0))
  ret i1 %tmp_isGreaterThan4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval_main = alloca i32, align 4
  %x_main = alloca double, align 8
  %y_main = alloca double, align 8
  %a_main = alloca double, align 8
  %b_main = alloca double, align 8
  %result_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @44, i32 0, i32 0))
  store double 3.500000e+00, double* %x_main, align 8
  call void @stg_update_store_double(double* %x_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @45, i32 0, i32 0))
  store double 5.600000e+00, double* %y_main, align 8
  call void @stg_update_store_double(double* %y_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @46, i32 0, i32 0))
  store double 2.200000e+00, double* %a_main, align 8
  call void @stg_update_store_double(double* %a_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @47, i32 0, i32 0))
  store double 9.000000e+00, double* %b_main, align 8
  call void @stg_update_store_double(double* %b_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @48, i32 0, i32 0))
  call void (...) @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %x_main, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_double(double* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %tmp_main = load double, double* %x_main, align 8
  call void @stg_update_load_double(double* %x_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0))
  %tmp_main1 = load double, double* %y_main, align 8
  call void @stg_update_load_double(double* %y_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @52, i32 0, i32 0))
  %tmp_main2 = load double, double* %a_main, align 8
  call void @stg_update_load_double(double* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @54, i32 0, i32 0))
  %tmp_main3 = load double, double* %b_main, align 8
  call void @stg_update_load_double(double* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @56, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @60, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @62, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @64, i32 0, i32 0))
  %call_main = call zeroext i1 @isGreaterThan(double %tmp_main, double %tmp_main1, double %tmp_main2, double %tmp_main3)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @66, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @71, i32 0, i32 0), i1 %call_main)
  %frombool_main = zext i1 %call_main to i8
  store i8 %frombool_main, i8* %result_main, align 1
  call void @stg_update_store_i8(i8* %result_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @72, i32 0, i32 0))
  call void (...) @stg_end_test()
  %tmp_main4 = load i8, i8* %result_main, align 1
  call void @stg_update_load_i8(i8* %result_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @74, i32 0, i32 0))
  %tobool_main = trunc i8 %tmp_main4 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @79, i32 0, i32 0), i8 %tmp_main4)
  call void @stg_record_test(i1 zeroext %tobool_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @81, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @82, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test(...) #1

declare void @stg_symbolic_variable_double(double*, i8*) #1

declare void @stg_end_test(...) #1

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}