; ModuleID = 'IPUT.bc'
source_filename = "simpler_geofence.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"S1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"S2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"S4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"S5\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"S6\00", align 1
@prev_bb = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @285, i32 0, i32 0), align 4
@0 = private unnamed_addr constant [9 x i8] c"lat.addr\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"lon.addr\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"high_lat.addr\00", align 1
@3 = private unnamed_addr constant [13 x i8] c"low_lat.addr\00", align 1
@4 = private unnamed_addr constant [14 x i8] c"high_lon.addr\00", align 1
@5 = private unnamed_addr constant [13 x i8] c"low_lon.addr\00", align 1
@6 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"frombool\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"frombool\00", align 1
@13 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@15 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@16 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@17 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@18 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@19 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@20 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@21 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@22 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@23 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiibiiii\00", align 1
@24 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii1\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@28 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@29 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@30 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@31 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@32 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@33 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@34 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii2\00", align 1
@35 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii3\00", align 1
@36 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@37 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@38 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@39 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@40 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@41 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@42 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@43 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@44 = private unnamed_addr constant [5 x i8] c"cmp2\00", align 1
@45 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii4\00", align 1
@46 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii5\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@48 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@49 = private unnamed_addr constant [5 x i8] c"cmp2\00", align 1
@50 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@51 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@52 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@53 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@54 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@55 = private unnamed_addr constant [5 x i8] c"cmp4\00", align 1
@56 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii6\00", align 1
@57 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii7\00", align 1
@58 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@59 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@60 = private unnamed_addr constant [5 x i8] c"cmp4\00", align 1
@61 = private unnamed_addr constant [15 x i8] c"land.lhs.true3\00", align 1
@62 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@63 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@64 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@65 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@66 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@67 = private unnamed_addr constant [7 x i8] c"tobool\00", align 1
@68 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii8\00", align 1
@69 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@70 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@71 = private unnamed_addr constant [7 x i8] c"tobool\00", align 1
@72 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@73 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@74 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@75 = private unnamed_addr constant [8 x i8] c"tobool8\00", align 1
@76 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiibiiii9\00", align 1
@77 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@78 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@79 = private unnamed_addr constant [8 x i8] c"tobool8\00", align 1
@80 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@81 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@82 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@83 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@84 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@85 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@86 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@87 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@88 = private unnamed_addr constant [9 x i8] c"tobool12\00", align 1
@89 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiibiiii10\00", align 1
@90 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@91 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@92 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiibiiii_RET\00", align 1
@93 = private unnamed_addr constant [9 x i8] c"tobool12\00", align 1
@94 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@95 = private unnamed_addr constant [9 x i8] c"lat.addr\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"lon.addr\00", align 1
@97 = private unnamed_addr constant [14 x i8] c"altitude.addr\00", align 1
@98 = private unnamed_addr constant [14 x i8] c"high_lat.addr\00", align 1
@99 = private unnamed_addr constant [13 x i8] c"low_lat.addr\00", align 1
@100 = private unnamed_addr constant [14 x i8] c"high_lon.addr\00", align 1
@101 = private unnamed_addr constant [13 x i8] c"low_lon.addr\00", align 1
@102 = private unnamed_addr constant [22 x i8] c"max_vertical_altitude\00", align 1
@103 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@104 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@105 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"frombool\00", align 1
@107 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@108 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@109 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@110 = private unnamed_addr constant [9 x i8] c"frombool\00", align 1
@111 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@112 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@113 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@114 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@115 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@116 = private unnamed_addr constant [10 x i8] c"(i32 400)\00", align 1
@117 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiibiiii\00", align 1
@118 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiibiiii\00", align 1
@119 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii1\00", align 1
@120 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii1\00", align 1
@121 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@122 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiibiiii\00", align 1
@123 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii1\00", align 1
@124 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@125 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@126 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@127 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@128 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@129 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@130 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii2\00", align 1
@131 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii2\00", align 1
@132 = private unnamed_addr constant [7 x i8] c"tobool\00", align 1
@133 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii2\00", align 1
@134 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@135 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@136 = private unnamed_addr constant [7 x i8] c"tobool\00", align 1
@137 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@138 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii3\00", align 1
@139 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii3\00", align 1
@140 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii4\00", align 1
@141 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii4\00", align 1
@142 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii5\00", align 1
@143 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii5\00", align 1
@144 = private unnamed_addr constant [8 x i8] c"tobool1\00", align 1
@145 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii5\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@147 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@148 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii6\00", align 1
@149 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii6\00", align 1
@150 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii7\00", align 1
@151 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii7\00", align 1
@152 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii8\00", align 1
@153 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii8\00", align 1
@154 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii9\00", align 1
@155 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii9\00", align 1
@156 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@157 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii3\00", align 1
@158 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@159 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii4\00", align 1
@160 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@161 = private unnamed_addr constant [8 x i8] c"tobool1\00", align 1
@162 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@163 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii6\00", align 1
@164 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@165 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii7\00", align 1
@166 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@167 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii8\00", align 1
@168 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@169 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiibiiii9\00", align 1
@170 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@171 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiibiiii_RET\00", align 1
@172 = private unnamed_addr constant [9 x i8] c"land.rhs\00", align 1
@173 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiibiiii10\00", align 1
@174 = private unnamed_addr constant [24 x i8] c"if.end,0,land.rhs,call,\00", align 1
@175 = private unnamed_addr constant [10 x i8] c"frombool2\00", align 1
@176 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiibiiii10\00", align 1
@177 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@178 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@179 = private unnamed_addr constant [10 x i8] c"frombool2\00", align 1
@180 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiibiiii11\00", align 1
@181 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiibiiii11\00", align 1
@182 = private unnamed_addr constant [8 x i8] c"tobool3\00", align 1
@183 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiibiiii11\00", align 1
@184 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@185 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@186 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiibiiii_RET\00", align 1
@187 = private unnamed_addr constant [8 x i8] c"tobool3\00", align 1
@188 = private unnamed_addr constant [9 x i8] c"land.end\00", align 1
@189 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@190 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@191 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@192 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@193 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@194 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@195 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@196 = private unnamed_addr constant [8 x i8] c"(i8 99)\00", align 1
@197 = private unnamed_addr constant [8 x i8] c"(i16 2)\00", align 1
@198 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@199 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@200 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@201 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@202 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@203 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@204 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@205 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@206 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@207 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@208 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@209 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@210 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@211 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@212 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@213 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@214 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@215 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@216 = private unnamed_addr constant [11 x i8] c"tmp_main16\00", align 1
@217 = private unnamed_addr constant [11 x i8] c"tmp_main16\00", align 1
@218 = private unnamed_addr constant [11 x i8] c"tmp_main17\00", align 1
@219 = private unnamed_addr constant [11 x i8] c"tmp_main17\00", align 1
@220 = private unnamed_addr constant [11 x i8] c"tmp_main18\00", align 1
@221 = private unnamed_addr constant [11 x i8] c"tmp_main18\00", align 1
@222 = private unnamed_addr constant [11 x i8] c"tmp_main19\00", align 1
@223 = private unnamed_addr constant [11 x i8] c"tmp_main19\00", align 1
@224 = private unnamed_addr constant [11 x i8] c"tmp_main20\00", align 1
@225 = private unnamed_addr constant [11 x i8] c"tmp_main20\00", align 1
@226 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@227 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@228 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@229 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@230 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@231 = private unnamed_addr constant [11 x i8] c"tmp_main16\00", align 1
@232 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@233 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@234 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@235 = private unnamed_addr constant [11 x i8] c"tmp_main17\00", align 1
@236 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@237 = private unnamed_addr constant [11 x i8] c"tmp_main18\00", align 1
@238 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@239 = private unnamed_addr constant [11 x i8] c"tmp_main19\00", align 1
@240 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@241 = private unnamed_addr constant [11 x i8] c"tmp_main20\00", align 1
@242 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@243 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiibiiii_RET\00", align 1
@244 = private unnamed_addr constant [11 x i8] c"tmp_main21\00", align 1
@245 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@246 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@247 = private unnamed_addr constant [11 x i8] c"tmp_main24\00", align 1
@248 = private unnamed_addr constant [11 x i8] c"tmp_main25\00", align 1
@249 = private unnamed_addr constant [11 x i8] c"tmp_main26\00", align 1
@250 = private unnamed_addr constant [11 x i8] c"tmp_main27\00", align 1
@251 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@252 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@253 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@254 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@255 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@256 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@257 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@258 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@259 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@260 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@261 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@262 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@263 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@264 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@265 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@266 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@267 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@268 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@269 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@270 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@271 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@272 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@273 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@274 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@275 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@276 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@277 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@278 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@279 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@280 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@281 = private unnamed_addr constant [6 x i8] c"call1\00", align 1
@282 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiibiiii_RET\00", align 1
@283 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@284 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@285 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %inside = alloca i8, align 1
  store i32 %lat, i32* %lat.addr, align 4
  call void @stg_update_store(i32* %lat.addr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0))
  store i32 %lon, i32* %lon.addr, align 4
  call void @stg_update_store(i32* %lon.addr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0))
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  call void @stg_update_store_i8(i8* %inclusion.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr, align 4
  call void @stg_update_store(i32* %high_lat.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr, align 4
  call void @stg_update_store(i32* %low_lat.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr, align 4
  call void @stg_update_store(i32* %high_lon.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr, align 4
  call void @stg_update_store(i32* %low_lon.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @16, i32 0, i32 0))
  store i8 0, i8* %inside, align 1
  call void @stg_update_store_i8(i8* %inside, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii = load i32, i32* %lon.addr, align 4
  call void @stg_update_load(i32* %lon.addr, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @19, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii1 = load i32, i32* %low_lon.addr, align 4
  call void @stg_update_load(i32* %low_lon.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @21, i32 0, i32 0))
  %cmp = icmp sgt i32 %tmp__Z11insideFenceiibiiii, %tmp__Z11insideFenceiibiiii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @26, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0))
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %tmp__Z11insideFenceiibiiii2 = load i32, i32* %lon.addr, align 4
  call void @stg_update_load(i32* %lon.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @30, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii3 = load i32, i32* %high_lon.addr, align 4
  call void @stg_update_load(i32* %high_lon.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @32, i32 0, i32 0))
  %cmp1 = icmp slt i32 %tmp__Z11insideFenceiibiiii2, %tmp__Z11insideFenceiibiiii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @37, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @38, i32 0, i32 0))
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %tmp__Z11insideFenceiibiiii4 = load i32, i32* %lat.addr, align 4
  call void @stg_update_load(i32* %lat.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @41, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii5 = load i32, i32* %high_lat.addr, align 4
  call void @stg_update_load(i32* %high_lat.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @43, i32 0, i32 0))
  %cmp2 = icmp slt i32 %tmp__Z11insideFenceiibiiii4, %tmp__Z11insideFenceiibiiii5
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @48, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @49, i32 0, i32 0))
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %if.then
  %tmp__Z11insideFenceiibiiii6 = load i32, i32* %lat.addr, align 4
  call void @stg_update_load(i32* %lat.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @52, i32 0, i32 0))
  %tmp__Z11insideFenceiibiiii7 = load i32, i32* %low_lat.addr, align 4
  call void @stg_update_load(i32* %low_lat.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @54, i32 0, i32 0))
  %cmp4 = icmp sgt i32 %tmp__Z11insideFenceiibiiii6, %tmp__Z11insideFenceiibiiii7
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @59, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @60, i32 0, i32 0))
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  store i8 1, i8* %inside, align 1
  call void @stg_update_store_i8(i8* %inside, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @62, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %tmp__Z11insideFenceiibiiii8 = load i8, i8* %inclusion.addr, align 1
  call void @stg_update_load_i8(i8* %inclusion.addr, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @66, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @70, i32 0, i32 0))
  %tobool = trunc i8 %tmp__Z11insideFenceiibiiii8 to i1
  call void @stg_update_pc(i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @71, i32 0, i32 0))
  br i1 %tobool, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end6
  %tmp__Z11insideFenceiibiiii9 = load i8, i8* %inside, align 1
  call void @stg_update_load_i8(i8* %inside, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @74, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @78, i32 0, i32 0))
  %tobool8 = trunc i8 %tmp__Z11insideFenceiibiiii9 to i1
  call void @stg_update_pc(i1 %tobool8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @79, i32 0, i32 0))
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  store i8 0, i8* %inside, align 1
  call void @stg_update_store_i8(i8* %inside, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @81, i32 0, i32 0))
  br label %if.end10

