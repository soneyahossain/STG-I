; ModuleID = 'IPUT.bc'
source_filename = "globalFloatTest.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@short_ = global float 0x4017333340000000, align 4
@low_end_of_average = global float 0x40179999A0000000, align 4
@medium_end_of_average = global float 0x401470A3E0000000, align 4
@high_end_of_average = global float 6.000000e+00, align 4
@tall = global float 0x4018CCCCC0000000, align 4
@giant = global float 6.500000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1 = private unnamed_addr constant [17 x i8] c"(float 6.600000)\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@6 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@7 = private unnamed_addr constant [15 x i8] c"_Z6isTallf_RET\00", align 1
@8 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@12 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@13 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@14 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@15 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@16 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@17 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@19 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@20 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@21 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@22 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@23 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@24 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@25 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@26 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@27 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@28 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@29 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf1\00", align 1
@30 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@31 = private unnamed_addr constant [15 x i8] c"cmp__Z6isTallf\00", align 1
@32 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@34 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf1\00", align 1
@35 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@36 = private unnamed_addr constant [15 x i8] c"cmp__Z6isTallf\00", align 1
@37 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@38 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@39 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@40 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@41 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@42 = private unnamed_addr constant [16 x i8] c"conv__Z6isTallf\00", align 1
@43 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@44 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@45 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@46 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@47 = private unnamed_addr constant [16 x i8] c"cmp1__Z6isTallf\00", align 1
@48 = private unnamed_addr constant [18 x i8] c"(double 5.800000)\00", align 1
@49 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@50 = private unnamed_addr constant [16 x i8] c"conv__Z6isTallf\00", align 1
@51 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@52 = private unnamed_addr constant [16 x i8] c"cmp1__Z6isTallf\00", align 1
@53 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@54 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@55 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@56 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf4\00", align 1
@57 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@58 = private unnamed_addr constant [16 x i8] c"cmp2__Z6isTallf\00", align 1
@59 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@60 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@61 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf4\00", align 1
@62 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@63 = private unnamed_addr constant [16 x i8] c"cmp2__Z6isTallf\00", align 1
@64 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@65 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@66 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@67 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@68 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@69 = private unnamed_addr constant [17 x i8] c"conv5__Z6isTallf\00", align 1
@70 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@71 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@72 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@73 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@74 = private unnamed_addr constant [16 x i8] c"cmp6__Z6isTallf\00", align 1
@75 = private unnamed_addr constant [18 x i8] c"(double 5.100000)\00", align 1
@76 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@77 = private unnamed_addr constant [17 x i8] c"conv5__Z6isTallf\00", align 1
@78 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@79 = private unnamed_addr constant [16 x i8] c"cmp6__Z6isTallf\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"if.else4\00", align 1
@81 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@82 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@83 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf7\00", align 1
@84 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@85 = private unnamed_addr constant [16 x i8] c"cmp8__Z6isTallf\00", align 1
@86 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@87 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@88 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf7\00", align 1
@89 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@90 = private unnamed_addr constant [16 x i8] c"cmp8__Z6isTallf\00", align 1
@91 = private unnamed_addr constant [15 x i8] c"land.lhs.true7\00", align 1
@92 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@93 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@94 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf8\00", align 1
@95 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@96 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@97 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@98 = private unnamed_addr constant [17 x i8] c"cmp11__Z6isTallf\00", align 1
@99 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf8\00", align 1
@100 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@101 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@102 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@103 = private unnamed_addr constant [17 x i8] c"cmp11__Z6isTallf\00", align 1
@104 = private unnamed_addr constant [10 x i8] c"if.else10\00", align 1
@105 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@106 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@107 = private unnamed_addr constant [18 x i8] c"conv13__Z6isTallf\00", align 1
@108 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@109 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@111 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@112 = private unnamed_addr constant [17 x i8] c"cmp14__Z6isTallf\00", align 1
@113 = private unnamed_addr constant [18 x i8] c"conv13__Z6isTallf\00", align 1
@114 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@115 = private unnamed_addr constant [18 x i8] c"(double 6.100000)\00", align 1
@116 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@117 = private unnamed_addr constant [17 x i8] c"cmp14__Z6isTallf\00", align 1
@118 = private unnamed_addr constant [16 x i8] c"land.lhs.true12\00", align 1
@119 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"if.then15\00", align 1
@121 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf11\00", align 1
@122 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@123 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@124 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@125 = private unnamed_addr constant [17 x i8] c"cmp17__Z6isTallf\00", align 1
@126 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf11\00", align 1
@127 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@128 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@129 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@130 = private unnamed_addr constant [17 x i8] c"cmp17__Z6isTallf\00", align 1
@131 = private unnamed_addr constant [10 x i8] c"if.else16\00", align 1
@132 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@133 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@134 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf14\00", align 1
@135 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@136 = private unnamed_addr constant [17 x i8] c"cmp19__Z6isTallf\00", align 1
@137 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@138 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@139 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf14\00", align 1
@140 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@141 = private unnamed_addr constant [17 x i8] c"cmp19__Z6isTallf\00", align 1
@142 = private unnamed_addr constant [16 x i8] c"land.lhs.true18\00", align 1
@143 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@144 = private unnamed_addr constant [10 x i8] c"if.then20\00", align 1
@145 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@146 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@147 = private unnamed_addr constant [18 x i8] c"conv22__Z6isTallf\00", align 1
@148 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@149 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@150 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@151 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@152 = private unnamed_addr constant [17 x i8] c"cmp23__Z6isTallf\00", align 1
@153 = private unnamed_addr constant [18 x i8] c"(double 6.900000)\00", align 1
@154 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@155 = private unnamed_addr constant [18 x i8] c"conv22__Z6isTallf\00", align 1
@156 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@157 = private unnamed_addr constant [17 x i8] c"cmp23__Z6isTallf\00", align 1
@158 = private unnamed_addr constant [10 x i8] c"if.else21\00", align 1
@159 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@160 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@161 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf17\00", align 1
@162 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@163 = private unnamed_addr constant [17 x i8] c"cmp25__Z6isTallf\00", align 1
@164 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@165 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@166 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf17\00", align 1
@167 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@168 = private unnamed_addr constant [17 x i8] c"cmp25__Z6isTallf\00", align 1
@169 = private unnamed_addr constant [16 x i8] c"land.lhs.true24\00", align 1
@170 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@171 = private unnamed_addr constant [10 x i8] c"if.then26\00", align 1
@172 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@173 = private unnamed_addr constant [10 x i8] c"if.else27\00", align 1
@174 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@175 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@176 = private unnamed_addr constant [15 x i8] c"_Z6isTallf_RET\00", align 1
@177 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@178 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval_main = alloca i32, align 4
  %height_main = alloca float, align 4
  %istall_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  store float 0x401A666660000000, float* %height_main, align 4
  call void @stg_update_store_float(float* %height_main, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_float(float* %height_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %tmp_main = load float, float* %height_main, align 4
  call void @stg_update_load_float(float* %height_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0))
  %call_main = call zeroext i1 @_Z6isTallf(float %tmp_main)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @12, i32 0, i32 0), i1 %call_main)
  %frombool_main = zext i1 %call_main to i8
  store i8 %frombool_main, i8* %istall_main, align 1
  call void @stg_update_store_i8(i8* %istall_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main1 = load i8, i8* %istall_main, align 1
  call void @stg_update_load_i8(i8* %istall_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0))
  %tobool_main = trunc i8 %tmp_main1 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @20, i32 0, i32 0), i8 %tmp_main1)
  call void @stg_record_test(i1 zeroext %tobool_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @22, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @23, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_float(float*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z6isTallf(float %height) #2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @25, i32 0, i32 0))
  %retval__Z6isTallf = alloca i1, align 1
  %height.addr__Z6isTallf = alloca float, align 4
  store float %height, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_store_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @26, i32 0, i32 0))
  %tmp__Z6isTallf = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @28, i32 0, i32 0))
  %tmp__Z6isTallf1 = load float, float* @short_, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @29, i32 0, i32 0), float %tmp__Z6isTallf1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @30, i32 0, i32 0))
  %cmp__Z6isTallf = fcmp olt float %tmp__Z6isTallf, %tmp__Z6isTallf1
  call void @stg_update_cmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @35, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z6isTallf, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @36, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @37, i32 0, i32 0))
  br i1 %cmp__Z6isTallf, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @38, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  %tmp__Z6isTallf2 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @41, i32 0, i32 0))
  %conv__Z6isTallf = fpext float %tmp__Z6isTallf2 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @46, i32 0, i32 0), float %tmp__Z6isTallf2)
  %cmp1__Z6isTallf = fcmp ole double 5.800000e+00, %conv__Z6isTallf
  call void @stg_update_cmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @51, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @52, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @53, i32 0, i32 0))
  br i1 %cmp1__Z6isTallf, label %land.lhs.true, label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %tmp__Z6isTallf3 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @55, i32 0, i32 0))
  %tmp__Z6isTallf4 = load float, float* @low_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @56, i32 0, i32 0), float %tmp__Z6isTallf4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @57, i32 0, i32 0))
  %cmp2__Z6isTallf = fcmp ole float %tmp__Z6isTallf3, %tmp__Z6isTallf4
  call void @stg_update_cmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @63, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @64, i32 0, i32 0))
  br i1 %cmp2__Z6isTallf, label %if.then3, label %if.else4

