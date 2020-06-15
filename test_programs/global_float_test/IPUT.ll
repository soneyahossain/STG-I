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
@prev_bb = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @154, i32 0, i32 0), align 4
@0 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@3 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@4 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@5 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@7 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@9 = private unnamed_addr constant [15 x i8] c"_Z6isTallf_RET\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@12 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@13 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@14 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@15 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@16 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf1\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@18 = private unnamed_addr constant [15 x i8] c"tmp__Z6isTallf\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@20 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf1\00", align 1
@21 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@22 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@23 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@24 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@25 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@26 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@27 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@28 = private unnamed_addr constant [5 x i8] c"conv\00", align 1
@29 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf2\00", align 1
@30 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@31 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@33 = private unnamed_addr constant [18 x i8] c"(double 5.800000)\00", align 1
@34 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"conv\00", align 1
@36 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@37 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@38 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@39 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@40 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@41 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf4\00", align 1
@42 = private unnamed_addr constant [5 x i8] c"cmp2\00", align 1
@43 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf3\00", align 1
@44 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@45 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf4\00", align 1
@46 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"cmp2\00", align 1
@48 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@49 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@51 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@52 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"conv5\00", align 1
@54 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf5\00", align 1
@55 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@56 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@57 = private unnamed_addr constant [5 x i8] c"cmp6\00", align 1
@58 = private unnamed_addr constant [18 x i8] c"(double 5.100000)\00", align 1
@59 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@60 = private unnamed_addr constant [6 x i8] c"conv5\00", align 1
@61 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@62 = private unnamed_addr constant [5 x i8] c"cmp6\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"if.else4\00", align 1
@64 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@65 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@66 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf7\00", align 1
@67 = private unnamed_addr constant [5 x i8] c"cmp8\00", align 1
@68 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf6\00", align 1
@69 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@70 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf7\00", align 1
@71 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@72 = private unnamed_addr constant [5 x i8] c"cmp8\00", align 1
@73 = private unnamed_addr constant [15 x i8] c"land.lhs.true7\00", align 1
@74 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@76 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf8\00", align 1
@77 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@78 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@79 = private unnamed_addr constant [6 x i8] c"cmp11\00", align 1
@80 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf8\00", align 1
@81 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@82 = private unnamed_addr constant [16 x i8] c"tmp__Z6isTallf9\00", align 1
@83 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@84 = private unnamed_addr constant [6 x i8] c"cmp11\00", align 1
@85 = private unnamed_addr constant [10 x i8] c"if.else10\00", align 1
@86 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@87 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@88 = private unnamed_addr constant [7 x i8] c"conv13\00", align 1
@89 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf10\00", align 1
@90 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@91 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@92 = private unnamed_addr constant [6 x i8] c"cmp14\00", align 1
@93 = private unnamed_addr constant [7 x i8] c"conv13\00", align 1
@94 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@95 = private unnamed_addr constant [18 x i8] c"(double 6.100000)\00", align 1
@96 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@97 = private unnamed_addr constant [6 x i8] c"cmp14\00", align 1
@98 = private unnamed_addr constant [16 x i8] c"land.lhs.true12\00", align 1
@99 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@100 = private unnamed_addr constant [10 x i8] c"if.then15\00", align 1
@101 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf11\00", align 1
@102 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@103 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"cmp17\00", align 1
@105 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf11\00", align 1
@106 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@107 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf12\00", align 1
@108 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@109 = private unnamed_addr constant [6 x i8] c"cmp17\00", align 1
@110 = private unnamed_addr constant [10 x i8] c"if.else16\00", align 1
@111 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@112 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@113 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf14\00", align 1
@114 = private unnamed_addr constant [6 x i8] c"cmp19\00", align 1
@115 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf13\00", align 1
@116 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@117 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf14\00", align 1
@118 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@119 = private unnamed_addr constant [6 x i8] c"cmp19\00", align 1
@120 = private unnamed_addr constant [16 x i8] c"land.lhs.true18\00", align 1
@121 = private unnamed_addr constant [7 x i8] c"(i1 \01)\00", align 1
@122 = private unnamed_addr constant [10 x i8] c"if.then20\00", align 1
@123 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@124 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@125 = private unnamed_addr constant [7 x i8] c"conv22\00", align 1
@126 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf15\00", align 1
@127 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@128 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@129 = private unnamed_addr constant [6 x i8] c"cmp23\00", align 1
@130 = private unnamed_addr constant [18 x i8] c"(double 6.900000)\00", align 1
@131 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@132 = private unnamed_addr constant [7 x i8] c"conv22\00", align 1
@133 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@134 = private unnamed_addr constant [6 x i8] c"cmp23\00", align 1
@135 = private unnamed_addr constant [10 x i8] c"if.else21\00", align 1
@136 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@137 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@138 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf17\00", align 1
@139 = private unnamed_addr constant [6 x i8] c"cmp25\00", align 1
@140 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf16\00", align 1
@141 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@142 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf17\00", align 1
@143 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@144 = private unnamed_addr constant [6 x i8] c"cmp25\00", align 1
@145 = private unnamed_addr constant [16 x i8] c"land.lhs.true24\00", align 1
@146 = private unnamed_addr constant [7 x i8] c"(i1 \01)\00", align 1
@147 = private unnamed_addr constant [10 x i8] c"if.then26\00", align 1
@148 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"if.else27\00", align 1
@150 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@151 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@152 = private unnamed_addr constant [15 x i8] c"_Z6isTallf_RET\00", align 1
@153 = private unnamed_addr constant [17 x i8] c"tmp__Z6isTallf18\00", align 1
@154 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %height = alloca float, align 4
  store i32 0, i32* %retval, align 4
  call void @stg_update_store(i32* %retval, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp_main = bitcast float* %height to i8*
  call void @stg_symbolic_variable(i8* %tmp_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %tmp_main1 = bitcast float* %height to i8*
  call void @stg_input_float(i8* %tmp_main1, float 0x401A666660000000)
  %tmp_main2 = load float, float* %height, align 4
  call void @stg_update_load_float(float* %height, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0))
  %call = call zeroext i1 @_Z6isTallf(float %tmp_main2)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call)
  call void @stg_end_test()
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable(i8*, i8*) #1

