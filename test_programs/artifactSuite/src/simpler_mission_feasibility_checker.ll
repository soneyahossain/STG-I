; ModuleID = 'simpler_mission_feasibility_checker.bc'
source_filename = "simpler_mission_feasibility_checker.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.mission_s = type { [20 x %struct.mission_item_s], i32 }
%struct.mission_item_s = type { double, double, float, i32, i8 }

@0 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@1 = private unnamed_addr constant [31 x i8] c"max_distance_between_waypoints\00", align 1
@2 = private unnamed_addr constant [64 x i8] c"frombool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@3 = private unnamed_addr constant [15 x i8] c"home_alt_valid\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@5 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@6 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@7 = private unnamed_addr constant [64 x i8] c"frombool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"home_alt\00", align 1
@9 = private unnamed_addr constant [65 x i8] c"frombool1__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@10 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@11 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@12 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@13 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@14 = private unnamed_addr constant [65 x i8] c"frombool1__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@16 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@18 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@19 = private unnamed_addr constant [59 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@20 = private unnamed_addr constant [59 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@21 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_1\00", align 1
@22 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_1\00", align 1
@23 = private unnamed_addr constant [59 x i8] c"cmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@24 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_1\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@26 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@28 = private unnamed_addr constant [59 x i8] c"cmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@29 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@30 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@31 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@32 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@33 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2\00", align 1
@34 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2\00", align 1
@35 = private unnamed_addr constant [62 x i8] c"tobool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@36 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2\00", align 1
@37 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@38 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@39 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@40 = private unnamed_addr constant [62 x i8] c"tobool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@41 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@42 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@43 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@44 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3\00", align 1
@45 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3\00", align 1
@46 = private unnamed_addr constant [63 x i8] c"tobool4__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@47 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3\00", align 1
@48 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@49 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@50 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@51 = private unnamed_addr constant [63 x i8] c"tobool4__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@52 = private unnamed_addr constant [8 x i8] c"if.end3\00", align 1
@53 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_4\00", align 1
@54 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_4\00", align 1
@55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@56 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_4\00", align 1
@57 = private unnamed_addr constant [60 x i8] c"call__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@58 = private unnamed_addr constant [45 x i8] c"_Z24checkMissionItemValidityRK9mission_s_RET\00", align 1
@59 = private unnamed_addr constant [60 x i8] c"lnot__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@60 = private unnamed_addr constant [60 x i8] c"call__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@61 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@62 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@63 = private unnamed_addr constant [8 x i8] c"lor.rhs\00", align 1
@64 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_5\00", align 1
@65 = private unnamed_addr constant [79 x i8] c"if.end3,1,lor.rhs,lnot__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_,\00", align 1
@66 = private unnamed_addr constant [65 x i8] c"frombool5__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@67 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_5\00", align 1
@68 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@69 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@70 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@71 = private unnamed_addr constant [65 x i8] c"frombool5__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@72 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6\00", align 1
@73 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6\00", align 1
@74 = private unnamed_addr constant [63 x i8] c"tobool6__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@75 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6\00", align 1
@76 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@77 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@78 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@79 = private unnamed_addr constant [63 x i8] c"tobool6__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@80 = private unnamed_addr constant [8 x i8] c"lor.end\00", align 1
@81 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_7\00", align 1
@82 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_7\00", align 1
@83 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_8\00", align 1
@84 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_8\00", align 1
@85 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@86 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_7\00", align 1
@87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@88 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_8\00", align 1
@89 = private unnamed_addr constant [61 x i8] c"call8__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@90 = private unnamed_addr constant [53 x i8] c"_Z30checkDistancesBetweenWaypointsRK9mission_sRf_RET\00", align 1
@91 = private unnamed_addr constant [61 x i8] c"lnot9__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@92 = private unnamed_addr constant [61 x i8] c"call8__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@93 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@94 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@95 = private unnamed_addr constant [9 x i8] c"lor.rhs7\00", align 1
@96 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_9\00", align 1
@97 = private unnamed_addr constant [81 x i8] c"lor.end,1,lor.rhs7,lnot9__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_,\00", align 1
@98 = private unnamed_addr constant [66 x i8] c"frombool11__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@99 = private unnamed_addr constant [60 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_9\00", align 1
@100 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@101 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@102 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@103 = private unnamed_addr constant [66 x i8] c"frombool11__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@104 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10\00", align 1
@105 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10\00", align 1
@106 = private unnamed_addr constant [64 x i8] c"tobool12__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@107 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10\00", align 1
@108 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@109 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@110 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@111 = private unnamed_addr constant [64 x i8] c"tobool12__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@112 = private unnamed_addr constant [10 x i8] c"lor.end10\00", align 1
@113 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_11\00", align 1
@114 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_11\00", align 1
@115 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12\00", align 1
@116 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12\00", align 1
@117 = private unnamed_addr constant [64 x i8] c"tobool14__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@118 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12\00", align 1
@119 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@120 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@121 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@122 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_13\00", align 1
@123 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_13\00", align 1
@124 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_14\00", align 1
@125 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_14\00", align 1
@126 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_15\00", align 1
@127 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_15\00", align 1
@128 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_16\00", align 1
@129 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_16\00", align 1
@130 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@131 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_11\00", align 1
@132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@133 = private unnamed_addr constant [64 x i8] c"tobool14__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@135 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_13\00", align 1
@136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@137 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_14\00", align 1
@138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@139 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_15\00", align 1
@140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@141 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_16\00", align 1
@142 = private unnamed_addr constant [62 x i8] c"call15__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@143 = private unnamed_addr constant [46 x i8] c"_Z13checkGeofenceRK9mission_sbRiS2_S2_S2__RET\00", align 1
@144 = private unnamed_addr constant [62 x i8] c"lnot16__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@145 = private unnamed_addr constant [62 x i8] c"call15__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@146 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@147 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@148 = private unnamed_addr constant [10 x i8] c"lor.rhs13\00", align 1
@149 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_17\00", align 1
@150 = private unnamed_addr constant [85 x i8] c"lor.end10,1,lor.rhs13,lnot16__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_,\00", align 1
@151 = private unnamed_addr constant [66 x i8] c"frombool18__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@152 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_17\00", align 1
@153 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@154 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@155 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@156 = private unnamed_addr constant [66 x i8] c"frombool18__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@157 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18\00", align 1
@158 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18\00", align 1
@159 = private unnamed_addr constant [64 x i8] c"tobool19__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@160 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18\00", align 1
@161 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@162 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@163 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@164 = private unnamed_addr constant [64 x i8] c"tobool19__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@165 = private unnamed_addr constant [10 x i8] c"lor.end17\00", align 1
@166 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_19\00", align 1
@167 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_19\00", align 1
@168 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_20\00", align 1
@169 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_20\00", align 1
@170 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21\00", align 1
@171 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21\00", align 1
@172 = private unnamed_addr constant [64 x i8] c"tobool21__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@173 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21\00", align 1
@174 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@175 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@176 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@177 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@178 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_19\00", align 1
@179 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@180 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_20\00", align 1
@181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@182 = private unnamed_addr constant [64 x i8] c"tobool21__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@183 = private unnamed_addr constant [62 x i8] c"call22__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@184 = private unnamed_addr constant [49 x i8] c"_Z25checkHomePositionAltitudeRK9mission_sRfb_RET\00", align 1
@185 = private unnamed_addr constant [62 x i8] c"lnot23__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@186 = private unnamed_addr constant [62 x i8] c"call22__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@187 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@188 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@189 = private unnamed_addr constant [10 x i8] c"lor.rhs20\00", align 1
@190 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_22\00", align 1
@191 = private unnamed_addr constant [85 x i8] c"lor.end17,1,lor.rhs20,lnot23__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_,\00", align 1
@192 = private unnamed_addr constant [66 x i8] c"frombool25__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@193 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_22\00", align 1
@194 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@195 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@196 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@197 = private unnamed_addr constant [66 x i8] c"frombool25__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@198 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23\00", align 1
@199 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23\00", align 1
@200 = private unnamed_addr constant [64 x i8] c"tobool26__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@201 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23\00", align 1
@202 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@203 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@204 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@205 = private unnamed_addr constant [64 x i8] c"tobool26__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_\00", align 1
@206 = private unnamed_addr constant [10 x i8] c"lor.end24\00", align 1
@207 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_24\00", align 1
@208 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_24\00", align 1
@209 = private unnamed_addr constant [59 x i8] c"_Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3__RET\00", align 1
@210 = private unnamed_addr constant [61 x i8] c"tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_24\00", align 1
@211 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_(%struct.mission_s* dereferenceable(648) %mission, float* dereferenceable(4) %max_distance_between_waypoints, i1 zeroext %home_alt_valid, float* dereferenceable(4) %home_alt, i1 zeroext %inclusion, i32* dereferenceable(4) %high_lat, i32* dereferenceable(4) %low_lat, i32* dereferenceable(4) %high_lon, i32* dereferenceable(4) %low_lon) #0 {
entry:
  %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i1, align 1
  %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca %struct.mission_s*, align 8
  %max_distance_between_waypoints.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca float*, align 8
  %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i8, align 1
  %home_alt.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca float*, align 8
  %inclusion.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i8, align 1
  %high_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i32*, align 8
  %low_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i32*, align 8
  %high_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i32*, align 8
  %low_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i32*, align 8
  %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = alloca i8, align 1
  store %struct.mission_s* %mission, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  store float* %max_distance_between_waypoints, float** %max_distance_between_waypoints.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @6, i32 0, i32 0), i1 %home_alt_valid)
  %frombool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %home_alt_valid to i8
  store i8 %frombool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @7, i32 0, i32 0))
  store float* %home_alt, float** %home_alt.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @13, i32 0, i32 0), i1 %inclusion)
  %frombool1__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %inclusion to i8
  store i8 %frombool1__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %inclusion.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %inclusion.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @14, i32 0, i32 0))
  store i32* %high_lat, i32** %high_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  store i32* %low_lat, i32** %low_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  store i32* %high_lon, i32** %high_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  store i32* %low_lon, i32** %low_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %count__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i32 0, i32 1
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_1 = load i32, i32* %count__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_load_i32(i32* %count__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @22, i32 0, i32 0))
  %cmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = icmp sle i32 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_1, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @28, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @29, i32 0, i32 0))
  br i1 %cmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i1(i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @30, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  store i8 0, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @32, i32 0, i32 0))
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2 = load i8, i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @34, i32 0, i32 0))
  %tobool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @39, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_2)
  call void @stg_update_pc(i1 %tobool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @40, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  br i1 %tobool__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @43, i32 0, i32 0))
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3 = load i8, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @45, i32 0, i32 0))
  %tobool4__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @50, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_3)
  call void @stg_update_pc(i1 %tobool4__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @51, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @52, i32 0, i32 0))
  br i1 %tobool4__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end3
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_4 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @56, i32 0, i32 0))
  %call__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = call zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_4)
  call void @stg_update_char(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @58, i32 0, i32 0))
  %lnot__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = xor i1 %call__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, true
  call void @stg_update_op(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @62, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @63, i32 0, i32 0))
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_5 = phi i1 [ true, %if.end3 ], [ %lnot__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, %lor.rhs ]
  call void @stg_update_phi(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @65, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @70, i32 0, i32 0), i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_5)
  %frombool5__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_5 to i8
  store i8 %frombool5__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @71, i32 0, i32 0))
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6 = load i8, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @73, i32 0, i32 0))
  %tobool6__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @78, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_6)
  call void @stg_update_pc(i1 %tobool6__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @79, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @80, i32 0, i32 0))
  br i1 %tobool6__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %lor.end10, label %lor.rhs7