if.then3:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @65, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0))
  br label %return

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %tmp__Z6isTallf5 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @68, i32 0, i32 0))
  %conv5__Z6isTallf = fpext float %tmp__Z6isTallf5 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @73, i32 0, i32 0), float %tmp__Z6isTallf5)
  %cmp6__Z6isTallf = fcmp ole double 5.100000e+00, %conv5__Z6isTallf
  call void @stg_update_cmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @78, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp6__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @79, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @80, i32 0, i32 0))
  br i1 %cmp6__Z6isTallf, label %land.lhs.true7, label %if.else10

land.lhs.true7:                                   ; preds = %if.else4
  %tmp__Z6isTallf6 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @82, i32 0, i32 0))
  %tmp__Z6isTallf7 = load float, float* @medium_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @83, i32 0, i32 0), float %tmp__Z6isTallf7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @84, i32 0, i32 0))
  %cmp8__Z6isTallf = fcmp ole float %tmp__Z6isTallf6, %tmp__Z6isTallf7
  call void @stg_update_cmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @89, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @90, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @91, i32 0, i32 0))
  br i1 %cmp8__Z6isTallf, label %if.then9, label %if.else10

if.then9:                                         ; preds = %land.lhs.true7
  store i1 false, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @92, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0))
  br label %return