declare void @stg_input_float(i8*, float) #1

declare void @stg_assert(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z6isTallf(float %height) #2 {
entry:
  %retval = alloca i1, align 1
  %height.addr = alloca float, align 4
  store float %height, float* %height.addr, align 4
  call void @stg_update_store_float(float* %height.addr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0))
  %tmp__Z6isTallf = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @15, i32 0, i32 0))
  %tmp__Z6isTallf1 = load float, float* @short_, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @16, i32 0, i32 0), float %tmp__Z6isTallf1)
  %cmp = fcmp olt float %tmp__Z6isTallf, %tmp__Z6isTallf1
  call void @stg_update_cmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @21, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @22, i32 0, i32 0))
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %tmp__Z6isTallf2 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @27, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @31, i32 0, i32 0))
  %conv = fpext float %tmp__Z6isTallf2 to double
  %cmp1 = fcmp ole double 5.800000e+00, %conv
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @36, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @37, i32 0, i32 0))
  br i1 %cmp1, label %land.lhs.true, label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %tmp__Z6isTallf3 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @40, i32 0, i32 0))
  %tmp__Z6isTallf4 = load float, float* @low_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @41, i32 0, i32 0), float %tmp__Z6isTallf4)
  %cmp2 = fcmp ole float %tmp__Z6isTallf3, %tmp__Z6isTallf4
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0))
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %tmp__Z6isTallf5 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @52, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @56, i32 0, i32 0))
  %conv5 = fpext float %tmp__Z6isTallf5 to double
  %cmp6 = fcmp ole double 5.100000e+00, %conv5
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @61, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @62, i32 0, i32 0))
  br i1 %cmp6, label %land.lhs.true7, label %if.else10