lor.rhs7:                                         ; preds = %lor.end
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_7 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_8 = load float*, float** %max_distance_between_waypoints.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @86, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @88, i32 0, i32 0))
  %call8__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = call zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_7, float* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_8)
  call void @stg_update_char(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @90, i32 0, i32 0))
  %lnot9__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = xor i1 %call8__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, true
  call void @stg_update_op(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @94, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0))
  br label %lor.end10

lor.end10:                                        ; preds = %lor.rhs7, %lor.end
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_9 = phi i1 [ true, %lor.end ], [ %lnot9__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, %lor.rhs7 ]
  call void @stg_update_phi(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @97, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @102, i32 0, i32 0), i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_9)
  %frombool11__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_9 to i8
  store i8 %frombool11__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @103, i32 0, i32 0))
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10 = load i8, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @105, i32 0, i32 0))
  %tobool12__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @110, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_10)
  call void @stg_update_pc(i1 %tobool12__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @111, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @112, i32 0, i32 0))
  br i1 %tobool12__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %lor.end17, label %lor.rhs13

lor.rhs13:                                        ; preds = %lor.end10
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_11 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12 = load i8, i8* %inclusion.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %inclusion.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @116, i32 0, i32 0))
  %tobool14__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @117, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @121, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_12)
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_13 = load i32*, i32** %high_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_14 = load i32*, i32** %low_lat.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_15 = load i32*, i32** %high_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_16 = load i32*, i32** %low_lon.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @130, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @131, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @133, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @135, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @136, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @137, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @139, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @141, i32 0, i32 0))
  %call15__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = call zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_11, i1 zeroext %tobool14__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i32* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_13, i32* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_14, i32* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_15, i32* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_16)
  call void @stg_update_char(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @143, i32 0, i32 0))
  %lnot16__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = xor i1 %call15__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, true
  call void @stg_update_op(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @147, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @148, i32 0, i32 0))
  br label %lor.end17

