; ModuleID = 'simpler_missionWaypoint_checker.bc'
source_filename = "simpler_missionWaypoint_checker.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.mission_s = type { [20 x %struct.mission_item_s], i32 }
%struct.mission_item_s = type { double, double, float, i32, i8 }

@0 = private unnamed_addr constant [8 x i8] c"lat_now\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"lon_now\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"lat_next\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"lon_next\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"lat_now\00", align 1
@9 = private unnamed_addr constant [8 x i8] c"lon_now\00", align 1
@10 = private unnamed_addr constant [9 x i8] c"lat_next\00", align 1
@11 = private unnamed_addr constant [9 x i8] c"lon_next\00", align 1
@12 = private unnamed_addr constant [42 x i8] c"tmp__Z29get_distance_to_next_waypointdddd\00", align 1
@13 = private unnamed_addr constant [42 x i8] c"tmp__Z29get_distance_to_next_waypointdddd\00", align 1
@14 = private unnamed_addr constant [42 x i8] c"mul__Z29get_distance_to_next_waypointdddd\00", align 1
@15 = private unnamed_addr constant [18 x i8] c"(double 3.141500)\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@17 = private unnamed_addr constant [42 x i8] c"tmp__Z29get_distance_to_next_waypointdddd\00", align 1
@18 = private unnamed_addr constant [42 x i8] c"div__Z29get_distance_to_next_waypointdddd\00", align 1
@19 = private unnamed_addr constant [42 x i8] c"mul__Z29get_distance_to_next_waypointdddd\00", align 1
@20 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@21 = private unnamed_addr constant [20 x i8] c"(double 180.000000)\00", align 1
@22 = private unnamed_addr constant [42 x i8] c"div__Z29get_distance_to_next_waypointdddd\00", align 1
@23 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd1\00", align 1
@24 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd1\00", align 1
@25 = private unnamed_addr constant [43 x i8] c"mul1__Z29get_distance_to_next_waypointdddd\00", align 1
@26 = private unnamed_addr constant [18 x i8] c"(double 3.141500)\00", align 1
@27 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@28 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd1\00", align 1
@29 = private unnamed_addr constant [43 x i8] c"div2__Z29get_distance_to_next_waypointdddd\00", align 1
@30 = private unnamed_addr constant [43 x i8] c"mul1__Z29get_distance_to_next_waypointdddd\00", align 1
@31 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@32 = private unnamed_addr constant [20 x i8] c"(double 180.000000)\00", align 1
@33 = private unnamed_addr constant [43 x i8] c"div2__Z29get_distance_to_next_waypointdddd\00", align 1
@34 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd2\00", align 1
@35 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd2\00", align 1
@36 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd3\00", align 1
@37 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd3\00", align 1
@38 = private unnamed_addr constant [42 x i8] c"sub__Z29get_distance_to_next_waypointdddd\00", align 1
@39 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd2\00", align 1
@40 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@41 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd3\00", align 1
@42 = private unnamed_addr constant [42 x i8] c"sub__Z29get_distance_to_next_waypointdddd\00", align 1
@43 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd4\00", align 1
@44 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd4\00", align 1
@45 = private unnamed_addr constant [43 x i8] c"mul3__Z29get_distance_to_next_waypointdddd\00", align 1
@46 = private unnamed_addr constant [18 x i8] c"(double 3.141500)\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@48 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd4\00", align 1
@49 = private unnamed_addr constant [43 x i8] c"div4__Z29get_distance_to_next_waypointdddd\00", align 1
@50 = private unnamed_addr constant [43 x i8] c"mul3__Z29get_distance_to_next_waypointdddd\00", align 1
@51 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@52 = private unnamed_addr constant [20 x i8] c"(double 180.000000)\00", align 1
@53 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd5\00", align 1
@54 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd5\00", align 1
@55 = private unnamed_addr constant [43 x i8] c"mul5__Z29get_distance_to_next_waypointdddd\00", align 1
@56 = private unnamed_addr constant [18 x i8] c"(double 3.141500)\00", align 1
@57 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@58 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd5\00", align 1
@59 = private unnamed_addr constant [43 x i8] c"div6__Z29get_distance_to_next_waypointdddd\00", align 1
@60 = private unnamed_addr constant [43 x i8] c"mul5__Z29get_distance_to_next_waypointdddd\00", align 1
@61 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@62 = private unnamed_addr constant [20 x i8] c"(double 180.000000)\00", align 1
@63 = private unnamed_addr constant [43 x i8] c"sub7__Z29get_distance_to_next_waypointdddd\00", align 1
@64 = private unnamed_addr constant [43 x i8] c"div4__Z29get_distance_to_next_waypointdddd\00", align 1
@65 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@66 = private unnamed_addr constant [43 x i8] c"div6__Z29get_distance_to_next_waypointdddd\00", align 1
@67 = private unnamed_addr constant [43 x i8] c"sub7__Z29get_distance_to_next_waypointdddd\00", align 1
@68 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd6\00", align 1
@69 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd6\00", align 1
@70 = private unnamed_addr constant [43 x i8] c"div8__Z29get_distance_to_next_waypointdddd\00", align 1
@71 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd6\00", align 1
@72 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@73 = private unnamed_addr constant [18 x i8] c"(double 2.000000)\00", align 1
@74 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd7\00", align 1
@75 = private unnamed_addr constant [43 x i8] c"div8__Z29get_distance_to_next_waypointdddd\00", align 1
@76 = private unnamed_addr constant [13 x i8] c"llvm.sin.f64\00", align 1
@77 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@78 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd8\00", align 1
@79 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd8\00", align 1
@80 = private unnamed_addr constant [43 x i8] c"div9__Z29get_distance_to_next_waypointdddd\00", align 1
@81 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd8\00", align 1
@82 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@83 = private unnamed_addr constant [18 x i8] c"(double 2.000000)\00", align 1
@84 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd9\00", align 1
@85 = private unnamed_addr constant [43 x i8] c"div9__Z29get_distance_to_next_waypointdddd\00", align 1
@86 = private unnamed_addr constant [13 x i8] c"llvm.sin.f64\00", align 1
@87 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@88 = private unnamed_addr constant [44 x i8] c"mul10__Z29get_distance_to_next_waypointdddd\00", align 1
@89 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd7\00", align 1
@90 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@91 = private unnamed_addr constant [43 x i8] c"tmp__Z29get_distance_to_next_waypointdddd9\00", align 1
@92 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd10\00", align 1
@93 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd10\00", align 1
@94 = private unnamed_addr constant [44 x i8] c"div11__Z29get_distance_to_next_waypointdddd\00", align 1
@95 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd10\00", align 1
@96 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@97 = private unnamed_addr constant [18 x i8] c"(double 2.000000)\00", align 1
@98 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd11\00", align 1
@99 = private unnamed_addr constant [44 x i8] c"div11__Z29get_distance_to_next_waypointdddd\00", align 1
@100 = private unnamed_addr constant [13 x i8] c"llvm.sin.f64\00", align 1
@101 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@102 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd12\00", align 1
@103 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd12\00", align 1
@104 = private unnamed_addr constant [44 x i8] c"div12__Z29get_distance_to_next_waypointdddd\00", align 1
@105 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd12\00", align 1
@106 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@107 = private unnamed_addr constant [18 x i8] c"(double 2.000000)\00", align 1
@108 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd13\00", align 1
@109 = private unnamed_addr constant [44 x i8] c"div12__Z29get_distance_to_next_waypointdddd\00", align 1
@110 = private unnamed_addr constant [13 x i8] c"llvm.sin.f64\00", align 1
@111 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@112 = private unnamed_addr constant [44 x i8] c"mul13__Z29get_distance_to_next_waypointdddd\00", align 1
@113 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd11\00", align 1
@114 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@115 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd13\00", align 1
@116 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd14\00", align 1
@117 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd14\00", align 1
@118 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd15\00", align 1
@119 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd14\00", align 1
@120 = private unnamed_addr constant [13 x i8] c"llvm.cos.f64\00", align 1
@121 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@122 = private unnamed_addr constant [44 x i8] c"mul14__Z29get_distance_to_next_waypointdddd\00", align 1
@123 = private unnamed_addr constant [44 x i8] c"mul13__Z29get_distance_to_next_waypointdddd\00", align 1
@124 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@125 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd15\00", align 1
@126 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd16\00", align 1
@127 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd16\00", align 1
@128 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd17\00", align 1
@129 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd16\00", align 1
@130 = private unnamed_addr constant [13 x i8] c"llvm.cos.f64\00", align 1
@131 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@132 = private unnamed_addr constant [44 x i8] c"mul15__Z29get_distance_to_next_waypointdddd\00", align 1
@133 = private unnamed_addr constant [44 x i8] c"mul14__Z29get_distance_to_next_waypointdddd\00", align 1
@134 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@135 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd17\00", align 1
@136 = private unnamed_addr constant [42 x i8] c"add__Z29get_distance_to_next_waypointdddd\00", align 1
@137 = private unnamed_addr constant [44 x i8] c"mul10__Z29get_distance_to_next_waypointdddd\00", align 1
@138 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@139 = private unnamed_addr constant [44 x i8] c"mul15__Z29get_distance_to_next_waypointdddd\00", align 1
@140 = private unnamed_addr constant [42 x i8] c"add__Z29get_distance_to_next_waypointdddd\00", align 1
@141 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd18\00", align 1
@142 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd18\00", align 1
@143 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd19\00", align 1
@144 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd18\00", align 1
@145 = private unnamed_addr constant [14 x i8] c"llvm.sqrt.f64\00", align 1
@146 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@147 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd20\00", align 1
@148 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd20\00", align 1
@149 = private unnamed_addr constant [44 x i8] c"sub16__Z29get_distance_to_next_waypointdddd\00", align 1
@150 = private unnamed_addr constant [18 x i8] c"(double 1.000000)\00", align 1
@151 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@152 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd20\00", align 1
@153 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd21\00", align 1
@154 = private unnamed_addr constant [44 x i8] c"sub16__Z29get_distance_to_next_waypointdddd\00", align 1
@155 = private unnamed_addr constant [14 x i8] c"llvm.sqrt.f64\00", align 1
@156 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@157 = private unnamed_addr constant [43 x i8] c"call__Z29get_distance_to_next_waypointdddd\00", align 1
@158 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@159 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@160 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd19\00", align 1
@161 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd21\00", align 1
@162 = private unnamed_addr constant [43 x i8] c"call__Z29get_distance_to_next_waypointdddd\00", align 1
@163 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd22\00", align 1
@164 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd22\00", align 1
@165 = private unnamed_addr constant [44 x i8] c"mul17__Z29get_distance_to_next_waypointdddd\00", align 1
@166 = private unnamed_addr constant [22 x i8] c"(double 12700.000000)\00", align 1
@167 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@168 = private unnamed_addr constant [44 x i8] c"tmp__Z29get_distance_to_next_waypointdddd22\00", align 1
@169 = private unnamed_addr constant [43 x i8] c"conv__Z29get_distance_to_next_waypointdddd\00", align 1
@170 = private unnamed_addr constant [44 x i8] c"mul17__Z29get_distance_to_next_waypointdddd\00", align 1
@171 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@172 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@173 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@174 = private unnamed_addr constant [42 x i8] c"_Z29get_distance_to_next_waypointdddd_RET\00", align 1
@175 = private unnamed_addr constant [43 x i8] c"conv__Z29get_distance_to_next_waypointdddd\00", align 1
@176 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@177 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@178 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@179 = private unnamed_addr constant [13 x i8] c"max_distance\00", align 1
@180 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@181 = private unnamed_addr constant [8 x i8] c"mission\00", align 1
@182 = private unnamed_addr constant [13 x i8] c"max_distance\00", align 1
@183 = private unnamed_addr constant [52 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@184 = private unnamed_addr constant [52 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@185 = private unnamed_addr constant [52 x i8] c"cmp__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@186 = private unnamed_addr constant [52 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@187 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@188 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@189 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@190 = private unnamed_addr constant [52 x i8] c"cmp__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@191 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@192 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@193 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@194 = private unnamed_addr constant [13 x i8] c"(double nan)\00", align 1
@195 = private unnamed_addr constant [13 x i8] c"(double nan)\00", align 1
@196 = private unnamed_addr constant [12 x i8] c"(float nan)\00", align 1
@197 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@198 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@199 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf1\00", align 1
@200 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf1\00", align 1
@201 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf2\00", align 1
@202 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf2\00", align 1
@203 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf3\00", align 1
@204 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf3\00", align 1
@205 = private unnamed_addr constant [53 x i8] c"cmp1__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@206 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf1\00", align 1
@207 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@208 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf3\00", align 1
@209 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@210 = private unnamed_addr constant [53 x i8] c"cmp1__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@211 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@212 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf4\00", align 1
@213 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf4\00", align 1
@214 = private unnamed_addr constant [53 x i8] c"cmp2__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@215 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf4\00", align 1
@216 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@217 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@218 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@219 = private unnamed_addr constant [53 x i8] c"cmp2__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@220 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@221 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf5\00", align 1
@222 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf5\00", align 1
@223 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6\00", align 1
@224 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6\00", align 1
@225 = private unnamed_addr constant [56 x i8] c"idxprom__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@226 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6\00", align 1
@227 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@228 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@229 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@230 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf7\00", align 1
@231 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf7\00", align 1
@232 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf8\00", align 1
@233 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf8\00", align 1
@234 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9\00", align 1
@235 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9\00", align 1
@236 = private unnamed_addr constant [57 x i8] c"idxprom5__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@237 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9\00", align 1
@238 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@239 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@240 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@241 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf10\00", align 1
@242 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf10\00", align 1
@243 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf11\00", align 1
@244 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf11\00", align 1
@245 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf12\00", align 1
@246 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf12\00", align 1
@247 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@248 = private unnamed_addr constant [53 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf7\00", align 1
@249 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@250 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf10\00", align 1
@251 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@252 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf11\00", align 1
@253 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@254 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf12\00", align 1
@255 = private unnamed_addr constant [53 x i8] c"call__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@256 = private unnamed_addr constant [42 x i8] c"_Z29get_distance_to_next_waypointdddd_RET\00", align 1
@257 = private unnamed_addr constant [53 x i8] c"call__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@258 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf13\00", align 1
@259 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf13\00", align 1
@260 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf14\00", align 1
@261 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf14\00", align 1
@262 = private unnamed_addr constant [53 x i8] c"cmp7__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@263 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf13\00", align 1
@264 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@265 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf14\00", align 1
@266 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@267 = private unnamed_addr constant [53 x i8] c"cmp7__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@268 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@269 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@270 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@271 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf15\00", align 1
@272 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf15\00", align 1
@273 = private unnamed_addr constant [53 x i8] c"cmp9__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@274 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf15\00", align 1
@275 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@276 = private unnamed_addr constant [17 x i8] c"(float 0.050000)\00", align 1
@277 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@278 = private unnamed_addr constant [53 x i8] c"cmp9__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@279 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@280 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf16\00", align 1
@281 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf16\00", align 1
@282 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf17\00", align 1
@283 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf17\00", align 1
@284 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18\00", align 1
@285 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18\00", align 1
@286 = private unnamed_addr constant [58 x i8] c"idxprom11__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@287 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18\00", align 1
@288 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@289 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@290 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@291 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf19\00", align 1
@292 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf19\00", align 1
@293 = private unnamed_addr constant [52 x i8] c"sub__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@294 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf16\00", align 1
@295 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@296 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf19\00", align 1
@297 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf20\00", align 1
@298 = private unnamed_addr constant [52 x i8] c"sub__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@299 = private unnamed_addr constant [14 x i8] c"llvm.fabs.f32\00", align 1
@300 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@301 = private unnamed_addr constant [54 x i8] c"cmp13__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@302 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf20\00", align 1
@303 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@304 = private unnamed_addr constant [17 x i8] c"(float 0.050000)\00", align 1
@305 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@306 = private unnamed_addr constant [54 x i8] c"cmp13__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@307 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@308 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@309 = private unnamed_addr constant [10 x i8] c"if.then14\00", align 1
@310 = private unnamed_addr constant [9 x i8] c"if.end15\00", align 1
@311 = private unnamed_addr constant [9 x i8] c"if.end16\00", align 1
@312 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf21\00", align 1
@313 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf21\00", align 1
@314 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22\00", align 1
@315 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22\00", align 1
@316 = private unnamed_addr constant [58 x i8] c"idxprom19__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@317 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22\00", align 1
@318 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@319 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@320 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@321 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf23\00", align 1
@322 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf23\00", align 1
@323 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf23\00", align 1
@324 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf24\00", align 1
@325 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf24\00", align 1
@326 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25\00", align 1
@327 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25\00", align 1
@328 = private unnamed_addr constant [58 x i8] c"idxprom23__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@329 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25\00", align 1
@330 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@331 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@332 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@333 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf26\00", align 1
@334 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf26\00", align 1
@335 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf26\00", align 1
@336 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf27\00", align 1
@337 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf27\00", align 1
@338 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28\00", align 1
@339 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28\00", align 1
@340 = private unnamed_addr constant [58 x i8] c"idxprom27__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@341 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28\00", align 1
@342 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@343 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@344 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@345 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf29\00", align 1
@346 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf29\00", align 1
@347 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf29\00", align 1
@348 = private unnamed_addr constant [9 x i8] c"if.end17\00", align 1
@349 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf30\00", align 1
@350 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf30\00", align 1
@351 = private unnamed_addr constant [52 x i8] c"inc__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@352 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf30\00", align 1
@353 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@354 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@355 = private unnamed_addr constant [52 x i8] c"inc__Z30checkDistancesBetweenWaypointsRK9mission_sf\00", align 1
@356 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@357 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@358 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@359 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf31\00", align 1
@360 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf31\00", align 1
@361 = private unnamed_addr constant [52 x i8] c"_Z30checkDistancesBetweenWaypointsRK9mission_sf_RET\00", align 1
@362 = private unnamed_addr constant [54 x i8] c"tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf31\00", align 1
@363 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_Z29get_distance_to_next_waypointdddd(double %lat_now, double %lon_now, double %lat_next, double %lon_next) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  %lat_now.addr__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %lon_now.addr__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %lat_next.addr__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %lon_next.addr__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %lat_now_rad__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %lat_next_rad__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %d_lat__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %d_lon__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %a__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  %c__Z29get_distance_to_next_waypointdddd = alloca double, align 8
  store double %lat_now, double* %lat_now.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lat_now.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0))
  store double %lon_now, double* %lon_now.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lon_now.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0))
  store double %lat_next, double* %lat_next.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lat_next.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0))
  store double %lon_next, double* %lon_next.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lon_next.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd = load double, double* %lat_now.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_now.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @13, i32 0, i32 0))
  %mul__Z29get_distance_to_next_waypointdddd = fmul double 3.141500e+00, %tmp__Z29get_distance_to_next_waypointdddd
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @17, i32 0, i32 0))
  %div__Z29get_distance_to_next_waypointdddd = fdiv double %mul__Z29get_distance_to_next_waypointdddd, 1.800000e+02
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @21, i32 0, i32 0))
  store double %div__Z29get_distance_to_next_waypointdddd, double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @22, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd1 = load double, double* %lat_next.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_next.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @24, i32 0, i32 0))
  %mul1__Z29get_distance_to_next_waypointdddd = fmul double 3.141500e+00, %tmp__Z29get_distance_to_next_waypointdddd1
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @28, i32 0, i32 0))
  %div2__Z29get_distance_to_next_waypointdddd = fdiv double %mul1__Z29get_distance_to_next_waypointdddd, 1.800000e+02
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @32, i32 0, i32 0))
  store double %div2__Z29get_distance_to_next_waypointdddd, double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @33, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd2 = load double, double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @35, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd3 = load double, double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @37, i32 0, i32 0))
  %sub__Z29get_distance_to_next_waypointdddd = fsub double %tmp__Z29get_distance_to_next_waypointdddd2, %tmp__Z29get_distance_to_next_waypointdddd3
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @41, i32 0, i32 0))
  store double %sub__Z29get_distance_to_next_waypointdddd, double* %d_lat__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %d_lat__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @42, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd4 = load double, double* %lon_next.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lon_next.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @44, i32 0, i32 0))
  %mul3__Z29get_distance_to_next_waypointdddd = fmul double 3.141500e+00, %tmp__Z29get_distance_to_next_waypointdddd4
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @48, i32 0, i32 0))
  %div4__Z29get_distance_to_next_waypointdddd = fdiv double %mul3__Z29get_distance_to_next_waypointdddd, 1.800000e+02
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @52, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd5 = load double, double* %lon_now.addr__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lon_now.addr__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @54, i32 0, i32 0))
  %mul5__Z29get_distance_to_next_waypointdddd = fmul double 3.141500e+00, %tmp__Z29get_distance_to_next_waypointdddd5
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @58, i32 0, i32 0))
  %div6__Z29get_distance_to_next_waypointdddd = fdiv double %mul5__Z29get_distance_to_next_waypointdddd, 1.800000e+02
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @62, i32 0, i32 0))
  %sub7__Z29get_distance_to_next_waypointdddd = fsub double %div4__Z29get_distance_to_next_waypointdddd, %div6__Z29get_distance_to_next_waypointdddd
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @66, i32 0, i32 0))
  store double %sub7__Z29get_distance_to_next_waypointdddd, double* %d_lon__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %d_lon__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @67, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd6 = load double, double* %d_lat__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %d_lat__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @69, i32 0, i32 0))
  %div8__Z29get_distance_to_next_waypointdddd = fdiv double %tmp__Z29get_distance_to_next_waypointdddd6, 2.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @73, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @77, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd7 = call double @llvm.sin.f64(double %div8__Z29get_distance_to_next_waypointdddd)
  %tmp__Z29get_distance_to_next_waypointdddd8 = load double, double* %d_lat__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %d_lat__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @79, i32 0, i32 0))
  %div9__Z29get_distance_to_next_waypointdddd = fdiv double %tmp__Z29get_distance_to_next_waypointdddd8, 2.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @83, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @87, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd9 = call double @llvm.sin.f64(double %div9__Z29get_distance_to_next_waypointdddd)
  %mul10__Z29get_distance_to_next_waypointdddd = fmul double %tmp__Z29get_distance_to_next_waypointdddd7, %tmp__Z29get_distance_to_next_waypointdddd9
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @91, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd10 = load double, double* %d_lon__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %d_lon__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @93, i32 0, i32 0))
  %div11__Z29get_distance_to_next_waypointdddd = fdiv double %tmp__Z29get_distance_to_next_waypointdddd10, 2.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @95, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @97, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @101, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd11 = call double @llvm.sin.f64(double %div11__Z29get_distance_to_next_waypointdddd)
  %tmp__Z29get_distance_to_next_waypointdddd12 = load double, double* %d_lon__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %d_lon__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @103, i32 0, i32 0))
  %div12__Z29get_distance_to_next_waypointdddd = fdiv double %tmp__Z29get_distance_to_next_waypointdddd12, 2.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @107, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @111, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd13 = call double @llvm.sin.f64(double %div12__Z29get_distance_to_next_waypointdddd)
  %mul13__Z29get_distance_to_next_waypointdddd = fmul double %tmp__Z29get_distance_to_next_waypointdddd11, %tmp__Z29get_distance_to_next_waypointdddd13
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @115, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd14 = load double, double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_now_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @117, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @121, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd15 = call double @llvm.cos.f64(double %tmp__Z29get_distance_to_next_waypointdddd14)
  %mul14__Z29get_distance_to_next_waypointdddd = fmul double %mul13__Z29get_distance_to_next_waypointdddd, %tmp__Z29get_distance_to_next_waypointdddd15
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @125, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd16 = load double, double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %lat_next_rad__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @127, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @129, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @131, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd17 = call double @llvm.cos.f64(double %tmp__Z29get_distance_to_next_waypointdddd16)
  %mul15__Z29get_distance_to_next_waypointdddd = fmul double %mul14__Z29get_distance_to_next_waypointdddd, %tmp__Z29get_distance_to_next_waypointdddd17
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @135, i32 0, i32 0))
  %add__Z29get_distance_to_next_waypointdddd = fadd double %mul10__Z29get_distance_to_next_waypointdddd, %mul15__Z29get_distance_to_next_waypointdddd
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @136, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @139, i32 0, i32 0))
  store double %add__Z29get_distance_to_next_waypointdddd, double* %a__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %a__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @140, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd18 = load double, double* %a__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %a__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @142, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @146, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd19 = call double @llvm.sqrt.f64(double %tmp__Z29get_distance_to_next_waypointdddd18)
  %tmp__Z29get_distance_to_next_waypointdddd20 = load double, double* %a__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %a__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @148, i32 0, i32 0))
  %sub16__Z29get_distance_to_next_waypointdddd = fsub double 1.000000e+00, %tmp__Z29get_distance_to_next_waypointdddd20
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @152, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @153, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @154, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @155, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @156, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd21 = call double @llvm.sqrt.f64(double %sub16__Z29get_distance_to_next_waypointdddd)
  %call__Z29get_distance_to_next_waypointdddd = call double @atan2(double %tmp__Z29get_distance_to_next_waypointdddd19, double %tmp__Z29get_distance_to_next_waypointdddd21) #3
  call void @stg_update_bin_intrinsic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @158, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @161, i32 0, i32 0))
  store double %call__Z29get_distance_to_next_waypointdddd, double* %c__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_store_double(double* %c__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @162, i32 0, i32 0))
  %tmp__Z29get_distance_to_next_waypointdddd22 = load double, double* %c__Z29get_distance_to_next_waypointdddd, align 8
  call void @stg_update_load_double(double* %c__Z29get_distance_to_next_waypointdddd, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @164, i32 0, i32 0))
  %mul17__Z29get_distance_to_next_waypointdddd = fmul double 1.270000e+04, %tmp__Z29get_distance_to_next_waypointdddd22
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @165, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @167, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @168, i32 0, i32 0))
  %conv__Z29get_distance_to_next_waypointdddd = fptrunc double %mul17__Z29get_distance_to_next_waypointdddd to float
  call void @stg_update_cast_double(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @170, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @171, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @173, i32 0, i32 0), double %mul17__Z29get_distance_to_next_waypointdddd)
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @174, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @175, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @176, i32 0, i32 0))
  ret float %conv__Z29get_distance_to_next_waypointdddd
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #1