if.else10:                                        ; preds = %land.lhs.true7, %if.else4
  %tmp__Z6isTallf8 = load float, float* @high_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @94, i32 0, i32 0), float %tmp__Z6isTallf8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @95, i32 0, i32 0))
  %tmp__Z6isTallf9 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @97, i32 0, i32 0))
  %cmp11__Z6isTallf = fcmp ole float %tmp__Z6isTallf8, %tmp__Z6isTallf9
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @102, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp11__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @103, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @104, i32 0, i32 0))
  br i1 %cmp11__Z6isTallf, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else10
  %tmp__Z6isTallf10 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @106, i32 0, i32 0))
  %conv13__Z6isTallf = fpext float %tmp__Z6isTallf10 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @111, i32 0, i32 0), float %tmp__Z6isTallf10)
  %cmp14__Z6isTallf = fcmp ole double %conv13__Z6isTallf, 6.100000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @116, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp14__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @117, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @118, i32 0, i32 0))
  br i1 %cmp14__Z6isTallf, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true12
  store i1 false, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @119, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @120, i32 0, i32 0))
  br label %return

if.else16:                                        ; preds = %land.lhs.true12, %if.else10
  %tmp__Z6isTallf11 = load float, float* @tall, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @121, i32 0, i32 0), float %tmp__Z6isTallf11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @122, i32 0, i32 0))
  %tmp__Z6isTallf12 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @124, i32 0, i32 0))
  %cmp17__Z6isTallf = fcmp ole float %tmp__Z6isTallf11, %tmp__Z6isTallf12
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @125, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @129, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp17__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @130, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @131, i32 0, i32 0))
  br i1 %cmp17__Z6isTallf, label %land.lhs.true18, label %if.else21

land.lhs.true18:                                  ; preds = %if.else16
  %tmp__Z6isTallf13 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @133, i32 0, i32 0))
  %tmp__Z6isTallf14 = load float, float* @giant, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @134, i32 0, i32 0), float %tmp__Z6isTallf14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @135, i32 0, i32 0))
  %cmp19__Z6isTallf = fcmp olt float %tmp__Z6isTallf13, %tmp__Z6isTallf14
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @136, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @137, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @140, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp19__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @141, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @142, i32 0, i32 0))
  br i1 %cmp19__Z6isTallf, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true18
  store i1 true, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @143, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @144, i32 0, i32 0))
  br label %return

if.else21:                                        ; preds = %land.lhs.true18, %if.else16
  %tmp__Z6isTallf15 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @146, i32 0, i32 0))
  %conv22__Z6isTallf = fpext float %tmp__Z6isTallf15 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @147, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @148, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @151, i32 0, i32 0), float %tmp__Z6isTallf15)
  %cmp23__Z6isTallf = fcmp ogt double 6.900000e+00, %conv22__Z6isTallf
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @153, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @154, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @155, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @156, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp23__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @157, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @158, i32 0, i32 0))
  br i1 %cmp23__Z6isTallf, label %land.lhs.true24, label %if.else27

land.lhs.true24:                                  ; preds = %if.else21
  %tmp__Z6isTallf16 = load float, float* %height.addr__Z6isTallf, align 4
  call void @stg_update_load_float(float* %height.addr__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @160, i32 0, i32 0))
  %tmp__Z6isTallf17 = load float, float* @giant, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @161, i32 0, i32 0), float %tmp__Z6isTallf17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @162, i32 0, i32 0))
  %cmp25__Z6isTallf = fcmp oge float %tmp__Z6isTallf16, %tmp__Z6isTallf17
  call void @stg_update_cmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @163, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @164, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @165, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @167, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp25__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @168, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @169, i32 0, i32 0))
  br i1 %cmp25__Z6isTallf, label %if.then26, label %if.else27

if.then26:                                        ; preds = %land.lhs.true24
  store i1 true, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @170, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @171, i32 0, i32 0))
  br label %return

if.else27:                                        ; preds = %land.lhs.true24, %if.else21
  store i1 false, i1* %retval__Z6isTallf, align 1
  call void @stg_update_store_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @172, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @173, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else27, %if.then26, %if.then20, %if.then15, %if.then9, %if.then3, %if.then
  %tmp__Z6isTallf18 = load i1, i1* %retval__Z6isTallf, align 1
  call void @stg_update_load_i1(i1* %retval__Z6isTallf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @175, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @176, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @177, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @178, i32 0, i32 0))
  ret i1 %tmp__Z6isTallf18
}

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
attributes #2 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