lor.end17:                                        ; preds = %lor.rhs13, %lor.end10
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_17 = phi i1 [ true, %lor.end10 ], [ %lnot16__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, %lor.rhs13 ]
  call void @stg_update_phi(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @150, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @153, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @154, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @155, i32 0, i32 0), i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_17)
  %frombool18__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_17 to i8
  store i8 %frombool18__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @156, i32 0, i32 0))
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18 = load i8, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @158, i32 0, i32 0))
  %tobool19__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @161, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @163, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_18)
  call void @stg_update_pc(i1 %tobool19__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @164, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @165, i32 0, i32 0))
  br i1 %tobool19__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, label %lor.end24, label %lor.rhs20

lor.rhs20:                                        ; preds = %lor.end17
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_19 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_20 = load float*, float** %home_alt.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 8
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21 = load i8, i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %home_alt_valid.addr__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @171, i32 0, i32 0))
  %tobool21__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @173, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @175, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @176, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_21)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @178, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @180, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @181, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @182, i32 0, i32 0))
  %call22__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = call zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_19, float* dereferenceable(4) %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_20, i1 zeroext %tobool21__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_)
  call void @stg_update_char(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @183, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @184, i32 0, i32 0))
  %lnot23__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = xor i1 %call22__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, true
  call void @stg_update_op(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @185, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @188, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @189, i32 0, i32 0))
  br label %lor.end24