; Function Attrs: nounwind readnone
declare double @atan2(double, double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z30checkDistancesBetweenWaypointsRK9mission_sf(%struct.mission_s* dereferenceable(648) %mission, float %max_distance) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @178, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @180, i32 0, i32 0))
  %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca i1, align 1
  %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca %struct.mission_s*, align 8
  %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca float, align 4
  %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca double, align 8
  %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca double, align 8
  %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca float, align 4
  %i__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca i32, align 4
  %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf = alloca float, align 4
  store %struct.mission_s* %mission, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  store float %max_distance, float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_float(float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @182, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf = load float, float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_float(float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @184, i32 0, i32 0))
  %cmp__Z30checkDistancesBetweenWaypointsRK9mission_sf = fcmp ole float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @185, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @189, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @190, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @191, i32 0, i32 0))
  br i1 %cmp__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 1
  call void @stg_update_store_i1(i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @192, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @193, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  store double 0x7FF8000000000000, double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_store_double(double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @194, i32 0, i32 0))
  store double 0x7FF8000000000000, double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_store_double(double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @195, i32 0, i32 0))
  store float 0x7FF8000000000000, float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_float(float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @196, i32 0, i32 0))
  store i32 0, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @197, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @198, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf1 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @200, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf2 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %count__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf2, i32 0, i32 1
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf3 = load i32, i32* %count__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_i32(i32* %count__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @204, i32 0, i32 0))
  %cmp1__Z30checkDistancesBetweenWaypointsRK9mission_sf = icmp slt i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf1, %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf3
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @205, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @206, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @208, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @209, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @210, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @211, i32 0, i32 0))
  br i1 %cmp1__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf4 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @213, i32 0, i32 0))
  %cmp2__Z30checkDistancesBetweenWaypointsRK9mission_sf = icmp sgt i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf4, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @214, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @215, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @216, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @217, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @218, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @219, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @220, i32 0, i32 0))
  br i1 %cmp2__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %if.then3, label %if.end17

