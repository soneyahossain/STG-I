; ModuleID = 'IPUT.bc'
source_filename = "llvm.pow_test.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@0 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@6 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterThandd\00", align 1
@7 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterThandd\00", align 1
@8 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd1\00", align 1
@9 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd1\00", align 1
@10 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd2\00", align 1
@11 = private unnamed_addr constant [13 x i8] c"llvm.pow.f64\00", align 1
@12 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@13 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterThandd\00", align 1
@14 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd1\00", align 1
@15 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd3\00", align 1
@16 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd3\00", align 1
@17 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@18 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd3\00", align 1
@19 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@21 = private unnamed_addr constant [25 x i8] c"call__Z13isGreaterThandd\00", align 1
@22 = private unnamed_addr constant [148 x i8] c"_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3__RET\00", align 1
@23 = private unnamed_addr constant [24 x i8] c"cmp__Z13isGreaterThandd\00", align 1
@24 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd2\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@26 = private unnamed_addr constant [25 x i8] c"call__Z13isGreaterThandd\00", align 1
@27 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@28 = private unnamed_addr constant [24 x i8] c"cmp__Z13isGreaterThandd\00", align 1
@29 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@30 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd4\00", align 1
@31 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd4\00", align 1
@32 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd5\00", align 1
@33 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd5\00", align 1
@34 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd6\00", align 1
@35 = private unnamed_addr constant [13 x i8] c"llvm.pow.f64\00", align 1
@36 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@37 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd4\00", align 1
@38 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd5\00", align 1
@39 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd6\00", align 1
@40 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@41 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd7\00", align 1
@42 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd7\00", align 1
@43 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@44 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd7\00", align 1
@45 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@46 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@47 = private unnamed_addr constant [26 x i8] c"call1__Z13isGreaterThandd\00", align 1
@48 = private unnamed_addr constant [148 x i8] c"_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3__RET\00", align 1
@49 = private unnamed_addr constant [26 x i8] c"call1__Z13isGreaterThandd\00", align 1
@50 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@51 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd8\00", align 1
@52 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd8\00", align 1
@53 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd9\00", align 1
@54 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd9\00", align 1
@55 = private unnamed_addr constant [26 x i8] c"tmp__Z13isGreaterThandd10\00", align 1
@56 = private unnamed_addr constant [13 x i8] c"llvm.pow.f64\00", align 1
@57 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@58 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd8\00", align 1
@59 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterThandd9\00", align 1
@60 = private unnamed_addr constant [25 x i8] c"cmp2__Z13isGreaterThandd\00", align 1
@61 = private unnamed_addr constant [26 x i8] c"tmp__Z13isGreaterThandd10\00", align 1
@62 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@63 = private unnamed_addr constant [18 x i8] c"(double 0.500000)\00", align 1
@64 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@65 = private unnamed_addr constant [25 x i8] c"cmp2__Z13isGreaterThandd\00", align 1
@66 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@67 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@68 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@69 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@70 = private unnamed_addr constant [9 x i8] c"if.else4\00", align 1
@71 = private unnamed_addr constant [26 x i8] c"tmp__Z13isGreaterThandd11\00", align 1
@72 = private unnamed_addr constant [26 x i8] c"tmp__Z13isGreaterThandd11\00", align 1
@73 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterThandd_RET\00", align 1
@74 = private unnamed_addr constant [26 x i8] c"tmp__Z13isGreaterThandd11\00", align 1
@75 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"__lcpp_x\00", align 1
@77 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"__lcpp_y\00", align 1
@79 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"__lcpp_x\00", align 1
@81 = private unnamed_addr constant [9 x i8] c"__lcpp_y\00", align 1
@82 = private unnamed_addr constant [148 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_\00", align 1
@83 = private unnamed_addr constant [148 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_\00", align 1
@84 = private unnamed_addr constant [149 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1\00", align 1
@85 = private unnamed_addr constant [149 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1\00", align 1
@86 = private unnamed_addr constant [149 x i8] c"conv__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_\00", align 1
@87 = private unnamed_addr constant [149 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1\00", align 1
@88 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@89 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@90 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@91 = private unnamed_addr constant [149 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_2\00", align 1
@92 = private unnamed_addr constant [13 x i8] c"llvm.pow.f64\00", align 1
@93 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@94 = private unnamed_addr constant [148 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_\00", align 1
@95 = private unnamed_addr constant [149 x i8] c"conv__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_\00", align 1
@96 = private unnamed_addr constant [148 x i8] c"_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3__RET\00", align 1
@97 = private unnamed_addr constant [149 x i8] c"tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_2\00", align 1
@98 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@99 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@100 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@101 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@102 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@103 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@105 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@107 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@108 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@109 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterThandd_RET\00", align 1
@110 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@111 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@112 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@113 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@114 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@115 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@116 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@117 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@118 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@119 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@121 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@122 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@123 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@124 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@125 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13isGreaterThandd(double %x, double %y) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  %retval__Z13isGreaterThandd = alloca i1, align 1
  %x.addr__Z13isGreaterThandd = alloca double, align 8
  %y.addr__Z13isGreaterThandd = alloca double, align 8
  %result__Z13isGreaterThandd = alloca double, align 8
  store double %x, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_store_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0))
  store double %y, double* %y.addr__Z13isGreaterThandd, align 8
  call void @stg_update_store_double(double* %y.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0))
  %tmp__Z13isGreaterThandd = load double, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @7, i32 0, i32 0))
  %tmp__Z13isGreaterThandd1 = load double, double* %y.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %y.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @9, i32 0, i32 0))
  call void @stg_update_bin_intrinsic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @14, i32 0, i32 0))
  %tmp__Z13isGreaterThandd2 = call double @llvm.pow.f64(double %tmp__Z13isGreaterThandd, double %tmp__Z13isGreaterThandd1)
  %tmp__Z13isGreaterThandd3 = load double, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @18, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @20, i32 0, i32 0))
  %call__Z13isGreaterThandd = call double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %tmp__Z13isGreaterThandd3, i32 2) #4
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([148 x i8], [148 x i8]* @22, i32 0, i32 0))
  %cmp__Z13isGreaterThandd = fcmp ogt double %tmp__Z13isGreaterThandd2, %call__Z13isGreaterThandd
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z13isGreaterThandd, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @29, i32 0, i32 0))
  br i1 %cmp__Z13isGreaterThandd, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp__Z13isGreaterThandd4 = load double, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @31, i32 0, i32 0))
  %tmp__Z13isGreaterThandd5 = load double, double* %y.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %y.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @33, i32 0, i32 0))
  call void @stg_update_bin_intrinsic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @38, i32 0, i32 0))
  %tmp__Z13isGreaterThandd6 = call double @llvm.pow.f64(double %tmp__Z13isGreaterThandd4, double %tmp__Z13isGreaterThandd5)
  store double %tmp__Z13isGreaterThandd6, double* %result__Z13isGreaterThandd, align 8
  call void @stg_update_store_double(double* %result__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @39, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @40, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %tmp__Z13isGreaterThandd7 = load double, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @42, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @44, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @46, i32 0, i32 0))
  %call1__Z13isGreaterThandd = call double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %tmp__Z13isGreaterThandd7, i32 2) #4
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([148 x i8], [148 x i8]* @48, i32 0, i32 0))
  store double %call1__Z13isGreaterThandd, double* %result__Z13isGreaterThandd, align 8
  call void @stg_update_store_double(double* %result__Z13isGreaterThandd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @49, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp__Z13isGreaterThandd8 = load double, double* %x.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %x.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @52, i32 0, i32 0))
  %tmp__Z13isGreaterThandd9 = load double, double* %y.addr__Z13isGreaterThandd, align 8
  call void @stg_update_load_double(double* %y.addr__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @54, i32 0, i32 0))
  call void @stg_update_bin_intrinsic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @59, i32 0, i32 0))
  %tmp__Z13isGreaterThandd10 = call double @llvm.pow.f64(double %tmp__Z13isGreaterThandd8, double %tmp__Z13isGreaterThandd9)
  %cmp2__Z13isGreaterThandd = fcmp ogt double %tmp__Z13isGreaterThandd10, 5.000000e-01
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @64, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z13isGreaterThandd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @65, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @66, i32 0, i32 0))
  br i1 %cmp2__Z13isGreaterThandd, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  store i1 true, i1* %retval__Z13isGreaterThandd, align 1
  call void @stg_update_store_i1(i1* %retval__Z13isGreaterThandd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @67, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @68, i32 0, i32 0))
  br label %return