lor.end24:                                        ; preds = %lor.rhs20, %lor.end17
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_22 = phi i1 [ true, %lor.end17 ], [ %lnot23__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, %lor.rhs20 ]
  call void @stg_update_phi(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @190, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @191, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @192, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @196, i32 0, i32 0), i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_22)
  %frombool25__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = zext i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_22 to i8
  store i8 %frombool25__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @197, i32 0, i32 0))
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23 = load i8, i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i8(i8* %failed__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @199, i32 0, i32 0))
  %tobool26__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_ = trunc i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @200, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @202, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @203, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @204, i32 0, i32 0), i8 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_23)
  store i1 %tobool26__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_store_i1(i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @205, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @206, i32 0, i32 0))
  br label %return

return:                                           ; preds = %lor.end24, %if.then
  %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_24 = load i1, i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, align 1
  call void @stg_update_load_i1(i1* %retval__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @208, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @210, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @211, i32 0, i32 0))
  ret i1 %tmp__Z20checkMissionFeasibleRK9mission_sRfbS2_bRiS3_S3_S3_24
}

declare zeroext i1 @_Z24checkMissionItemValidityRK9mission_s(%struct.mission_s* dereferenceable(648)) #1

declare zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sRf(%struct.mission_s* dereferenceable(648), float* dereferenceable(4)) #1

declare zeroext i1 @_Z13checkGeofenceRK9mission_sbRiS2_S2_S2_(%struct.mission_s* dereferenceable(648), i1 zeroext, i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4)) #1

declare zeroext i1 @_Z25checkHomePositionAltitudeRK9mission_sRfb(%struct.mission_s* dereferenceable(648), float* dereferenceable(4), i1 zeroext) #1

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