if.then3:                                         ; preds = %for.body
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf5 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf5, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @224, i32 0, i32 0))
  %idxprom__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @225, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @226, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @227, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @228, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @229, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf6)
  %arrayidx__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %lat__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf7 = load double, double* %lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @231, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf8 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items4__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf8, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @235, i32 0, i32 0))
  %idxprom5__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @236, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @237, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @238, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @239, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @240, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf9)
  %arrayidx6__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items4__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom5__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %lon__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx6__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 1
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf10 = load double, double* %lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @242, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf11 = load double, double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @244, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf12 = load double, double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @246, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @247, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @248, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @249, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @250, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @251, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @252, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @253, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @254, i32 0, i32 0))
  %call__Z30checkDistancesBetweenWaypointsRK9mission_sf = call float @_Z29get_distance_to_next_waypointdddd(double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf7, double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf10, double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf11, double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf12)
  call void @stg_update_char(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @255, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @256, i32 0, i32 0))
  store float %call__Z30checkDistancesBetweenWaypointsRK9mission_sf, float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_float(float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @257, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf13 = load float, float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_float(float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @259, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf14 = load float, float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_float(float* %max_distance.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @261, i32 0, i32 0))
  %cmp7__Z30checkDistancesBetweenWaypointsRK9mission_sf = fcmp ogt float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf13, %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf14
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @262, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @264, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @265, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @266, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @267, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @268, i32 0, i32 0))
  br i1 %cmp7__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  store i1 false, i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 1
  call void @stg_update_store_i1(i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @269, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @270, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %if.then3
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf15 = load float, float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_float(float* %dist_between_waypoints__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @272, i32 0, i32 0))
  %cmp9__Z30checkDistancesBetweenWaypointsRK9mission_sf = fcmp olt float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf15, 0x3FA99999A0000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @273, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @274, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @275, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @276, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @277, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp9__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @278, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @279, i32 0, i32 0))
  br i1 %cmp9__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.else
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf16 = load float, float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_float(float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @281, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf17 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items10__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf17, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @285, i32 0, i32 0))
  %idxprom11__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @286, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @287, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @288, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @289, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @290, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf18)
  %arrayidx12__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items10__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom11__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %altitude__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx12__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 2
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf19 = load float, float* %altitude__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_float(float* %altitude__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @292, i32 0, i32 0))
  %sub__Z30checkDistancesBetweenWaypointsRK9mission_sf = fsub float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf16, %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf19
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @293, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @294, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @295, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @296, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @297, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @298, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @299, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @300, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf20 = call float @llvm.fabs.f32(float %sub__Z30checkDistancesBetweenWaypointsRK9mission_sf)
  %cmp13__Z30checkDistancesBetweenWaypointsRK9mission_sf = fcmp olt float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf20, 0x3FA99999A0000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @301, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @302, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @303, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @304, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @305, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp13__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @306, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @307, i32 0, i32 0))
  br i1 %cmp13__Z30checkDistancesBetweenWaypointsRK9mission_sf, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  store i1 false, i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 1
  call void @stg_update_store_i1(i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @308, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @309, i32 0, i32 0))
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @310, i32 0, i32 0))
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @311, i32 0, i32 0))
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf21 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items18__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf21, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @315, i32 0, i32 0))
  %idxprom19__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @316, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @317, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @318, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @319, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @320, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf22)
  %arrayidx20__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items18__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom19__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %lat21__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx20__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf23 = load double, double* %lat21__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %lat21__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @322, i32 0, i32 0))
  store double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf23, double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_store_double(double* %last_lat__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @323, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf24 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items22__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf24, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @327, i32 0, i32 0))
  %idxprom23__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @328, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @329, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @330, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @331, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @332, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf25)
  %arrayidx24__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items22__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom23__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %lon25__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx24__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 1
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf26 = load double, double* %lon25__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_double(double* %lon25__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @334, i32 0, i32 0))
  store double %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf26, double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_store_double(double* %last_lon__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @335, i32 0, i32 0))
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf27 = load %struct.mission_s*, %struct.mission_s** %mission.addr__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  %items26__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_s, %struct.mission_s* %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf27, i32 0, i32 0
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @339, i32 0, i32 0))
  %idxprom27__Z30checkDistancesBetweenWaypointsRK9mission_sf = sext i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @340, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @341, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @342, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @343, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @344, i32 0, i32 0), i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf28)
  %arrayidx28__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds [20 x %struct.mission_item_s], [20 x %struct.mission_item_s]* %items26__Z30checkDistancesBetweenWaypointsRK9mission_sf, i64 0, i64 %idxprom27__Z30checkDistancesBetweenWaypointsRK9mission_sf
  %altitude29__Z30checkDistancesBetweenWaypointsRK9mission_sf = getelementptr inbounds %struct.mission_item_s, %struct.mission_item_s* %arrayidx28__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32 0, i32 2
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf29 = load float, float* %altitude29__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 8
  call void @stg_update_load_float(float* %altitude29__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @346, i32 0, i32 0))
  store float %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf29, float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_float(float* %last_alt__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @347, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @348, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf30 = load i32, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_load_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @350, i32 0, i32 0))
  %inc__Z30checkDistancesBetweenWaypointsRK9mission_sf = add nsw i32 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf30, 1
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @351, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @352, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @353, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @354, i32 0, i32 0))
  store i32 %inc__Z30checkDistancesBetweenWaypointsRK9mission_sf, i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 4
  call void @stg_update_store_i32(i32* %i__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @355, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @356, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 1
  call void @stg_update_store_i1(i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @357, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @358, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then14, %if.then8, %if.then
  %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf31 = load i1, i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, align 1
  call void @stg_update_load_i1(i1* %retval__Z30checkDistancesBetweenWaypointsRK9mission_sf, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @360, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @361, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @362, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @363, i32 0, i32 0))
  ret i1 %tmp__Z30checkDistancesBetweenWaypointsRK9mission_sf31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

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
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
