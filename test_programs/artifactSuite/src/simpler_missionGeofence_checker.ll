; ModuleID = 'simpler_missionGeofence_checker.bc'
source_filename = "simpler_missionGeofence_checker.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.mission_s = type { [20 x %struct.mission_item_s], i32 }
%struct.mission_item_s = type { double, double, float, i32, i8 }

@0 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@9 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@12 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@13 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@14 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@16 = private unnamed_addr constant [32 x i8] c"frombool__Z11insideFenceiibiiii\00", align 1
@17 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@18 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@19 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@20 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@21 = private unnamed_addr constant [32 x i8] c"frombool__Z11insideFenceiibiiii\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@23 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@25 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@26 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@27 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@28 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@29 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@30 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@31 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiibiiii\00", align 1
@32 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@34 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@36 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiibiiii\00", align 1
@37 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@38 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@39 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@40 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@41 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@42 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiibiiii\00", align 1
@43 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@44 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@45 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@46 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@47 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiibiiii\00", align 1
@48 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@49 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@50 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@51 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@52 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@53 = private unnamed_addr constant [28 x i8] c"cmp2__Z11insideFenceiibiiii\00", align 1
@54 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@55 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@56 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@57 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@58 = private unnamed_addr constant [28 x i8] c"cmp2__Z11insideFenceiibiiii\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@60 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@61 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@62 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@63 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@64 = private unnamed_addr constant [28 x i8] c"cmp4__Z11insideFenceiibiiii\00", align 1
@65 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@67 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@68 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@69 = private unnamed_addr constant [28 x i8] c"cmp4__Z11insideFenceiibiiii\00", align 1
@70 = private unnamed_addr constant [15 x i8] c"land.lhs.true3\00", align 1
@71 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@72 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@73 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@74 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@75 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@76 = private unnamed_addr constant [30 x i8] c"tobool__Z11insideFenceiibiiii\00", align 1
@77 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@78 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@79 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@80 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@81 = private unnamed_addr constant [30 x i8] c"tobool__Z11insideFenceiibiiii\00", align 1
@82 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@83 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@84 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@85 = private unnamed_addr constant [31 x i8] c"tobool8__Z11insideFenceiibiiii\00", align 1
@86 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@87 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@88 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@89 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@90 = private unnamed_addr constant [31 x i8] c"tobool8__Z11insideFenceiibiiii\00", align 1
@91 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@92 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@93 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@94 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@95 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@97 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@98 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@99 = private unnamed_addr constant [32 x i8] c"tobool12__Z11insideFenceiibiiii\00", align 1
@100 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@101 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@102 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@103 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@104 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiibiiii_RET\00", align 1
@105 = private unnamed_addr constant [32 x i8] c"tobool12__Z11insideFenceiibiiii\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@107 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@108 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@109 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@111 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@113 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@114 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@115 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@116 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@117 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@118 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@119 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@120 = private unnamed_addr constant [44 x i8] c"frombool__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@122 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@123 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@124 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@125 = private unnamed_addr constant [44 x i8] c"frombool__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@126 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@127 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@128 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@129 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@130 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@131 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@132 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@133 = private unnamed_addr constant [39 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@134 = private unnamed_addr constant [39 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@135 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii1\00", align 1
@136 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii1\00", align 1
@137 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii2\00", align 1
@138 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii2\00", align 1
@139 = private unnamed_addr constant [39 x i8] c"cmp__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@140 = private unnamed_addr constant [39 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@141 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@142 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii2\00", align 1
@143 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@144 = private unnamed_addr constant [39 x i8] c"cmp__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@145 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@146 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii3\00", align 1
@147 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii3\00", align 1
@148 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii4\00", align 1
@149 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii4\00", align 1
@150 = private unnamed_addr constant [43 x i8] c"idxprom__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@151 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii4\00", align 1
@152 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@153 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@154 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@155 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii5\00", align 1
@156 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii5\00", align 1
@157 = private unnamed_addr constant [40 x i8] c"cmp1__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@158 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii5\00", align 1
@159 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@160 = private unnamed_addr constant [19 x i8] c"(float 400.000000)\00", align 1
@161 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@162 = private unnamed_addr constant [40 x i8] c"cmp1__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@163 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@164 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@165 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@166 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii6\00", align 1
@167 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii6\00", align 1
@168 = private unnamed_addr constant [42 x i8] c"tobool__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@169 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii6\00", align 1
@170 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@171 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@172 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@173 = private unnamed_addr constant [42 x i8] c"tobool__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@174 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@175 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii7\00", align 1
@176 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii7\00", align 1
@177 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii8\00", align 1
@178 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii8\00", align 1
@179 = private unnamed_addr constant [44 x i8] c"idxprom3__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@180 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii8\00", align 1
@181 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@182 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@183 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@184 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii9\00", align 1
@185 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii9\00", align 1
@186 = private unnamed_addr constant [40 x i8] c"conv__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@187 = private unnamed_addr constant [40 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii9\00", align 1
@188 = private unnamed_addr constant [7 x i8] c"fptosi\00", align 1
@189 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@190 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@191 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii10\00", align 1
@192 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii10\00", align 1
@193 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii11\00", align 1
@194 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii11\00", align 1
@195 = private unnamed_addr constant [44 x i8] c"idxprom6__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@196 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii11\00", align 1
@197 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@198 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@199 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@200 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii12\00", align 1
@201 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii12\00", align 1
@202 = private unnamed_addr constant [41 x i8] c"conv8__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@203 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii12\00", align 1
@204 = private unnamed_addr constant [7 x i8] c"fptosi\00", align 1
@205 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@206 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@207 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii13\00", align 1
@208 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii13\00", align 1
@209 = private unnamed_addr constant [43 x i8] c"tobool9__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@210 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii13\00", align 1
@211 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@212 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@213 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@214 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii14\00", align 1
@215 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii14\00", align 1
@216 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii15\00", align 1
@217 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii15\00", align 1
@218 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii16\00", align 1
@219 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii16\00", align 1
@220 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii17\00", align 1
@221 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii17\00", align 1
@222 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@223 = private unnamed_addr constant [40 x i8] c"conv__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@224 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@225 = private unnamed_addr constant [41 x i8] c"conv8__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@226 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@227 = private unnamed_addr constant [43 x i8] c"tobool9__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@228 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@229 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii14\00", align 1
@230 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@231 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii15\00", align 1
@232 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@233 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii16\00", align 1
@234 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@235 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii17\00", align 1
@236 = private unnamed_addr constant [40 x i8] c"call__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@237 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiibiiii_RET\00", align 1
@238 = private unnamed_addr constant [9 x i8] c"land.rhs\00", align 1
@239 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii18\00", align 1
@240 = private unnamed_addr constant [59 x i8] c"if.end,0,land.rhs,call__Z13checkGeofenceRK9mission_sbiiii,\00", align 1
@241 = private unnamed_addr constant [46 x i8] c"frombool10__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@242 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii18\00", align 1
@243 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@244 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@245 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@246 = private unnamed_addr constant [46 x i8] c"frombool10__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@247 = private unnamed_addr constant [9 x i8] c"land.end\00", align 1
@248 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii19\00", align 1
@249 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii19\00", align 1
@250 = private unnamed_addr constant [39 x i8] c"inc__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@251 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii19\00", align 1
@252 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@253 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@254 = private unnamed_addr constant [39 x i8] c"inc__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@255 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@256 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii20\00", align 1
@257 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii20\00", align 1
@258 = private unnamed_addr constant [44 x i8] c"tobool11__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@259 = private unnamed_addr constant [41 x i8] c"tmp__Z13checkGeofenceRK9mission_sbiiii20\00", align 1
@260 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@261 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@262 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@263 = private unnamed_addr constant [39 x i8] c"_Z13checkGeofenceRK9mission_sbiiii_RET\00", align 1
@264 = private unnamed_addr constant [44 x i8] c"tobool11__Z13checkGeofenceRK9mission_sbiiii\00", align 1
@265 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @9, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @11, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @13, i32 0, i32 0))
  %lat.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %lon.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %inclusion.addr__Z11insideFenceiibiiii = alloca i8, align 1
  %high_lat.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %low_lat.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %high_lon.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %low_lon.addr__Z11insideFenceiibiiii = alloca i32, align 4
  %inside__Z11insideFenceiibiiii = alloca i8, align 1
  store i32 %lat, i32* %lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @14, i32 0, i32 0))
  store i32 %lon, i32* %lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @20, i32 0, i32 0), i1 %inclusion)
  %frombool__Z11insideFenceiibiiii = zext i1 %inclusion to i8
  store i8 %frombool__Z11insideFenceiibiiii, i8* %inclusion.addr__Z11insideFenceiibiiii, align 1
  call void @stg_update_store_i8(i8* %inclusion.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @21, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %high_lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %low_lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %high_lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_store_i32(i32* %low_lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0))
  store i8 0, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @26, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii = load i32, i32* %lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @28, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii1 = load i32, i32* %low_lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @30, i32 0, i32 0))
  %cmp__Z11insideFenceiibiiii = icmp sgt i32 %tmp__Z11insideFenceiibiiii, %tmp__Z11insideFenceiibiiii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @35, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z11insideFenceiibiiii, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @36, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @37, i32 0, i32 0))
  br i1 %cmp__Z11insideFenceiibiiii, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %tmp__Z11insideFenceiibiiii2 = load i32, i32* %lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @39, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii3 = load i32, i32* %high_lon.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @41, i32 0, i32 0))
  %cmp1__Z11insideFenceiibiiii = icmp slt i32 %tmp__Z11insideFenceiibiiii2, %tmp__Z11insideFenceiibiiii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @46, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @47, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @48, i32 0, i32 0))
  br i1 %cmp1__Z11insideFenceiibiiii, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %tmp__Z11insideFenceiibiiii4 = load i32, i32* %lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @50, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii5 = load i32, i32* %high_lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @52, i32 0, i32 0))
  %cmp2__Z11insideFenceiibiiii = icmp slt i32 %tmp__Z11insideFenceiibiiii4, %tmp__Z11insideFenceiibiiii5
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @57, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @58, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0))
  br i1 %cmp2__Z11insideFenceiibiiii, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %if.then
  %tmp__Z11insideFenceiibiiii6 = load i32, i32* %lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @61, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii7 = load i32, i32* %low_lat.addr__Z11insideFenceiibiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @63, i32 0, i32 0))
  %cmp4__Z11insideFenceiibiiii = icmp sgt i32 %tmp__Z11insideFenceiibiiii6, %tmp__Z11insideFenceiibiiii7
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @68, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @69, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @70, i32 0, i32 0))
  br i1 %cmp4__Z11insideFenceiibiiii, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  store i8 1, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @71, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @72, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @73, i32 0, i32 0))
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %tmp__Z11insideFenceiibiiii8 = load i8, i8* %inclusion.addr__Z11insideFenceiibiiii, align 1
  call void @stg_update_load_i8(i8* %inclusion.addr__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @75, i32 0, i32 0))
  %tobool__Z11insideFenceiibiiii = trunc i8 %tmp__Z11insideFenceiibiiii8 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @80, i32 0, i32 0), i8 %tmp__Z11insideFenceiibiiii8)
  call void @stg_update_pc(i1 %tobool__Z11insideFenceiibiiii, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @81, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @82, i32 0, i32 0))
  br i1 %tobool__Z11insideFenceiibiiii, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end6
  %tmp__Z11insideFenceiibiiii9 = load i8, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_load_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @84, i32 0, i32 0))
  %tobool8__Z11insideFenceiibiiii = trunc i8 %tmp__Z11insideFenceiibiiii9 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @89, i32 0, i32 0), i8 %tmp__Z11insideFenceiibiiii9)
  call void @stg_update_pc(i1 %tobool8__Z11insideFenceiibiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @90, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @91, i32 0, i32 0))
  br i1 %tobool8__Z11insideFenceiibiiii, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  store i8 0, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @92, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0))
  br label %if.end10