if.else4:                                         ; preds = %if.end
  store i1 false, i1* %retval__Z13isGreaterThandd, align 1
  call void @stg_update_store_i1(i1* %retval__Z13isGreaterThandd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @69, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @70, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else4, %if.then3
  %tmp__Z13isGreaterThandd11 = load i1, i1* %retval__Z13isGreaterThandd, align 1
  call void @stg_update_load_i1(i1* %retval__Z13isGreaterThandd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @72, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @74, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @75, i32 0, i32 0))
  ret i1 %tmp__Z13isGreaterThandd11
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %__lcpp_x, i32 %__lcpp_y) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @77, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @79, i32 0, i32 0))
  %__lcpp_x.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_ = alloca double, align 8
  %__lcpp_y.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_ = alloca i32, align 4
  store double %__lcpp_x, double* %__lcpp_x.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, align 8
  call void @stg_update_store_double(double* %__lcpp_x.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0))
  store i32 %__lcpp_y, i32* %__lcpp_y.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, align 4
  call void @stg_update_store_i32(i32* %__lcpp_y.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @81, i32 0, i32 0))
  %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_ = load double, double* %__lcpp_x.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, align 8
  call void @stg_update_load_double(double* %__lcpp_x.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @83, i32 0, i32 0))
  %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1 = load i32, i32* %__lcpp_y.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, align 4
  call void @stg_update_load_i32(i32* %__lcpp_y.addr__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @85, i32 0, i32 0))
  %conv__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_ = sitofp i32 %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1 to double
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @90, i32 0, i32 0), i32 %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_1)
  call void @stg_update_bin_intrinsic(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([148 x i8], [148 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @95, i32 0, i32 0))
  %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_2 = call double @llvm.pow.f64(double %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_, double %conv__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_)
  call void @stg_update_char(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @97, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @98, i32 0, i32 0))
  ret double %tmp__ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_2
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval_main = alloca i32, align 4
  %base_main = alloca double, align 8
  %power_main = alloca double, align 8
  %result_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @99, i32 0, i32 0))
  %call_main = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %base_main)
  call void @stg_update_input_double(double* %base_main)
  %call1_main = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %power_main)
  call void @stg_update_input_double(double* %power_main)
  call void @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %base_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_double(double* %power_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main = load double, double* %base_main, align 8
  call void @stg_update_load_double(double* %base_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @101, i32 0, i32 0))
  %tmp_main1 = load double, double* %power_main, align 8
  call void @stg_update_load_double(double* %power_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @103, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @107, i32 0, i32 0))
  %call2_main = call zeroext i1 @_Z13isGreaterThandd(double %tmp_main, double %tmp_main1)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @109, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @114, i32 0, i32 0), i1 %call2_main)
  %frombool_main = zext i1 %call2_main to i8
  store i8 %frombool_main, i8* %result_main, align 1
  call void @stg_update_store_i8(i8* %result_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @115, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main2 = load i8, i8* %result_main, align 1
  call void @stg_update_load_i8(i8* %result_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @117, i32 0, i32 0))
  %tobool_main = trunc i8 %tmp_main2 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @122, i32 0, i32 0), i8 %tmp_main2)
  call void @stg_record_test(i1 zeroext %tobool_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @124, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @125, i32 0, i32 0))
  ret i32 0
}

declare i32 @scanf(i8*, ...) #3

declare void @stg_begin_test() #3

declare void @stg_symbolic_variable_double(double*, i8*) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

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
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
