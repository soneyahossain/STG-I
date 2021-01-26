; ModuleID = 'simpler_missionPositionAltitude_checker.bc'
source_filename = "simpler_missionPositionAltitude_checker.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.mission_s = type { [20 x %struct.mission_item_s], i32 }
%struct.mission_item_s = type { double, double, float, i32, i8 }

@.str = private unnamed_addr constant [18 x i8] c"from function %p\0A\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"home_alt\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [15 x i8] c"home_alt_valid\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"home_alt\00", align 1
@8 = private unnamed_addr constant [53 x i8] c"frombool__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@9 = private unnamed_addr constant [15 x i8] c"home_alt_valid\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@12 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@13 = private unnamed_addr constant [53 x i8] c"frombool__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"(i64 0)\00", align 1
@15 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@16 = private unnamed_addr constant [48 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@17 = private unnamed_addr constant [48 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@18 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb1\00", align 1
@19 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb1\00", align 1
@20 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb2\00", align 1
@21 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb2\00", align 1
@22 = private unnamed_addr constant [49 x i8] c"conv__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@23 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb2\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@27 = private unnamed_addr constant [48 x i8] c"cmp__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@28 = private unnamed_addr constant [48 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@29 = private unnamed_addr constant [4 x i8] c"ult\00", align 1
@30 = private unnamed_addr constant [49 x i8] c"conv__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@32 = private unnamed_addr constant [48 x i8] c"cmp__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@33 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@34 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb3\00", align 1
@35 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb3\00", align 1
@36 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb4\00", align 1
@37 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb4\00", align 1
@38 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb5\00", align 1
@39 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb5\00", align 1
@40 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb6\00", align 1
@41 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb6\00", align 1
@42 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb7\00", align 1
@43 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb7\00", align 1
@44 = private unnamed_addr constant [51 x i8] c"tobool__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@45 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb7\00", align 1
@46 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@47 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@48 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@49 = private unnamed_addr constant [51 x i8] c"tobool__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@51 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb8\00", align 1
@52 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb8\00", align 1
@53 = private unnamed_addr constant [52 x i8] c"tobool3__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@54 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb8\00", align 1
@55 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@56 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@57 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@58 = private unnamed_addr constant [52 x i8] c"tobool3__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@59 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@60 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@61 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@62 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb9\00", align 1
@63 = private unnamed_addr constant [49 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb9\00", align 1
@64 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb10\00", align 1
@65 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb10\00", align 1
@66 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb11\00", align 1
@67 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb11\00", align 1
@68 = private unnamed_addr constant [52 x i8] c"tobool7__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@69 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb11\00", align 1
@70 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@71 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@72 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@73 = private unnamed_addr constant [52 x i8] c"tobool7__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@74 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@75 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb12\00", align 1
@76 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb12\00", align 1
@77 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb13\00", align 1
@78 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb13\00", align 1
@79 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb14\00", align 1
@80 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb14\00", align 1
@81 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb15\00", align 1
@82 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb15\00", align 1
@83 = private unnamed_addr constant [48 x i8] c"add__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@84 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb14\00", align 1
@85 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@86 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb15\00", align 1
@87 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@88 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb16\00", align 1
@89 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb16\00", align 1
@90 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb17\00", align 1
@91 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb17\00", align 1
@92 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb18\00", align 1
@93 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb18\00", align 1
@94 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@95 = private unnamed_addr constant [49 x i8] c"cond__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@96 = private unnamed_addr constant [120 x i8] c"cond.true,add__Z25checkHomePositionAltitudeRK9mission_sfb,cond.false,tmp__Z25checkHomePositionAltitudeRK9mission_sfb18,\00", align 1
@97 = private unnamed_addr constant [49 x i8] c"cond__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@98 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb19\00", align 1
@99 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb19\00", align 1
@100 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb20\00", align 1
@101 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb20\00", align 1
@102 = private unnamed_addr constant [50 x i8] c"cmp14__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@103 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb19\00", align 1
@104 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@105 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb20\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@107 = private unnamed_addr constant [50 x i8] c"cmp14__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@108 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@109 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@110 = private unnamed_addr constant [10 x i8] c"if.then15\00", align 1
@111 = private unnamed_addr constant [9 x i8] c"if.end16\00", align 1
@112 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb21\00", align 1
@113 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb21\00", align 1
@114 = private unnamed_addr constant [48 x i8] c"inc__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@115 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb21\00", align 1
@116 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@117 = private unnamed_addr constant [8 x i8] c"(i64 1)\00", align 1
@118 = private unnamed_addr constant [48 x i8] c"inc__Z25checkHomePositionAltitudeRK9mission_sfb\00", align 1
@119 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@120 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@121 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@122 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb22\00", align 1
@123 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb22\00", align 1
@124 = private unnamed_addr constant [48 x i8] c"_Z25checkHomePositionAltitudeRK9mission_sfb_RET\00", align 1
@125 = private unnamed_addr constant [50 x i8] c"tmp__Z25checkHomePositionAltitudeRK9mission_sfb22\00", align 1
@126 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sfb(%struct.mission_s* dereferenceable(648) %mission, float %home_alt, i1 zeroext %home_alt_valid) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  %retval__Z25checkHomePositionAltitudeRK9mission_sfb = alloca i1, align 1
  %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb = alloca %struct.mission_s*, align 8
  %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb = alloca float, align 4
  %home_alt_valid.addr__Z25checkHomePositionAltitudeRK9mission_sfb = alloca i8, align 1
  %i__Z25checkHomePositionAltitudeRK9mission_sfb = alloca i64, align 8
  %wp_alt__Z25checkHomePositionAltitudeRK9mission_sfb = alloca float, align 4
  store %struct.mission_s* %mission, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  store float %home_alt, float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 4
  call void @stg_update_store_float(float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @12, i32 0, i32 0), i1 %home_alt_valid)
  %frombool__Z25checkHomePositionAltitudeRK9mission_sfb = zext i1 %home_alt_valid to i8
  store i8 %frombool__Z25checkHomePositionAltitudeRK9mission_sfb, i8* %home_alt_valid.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_store_i8(i8* %home_alt_valid.addr__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @13, i32 0, i32 0))
  store i64 0, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_store_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @15, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @17, i32 0, i32 0))
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb1 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %count__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb1, i32 0, i32 1
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb2 = load i32, i32* %count__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i32(i32* %count__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @21, i32 0, i32 0))
  %conv__Z25checkHomePositionAltitudeRK9mission_sfb = sext i32 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb2 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @26, i32 0, i32 0), i32 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb2)
  %cmp__Z25checkHomePositionAltitudeRK9mission_sfb = icmp ult i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb, %conv__Z25checkHomePositionAltitudeRK9mission_sfb
  call void @stg_update_cmp(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @31, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @32, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @33, i32 0, i32 0))
  br i1 %cmp__Z25checkHomePositionAltitudeRK9mission_sfb, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb3 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %items__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb3, i32 0, i32 0
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb4 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @37, i32 0, i32 0))
  %arrayidx__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items__Z25checkHomePositionAltitudeRK9mission_sfb, i64 0, i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb4
  %altitude__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx__Z25checkHomePositionAltitudeRK9mission_sfb, i32 0, i32 2
  %call__Z25checkHomePositionAltitudeRK9mission_sfb = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), float* %altitude__Z25checkHomePositionAltitudeRK9mission_sfb)
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb5 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %items1__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb5, i32 0, i32 0
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb6 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @41, i32 0, i32 0))
  %arrayidx2__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items1__Z25checkHomePositionAltitudeRK9mission_sfb, i64 0, i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb6
  %altitude_is_relative__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx2__Z25checkHomePositionAltitudeRK9mission_sfb, i32 0, i32 4
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb7 = load i8, i8* %altitude_is_relative__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i8(i8* %altitude_is_relative__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @43, i32 0, i32 0))
  %tobool__Z25checkHomePositionAltitudeRK9mission_sfb = trunc i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb7 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @48, i32 0, i32 0), i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb7)
  call void @stg_update_pc(i1 %tobool__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @49, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0))
  br i1 %tobool__Z25checkHomePositionAltitudeRK9mission_sfb, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb8 = load i8, i8* %home_alt_valid.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_load_i8(i8* %home_alt_valid.addr__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @52, i32 0, i32 0))
  %tobool3__Z25checkHomePositionAltitudeRK9mission_sfb = trunc i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb8 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @57, i32 0, i32 0), i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb8)
  call void @stg_update_pc(i1 %tobool3__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @58, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @59, i32 0, i32 0))
  br i1 %tobool3__Z25checkHomePositionAltitudeRK9mission_sfb, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_store_i1(i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @60, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @61, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb9 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %items4__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb9, i32 0, i32 0
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb10 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @65, i32 0, i32 0))
  %arrayidx5__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4__Z25checkHomePositionAltitudeRK9mission_sfb, i64 0, i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb10
  %altitude_is_relative6__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx5__Z25checkHomePositionAltitudeRK9mission_sfb, i32 0, i32 4
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb11 = load i8, i8* %altitude_is_relative6__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i8(i8* %altitude_is_relative6__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @67, i32 0, i32 0))
  %tobool7__Z25checkHomePositionAltitudeRK9mission_sfb = trunc i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb11 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @72, i32 0, i32 0), i8 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb11)
  call void @stg_update_pc(i1 %tobool7__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @73, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @74, i32 0, i32 0))
  br i1 %tobool7__Z25checkHomePositionAltitudeRK9mission_sfb, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb12 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %items8__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb12, i32 0, i32 0
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb13 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @78, i32 0, i32 0))
  %arrayidx9__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items8__Z25checkHomePositionAltitudeRK9mission_sfb, i64 0, i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb13
  %altitude10__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx9__Z25checkHomePositionAltitudeRK9mission_sfb, i32 0, i32 2
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb14 = load float, float* %altitude10__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_float(float* %altitude10__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @80, i32 0, i32 0))
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb15 = load float, float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 4
  call void @stg_update_load_float(float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @82, i32 0, i32 0))
  %add__Z25checkHomePositionAltitudeRK9mission_sfb = fadd float %tmp__Z25checkHomePositionAltitudeRK9mission_sfb14, %tmp__Z25checkHomePositionAltitudeRK9mission_sfb15
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @86, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @87, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb16 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  %items11__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z25checkHomePositionAltitudeRK9mission_sfb16, i32 0, i32 0
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb17 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @91, i32 0, i32 0))
  %arrayidx12__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items11__Z25checkHomePositionAltitudeRK9mission_sfb, i64 0, i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb17
  %altitude13__Z25checkHomePositionAltitudeRK9mission_sfb = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12__Z25checkHomePositionAltitudeRK9mission_sfb, i32 0, i32 2
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb18 = load float, float* %altitude13__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_float(float* %altitude13__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @93, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @94, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__Z25checkHomePositionAltitudeRK9mission_sfb = phi float [ %add__Z25checkHomePositionAltitudeRK9mission_sfb, %cond.true ], [ %tmp__Z25checkHomePositionAltitudeRK9mission_sfb18, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @95, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @96, i32 0, i32 0))
  store float %cond__Z25checkHomePositionAltitudeRK9mission_sfb, float* %wp_alt__Z25checkHomePositionAltitudeRK9mission_sfb, align 4
  call void @stg_update_store_float(float* %wp_alt__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @97, i32 0, i32 0))
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb19 = load float, float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, align 4
  call void @stg_update_load_float(float* %home_alt.addr__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @99, i32 0, i32 0))
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb20 = load float, float* %wp_alt__Z25checkHomePositionAltitudeRK9mission_sfb, align 4
  call void @stg_update_load_float(float* %wp_alt__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @101, i32 0, i32 0))
  %cmp14__Z25checkHomePositionAltitudeRK9mission_sfb = fcmp ogt float %tmp__Z25checkHomePositionAltitudeRK9mission_sfb19, %tmp__Z25checkHomePositionAltitudeRK9mission_sfb20
  call void @stg_update_cmp(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @102, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @106, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp14__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @107, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @108, i32 0, i32 0))
  br i1 %cmp14__Z25checkHomePositionAltitudeRK9mission_sfb, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  store i1 false, i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_store_i1(i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @109, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @110, i32 0, i32 0))
  br label %return

if.end16:                                         ; preds = %cond.end
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb21 = load i64, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_load_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @113, i32 0, i32 0))
  %inc__Z25checkHomePositionAltitudeRK9mission_sfb = add i64 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb21, 1
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @117, i32 0, i32 0))
  store i64 %inc__Z25checkHomePositionAltitudeRK9mission_sfb, i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, align 8
  call void @stg_update_store_i64(i64* %i__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @118, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @119, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_store_i1(i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @120, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @121, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then
  %tmp__Z25checkHomePositionAltitudeRK9mission_sfb22 = load i1, i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, align 1
  call void @stg_update_load_i1(i1* %retval__Z25checkHomePositionAltitudeRK9mission_sfb, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @123, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @125, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @126, i32 0, i32 0))
  ret i1 %tmp__Z25checkHomePositionAltitudeRK9mission_sfb22
}

declare i32 @printf(i8*, ...) #1

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

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