if.else:                                          ; preds = %if.then7
  store i8 1, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @94, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @95, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end6
  %tmp__Z11insideFenceiibiiii10 = load i8, i8* %inside__Z11insideFenceiibiiii, align 1
  call void @stg_update_load_i8(i8* %inside__Z11insideFenceiibiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @98, i32 0, i32 0))
  %tobool12__Z11insideFenceiibiiii = trunc i8 %tmp__Z11insideFenceiibiiii10 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @103, i32 0, i32 0), i8 %tmp__Z11insideFenceiibiiii10)
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @105, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0))
  ret i1 %tobool12__Z11insideFenceiibiiii
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceRK9mission_sbiiii(%struct.mission_s* dereferenceable(648) %mission, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @108, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @112, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @114, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @116, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @118, i32 0, i32 0))
  %mission.addr__Z13checkGeofenceRK9mission_sbiiii = alloca %struct.mission_s*, align 8
  %inclusion.addr__Z13checkGeofenceRK9mission_sbiiii = alloca i8, align 1
  %high_lat.addr__Z13checkGeofenceRK9mission_sbiiii = alloca i32, align 4
  %low_lat.addr__Z13checkGeofenceRK9mission_sbiiii = alloca i32, align 4
  %high_lon.addr__Z13checkGeofenceRK9mission_sbiiii = alloca i32, align 4
  %low_lon.addr__Z13checkGeofenceRK9mission_sbiiii = alloca i32, align 4
  %acceptable__Z13checkGeofenceRK9mission_sbiiii = alloca i8, align 1
  %i__Z13checkGeofenceRK9mission_sbiiii = alloca i32, align 4
  store %struct.mission_s* %mission, %struct.mission_s** %mission.addr__Z13checkGeofenceRK9mission_sbiiii, align 8
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @124, i32 0, i32 0), i1 %inclusion)
  %frombool__Z13checkGeofenceRK9mission_sbiiii = zext i1 %inclusion to i8
  store i8 %frombool__Z13checkGeofenceRK9mission_sbiiii, i8* %inclusion.addr__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_store_i8(i8* %inclusion.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @125, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %high_lat.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @126, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %low_lat.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @127, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %high_lon.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @128, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %low_lon.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @129, i32 0, i32 0))
  store i8 1, i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @130, i32 0, i32 0))
  store i32 0, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @131, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @132, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z13checkGeofenceRK9mission_sbiiii = load i32, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @134, i32 0, i32 0))
  %tmp__Z13checkGeofenceRK9mission_sbiiii1 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z13checkGeofenceRK9mission_sbiiii, align 8
  %count__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z13checkGeofenceRK9mission_sbiiii1, i32 0, i32 1
  %tmp__Z13checkGeofenceRK9mission_sbiiii2 = load i32, i32* %count__Z13checkGeofenceRK9mission_sbiiii, align 8
  call void @stg_update_load_i32(i32* %count__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @138, i32 0, i32 0))
  %cmp__Z13checkGeofenceRK9mission_sbiiii = icmp slt i32 %tmp__Z13checkGeofenceRK9mission_sbiiii, %tmp__Z13checkGeofenceRK9mission_sbiiii2
  call void @stg_update_cmp(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @143, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @144, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @145, i32 0, i32 0))
  br i1 %cmp__Z13checkGeofenceRK9mission_sbiiii, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z13checkGeofenceRK9mission_sbiiii3 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z13checkGeofenceRK9mission_sbiiii, align 8
  %items__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z13checkGeofenceRK9mission_sbiiii3, i32 0, i32 0
  %tmp__Z13checkGeofenceRK9mission_sbiiii4 = load i32, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @149, i32 0, i32 0))
  %idxprom__Z13checkGeofenceRK9mission_sbiiii = sext i32 %tmp__Z13checkGeofenceRK9mission_sbiiii4 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @153, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @154, i32 0, i32 0), i32 %tmp__Z13checkGeofenceRK9mission_sbiiii4)
  %arrayidx__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items__Z13checkGeofenceRK9mission_sbiiii, i64 0, i64 %idxprom__Z13checkGeofenceRK9mission_sbiiii
  %altitude__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx__Z13checkGeofenceRK9mission_sbiiii, i32 0, i32 2
  %tmp__Z13checkGeofenceRK9mission_sbiiii5 = load float, float* %altitude__Z13checkGeofenceRK9mission_sbiiii, align 8
  call void @stg_update_load_float(float* %altitude__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @156, i32 0, i32 0))
  %cmp1__Z13checkGeofenceRK9mission_sbiiii = fcmp ogt float %tmp__Z13checkGeofenceRK9mission_sbiiii5, 4.000000e+02
  call void @stg_update_cmp(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @157, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @158, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @161, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @162, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @163, i32 0, i32 0))
  br i1 %cmp1__Z13checkGeofenceRK9mission_sbiiii, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 0, i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @164, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @165, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %tmp__Z13checkGeofenceRK9mission_sbiiii6 = load i8, i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_load_i8(i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @167, i32 0, i32 0))
  %tobool__Z13checkGeofenceRK9mission_sbiiii = trunc i8 %tmp__Z13checkGeofenceRK9mission_sbiiii6 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @168, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @171, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @172, i32 0, i32 0), i8 %tmp__Z13checkGeofenceRK9mission_sbiiii6)
  call void @stg_update_pc(i1 %tobool__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @173, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @174, i32 0, i32 0))
  br i1 %tobool__Z13checkGeofenceRK9mission_sbiiii, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %tmp__Z13checkGeofenceRK9mission_sbiiii7 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z13checkGeofenceRK9mission_sbiiii, align 8
  %items2__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z13checkGeofenceRK9mission_sbiiii7, i32 0, i32 0
  %tmp__Z13checkGeofenceRK9mission_sbiiii8 = load i32, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @178, i32 0, i32 0))
  %idxprom3__Z13checkGeofenceRK9mission_sbiiii = sext i32 %tmp__Z13checkGeofenceRK9mission_sbiiii8 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @180, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @183, i32 0, i32 0), i32 %tmp__Z13checkGeofenceRK9mission_sbiiii8)
  %arrayidx4__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items2__Z13checkGeofenceRK9mission_sbiiii, i64 0, i64 %idxprom3__Z13checkGeofenceRK9mission_sbiiii
  %lat__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx4__Z13checkGeofenceRK9mission_sbiiii, i32 0, i32 0
  %tmp__Z13checkGeofenceRK9mission_sbiiii9 = load double, double* %lat__Z13checkGeofenceRK9mission_sbiiii, align 8
  call void @stg_update_load_double(double* %lat__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @185, i32 0, i32 0))
  %conv__Z13checkGeofenceRK9mission_sbiiii = fptosi double %tmp__Z13checkGeofenceRK9mission_sbiiii9 to i32
  call void @stg_update_cast_double(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @188, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @189, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @190, i32 0, i32 0), double %tmp__Z13checkGeofenceRK9mission_sbiiii9)
  %tmp__Z13checkGeofenceRK9mission_sbiiii10 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z13checkGeofenceRK9mission_sbiiii, align 8
  %items5__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z13checkGeofenceRK9mission_sbiiii10, i32 0, i32 0
  %tmp__Z13checkGeofenceRK9mission_sbiiii11 = load i32, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @194, i32 0, i32 0))
  %idxprom6__Z13checkGeofenceRK9mission_sbiiii = sext i32 %tmp__Z13checkGeofenceRK9mission_sbiiii11 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @195, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @197, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @198, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @199, i32 0, i32 0), i32 %tmp__Z13checkGeofenceRK9mission_sbiiii11)
  %arrayidx7__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items5__Z13checkGeofenceRK9mission_sbiiii, i64 0, i64 %idxprom6__Z13checkGeofenceRK9mission_sbiiii
  %lon__Z13checkGeofenceRK9mission_sbiiii = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx7__Z13checkGeofenceRK9mission_sbiiii, i32 0, i32 1
  %tmp__Z13checkGeofenceRK9mission_sbiiii12 = load double, double* %lon__Z13checkGeofenceRK9mission_sbiiii, align 8
  call void @stg_update_load_double(double* %lon__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @201, i32 0, i32 0))
  %conv8__Z13checkGeofenceRK9mission_sbiiii = fptosi double %tmp__Z13checkGeofenceRK9mission_sbiiii12 to i32
  call void @stg_update_cast_double(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @202, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @203, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @204, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @205, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @206, i32 0, i32 0), double %tmp__Z13checkGeofenceRK9mission_sbiiii12)
  %tmp__Z13checkGeofenceRK9mission_sbiiii13 = load i8, i8* %inclusion.addr__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_load_i8(i8* %inclusion.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @208, i32 0, i32 0))
  %tobool9__Z13checkGeofenceRK9mission_sbiiii = trunc i8 %tmp__Z13checkGeofenceRK9mission_sbiiii13 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @211, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @212, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @213, i32 0, i32 0), i8 %tmp__Z13checkGeofenceRK9mission_sbiiii13)
  %tmp__Z13checkGeofenceRK9mission_sbiiii14 = load i32, i32* %high_lat.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @215, i32 0, i32 0))
  %tmp__Z13checkGeofenceRK9mission_sbiiii15 = load i32, i32* %low_lat.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @217, i32 0, i32 0))
  %tmp__Z13checkGeofenceRK9mission_sbiiii16 = load i32, i32* %high_lon.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @219, i32 0, i32 0))
  %tmp__Z13checkGeofenceRK9mission_sbiiii17 = load i32, i32* %low_lon.addr__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @221, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @222, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @223, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @224, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @225, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @226, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @227, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @228, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @229, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @230, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @231, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @232, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @233, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @234, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @235, i32 0, i32 0))
  %call__Z13checkGeofenceRK9mission_sbiiii = call zeroext i1 @_Z11insideFenceiibiiii(i32 %conv__Z13checkGeofenceRK9mission_sbiiii, i32 %conv8__Z13checkGeofenceRK9mission_sbiiii, i1 zeroext %tobool9__Z13checkGeofenceRK9mission_sbiiii, i32 %tmp__Z13checkGeofenceRK9mission_sbiiii14, i32 %tmp__Z13checkGeofenceRK9mission_sbiiii15, i32 %tmp__Z13checkGeofenceRK9mission_sbiiii16, i32 %tmp__Z13checkGeofenceRK9mission_sbiiii17)
  call void @stg_update_char(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @236, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @237, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @238, i32 0, i32 0))
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %tmp__Z13checkGeofenceRK9mission_sbiiii18 = phi i1 [ false, %if.end ], [ %call__Z13checkGeofenceRK9mission_sbiiii, %land.rhs ]
  call void @stg_update_phi(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @239, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @240, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @241, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @242, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @243, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @244, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @245, i32 0, i32 0), i1 %tmp__Z13checkGeofenceRK9mission_sbiiii18)
  %frombool10__Z13checkGeofenceRK9mission_sbiiii = zext i1 %tmp__Z13checkGeofenceRK9mission_sbiiii18 to i8
  store i8 %frombool10__Z13checkGeofenceRK9mission_sbiiii, i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @246, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @247, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %tmp__Z13checkGeofenceRK9mission_sbiiii19 = load i32, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_load_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @249, i32 0, i32 0))
  %inc__Z13checkGeofenceRK9mission_sbiiii = add nsw i32 %tmp__Z13checkGeofenceRK9mission_sbiiii19, 1
  call void @stg_update_op(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @250, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @251, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @252, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @253, i32 0, i32 0))
  store i32 %inc__Z13checkGeofenceRK9mission_sbiiii, i32* %i__Z13checkGeofenceRK9mission_sbiiii, align 4
  call void @stg_update_store_i32(i32* %i__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @254, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @255, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp__Z13checkGeofenceRK9mission_sbiiii20 = load i8, i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, align 1
  call void @stg_update_load_i8(i8* %acceptable__Z13checkGeofenceRK9mission_sbiiii, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @257, i32 0, i32 0))
  %tobool11__Z13checkGeofenceRK9mission_sbiiii = trunc i8 %tmp__Z13checkGeofenceRK9mission_sbiiii20 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @258, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @259, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @260, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @261, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @262, i32 0, i32 0), i8 %tmp__Z13checkGeofenceRK9mission_sbiiii20)
  call void @stg_update_char(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @264, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @265, i32 0, i32 0))
  ret i1 %tobool11__Z13checkGeofenceRK9mission_sbiiii
}

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