land.lhs.true7:                                   ; preds = %if.else4
  %tmp__Z6isTallf6 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @65, i32 0, i32 0))
  %tmp__Z6isTallf7 = load float, float* @medium_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @66, i32 0, i32 0), float %tmp__Z6isTallf7)
  %cmp8 = fcmp ole float %tmp__Z6isTallf6, %tmp__Z6isTallf7
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @71, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @72, i32 0, i32 0))
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %land.lhs.true7
  store i1 false, i1* %retval, align 1
  br label %return

if.else10:                                        ; preds = %land.lhs.true7, %if.else4
  %tmp__Z6isTallf8 = load float, float* @high_end_of_average, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @76, i32 0, i32 0), float %tmp__Z6isTallf8)
  %tmp__Z6isTallf9 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @78, i32 0, i32 0))
  %cmp11 = fcmp ole float %tmp__Z6isTallf8, %tmp__Z6isTallf9
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @79, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @83, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @84, i32 0, i32 0))
  br i1 %cmp11, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else10
  %tmp__Z6isTallf10 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @87, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @91, i32 0, i32 0))
  %conv13 = fpext float %tmp__Z6isTallf10 to double
  %cmp14 = fcmp ole double %conv13, 6.100000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @96, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @97, i32 0, i32 0))
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true12
  store i1 false, i1* %retval, align 1
  br label %return

if.else16:                                        ; preds = %land.lhs.true12, %if.else10
  %tmp__Z6isTallf11 = load float, float* @tall, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @101, i32 0, i32 0), float %tmp__Z6isTallf11)
  %tmp__Z6isTallf12 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @103, i32 0, i32 0))
  %cmp17 = fcmp ole float %tmp__Z6isTallf11, %tmp__Z6isTallf12
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @108, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @109, i32 0, i32 0))
  br i1 %cmp17, label %land.lhs.true18, label %if.else21

land.lhs.true18:                                  ; preds = %if.else16
  %tmp__Z6isTallf13 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @112, i32 0, i32 0))
  %tmp__Z6isTallf14 = load float, float* @giant, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @113, i32 0, i32 0), float %tmp__Z6isTallf14)
  %cmp19 = fcmp olt float %tmp__Z6isTallf13, %tmp__Z6isTallf14
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @118, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @119, i32 0, i32 0))
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true18
  store i1 true, i1* %retval, align 1
  br label %return

if.else21:                                        ; preds = %land.lhs.true18, %if.else16
  %tmp__Z6isTallf15 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @124, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @125, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @128, i32 0, i32 0))
  %conv22 = fpext float %tmp__Z6isTallf15 to double
  %cmp23 = fcmp ogt double 6.900000e+00, %conv22
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @129, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @131, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @133, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @134, i32 0, i32 0))
  br i1 %cmp23, label %land.lhs.true24, label %if.else27

land.lhs.true24:                                  ; preds = %if.else21
  %tmp__Z6isTallf16 = load float, float* %height.addr, align 4
  call void @stg_update_load_float(float* %height.addr, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @137, i32 0, i32 0))
  %tmp__Z6isTallf17 = load float, float* @giant, align 4
  call void @stg_update_float(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @138, i32 0, i32 0), float %tmp__Z6isTallf17)
  %cmp25 = fcmp oge float %tmp__Z6isTallf16, %tmp__Z6isTallf17
  call void @stg_update_cmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @143, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0))
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %land.lhs.true24
  store i1 true, i1* %retval, align 1
  br label %return

if.else27:                                        ; preds = %land.lhs.true24, %if.else21
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else27, %if.then26, %if.then20, %if.then15, %if.then9, %if.then3, %if.then
  %tmp__Z6isTallf18 = load i1, i1* %retval, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @153, i32 0, i32 0))
  ret i1 %tmp__Z6isTallf18
}

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

declare void @stg_update_float(i8*, float)

declare void @stg_update_double(i8*, double)

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