if.else:                                          ; preds = %if.then7
  store i8 1, i8* %inside, align 1
  call void @stg_update_store_i8(i8* %inside, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @83, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end6
  %tmp__Z11insideFenceiibiiii10 = load i8, i8* %inside, align 1
  call void @stg_update_load_i8(i8* %inside, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @87, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @91, i32 0, i32 0))
  %tobool12 = trunc i8 %tmp__Z11insideFenceiibiiii10 to i1
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @93, i32 0, i32 0))
  ret i1 %tobool12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %lat, i32 %lon, i32 %altitude, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %altitude.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %acceptable = alloca i8, align 1
  %max_vertical_altitude = alloca i32, align 4
  store i32 %lat, i32* %lat.addr, align 4
  call void @stg_update_store(i32* %lat.addr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @103, i32 0, i32 0))
  store i32 %lon, i32* %lon.addr, align 4
  call void @stg_update_store(i32* %lon.addr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @104, i32 0, i32 0))
  store i32 %altitude, i32* %altitude.addr, align 4
  call void @stg_update_store(i32* %altitude.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @105, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @109, i32 0, i32 0))
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  call void @stg_update_store_i8(i8* %inclusion.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @110, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr, align 4
  call void @stg_update_store(i32* %high_lat.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @111, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr, align 4
  call void @stg_update_store(i32* %low_lat.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @112, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr, align 4
  call void @stg_update_store(i32* %high_lon.addr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @113, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr, align 4
  call void @stg_update_store(i32* %low_lon.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @114, i32 0, i32 0))
  store i8 1, i8* %acceptable, align 1
  call void @stg_update_store_i8(i8* %acceptable, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @115, i32 0, i32 0))
  store i32 400, i32* %max_vertical_altitude, align 4
  call void @stg_update_store(i32* %max_vertical_altitude, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @116, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii = load i32, i32* %altitude.addr, align 4
  call void @stg_update_load(i32* %altitude.addr, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @118, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii1 = load i32, i32* %max_vertical_altitude, align 4
  call void @stg_update_load(i32* %max_vertical_altitude, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @120, i32 0, i32 0))
  %cmp = icmp sgt i32 %tmp__Z13checkGeofenceiiibiiii, %tmp__Z13checkGeofenceiiibiiii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @121, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @125, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @126, i32 0, i32 0))
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %acceptable, align 1
  call void @stg_update_store_i8(i8* %acceptable, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @128, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__Z13checkGeofenceiiibiiii2 = load i8, i8* %acceptable, align 1
  call void @stg_update_load_i8(i8* %acceptable, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @131, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @135, i32 0, i32 0))
  %tobool = trunc i8 %tmp__Z13checkGeofenceiiibiiii2 to i1
  call void @stg_update_pc(i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @136, i32 0, i32 0))
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %tmp__Z13checkGeofenceiiibiiii3 = load i32, i32* %lat.addr, align 4
  call void @stg_update_load(i32* %lat.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @139, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii4 = load i32, i32* %lon.addr, align 4
  call void @stg_update_load(i32* %lon.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @141, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii5 = load i8, i8* %inclusion.addr, align 1
  call void @stg_update_load_i8(i8* %inclusion.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @143, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @147, i32 0, i32 0))
  %tobool1 = trunc i8 %tmp__Z13checkGeofenceiiibiiii5 to i1
  %tmp__Z13checkGeofenceiiibiiii6 = load i32, i32* %high_lat.addr, align 4
  call void @stg_update_load(i32* %high_lat.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @149, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii7 = load i32, i32* %low_lat.addr, align 4
  call void @stg_update_load(i32* %low_lat.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @151, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii8 = load i32, i32* %high_lon.addr, align 4
  call void @stg_update_load(i32* %high_lon.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @153, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii9 = load i32, i32* %low_lon.addr, align 4
  call void @stg_update_load(i32* %low_lon.addr, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @155, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @156, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @157, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @158, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @159, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @161, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @163, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @164, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @165, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @167, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @168, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @169, i32 0, i32 0))
  %call = call zeroext i1 @_Z11insideFenceiibiiii(i32 %tmp__Z13checkGeofenceiiibiiii3, i32 %tmp__Z13checkGeofenceiiibiiii4, i1 zeroext %tobool1, i32 %tmp__Z13checkGeofenceiiibiiii6, i32 %tmp__Z13checkGeofenceiiibiiii7, i32 %tmp__Z13checkGeofenceiiibiiii8, i32 %tmp__Z13checkGeofenceiiibiiii9)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @170, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @171, i32 0, i32 0))
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %tmp__Z13checkGeofenceiiibiiii10 = phi i1 [ false, %if.end ], [ %call, %land.rhs ]
  call void @stg_update_phi(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @173, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @174, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @175, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @176, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @178, i32 0, i32 0))
  %frombool2 = zext i1 %tmp__Z13checkGeofenceiiibiiii10 to i8
  store i8 %frombool2, i8* %acceptable, align 1
  call void @stg_update_store_i8(i8* %acceptable, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @179, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiibiiii11 = load i8, i8* %acceptable, align 1
  call void @stg_update_load_i8(i8* %acceptable, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @181, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @182, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @183, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @185, i32 0, i32 0))
  %tobool3 = trunc i8 %tmp__Z13checkGeofenceiiibiiii11 to i1
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @187, i32 0, i32 0))
  ret i1 %tobool3
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %name = alloca i8, align 1
  %l = alloca i16, align 2
  store i8 99, i8* %name, align 1
  call void @stg_update_store_i8(i8* %name, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @196, i32 0, i32 0))
  store i16 2, i16* %l, align 2
  call void @stg_begin_test()
  %tmp_main = bitcast i32* %a to i8*
  call void @stg_symbolic_variable(i8* %tmp_main, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %tmp_main1 = bitcast i32* %b to i8*
  call void @stg_symbolic_variable(i8* %tmp_main1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %tmp_main2 = bitcast i32* %c to i8*
  call void @stg_symbolic_variable(i8* %tmp_main2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main3 = bitcast i32* %d to i8*
  call void @stg_symbolic_variable(i8* %tmp_main3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %tmp_main4 = bitcast i32* %e to i8*
  call void @stg_symbolic_variable(i8* %tmp_main4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %tmp_main5 = bitcast i32* %f to i8*
  call void @stg_symbolic_variable(i8* %tmp_main5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %tmp_main6 = bitcast i32* %g to i8*
  call void @stg_symbolic_variable(i8* %tmp_main6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %tmp_main7 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %tmp_main7, i32 38)
  %tmp_main8 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %tmp_main8, i32 78)
  %tmp_main9 = bitcast i32* %c to i8*
  call void @stg_input_int(i8* %tmp_main9, i32 100)
  %tmp_main10 = bitcast i32* %d to i8*
  call void @stg_input_int(i8* %tmp_main10, i32 79)
  %tmp_main11 = bitcast i32* %e to i8*
  call void @stg_input_int(i8* %tmp_main11, i32 35)
  %tmp_main12 = bitcast i32* %f to i8*
  call void @stg_input_int(i8* %tmp_main12, i32 85)
  %tmp_main13 = bitcast i32* %g to i8*
  call void @stg_input_int(i8* %tmp_main13, i32 35)
  %tmp_main14 = load i32, i32* %a, align 4
  call void @stg_update_load(i32* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @213, i32 0, i32 0))
  %tmp_main15 = load i32, i32* %b, align 4
  call void @stg_update_load(i32* %b, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @215, i32 0, i32 0))
  %tmp_main16 = load i32, i32* %c, align 4
  call void @stg_update_load(i32* %c, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @217, i32 0, i32 0))
  %tmp_main17 = load i32, i32* %d, align 4
  call void @stg_update_load(i32* %d, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @219, i32 0, i32 0))
  %tmp_main18 = load i32, i32* %e, align 4
  call void @stg_update_load(i32* %e, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @221, i32 0, i32 0))
  %tmp_main19 = load i32, i32* %f, align 4
  call void @stg_update_load(i32* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @223, i32 0, i32 0))
  %tmp_main20 = load i32, i32* %g, align 4
  call void @stg_update_load(i32* %g, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @225, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @226, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @227, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @228, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @229, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @230, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @231, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @232, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @233, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @234, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @235, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @236, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @237, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @238, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @239, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @240, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @241, i32 0, i32 0))
  %call = call zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %tmp_main14, i32 %tmp_main15, i32 %tmp_main16, i1 zeroext true, i32 %tmp_main17, i32 %tmp_main18, i32 %tmp_main19, i32 %tmp_main20)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @242, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @243, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call)
  call void @stg_end_test()
  call void @stg_begin_test()
  %tmp_main21 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %tmp_main21, i32 38)
  %tmp_main22 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %tmp_main22, i32 100)
  %tmp_main23 = bitcast i32* %c to i8*
  call void @stg_input_int(i8* %tmp_main23, i32 100)
  %tmp_main24 = bitcast i32* %d to i8*
  call void @stg_input_int(i8* %tmp_main24, i32 79)
  %tmp_main25 = bitcast i32* %e to i8*
  call void @stg_input_int(i8* %tmp_main25, i32 35)
  %tmp_main26 = bitcast i32* %f to i8*
  call void @stg_input_int(i8* %tmp_main26, i32 85)
  %tmp_main27 = bitcast i32* %g to i8*
  call void @stg_input_int(i8* %tmp_main27, i32 35)
  %tmp_main28 = load i32, i32* %a, align 4
  call void @stg_update_load(i32* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @252, i32 0, i32 0))
  %tmp_main29 = load i32, i32* %b, align 4
  call void @stg_update_load(i32* %b, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @254, i32 0, i32 0))
  %tmp_main30 = load i32, i32* %c, align 4
  call void @stg_update_load(i32* %c, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @256, i32 0, i32 0))
  %tmp_main31 = load i32, i32* %d, align 4
  call void @stg_update_load(i32* %d, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @258, i32 0, i32 0))
  %tmp_main32 = load i32, i32* %e, align 4
  call void @stg_update_load(i32* %e, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @260, i32 0, i32 0))
  %tmp_main33 = load i32, i32* %f, align 4
  call void @stg_update_load(i32* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @262, i32 0, i32 0))
  %tmp_main34 = load i32, i32* %g, align 4
  call void @stg_update_load(i32* %g, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @264, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @265, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @266, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @267, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @268, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @269, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @270, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @271, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @272, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @273, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @274, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @275, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @276, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @277, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @278, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @279, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @280, i32 0, i32 0))
  %call1 = call zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %tmp_main28, i32 %tmp_main29, i32 %tmp_main30, i1 zeroext true, i32 %tmp_main31, i32 %tmp_main32, i32 %tmp_main33, i32 %tmp_main34)
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @281, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @282, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call1)
  call void @stg_end_test()
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @283, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @284, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable(i8*, i8*) #2

declare void @stg_input_int(i8*, i32) #2

declare void @stg_assert(i1 zeroext) #2

declare void @stg_end_test() #2

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
