; ModuleID = 'IPUT.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%class.VelocitySmoothing = type { float, float, float, float, %struct.Trajectory, i32, %struct.Trajectory, float, float, float, float }
%struct.Trajectory = type { float, float, float, float }

@.str = private unnamed_addr constant [47 x i8] c"saturateT1ForAccel(): accel[%f] maxAccell[%f]\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"saturateT1ForAccel(): clip+: clip T1 [%f] to [%f]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"saturateT1ForAccel(): clip-: clip T1 [%f] to [%f]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"no clipping\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"computeT2(): abs_t(A + g(A)) > 0.0000001\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"computeVelAtXeroAcc(): took abs value of _state.a\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"computeVelAtXeroAcc(): return vel_zero_acc = %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"M_A\00", align 1
@.str.1.8 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.2.9 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@9 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@10 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@11 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@12 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@13 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@14 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@15 = private unnamed_addr constant [18 x i8] c"(float 22.000000)\00", align 1
@16 = private unnamed_addr constant [17 x i8] c"(float 8.000000)\00", align 1
@17 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@18 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@19 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@20 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@21 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@22 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@23 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@24 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@25 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@26 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@27 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@28 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@29 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@30 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@31 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@32 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@33 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@34 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@35 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@36 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@37 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@38 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@39 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@40 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@41 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@42 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@43 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@44 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@46 = private unnamed_addr constant [37 x i8] c"_ZN17VelocitySmoothing5resetEfff_RET\00", align 1
@47 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@48 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@50 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@51 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@52 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@54 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@55 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@56 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@57 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@58 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@59 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@60 = private unnamed_addr constant [39 x i8] c"this1__ZN17VelocitySmoothing5resetEfff\00", align 1
@61 = private unnamed_addr constant [39 x i8] c"this1__ZN17VelocitySmoothing5resetEfff\00", align 1
@62 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@63 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@64 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@65 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@66 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@67 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@68 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@69 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@70 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@71 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@73 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff3\00", align 1
@74 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff4\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@76 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@77 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@78 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@79 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@80 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@81 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@82 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@83 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@84 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@85 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@86 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@87 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@88 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@89 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@90 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@91 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@92 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@93 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@94 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@95 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@96 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@97 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@98 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@99 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@100 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@101 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@102 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@103 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@105 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@107 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@108 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@109 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC2Efff_RET\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@111 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@113 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@114 = private unnamed_addr constant [44 x i8] c"this1__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@115 = private unnamed_addr constant [44 x i8] c"this1__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@116 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@117 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@118 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@119 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@121 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@122 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@123 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@124 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@125 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@126 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@127 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@128 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@129 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@130 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@131 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@132 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@133 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@134 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@135 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@136 = private unnamed_addr constant [45 x i8] c"this1__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@137 = private unnamed_addr constant [45 x i8] c"this1__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@138 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@139 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@140 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@141 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@142 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@143 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@144 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@145 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@147 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@148 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@149 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@150 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@151 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@152 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@153 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@154 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@155 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@156 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@157 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@158 = private unnamed_addr constant [42 x i8] c"this1__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@159 = private unnamed_addr constant [42 x i8] c"this1__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@160 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@161 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@162 = private unnamed_addr constant [40 x i8] c"_ZNK17VelocitySmoothing9getMaxVelEv_RET\00", align 1
@163 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@164 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@165 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@166 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@167 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@168 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@169 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@170 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@171 = private unnamed_addr constant [41 x i8] c"this1__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@172 = private unnamed_addr constant [41 x i8] c"this1__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@173 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@174 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@175 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@176 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@177 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@178 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@179 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@180 = private unnamed_addr constant [48 x i8] c"this1__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@181 = private unnamed_addr constant [48 x i8] c"this1__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@182 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@183 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@184 = private unnamed_addr constant [46 x i8] c"_ZNK17VelocitySmoothing14getCurrentJerkEv_RET\00", align 1
@185 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@186 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@187 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@188 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@189 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@190 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@191 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@192 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@193 = private unnamed_addr constant [55 x i8] c"this1__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@194 = private unnamed_addr constant [55 x i8] c"this1__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@195 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@196 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@197 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@198 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@199 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@200 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@201 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@202 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@203 = private unnamed_addr constant [56 x i8] c"this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@204 = private unnamed_addr constant [56 x i8] c"this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@205 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@206 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@207 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@208 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@209 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@210 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@211 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@212 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@213 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@214 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@215 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@216 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@217 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@218 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@219 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@220 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@221 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@222 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@223 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@224 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@225 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@226 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@227 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@228 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@229 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@230 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentVelocityEv_RET\00", align 1
@231 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@232 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@233 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@234 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@235 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@236 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@237 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@238 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@239 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@240 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@241 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@242 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@243 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@244 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@245 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@246 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@247 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@248 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@249 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@250 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@251 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@252 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@253 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentPositionEv_RET\00", align 1
@254 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@255 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@256 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@257 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@258 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@259 = private unnamed_addr constant [41 x i8] c"this1__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@260 = private unnamed_addr constant [41 x i8] c"this1__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@261 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@262 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@263 = private unnamed_addr constant [39 x i8] c"_ZNK17VelocitySmoothing8getVelSpEv_RET\00", align 1
@264 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@265 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@266 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@267 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@268 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@269 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@270 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@271 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@272 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@273 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@274 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@275 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@276 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@277 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@278 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@279 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@280 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@281 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@282 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@283 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@284 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@285 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@286 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@287 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@288 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@289 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@290 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@291 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@292 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@293 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@294 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@295 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@296 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@297 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@298 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@299 = private unnamed_addr constant [46 x i8] c"this1__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@300 = private unnamed_addr constant [46 x i8] c"this1__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@301 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@302 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@303 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@304 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@305 = private unnamed_addr constant [44 x i8] c"add__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@306 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@307 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@308 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@309 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@310 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@311 = private unnamed_addr constant [45 x i8] c"add2__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@312 = private unnamed_addr constant [44 x i8] c"add__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@313 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@314 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@315 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@316 = private unnamed_addr constant [45 x i8] c"add2__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@317 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@318 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@319 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@320 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@321 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@322 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@323 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@324 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@325 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@326 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@327 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@328 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@329 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@330 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@331 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@332 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@333 = private unnamed_addr constant [54 x i8] c"this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@334 = private unnamed_addr constant [54 x i8] c"this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@335 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@336 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@337 = private unnamed_addr constant [53 x i8] c"conv__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@338 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@339 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@340 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@341 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@342 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@343 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@344 = private unnamed_addr constant [54 x i8] c"conv2__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@345 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@346 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@347 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@348 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@349 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@350 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@351 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@352 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@353 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@354 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@355 = private unnamed_addr constant [52 x i8] c"mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@356 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@357 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@358 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@359 = private unnamed_addr constant [52 x i8] c"add__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@360 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@361 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@362 = private unnamed_addr constant [52 x i8] c"mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@363 = private unnamed_addr constant [52 x i8] c"add__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@364 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@365 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@366 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@367 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@368 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@369 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@370 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@371 = private unnamed_addr constant [52 x i8] c"cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@372 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@373 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@374 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@375 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@376 = private unnamed_addr constant [52 x i8] c"cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@377 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@378 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@379 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@380 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@381 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@382 = private unnamed_addr constant [52 x i8] c"sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@383 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@384 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@385 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@386 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@387 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@388 = private unnamed_addr constant [52 x i8] c"div__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@389 = private unnamed_addr constant [52 x i8] c"sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@390 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@391 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@392 = private unnamed_addr constant [52 x i8] c"div__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@393 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@394 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@395 = private unnamed_addr constant [54 x i8] c"conv3__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@396 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@397 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@398 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@399 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@400 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@401 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@402 = private unnamed_addr constant [54 x i8] c"conv4__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@403 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@404 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@405 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@406 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@407 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@408 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@409 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@410 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@411 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@412 = private unnamed_addr constant [53 x i8] c"sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@413 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@414 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@415 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@416 = private unnamed_addr constant [53 x i8] c"cmp7__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@417 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@418 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@419 = private unnamed_addr constant [53 x i8] c"sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@420 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@421 = private unnamed_addr constant [53 x i8] c"cmp7__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@422 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@423 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15\00", align 1
@424 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15\00", align 1
@425 = private unnamed_addr constant [54 x i8] c"conv9__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@426 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15\00", align 1
@427 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@428 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@429 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@430 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16\00", align 1
@431 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16\00", align 1
@432 = private unnamed_addr constant [55 x i8] c"conv10__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@433 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16\00", align 1
@434 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@435 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@436 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@437 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff17\00", align 1
@438 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff17\00", align 1
@439 = private unnamed_addr constant [54 x i8] c"sub12__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@440 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@441 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@442 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff17\00", align 1
@443 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff18\00", align 1
@444 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff18\00", align 1
@445 = private unnamed_addr constant [54 x i8] c"sub13__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@446 = private unnamed_addr constant [54 x i8] c"sub12__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@447 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@448 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff18\00", align 1
@449 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff19\00", align 1
@450 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff19\00", align 1
@451 = private unnamed_addr constant [54 x i8] c"div14__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@452 = private unnamed_addr constant [54 x i8] c"sub13__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@453 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@454 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff19\00", align 1
@455 = private unnamed_addr constant [54 x i8] c"div14__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@456 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@457 = private unnamed_addr constant [10 x i8] c"if.else15\00", align 1
@458 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@459 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff20\00", align 1
@460 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff20\00", align 1
@461 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@462 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff20\00", align 1
@463 = private unnamed_addr constant [9 x i8] c"if.end17\00", align 1
@464 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@465 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@466 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@467 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@468 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@469 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@470 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@471 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@472 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@473 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@474 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@475 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@476 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@477 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@478 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@479 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@480 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@481 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@482 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@483 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@484 = private unnamed_addr constant [17 x i8] c"(float 2.000000)\00", align 1
@485 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@486 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@487 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@488 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@489 = private unnamed_addr constant [43 x i8] c"mul2__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@490 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@491 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@492 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@493 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@494 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@495 = private unnamed_addr constant [43 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@496 = private unnamed_addr constant [17 x i8] c"(float 4.000000)\00", align 1
@497 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@498 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@499 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@500 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@501 = private unnamed_addr constant [43 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@502 = private unnamed_addr constant [43 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@503 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@504 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@505 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@506 = private unnamed_addr constant [43 x i8] c"mul2__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@507 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@508 = private unnamed_addr constant [43 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@509 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@510 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@511 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@512 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@513 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@514 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@515 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@516 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@517 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@518 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@519 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@520 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@521 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@522 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@523 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff6\00", align 1
@524 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@525 = private unnamed_addr constant [14 x i8] c"llvm.sqrt.f32\00", align 1
@526 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@527 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff6\00", align 1
@528 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@529 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@530 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@531 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@532 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@533 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@534 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@535 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@536 = private unnamed_addr constant [43 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@537 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@538 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@539 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@540 = private unnamed_addr constant [43 x i8] c"add6__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@541 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@542 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@543 = private unnamed_addr constant [43 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@544 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@545 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@546 = private unnamed_addr constant [42 x i8] c"div__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@547 = private unnamed_addr constant [43 x i8] c"add6__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@548 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@549 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@550 = private unnamed_addr constant [42 x i8] c"div__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@551 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@552 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@553 = private unnamed_addr constant [43 x i8] c"sub7__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@554 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@555 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@556 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@557 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@558 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@559 = private unnamed_addr constant [43 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@560 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@561 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@562 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@563 = private unnamed_addr constant [43 x i8] c"sub9__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@564 = private unnamed_addr constant [43 x i8] c"sub7__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@565 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@566 = private unnamed_addr constant [43 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@567 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@568 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@569 = private unnamed_addr constant [44 x i8] c"div10__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@570 = private unnamed_addr constant [43 x i8] c"sub9__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@571 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@572 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@573 = private unnamed_addr constant [44 x i8] c"div10__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@574 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@575 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@576 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@577 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@578 = private unnamed_addr constant [44 x i8] c"div11__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@579 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@580 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@581 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@582 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@583 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@584 = private unnamed_addr constant [44 x i8] c"add12__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@585 = private unnamed_addr constant [44 x i8] c"div11__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@586 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@587 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@588 = private unnamed_addr constant [44 x i8] c"add12__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@589 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@590 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@591 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@592 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@593 = private unnamed_addr constant [44 x i8] c"div13__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@594 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@595 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@596 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@597 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@598 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@599 = private unnamed_addr constant [44 x i8] c"add14__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@600 = private unnamed_addr constant [44 x i8] c"div13__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@601 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@602 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@603 = private unnamed_addr constant [44 x i8] c"add14__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@604 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@605 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@606 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@607 = private unnamed_addr constant [44 x i8] c"cmp15__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@608 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@609 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@610 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@611 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@612 = private unnamed_addr constant [44 x i8] c"cmp15__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@613 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@614 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@615 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@616 = private unnamed_addr constant [44 x i8] c"cmp16__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@617 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@618 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@619 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@620 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@621 = private unnamed_addr constant [44 x i8] c"cmp16__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@622 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@623 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@624 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@625 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@626 = private unnamed_addr constant [10 x i8] c"if.then17\00", align 1
@627 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@628 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@629 = private unnamed_addr constant [44 x i8] c"cmp18__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@630 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@631 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@632 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@633 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@634 = private unnamed_addr constant [44 x i8] c"cmp18__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@635 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@636 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@637 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@638 = private unnamed_addr constant [44 x i8] c"cmp20__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@639 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@640 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@641 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@642 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@643 = private unnamed_addr constant [44 x i8] c"cmp20__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@644 = private unnamed_addr constant [16 x i8] c"land.lhs.true19\00", align 1
@645 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@646 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@647 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@648 = private unnamed_addr constant [10 x i8] c"if.then21\00", align 1
@649 = private unnamed_addr constant [9 x i8] c"if.end22\00", align 1
@650 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@651 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@652 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@653 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@654 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@655 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@656 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@657 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@658 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@659 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@660 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@661 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@662 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@663 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@664 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@665 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@666 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@667 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@668 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@669 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@670 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@671 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@672 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@673 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@674 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@675 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@676 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@677 = private unnamed_addr constant [45 x i8] c"call24__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@678 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@679 = private unnamed_addr constant [45 x i8] c"call24__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@680 = private unnamed_addr constant [9 x i8] c"if.end23\00", align 1
@681 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@682 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@683 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@684 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@685 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@686 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@687 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@688 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@689 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@690 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@691 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@692 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@693 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@694 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@695 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@696 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@697 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@698 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@699 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@700 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@701 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@702 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@703 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_2\00", align 1
@704 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_2\00", align 1
@705 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@706 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_3\00", align 1
@707 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_3\00", align 1
@708 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@709 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3maxIfEET_S1_S1_\00", align 1
@710 = private unnamed_addr constant [82 x i8] c"cond.true,tmp__ZN4math3maxIfEET_S1_S1_2,cond.false,tmp__ZN4math3maxIfEET_S1_S1_3,\00", align 1
@711 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@712 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3maxIfEET_S1_S1_\00", align 1
@713 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@714 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@715 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@716 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@717 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@718 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@719 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@720 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@721 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@722 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@723 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@724 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@725 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@726 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@727 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@728 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@729 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@730 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@731 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@732 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@733 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@734 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@735 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@736 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@737 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@738 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@739 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@740 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@741 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@742 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@743 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@744 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@745 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@746 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@747 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@748 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@749 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@750 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@751 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@752 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@753 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@754 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@755 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@756 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@757 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@758 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@759 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@760 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@761 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@762 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@763 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@764 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@765 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@766 = private unnamed_addr constant [18 x i8] c"(float -0.500000)\00", align 1
@767 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@768 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@769 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@770 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@771 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@772 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@773 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@774 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@775 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@776 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@777 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@778 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@779 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@780 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@781 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@782 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@783 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@784 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@785 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@786 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@787 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@788 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@789 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@790 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@791 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@792 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@793 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@794 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@795 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@796 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@797 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@798 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@799 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@800 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@801 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@802 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@803 = private unnamed_addr constant [44 x i8] c"mul8__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@804 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@805 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@806 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@807 = private unnamed_addr constant [44 x i8] c"sub9__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@808 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@809 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@810 = private unnamed_addr constant [44 x i8] c"mul8__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@811 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@812 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@813 = private unnamed_addr constant [45 x i8] c"mul10__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@814 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@815 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@816 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@817 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@818 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@819 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@820 = private unnamed_addr constant [45 x i8] c"mul10__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@821 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@822 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@823 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@824 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@825 = private unnamed_addr constant [45 x i8] c"mul12__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@826 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@827 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@828 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@829 = private unnamed_addr constant [45 x i8] c"add13__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@830 = private unnamed_addr constant [44 x i8] c"sub9__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@831 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@832 = private unnamed_addr constant [45 x i8] c"mul12__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@833 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@834 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@835 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@836 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@837 = private unnamed_addr constant [45 x i8] c"mul14__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@838 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@839 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@840 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@841 = private unnamed_addr constant [45 x i8] c"sub15__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@842 = private unnamed_addr constant [45 x i8] c"add13__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@843 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@844 = private unnamed_addr constant [45 x i8] c"mul14__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@845 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@846 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@847 = private unnamed_addr constant [45 x i8] c"add16__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@848 = private unnamed_addr constant [45 x i8] c"sub15__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@849 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@850 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@851 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@852 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@853 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@854 = private unnamed_addr constant [45 x i8] c"add16__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@855 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@856 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@857 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@858 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@859 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@860 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@861 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@862 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@863 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@864 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@865 = private unnamed_addr constant [46 x i8] c"call17__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@866 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@867 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT2Efffff_RET\00", align 1
@868 = private unnamed_addr constant [46 x i8] c"call17__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@869 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@870 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@871 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@872 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@873 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@874 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@875 = private unnamed_addr constant [28 x i8] c"cmp__ZN4math5abs_tIfEET_S1_\00", align 1
@876 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@877 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@878 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@879 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@880 = private unnamed_addr constant [28 x i8] c"cmp__ZN4math5abs_tIfEET_S1_\00", align 1
@881 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@882 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_1\00", align 1
@883 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_1\00", align 1
@884 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@885 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@886 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@887 = private unnamed_addr constant [28 x i8] c"sub__ZN4math5abs_tIfEET_S1_\00", align 1
@888 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@889 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@890 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@891 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@892 = private unnamed_addr constant [29 x i8] c"cond__ZN4math5abs_tIfEET_S1_\00", align 1
@893 = private unnamed_addr constant [79 x i8] c"cond.true,tmp__ZN4math5abs_tIfEET_S1_1,cond.false,sub__ZN4math5abs_tIfEET_S1_,\00", align 1
@894 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@895 = private unnamed_addr constant [29 x i8] c"cond__ZN4math5abs_tIfEET_S1_\00", align 1
@896 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@897 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@898 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@899 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@900 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@901 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@902 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@903 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@904 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@905 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@906 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@907 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@908 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@909 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@910 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@911 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@912 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@913 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@914 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@915 = private unnamed_addr constant [41 x i8] c"div__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@916 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@917 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@918 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@919 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@920 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@921 = private unnamed_addr constant [41 x i8] c"add__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@922 = private unnamed_addr constant [41 x i8] c"div__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@923 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@924 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@925 = private unnamed_addr constant [41 x i8] c"add__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@926 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@927 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@928 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@929 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@930 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@931 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@932 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@933 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@934 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT3Efff_RET\00", align 1
@935 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@936 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@937 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@938 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@939 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@940 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@941 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@942 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@943 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@944 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@945 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@946 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@947 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@948 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@949 = private unnamed_addr constant [46 x i8] c"sub__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@950 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@951 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@952 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@953 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@954 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@955 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@956 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@957 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@958 = private unnamed_addr constant [46 x i8] c"sub__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@959 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@960 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@961 = private unnamed_addr constant [47 x i8] c"call__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@962 = private unnamed_addr constant [38 x i8] c"_ZN4math9constrainIfEET_S1_S1_S1__RET\00", align 1
@963 = private unnamed_addr constant [47 x i8] c"call__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@964 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@965 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@966 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf3\00", align 1
@967 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf4\00", align 1
@968 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@969 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@970 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@971 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@972 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@973 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@974 = private unnamed_addr constant [48 x i8] c"call3__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@975 = private unnamed_addr constant [47 x i8] c"_ZN17VelocitySmoothing16computeDirectionEv_RET\00", align 1
@976 = private unnamed_addr constant [48 x i8] c"call3__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@977 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@978 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@979 = private unnamed_addr constant [46 x i8] c"cmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@980 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@981 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@982 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@983 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@984 = private unnamed_addr constant [46 x i8] c"cmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@985 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@986 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@987 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@988 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@989 = private unnamed_addr constant [63 x i8] c"_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv_RET\00", align 1
@990 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@991 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@992 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@993 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@994 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@995 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@996 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@997 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@998 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@999 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1000 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@1001 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1002 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1003 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@1004 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@1005 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1006 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1007 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1008 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1009 = private unnamed_addr constant [38 x i8] c"cmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1010 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1011 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1012 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1013 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1014 = private unnamed_addr constant [38 x i8] c"cmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1015 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1016 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_2\00", align 1
@1017 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_2\00", align 1
@1018 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@1019 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1020 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1021 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1022 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1023 = private unnamed_addr constant [39 x i8] c"cmp1__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1024 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1025 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1026 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1027 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1028 = private unnamed_addr constant [39 x i8] c"cmp1__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1029 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@1030 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_5\00", align 1
@1031 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_5\00", align 1
@1032 = private unnamed_addr constant [11 x i8] c"cond.true2\00", align 1
@1033 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_6\00", align 1
@1034 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_6\00", align 1
@1035 = private unnamed_addr constant [12 x i8] c"cond.false3\00", align 1
@1036 = private unnamed_addr constant [39 x i8] c"cond__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1037 = private unnamed_addr constant [102 x i8] c"cond.true2,tmp__ZN4math9constrainIfEET_S1_S1_S1_5,cond.false3,tmp__ZN4math9constrainIfEET_S1_S1_S1_6,\00", align 1
@1038 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@1039 = private unnamed_addr constant [40 x i8] c"cond5__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1040 = private unnamed_addr constant [98 x i8] c"cond.true,tmp__ZN4math9constrainIfEET_S1_S1_S1_2,cond.end,cond__ZN4math9constrainIfEET_S1_S1_S1_,\00", align 1
@1041 = private unnamed_addr constant [38 x i8] c"_ZN4math9constrainIfEET_S1_S1_S1__RET\00", align 1
@1042 = private unnamed_addr constant [40 x i8] c"cond5__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1043 = private unnamed_addr constant [10 x i8] c"cond.end4\00", align 1
@1044 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1045 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1046 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1047 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1048 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1049 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1050 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1051 = private unnamed_addr constant [48 x i8] c"call__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1052 = private unnamed_addr constant [50 x i8] c"_ZN17VelocitySmoothing19computeVelAtZeroAccEv_RET\00", align 1
@1053 = private unnamed_addr constant [48 x i8] c"call__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1054 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1055 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1056 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1057 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1058 = private unnamed_addr constant [47 x i8] c"sub__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1059 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1060 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1061 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1062 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1063 = private unnamed_addr constant [47 x i8] c"sub__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1064 = private unnamed_addr constant [49 x i8] c"call2__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1065 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1066 = private unnamed_addr constant [49 x i8] c"call2__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1067 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1068 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1069 = private unnamed_addr constant [47 x i8] c"cmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1070 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1071 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@1072 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1073 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1074 = private unnamed_addr constant [47 x i8] c"cmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1075 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1076 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1077 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1078 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1079 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1080 = private unnamed_addr constant [49 x i8] c"call3__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1081 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1082 = private unnamed_addr constant [49 x i8] c"call3__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1083 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1084 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1085 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1086 = private unnamed_addr constant [47 x i8] c"_ZN17VelocitySmoothing16computeDirectionEv_RET\00", align 1
@1087 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1088 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1089 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1090 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1091 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1092 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1093 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1094 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1095 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1096 = private unnamed_addr constant [64 x i8] c"conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1097 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1098 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1099 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1100 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1101 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1102 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1103 = private unnamed_addr constant [63 x i8] c"mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1104 = private unnamed_addr constant [64 x i8] c"conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1105 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1106 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1107 = private unnamed_addr constant [63 x i8] c"mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1108 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1109 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1110 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1111 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1112 = private unnamed_addr constant [63 x i8] c"sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1113 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1114 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1115 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1116 = private unnamed_addr constant [63 x i8] c"sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1117 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1118 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1119 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1120 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1121 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1122 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1123 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1124 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1125 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1126 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1127 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1128 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1129 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1130 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1131 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1132 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1133 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1134 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1135 = private unnamed_addr constant [64 x i8] c"call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1136 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@1137 = private unnamed_addr constant [64 x i8] c"call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1138 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1139 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1140 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1141 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1142 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1143 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1144 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1145 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1146 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1147 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1148 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1149 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1150 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1151 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1152 = private unnamed_addr constant [65 x i8] c"call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1153 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT3Efff_RET\00", align 1
@1154 = private unnamed_addr constant [65 x i8] c"call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1155 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1156 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1157 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1158 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1159 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1160 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1161 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1162 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1163 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1164 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1165 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1166 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1167 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1168 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1169 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1170 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1171 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1172 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1173 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1174 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1175 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1176 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1177 = private unnamed_addr constant [66 x i8] c"call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1178 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT2Efffff_RET\00", align 1
@1179 = private unnamed_addr constant [66 x i8] c"call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1180 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1181 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1182 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1183 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1184 = private unnamed_addr constant [52 x i8] c"this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1185 = private unnamed_addr constant [52 x i8] c"this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1186 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1187 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1188 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1189 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1190 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1191 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1192 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1193 = private unnamed_addr constant [51 x i8] c"call__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1194 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@1195 = private unnamed_addr constant [50 x i8] c"cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1196 = private unnamed_addr constant [51 x i8] c"call__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1197 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1198 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1199 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1200 = private unnamed_addr constant [50 x i8] c"cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1201 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1202 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1203 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1204 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1205 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1206 = private unnamed_addr constant [52 x i8] c"call6__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1207 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1208 = private unnamed_addr constant [50 x i8] c"sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1209 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1210 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@1211 = private unnamed_addr constant [52 x i8] c"call6__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1212 = private unnamed_addr constant [51 x i8] c"conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1213 = private unnamed_addr constant [50 x i8] c"sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1214 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1215 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1216 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1217 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1218 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1219 = private unnamed_addr constant [50 x i8] c"mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1220 = private unnamed_addr constant [51 x i8] c"conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1221 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1222 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1223 = private unnamed_addr constant [50 x i8] c"mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1224 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1225 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1226 = private unnamed_addr constant [51 x i8] c"sub9__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1227 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@1228 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1229 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1230 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1231 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1232 = private unnamed_addr constant [50 x i8] c"div__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1233 = private unnamed_addr constant [51 x i8] c"sub9__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1234 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@1235 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1236 = private unnamed_addr constant [50 x i8] c"div__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1237 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1238 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1239 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1240 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1241 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1242 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1243 = private unnamed_addr constant [52 x i8] c"mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1244 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1245 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1246 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1247 = private unnamed_addr constant [50 x i8] c"add__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1248 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1249 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1250 = private unnamed_addr constant [52 x i8] c"mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1251 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1252 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1253 = private unnamed_addr constant [52 x i8] c"mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1254 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1255 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1256 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1257 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1258 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1259 = private unnamed_addr constant [52 x i8] c"mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1260 = private unnamed_addr constant [52 x i8] c"mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1261 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1262 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1263 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1264 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1265 = private unnamed_addr constant [52 x i8] c"mul17__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1266 = private unnamed_addr constant [52 x i8] c"mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1267 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1268 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1269 = private unnamed_addr constant [52 x i8] c"add18__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1270 = private unnamed_addr constant [50 x i8] c"add__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1271 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1272 = private unnamed_addr constant [52 x i8] c"mul17__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1273 = private unnamed_addr constant [52 x i8] c"add18__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1274 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1275 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1276 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1277 = private unnamed_addr constant [53 x i8] c"conv19__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1278 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1279 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1280 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1281 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1282 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv13\00", align 1
@1283 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv13\00", align 1
@1284 = private unnamed_addr constant [50 x i8] c"_ZN17VelocitySmoothing19computeVelAtZeroAccEv_RET\00", align 1
@1285 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv13\00", align 1
@1286 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1287 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1288 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1289 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1290 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1291 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1292 = private unnamed_addr constant [27 x i8] c"cmp__ZN6matrix4signIfEEiT_\00", align 1
@1293 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1294 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1295 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1296 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1297 = private unnamed_addr constant [27 x i8] c"cmp__ZN6matrix4signIfEEiT_\00", align 1
@1298 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1299 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@1300 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1301 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1302 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1303 = private unnamed_addr constant [28 x i8] c"cmp1__ZN6matrix4signIfEEiT_\00", align 1
@1304 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1305 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1306 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1307 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1308 = private unnamed_addr constant [28 x i8] c"cmp1__ZN6matrix4signIfEEiT_\00", align 1
@1309 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@1310 = private unnamed_addr constant [9 x i8] c"(i32 -1)\00", align 1
@1311 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@1312 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1313 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@1314 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1315 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1316 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1317 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1318 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@1319 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1320 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1321 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1322 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1323 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1324 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1325 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1326 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1327 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1328 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1329 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1330 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1331 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1332 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1333 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1334 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1335 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1336 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1337 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1338 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1339 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1340 = private unnamed_addr constant [50 x i8] c"this1__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1341 = private unnamed_addr constant [50 x i8] c"this1__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1342 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1343 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1344 = private unnamed_addr constant [49 x i8] c"conv__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1345 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1346 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1347 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1348 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1349 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1350 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1351 = private unnamed_addr constant [48 x i8] c"mul__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1352 = private unnamed_addr constant [49 x i8] c"conv__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1353 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1354 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1355 = private unnamed_addr constant [48 x i8] c"mul__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1356 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1357 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1358 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1359 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1360 = private unnamed_addr constant [49 x i8] c"mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1361 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1362 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1363 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1364 = private unnamed_addr constant [49 x i8] c"mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1365 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1366 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1367 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1368 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1369 = private unnamed_addr constant [49 x i8] c"mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1370 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1371 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1372 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1373 = private unnamed_addr constant [49 x i8] c"mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1374 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1375 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1376 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1377 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1378 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1379 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1380 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1381 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1382 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1383 = private unnamed_addr constant [49 x i8] c"mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1384 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1385 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1386 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1387 = private unnamed_addr constant [48 x i8] c"add__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1388 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1389 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1390 = private unnamed_addr constant [49 x i8] c"mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1391 = private unnamed_addr constant [48 x i8] c"add__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1392 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1393 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1394 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1395 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1396 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1397 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1398 = private unnamed_addr constant [49 x i8] c"mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1399 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1400 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1401 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1402 = private unnamed_addr constant [49 x i8] c"add7__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1403 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1404 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1405 = private unnamed_addr constant [49 x i8] c"mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1406 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1407 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1408 = private unnamed_addr constant [49 x i8] c"mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1409 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1410 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1411 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1412 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1413 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1414 = private unnamed_addr constant [49 x i8] c"mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1415 = private unnamed_addr constant [49 x i8] c"mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1416 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1417 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1418 = private unnamed_addr constant [50 x i8] c"add10__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1419 = private unnamed_addr constant [49 x i8] c"add7__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1420 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1421 = private unnamed_addr constant [49 x i8] c"mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1422 = private unnamed_addr constant [50 x i8] c"add10__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1423 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1424 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1425 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1426 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1427 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1428 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1429 = private unnamed_addr constant [50 x i8] c"mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1430 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1431 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1432 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1433 = private unnamed_addr constant [50 x i8] c"add12__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1434 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1435 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1436 = private unnamed_addr constant [50 x i8] c"mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1437 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1438 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1439 = private unnamed_addr constant [50 x i8] c"mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1440 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1441 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1442 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1443 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1444 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1445 = private unnamed_addr constant [50 x i8] c"mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1446 = private unnamed_addr constant [50 x i8] c"mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1447 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1448 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1449 = private unnamed_addr constant [50 x i8] c"add15__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1450 = private unnamed_addr constant [50 x i8] c"add12__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1451 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1452 = private unnamed_addr constant [50 x i8] c"mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1453 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1454 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1455 = private unnamed_addr constant [50 x i8] c"mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1456 = private unnamed_addr constant [17 x i8] c"(float 0.166667)\00", align 1
@1457 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1458 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1459 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1460 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1461 = private unnamed_addr constant [50 x i8] c"mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1462 = private unnamed_addr constant [50 x i8] c"mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1463 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1464 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1465 = private unnamed_addr constant [50 x i8] c"add18__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1466 = private unnamed_addr constant [50 x i8] c"add15__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1467 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1468 = private unnamed_addr constant [50 x i8] c"mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1469 = private unnamed_addr constant [50 x i8] c"add18__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1470 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1471 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1472 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1473 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1474 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1475 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1476 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1477 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@1478 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1479 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@1480 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1481 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1482 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@1483 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@1484 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1485 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1486 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1487 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1488 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1489 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1490 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1491 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1492 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1493 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1494 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1495 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1496 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1497 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1498 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1499 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1500 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1501 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1502 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1503 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1504 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1505 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1506 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1507 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1508 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1509 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1510 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1511 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1512 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1513 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1514 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1515 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1516 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1517 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1518 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1519 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1520 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1521 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1522 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1523 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1524 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1525 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1526 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1527 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1528 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1529 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1530 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1531 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1532 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1533 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1534 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1535 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1536 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1537 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1538 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1539 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1540 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1541 = private unnamed_addr constant [44 x i8] c"call5__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1542 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1543 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff14\00", align 1
@1544 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff16\00", align 1
@1545 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1546 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff17\00", align 1
@1547 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff18\00", align 1
@1548 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1549 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1550 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1551 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1552 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1553 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1554 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1555 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1556 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1557 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1558 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1559 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1560 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1561 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1562 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1563 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1564 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1565 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1566 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1567 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1568 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1569 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1570 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1571 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1572 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1573 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1574 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1575 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1576 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1577 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1578 = private unnamed_addr constant [44 x i8] c"call6__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1579 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1580 = private unnamed_addr constant [44 x i8] c"call6__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1581 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1582 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1583 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1584 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1585 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1586 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1587 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1588 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1589 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1590 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1591 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1592 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1593 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1594 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1595 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1596 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1597 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1598 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1599 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1600 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1601 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1602 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1603 = private unnamed_addr constant [45 x i8] c"call14__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1604 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1605 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff30\00", align 1
@1606 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff32\00", align 1
@1607 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1608 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff33\00", align 1
@1609 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff34\00", align 1
@1610 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1611 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1612 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1613 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1614 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1615 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1616 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1617 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1618 = private unnamed_addr constant [44 x i8] c"sub16__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1619 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1620 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1621 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1622 = private unnamed_addr constant [44 x i8] c"sub16__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1623 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1624 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1625 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1626 = private unnamed_addr constant [44 x i8] c"cmp17__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1627 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1628 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1629 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1630 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1631 = private unnamed_addr constant [44 x i8] c"cmp17__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1632 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1633 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1634 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1635 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1636 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1637 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1638 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1639 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1640 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1641 = private unnamed_addr constant [45 x i8] c"call19__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1642 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1643 = private unnamed_addr constant [45 x i8] c"call19__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1644 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1645 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1646 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1647 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1648 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1649 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1650 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1651 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1652 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1653 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1654 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1655 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1656 = private unnamed_addr constant [44 x i8] c"sub29__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1657 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1658 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@1659 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1660 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1661 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1662 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1663 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1664 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1665 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1666 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1667 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1668 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1669 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1670 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1671 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1672 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1673 = private unnamed_addr constant [44 x i8] c"sub29__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1674 = private unnamed_addr constant [45 x i8] c"call30__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1675 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1676 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff48\00", align 1
@1677 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff50\00", align 1
@1678 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1679 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff51\00", align 1
@1680 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff52\00", align 1
@1681 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1682 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1683 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1684 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1685 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1686 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1687 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1688 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1689 = private unnamed_addr constant [44 x i8] c"sub32__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1690 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1691 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1692 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1693 = private unnamed_addr constant [44 x i8] c"sub32__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1694 = private unnamed_addr constant [10 x i8] c"if.then18\00", align 1
@1695 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1696 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1697 = private unnamed_addr constant [44 x i8] c"cmp34__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1698 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1699 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1700 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1701 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1702 = private unnamed_addr constant [44 x i8] c"cmp34__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1703 = private unnamed_addr constant [9 x i8] c"if.end33\00", align 1
@1704 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1705 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1706 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1707 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1708 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1709 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1710 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1711 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1712 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1713 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1714 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1715 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1716 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1717 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1718 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1719 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1720 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1721 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1722 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1723 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1724 = private unnamed_addr constant [45 x i8] c"call41__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1725 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1726 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff61\00", align 1
@1727 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff63\00", align 1
@1728 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1729 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff64\00", align 1
@1730 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff65\00", align 1
@1731 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1732 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1733 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1734 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1735 = private unnamed_addr constant [10 x i8] c"if.then35\00", align 1
@1736 = private unnamed_addr constant [9 x i8] c"if.end43\00", align 1
@1737 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1738 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1739 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1740 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1741 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1742 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1743 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1744 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1745 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1746 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1747 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1748 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1749 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1750 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1751 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1752 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1753 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1754 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_2\00", align 1
@1755 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_2\00", align 1
@1756 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@1757 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_3\00", align 1
@1758 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_3\00", align 1
@1759 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@1760 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3minIfEET_S1_S1_\00", align 1
@1761 = private unnamed_addr constant [82 x i8] c"cond.true,tmp__ZN4math3minIfEET_S1_S1_2,cond.false,tmp__ZN4math3minIfEET_S1_S1_3,\00", align 1
@1762 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1763 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3minIfEET_S1_S1_\00", align 1
@1764 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@1765 = private unnamed_addr constant [11 x i8] c"trajectory\00", align 1
@1766 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1767 = private unnamed_addr constant [11 x i8] c"trajectory\00", align 1
@1768 = private unnamed_addr constant [53 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing\00", align 1
@1769 = private unnamed_addr constant [53 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing\00", align 1
@1770 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1771 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1\00", align 1
@1772 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1773 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1774 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1775 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@1776 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1777 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@1778 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1779 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1780 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1781 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1782 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1783 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1784 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1785 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@1786 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2\00", align 1
@1787 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2\00", align 1
@1788 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1789 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3\00", align 1
@1790 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1791 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1792 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1793 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@1794 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1795 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@1796 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1797 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1798 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1799 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1800 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1801 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1802 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1803 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@1804 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1805 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@1806 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1807 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@1808 = private unnamed_addr constant [51 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing\00", align 1
@1809 = private unnamed_addr constant [51 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing\00", align 1
@1810 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2\00", align 1
@1811 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2\00", align 1
@1812 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3\00", align 1
@1813 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3\00", align 1
@1814 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4\00", align 1
@1815 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4\00", align 1
@1816 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6\00", align 1
@1817 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6\00", align 1
@1818 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7\00", align 1
@1819 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7\00", align 1
@1820 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1821 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@1822 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1823 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@1824 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1825 = private unnamed_addr constant [24 x i8] c"stg_pause_recording_RET\00", align 1
@1826 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@1827 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1828 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1829 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1830 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1831 = private unnamed_addr constant [57 x i8] c"call__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1832 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@1833 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@1834 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@1835 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1836 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@1837 = private unnamed_addr constant [58 x i8] c"call1__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1838 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@1839 = private unnamed_addr constant [56 x i8] c"cmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1840 = private unnamed_addr constant [57 x i8] c"call__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1841 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1842 = private unnamed_addr constant [58 x i8] c"call1__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1843 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1844 = private unnamed_addr constant [56 x i8] c"cmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1845 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1846 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1847 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1848 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1849 = private unnamed_addr constant [25 x i8] c"stg_resume_recording_RET\00", align 1
@1850 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@1851 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@1852 = private unnamed_addr constant [59 x i8] c"tobool__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1853 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@1854 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@1855 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@1856 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@1857 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@1858 = private unnamed_addr constant [59 x i8] c"tobool__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@1859 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1860 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1861 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1862 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1863 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1864 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1865 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1866 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1867 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1868 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1869 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@1870 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1871 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1872 = private unnamed_addr constant [33 x i8] c"tmp__Z23test_initial_conditionsv\00", align 1
@1873 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1874 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1875 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@1876 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@1877 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@1878 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@1879 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@1880 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1881 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@1882 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1883 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@1884 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1885 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1886 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@1887 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv2\00", align 1
@1888 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv2\00", align 1
@1889 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@1890 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@1891 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1892 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1893 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@1894 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@1895 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1896 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@1897 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1898 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1899 = private unnamed_addr constant [34 x i8] c"call__Z23test_initial_conditionsv\00", align 1
@1900 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@1901 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@1902 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1903 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1904 = private unnamed_addr constant [35 x i8] c"call1__Z23test_initial_conditionsv\00", align 1
@1905 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@1906 = private unnamed_addr constant [34 x i8] c"conv__Z23test_initial_conditionsv\00", align 1
@1907 = private unnamed_addr constant [35 x i8] c"call1__Z23test_initial_conditionsv\00", align 1
@1908 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1909 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1910 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1911 = private unnamed_addr constant [33 x i8] c"cmp__Z23test_initial_conditionsv\00", align 1
@1912 = private unnamed_addr constant [34 x i8] c"conv__Z23test_initial_conditionsv\00", align 1
@1913 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@1914 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1915 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1916 = private unnamed_addr constant [33 x i8] c"cmp__Z23test_initial_conditionsv\00", align 1
@1917 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1918 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1919 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1920 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1921 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1922 = private unnamed_addr constant [35 x i8] c"call2__Z23test_initial_conditionsv\00", align 1
@1923 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@1924 = private unnamed_addr constant [35 x i8] c"conv3__Z23test_initial_conditionsv\00", align 1
@1925 = private unnamed_addr constant [35 x i8] c"call2__Z23test_initial_conditionsv\00", align 1
@1926 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1927 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1928 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1929 = private unnamed_addr constant [34 x i8] c"cmp4__Z23test_initial_conditionsv\00", align 1
@1930 = private unnamed_addr constant [35 x i8] c"conv3__Z23test_initial_conditionsv\00", align 1
@1931 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@1932 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1933 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1934 = private unnamed_addr constant [34 x i8] c"cmp4__Z23test_initial_conditionsv\00", align 1
@1935 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1936 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1937 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@1938 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1939 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1940 = private unnamed_addr constant [35 x i8] c"call7__Z23test_initial_conditionsv\00", align 1
@1941 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@1942 = private unnamed_addr constant [35 x i8] c"conv8__Z23test_initial_conditionsv\00", align 1
@1943 = private unnamed_addr constant [35 x i8] c"call7__Z23test_initial_conditionsv\00", align 1
@1944 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1945 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1946 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1947 = private unnamed_addr constant [34 x i8] c"cmp9__Z23test_initial_conditionsv\00", align 1
@1948 = private unnamed_addr constant [35 x i8] c"conv8__Z23test_initial_conditionsv\00", align 1
@1949 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@1950 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1951 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1952 = private unnamed_addr constant [34 x i8] c"cmp9__Z23test_initial_conditionsv\00", align 1
@1953 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@1954 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1955 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@1956 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1957 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1958 = private unnamed_addr constant [36 x i8] c"call12__Z23test_initial_conditionsv\00", align 1
@1959 = private unnamed_addr constant [46 x i8] c"_ZNK17VelocitySmoothing14getCurrentJerkEv_RET\00", align 1
@1960 = private unnamed_addr constant [36 x i8] c"conv13__Z23test_initial_conditionsv\00", align 1
@1961 = private unnamed_addr constant [36 x i8] c"call12__Z23test_initial_conditionsv\00", align 1
@1962 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1963 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1964 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1965 = private unnamed_addr constant [35 x i8] c"cmp14__Z23test_initial_conditionsv\00", align 1
@1966 = private unnamed_addr constant [36 x i8] c"conv13__Z23test_initial_conditionsv\00", align 1
@1967 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@1968 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1969 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1970 = private unnamed_addr constant [35 x i8] c"cmp14__Z23test_initial_conditionsv\00", align 1
@1971 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@1972 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1973 = private unnamed_addr constant [10 x i8] c"if.then15\00", align 1
@1974 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1975 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1976 = private unnamed_addr constant [36 x i8] c"call17__Z23test_initial_conditionsv\00", align 1
@1977 = private unnamed_addr constant [39 x i8] c"_ZNK17VelocitySmoothing8getVelSpEv_RET\00", align 1
@1978 = private unnamed_addr constant [36 x i8] c"conv18__Z23test_initial_conditionsv\00", align 1
@1979 = private unnamed_addr constant [36 x i8] c"call17__Z23test_initial_conditionsv\00", align 1
@1980 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1981 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1982 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1983 = private unnamed_addr constant [35 x i8] c"cmp19__Z23test_initial_conditionsv\00", align 1
@1984 = private unnamed_addr constant [36 x i8] c"conv18__Z23test_initial_conditionsv\00", align 1
@1985 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@1986 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@1987 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@1988 = private unnamed_addr constant [35 x i8] c"cmp19__Z23test_initial_conditionsv\00", align 1
@1989 = private unnamed_addr constant [9 x i8] c"if.end16\00", align 1
@1990 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@1991 = private unnamed_addr constant [10 x i8] c"if.then20\00", align 1
@1992 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@1993 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@1994 = private unnamed_addr constant [36 x i8] c"call22__Z23test_initial_conditionsv\00", align 1
@1995 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentVelocityEv_RET\00", align 1
@1996 = private unnamed_addr constant [36 x i8] c"conv23__Z23test_initial_conditionsv\00", align 1
@1997 = private unnamed_addr constant [36 x i8] c"call22__Z23test_initial_conditionsv\00", align 1
@1998 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@1999 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2000 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2001 = private unnamed_addr constant [35 x i8] c"cmp24__Z23test_initial_conditionsv\00", align 1
@2002 = private unnamed_addr constant [36 x i8] c"conv23__Z23test_initial_conditionsv\00", align 1
@2003 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2004 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2005 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2006 = private unnamed_addr constant [35 x i8] c"cmp24__Z23test_initial_conditionsv\00", align 1
@2007 = private unnamed_addr constant [9 x i8] c"if.end21\00", align 1
@2008 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2009 = private unnamed_addr constant [10 x i8] c"if.then25\00", align 1
@2010 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2011 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2012 = private unnamed_addr constant [36 x i8] c"call27__Z23test_initial_conditionsv\00", align 1
@2013 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@2014 = private unnamed_addr constant [36 x i8] c"conv28__Z23test_initial_conditionsv\00", align 1
@2015 = private unnamed_addr constant [36 x i8] c"call27__Z23test_initial_conditionsv\00", align 1
@2016 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2017 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2018 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2019 = private unnamed_addr constant [35 x i8] c"cmp29__Z23test_initial_conditionsv\00", align 1
@2020 = private unnamed_addr constant [36 x i8] c"conv28__Z23test_initial_conditionsv\00", align 1
@2021 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2022 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2023 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2024 = private unnamed_addr constant [35 x i8] c"cmp29__Z23test_initial_conditionsv\00", align 1
@2025 = private unnamed_addr constant [9 x i8] c"if.end26\00", align 1
@2026 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2027 = private unnamed_addr constant [10 x i8] c"if.then30\00", align 1
@2028 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2029 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2030 = private unnamed_addr constant [36 x i8] c"call32__Z23test_initial_conditionsv\00", align 1
@2031 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@2032 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2033 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2034 = private unnamed_addr constant [36 x i8] c"call33__Z23test_initial_conditionsv\00", align 1
@2035 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@2036 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2037 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2038 = private unnamed_addr constant [36 x i8] c"call34__Z23test_initial_conditionsv\00", align 1
@2039 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@2040 = private unnamed_addr constant [33 x i8] c"add__Z23test_initial_conditionsv\00", align 1
@2041 = private unnamed_addr constant [36 x i8] c"call33__Z23test_initial_conditionsv\00", align 1
@2042 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@2043 = private unnamed_addr constant [36 x i8] c"call34__Z23test_initial_conditionsv\00", align 1
@2044 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2045 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2046 = private unnamed_addr constant [36 x i8] c"call35__Z23test_initial_conditionsv\00", align 1
@2047 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@2048 = private unnamed_addr constant [35 x i8] c"add36__Z23test_initial_conditionsv\00", align 1
@2049 = private unnamed_addr constant [33 x i8] c"add__Z23test_initial_conditionsv\00", align 1
@2050 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@2051 = private unnamed_addr constant [36 x i8] c"call35__Z23test_initial_conditionsv\00", align 1
@2052 = private unnamed_addr constant [35 x i8] c"cmp37__Z23test_initial_conditionsv\00", align 1
@2053 = private unnamed_addr constant [36 x i8] c"call32__Z23test_initial_conditionsv\00", align 1
@2054 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2055 = private unnamed_addr constant [35 x i8] c"add36__Z23test_initial_conditionsv\00", align 1
@2056 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2057 = private unnamed_addr constant [35 x i8] c"cmp37__Z23test_initial_conditionsv\00", align 1
@2058 = private unnamed_addr constant [9 x i8] c"if.end31\00", align 1
@2059 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2060 = private unnamed_addr constant [10 x i8] c"if.then38\00", align 1
@2061 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2062 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2063 = private unnamed_addr constant [36 x i8] c"tobool__Z23test_initial_conditionsv\00", align 1
@2064 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2065 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@2066 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@2067 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@2068 = private unnamed_addr constant [33 x i8] c"_Z23test_initial_conditionsv_RET\00", align 1
@2069 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2070 = private unnamed_addr constant [9 x i8] c"if.end39\00", align 1
@2071 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2072 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2073 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2074 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2075 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2076 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2077 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2078 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2079 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2080 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2081 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2082 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2083 = private unnamed_addr constant [28 x i8] c"tmp__Z18test_getter_setterv\00", align 1
@2084 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2085 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2086 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2087 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2088 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2089 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2090 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2091 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2092 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2093 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2094 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2095 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2096 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2097 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2098 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv2\00", align 1
@2099 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv2\00", align 1
@2100 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2101 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2102 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2103 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2104 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2105 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2107 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2108 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2109 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2110 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2111 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2113 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2114 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2115 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2116 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2117 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2119 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2120 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2121 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2122 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2123 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2125 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentPositionEf_RET\00", align 1
@2126 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@2127 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2128 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2129 = private unnamed_addr constant [29 x i8] c"call__Z18test_getter_setterv\00", align 1
@2130 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@2131 = private unnamed_addr constant [28 x i8] c"cmp__Z18test_getter_setterv\00", align 1
@2132 = private unnamed_addr constant [29 x i8] c"call__Z18test_getter_setterv\00", align 1
@2133 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2134 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2135 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2136 = private unnamed_addr constant [28 x i8] c"cmp__Z18test_getter_setterv\00", align 1
@2137 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2138 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2139 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2140 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2141 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2142 = private unnamed_addr constant [30 x i8] c"call1__Z18test_getter_setterv\00", align 1
@2143 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2144 = private unnamed_addr constant [29 x i8] c"cmp2__Z18test_getter_setterv\00", align 1
@2145 = private unnamed_addr constant [30 x i8] c"call1__Z18test_getter_setterv\00", align 1
@2146 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2147 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2148 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2149 = private unnamed_addr constant [29 x i8] c"cmp2__Z18test_getter_setterv\00", align 1
@2150 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2151 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2152 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@2153 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2154 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2155 = private unnamed_addr constant [30 x i8] c"call5__Z18test_getter_setterv\00", align 1
@2156 = private unnamed_addr constant [40 x i8] c"_ZNK17VelocitySmoothing9getMaxVelEv_RET\00", align 1
@2157 = private unnamed_addr constant [29 x i8] c"cmp6__Z18test_getter_setterv\00", align 1
@2158 = private unnamed_addr constant [30 x i8] c"call5__Z18test_getter_setterv\00", align 1
@2159 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2160 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2161 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2162 = private unnamed_addr constant [29 x i8] c"cmp6__Z18test_getter_setterv\00", align 1
@2163 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@2164 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2165 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@2166 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2167 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2168 = private unnamed_addr constant [30 x i8] c"call9__Z18test_getter_setterv\00", align 1
@2169 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentPositionEv_RET\00", align 1
@2170 = private unnamed_addr constant [30 x i8] c"cmp10__Z18test_getter_setterv\00", align 1
@2171 = private unnamed_addr constant [30 x i8] c"call9__Z18test_getter_setterv\00", align 1
@2172 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2173 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2174 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2175 = private unnamed_addr constant [30 x i8] c"cmp10__Z18test_getter_setterv\00", align 1
@2176 = private unnamed_addr constant [8 x i8] c"if.end8\00", align 1
@2177 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2178 = private unnamed_addr constant [10 x i8] c"if.then11\00", align 1
@2179 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2180 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2181 = private unnamed_addr constant [31 x i8] c"tobool__Z18test_getter_setterv\00", align 1
@2182 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2183 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@2184 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@2185 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@2186 = private unnamed_addr constant [28 x i8] c"_Z18test_getter_setterv_RET\00", align 1
@2187 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2188 = private unnamed_addr constant [9 x i8] c"if.end12\00", align 1
@2189 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2190 = private unnamed_addr constant [34 x i8] c"trajectory__Z17test_T1_edge_casev\00", align 1
@2191 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2192 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2193 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2194 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2195 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2196 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2198 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2199 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2200 = private unnamed_addr constant [34 x i8] c"trajectory__Z17test_T1_edge_casev\00", align 1
@2201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2202 = private unnamed_addr constant [53 x i8] c"_Z24make_trajectory_symbolicP17VelocitySmoothing_RET\00", align 1
@2203 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2204 = private unnamed_addr constant [34 x i8] c"trajectory__Z17test_T1_edge_casev\00", align 1
@2205 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2206 = private unnamed_addr constant [51 x i8] c"_Z22stg_initial_trajectoryP17VelocitySmoothing_RET\00", align 1
@2207 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2208 = private unnamed_addr constant [34 x i8] c"trajectory__Z17test_T1_edge_casev\00", align 1
@2209 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2210 = private unnamed_addr constant [17 x i8] c"(float 1.100000)\00", align 1
@2211 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2212 = private unnamed_addr constant [17 x i8] c"(float 1.200000)\00", align 1
@2213 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2214 = private unnamed_addr constant [18 x i8] c"(float -1.000000)\00", align 1
@2215 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2216 = private unnamed_addr constant [17 x i8] c"(float 5.000000)\00", align 1
@2217 = private unnamed_addr constant [28 x i8] c"call__Z17test_T1_edge_casev\00", align 1
@2218 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@2219 = private unnamed_addr constant [28 x i8] c"call__Z17test_T1_edge_casev\00", align 1
@2220 = private unnamed_addr constant [27 x i8] c"_Z17test_T1_edge_casev_RET\00", align 1
@2221 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2222 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2223 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2224 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2225 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2226 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2227 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2228 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2229 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2230 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2231 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2232 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2233 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2234 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2235 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2236 = private unnamed_addr constant [25 x i8] c"call__Z14test_edge_casev\00", align 1
@2237 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2238 = private unnamed_addr constant [25 x i8] c"call__Z14test_edge_casev\00", align 1
@2239 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2240 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_edge_casev\00", align 1
@2241 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2242 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2243 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2244 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2245 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2246 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2247 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2248 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2249 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2250 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2251 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2252 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2253 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2254 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2255 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2256 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev1\00", align 1
@2257 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2258 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2259 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2260 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2261 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2262 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2263 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2264 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2265 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2266 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2267 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2268 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2269 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2270 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2271 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev3\00", align 1
@2272 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev3\00", align 1
@2273 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev5\00", align 1
@2274 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev5\00", align 1
@2275 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2276 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2277 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2278 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2279 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2280 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2281 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2282 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2283 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2284 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2285 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2286 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2287 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2288 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2289 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2290 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2291 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2292 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2293 = private unnamed_addr constant [26 x i8] c"call1__Z14test_edge_casev\00", align 1
@2294 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2295 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2296 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2297 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2298 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2299 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2300 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2301 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2302 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2303 = private unnamed_addr constant [26 x i8] c"call2__Z14test_edge_casev\00", align 1
@2304 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2305 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2306 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2307 = private unnamed_addr constant [26 x i8] c"call3__Z14test_edge_casev\00", align 1
@2308 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@2309 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_edge_casev\00", align 1
@2310 = private unnamed_addr constant [26 x i8] c"call3__Z14test_edge_casev\00", align 1
@2311 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2312 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2313 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2314 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_edge_casev\00", align 1
@2315 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2316 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2317 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2318 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2319 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2320 = private unnamed_addr constant [26 x i8] c"call4__Z14test_edge_casev\00", align 1
@2321 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@2322 = private unnamed_addr constant [25 x i8] c"cmp5__Z14test_edge_casev\00", align 1
@2323 = private unnamed_addr constant [26 x i8] c"call4__Z14test_edge_casev\00", align 1
@2324 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2325 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2326 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2327 = private unnamed_addr constant [25 x i8] c"cmp5__Z14test_edge_casev\00", align 1
@2328 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2329 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2330 = private unnamed_addr constant [9 x i8] c"if.then6\00", align 1
@2331 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2332 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2333 = private unnamed_addr constant [26 x i8] c"call8__Z14test_edge_casev\00", align 1
@2334 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@2335 = private unnamed_addr constant [25 x i8] c"cmp9__Z14test_edge_casev\00", align 1
@2336 = private unnamed_addr constant [26 x i8] c"call8__Z14test_edge_casev\00", align 1
@2337 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2338 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2339 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2340 = private unnamed_addr constant [25 x i8] c"cmp9__Z14test_edge_casev\00", align 1
@2341 = private unnamed_addr constant [8 x i8] c"if.end7\00", align 1
@2342 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2343 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@2344 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2345 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@2346 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2347 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2348 = private unnamed_addr constant [24 x i8] c"_Z14test_edge_casev_RET\00", align 1
@2349 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2350 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@2351 = private unnamed_addr constant [6 x i8] c"velsp\00", align 1
@2352 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2353 = private unnamed_addr constant [6 x i8] c"velsp\00", align 1
@2354 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2355 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2356 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2357 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2358 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2359 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2360 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2361 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2362 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2363 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2364 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2365 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2366 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2367 = private unnamed_addr constant [20 x i8] c"tmp__Z10test_velspf\00", align 1
@2368 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2369 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2370 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2371 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2372 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2373 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2374 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2375 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2376 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2377 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2378 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2379 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2380 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2381 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2382 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2383 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2384 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2385 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2386 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2387 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2388 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2389 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2390 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2391 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2392 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2393 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2394 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2395 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2396 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2397 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2398 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2399 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@2400 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf1\00", align 1
@2401 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf1\00", align 1
@2402 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2403 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2404 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2405 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf1\00", align 1
@2406 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2407 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2408 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf2\00", align 1
@2409 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf2\00", align 1
@2410 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2411 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2412 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2413 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf2\00", align 1
@2414 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2415 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2416 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2417 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2418 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2419 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2420 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2421 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2422 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2423 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2424 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf4\00", align 1
@2425 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf4\00", align 1
@2426 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf5\00", align 1
@2427 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf5\00", align 1
@2428 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2429 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2430 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2431 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf5\00", align 1
@2432 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2433 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2434 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2435 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2436 = private unnamed_addr constant [21 x i8] c"call__Z10test_velspf\00", align 1
@2437 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2438 = private unnamed_addr constant [17 x i8] c"(float 0.100000)\00", align 1
@2439 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@2440 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2441 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2442 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf6\00", align 1
@2443 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf6\00", align 1
@2444 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf7\00", align 1
@2445 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf7\00", align 1
@2446 = private unnamed_addr constant [20 x i8] c"cmp__Z10test_velspf\00", align 1
@2447 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf6\00", align 1
@2448 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@2449 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf7\00", align 1
@2450 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@2451 = private unnamed_addr constant [20 x i8] c"cmp__Z10test_velspf\00", align 1
@2452 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@2453 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2454 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2455 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2456 = private unnamed_addr constant [17 x i8] c"(float 0.100000)\00", align 1
@2457 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2458 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2459 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2460 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2461 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2462 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2463 = private unnamed_addr constant [22 x i8] c"call1__Z10test_velspf\00", align 1
@2464 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@2465 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf9\00", align 1
@2466 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf9\00", align 1
@2467 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2468 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2469 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2470 = private unnamed_addr constant [21 x i8] c"tmp__Z10test_velspf9\00", align 1
@2471 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2472 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2473 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf10\00", align 1
@2474 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf10\00", align 1
@2475 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2476 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2477 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2478 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf10\00", align 1
@2479 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2480 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2481 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf11\00", align 1
@2482 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf11\00", align 1
@2483 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2484 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2485 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2486 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf11\00", align 1
@2487 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2488 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2489 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2490 = private unnamed_addr constant [27 x i8] c"trajectory__Z10test_velspf\00", align 1
@2491 = private unnamed_addr constant [22 x i8] c"call2__Z10test_velspf\00", align 1
@2492 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2493 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@2494 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf12\00", align 1
@2495 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf12\00", align 1
@2496 = private unnamed_addr constant [20 x i8] c"inc__Z10test_velspf\00", align 1
@2497 = private unnamed_addr constant [22 x i8] c"tmp__Z10test_velspf12\00", align 1
@2498 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@2499 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2500 = private unnamed_addr constant [20 x i8] c"inc__Z10test_velspf\00", align 1
@2501 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@2502 = private unnamed_addr constant [20 x i8] c"_Z10test_velspf_RET\00", align 1
@2503 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2504 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@2505 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@2506 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2507 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@2508 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2509 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2510 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2511 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2512 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2513 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2514 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2515 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2516 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2517 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2518 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2519 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2520 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2521 = private unnamed_addr constant [28 x i8] c"tmp__Z18test_t1_saturationf\00", align 1
@2522 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2523 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2524 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2525 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2526 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2527 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2528 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2529 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2530 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2531 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2532 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2533 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2534 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2535 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2536 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2537 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf1\00", align 1
@2538 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2539 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2540 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2541 = private unnamed_addr constant [20 x i8] c"(double -20.000000)\00", align 1
@2542 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2543 = private unnamed_addr constant [19 x i8] c"(double 20.000000)\00", align 1
@2544 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2545 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2546 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@2547 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2548 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@2549 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2550 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2551 = private unnamed_addr constant [26 x i8] c"stg_symbolic_variable_RET\00", align 1
@2552 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf3\00", align 1
@2553 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf3\00", align 1
@2554 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf5\00", align 1
@2555 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf5\00", align 1
@2556 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2557 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2558 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2559 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2560 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2561 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2562 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2563 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2564 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2565 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2566 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2567 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2568 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2569 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2570 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2571 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2572 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2573 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@2574 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@2575 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@2576 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2577 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2578 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2579 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@2580 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2581 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2582 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@2583 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@2584 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2585 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2586 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2587 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@2588 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2589 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2590 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2591 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2592 = private unnamed_addr constant [29 x i8] c"call__Z18test_t1_saturationf\00", align 1
@2593 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@2594 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2595 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2596 = private unnamed_addr constant [30 x i8] c"call1__Z18test_t1_saturationf\00", align 1
@2597 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@2598 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@2599 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@2600 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2601 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2602 = private unnamed_addr constant [30 x i8] c"call2__Z18test_t1_saturationf\00", align 1
@2603 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2604 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2605 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2606 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2607 = private unnamed_addr constant [29 x i8] c"call__Z18test_t1_saturationf\00", align 1
@2608 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@2609 = private unnamed_addr constant [30 x i8] c"call1__Z18test_t1_saturationf\00", align 1
@2610 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@2611 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@2612 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@2613 = private unnamed_addr constant [30 x i8] c"call2__Z18test_t1_saturationf\00", align 1
@2614 = private unnamed_addr constant [30 x i8] c"call3__Z18test_t1_saturationf\00", align 1
@2615 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@2616 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2617 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@2618 = private unnamed_addr constant [30 x i8] c"call4__Z18test_t1_saturationf\00", align 1
@2619 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2620 = private unnamed_addr constant [28 x i8] c"_Z18test_t1_saturationf_RET\00", align 1
@2621 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2622 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2623 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@2624 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2625 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@2626 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@2627 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2628 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@2629 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@2630 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2631 = private unnamed_addr constant [18 x i8] c"(float -1.000000)\00", align 1
@2632 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@2633 = private unnamed_addr constant [20 x i8] c"_Z10test_velspf_RET\00", align 1
@2634 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2635 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2636 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@2637 = private unnamed_addr constant [20 x i8] c"_Z10test_velspf_RET\00", align 1
@2638 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2639 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2640 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@2641 = private unnamed_addr constant [20 x i8] c"_Z10test_velspf_RET\00", align 1
@2642 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@2643 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@2644 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothingC2Efff = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  %initial_vel.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  %initial_pos.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC2Efff, align 8
  store float %initial_accel, float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0))
  store float %initial_vel, float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0))
  store float %initial_pos, float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0))
  %this1__ZN17VelocitySmoothingC2Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC2Efff, align 8
  %_vel_sp__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %_vel_sp__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_vel_sp__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @14, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 2.200000e+01, float* %_max_jerk__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_jerk__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @15, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 8.000000e+00, float* %_max_accel__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_accel__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @16, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 6.000000e+00, float* %_max_vel__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_vel__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0))
  %_state__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 4
  %j__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %j__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %j__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0))
  %a__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 0.000000e+00, float* %a__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0))
  %v__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 0.000000e+00, float* %v__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @20, i32 0, i32 0))
  %x__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 0.000000e+00, float* %x__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 5
  store i32 0, i32* %_direction__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_i32(i32* %_direction__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @22, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 6
  %j2__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %j2__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %j2__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @23, i32 0, i32 0))
  %a3__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 0.000000e+00, float* %a3__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %a3__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0))
  %v4__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 0.000000e+00, float* %v4__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %v4__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @25, i32 0, i32 0))
  %x5__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 0.000000e+00, float* %x5__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %x5__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @26, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 7
  store float 0.000000e+00, float* %_T1__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 8
  store float 0.000000e+00, float* %_T2__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @28, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 9
  store float 0.000000e+00, float* %_T3__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @30, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff = load float, float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @32, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff1 = load float, float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @34, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff2 = load float, float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @36, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @38, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @39, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @40, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @42, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @44, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, float %tmp__ZN17VelocitySmoothingC2Efff, float %tmp__ZN17VelocitySmoothingC2Efff1, float %tmp__ZN17VelocitySmoothingC2Efff2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @46, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @47, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this, float %accel, float %vel, float %pos) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @49, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @51, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @55, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing5resetEfff = alloca %class.VelocitySmoothing*, align 8
  %accel.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  %vel.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  %pos.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing5resetEfff, align 8
  store float %accel, float* %accel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %accel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @57, i32 0, i32 0))
  store float %vel, float* %vel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %vel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @58, i32 0, i32 0))
  store float %pos, float* %pos.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %pos.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @59, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing5resetEfff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing5resetEfff, align 8
  %_state__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %j__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing5resetEfff, i32 0, i32 0
  store float 0.000000e+00, float* %j__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %j__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @62, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff = load float, float* %accel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %accel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @64, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %a__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing5resetEfff, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing5resetEfff, float* %a__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @65, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff1 = load float, float* %vel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %vel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @67, i32 0, i32 0))
  %_state3__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %v__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state3__ZN17VelocitySmoothing5resetEfff, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing5resetEfff1, float* %v__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @68, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff2 = load float, float* %pos.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %pos.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @70, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %x__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing5resetEfff, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing5resetEfff2, float* %x__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @71, i32 0, i32 0))
  %_state5__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %_state_init__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 6
  %tmp__ZN17VelocitySmoothing5resetEfff3 = bitcast %struct.Trajectory* %_state_init__ZN17VelocitySmoothing5resetEfff to i8*
  %tmp__ZN17VelocitySmoothing5resetEfff4 = bitcast %struct.Trajectory* %_state5__ZN17VelocitySmoothing5resetEfff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing5resetEfff3, i8* align 4 %tmp__ZN17VelocitySmoothing5resetEfff4, i64 16, i1 false)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @79, i32 0, i32 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @81, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @83, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @85, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @87, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothingC1Efff = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  %initial_vel.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  %initial_pos.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC1Efff, align 8
  store float %initial_accel, float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @89, i32 0, i32 0))
  store float %initial_vel, float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @90, i32 0, i32 0))
  store float %initial_pos, float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @91, i32 0, i32 0))
  %this1__ZN17VelocitySmoothingC1Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC1Efff, align 8
  %tmp__ZN17VelocitySmoothingC1Efff = load float, float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @95, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC1Efff1 = load float, float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @97, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC1Efff2 = load float, float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @99, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @101, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @102, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @103, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @105, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @107, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC1Efff, float %tmp__ZN17VelocitySmoothingC1Efff, float %tmp__ZN17VelocitySmoothingC1Efff1, float %tmp__ZN17VelocitySmoothingC1Efff2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @109, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @112, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv, align 8
  %this1__ZNK17VelocitySmoothing10getMaxJerkEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv, align 8
  %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing10getMaxJerkEv, i32 0, i32 1
  %tmp__ZNK17VelocitySmoothing10getMaxJerkEv = load float, float* %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @117, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @119, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @120, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing10getMaxJerkEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %this, float %max_jerk) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @121, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @122, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @124, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing10setMaxJerkEf = alloca %class.VelocitySmoothing*, align 8
  %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 8
  store float %max_jerk, float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_store_float(float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @126, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing10setMaxJerkEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 8
  %tmp__ZN17VelocitySmoothing10setMaxJerkEf = load float, float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_load_float(float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @130, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10setMaxJerkEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing10setMaxJerkEf, float* %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_store_float(float* %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @131, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @132, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @134, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv, align 8
  %this1__ZNK17VelocitySmoothing11getMaxAccelEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv, align 8
  %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing11getMaxAccelEv, i32 0, i32 2
  %tmp__ZNK17VelocitySmoothing11getMaxAccelEv = load float, float* %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv, align 4
  call void @stg_update_load_float(float* %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @139, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @141, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @142, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing11getMaxAccelEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %this, float %max_accel) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing11setMaxAccelEf = alloca %class.VelocitySmoothing*, align 8
  %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 8
  store float %max_accel, float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_store_float(float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @148, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing11setMaxAccelEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 8
  %tmp__ZN17VelocitySmoothing11setMaxAccelEf = load float, float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_load_float(float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @152, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing11setMaxAccelEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing11setMaxAccelEf, float* %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_store_float(float* %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @153, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @154, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @156, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing9getMaxVelEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing9getMaxVelEv, align 8
  %this1__ZNK17VelocitySmoothing9getMaxVelEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing9getMaxVelEv, align 8
  %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing9getMaxVelEv, i32 0, i32 3
  %tmp__ZNK17VelocitySmoothing9getMaxVelEv = load float, float* %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv, align 4
  call void @stg_update_load_float(float* %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @161, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @163, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @164, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing9getMaxVelEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %this, float %max_vel) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @165, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @166, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @168, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing9setMaxVelEf = alloca %class.VelocitySmoothing*, align 8
  %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9setMaxVelEf, align 8
  store float %max_vel, float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_store_float(float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @170, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9setMaxVelEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9setMaxVelEf, align 8
  %tmp__ZN17VelocitySmoothing9setMaxVelEf = load float, float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_load_float(float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @174, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothing9setMaxVelEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing9setMaxVelEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing9setMaxVelEf, float* %_max_vel__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_store_float(float* %_max_vel__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @175, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @176, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @178, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv, align 8
  %this1__ZNK17VelocitySmoothing14getCurrentJerkEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv, align 8
  %_state__ZNK17VelocitySmoothing14getCurrentJerkEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing14getCurrentJerkEv, i32 0, i32 4
  %j__ZNK17VelocitySmoothing14getCurrentJerkEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing14getCurrentJerkEv, i32 0, i32 0
  %tmp__ZNK17VelocitySmoothing14getCurrentJerkEv = load float, float* %j__ZNK17VelocitySmoothing14getCurrentJerkEv, align 4
  call void @stg_update_load_float(float* %j__ZNK17VelocitySmoothing14getCurrentJerkEv, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @183, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @184, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @185, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @186, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing14getCurrentJerkEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %this, float %accel) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @188, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @190, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf = alloca %class.VelocitySmoothing*, align 8
  %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 8
  store float %accel, float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @192, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 8
  %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf = load float, float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_load_float(float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @196, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 6
  %a__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf, float* %a__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @197, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 4
  %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf, float* %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @198, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @199, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @201, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 8
  %this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 8
  %_state__ZNK17VelocitySmoothing22getCurrentAccelerationEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i32 0, i32 4
  %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i32 0, i32 1
  %tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv = load float, float* %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 4
  call void @stg_update_load_float(float* %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @206, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @208, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @209, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %this, float %vel) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @211, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @212, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @213, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf = alloca %class.VelocitySmoothing*, align 8
  %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 8
  store float %vel, float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @215, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18setCurrentVelocityEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 8
  %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf = load float, float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_load_float(float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @219, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 6
  %v__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf, float* %v__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @220, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 4
  %v2__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf, float* %v2__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %v2__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @221, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @222, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @224, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 8
  %this1__ZNK17VelocitySmoothing18getCurrentVelocityEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 8
  %_state__ZNK17VelocitySmoothing18getCurrentVelocityEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing18getCurrentVelocityEv, i32 0, i32 4
  %v__ZNK17VelocitySmoothing18getCurrentVelocityEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing18getCurrentVelocityEv, i32 0, i32 2
  %tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv = load float, float* %v__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 4
  call void @stg_update_load_float(float* %v__ZNK17VelocitySmoothing18getCurrentVelocityEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @229, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @230, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @231, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @232, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %this, float %pos) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @233, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @234, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @235, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @236, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf = alloca %class.VelocitySmoothing*, align 8
  %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 8
  store float %pos, float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @238, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18setCurrentPositionEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 8
  %tmp__ZN17VelocitySmoothing18setCurrentPositionEf = load float, float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_load_float(float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @242, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 6
  %x__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing18setCurrentPositionEf, float* %x__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @243, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 4
  %x2__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing18setCurrentPositionEf, float* %x2__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %x2__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @244, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @245, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @246, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @247, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv, align 8
  %this1__ZNK17VelocitySmoothing18getCurrentPositionEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv, align 8
  %_state__ZNK17VelocitySmoothing18getCurrentPositionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing18getCurrentPositionEv, i32 0, i32 4
  %x__ZNK17VelocitySmoothing18getCurrentPositionEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing18getCurrentPositionEv, i32 0, i32 3
  %tmp__ZNK17VelocitySmoothing18getCurrentPositionEv = load float, float* %x__ZNK17VelocitySmoothing18getCurrentPositionEv, align 4
  call void @stg_update_load_float(float* %x__ZNK17VelocitySmoothing18getCurrentPositionEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @252, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @253, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @254, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @255, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing18getCurrentPositionEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @256, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @257, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing8getVelSpEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing8getVelSpEv, align 8
  %this1__ZNK17VelocitySmoothing8getVelSpEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing8getVelSpEv, align 8
  %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing8getVelSpEv, i32 0, i32 0
  %tmp__ZNK17VelocitySmoothing8getVelSpEv = load float, float* %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @262, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @264, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @265, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing8getVelSpEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @266, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @267, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing5getT1Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT1Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT1Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT1Ev, align 8
  %_T1__ZNK17VelocitySmoothing5getT1Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT1Ev, i32 0, i32 7
  %tmp__ZNK17VelocitySmoothing5getT1Ev = load float, float* %_T1__ZNK17VelocitySmoothing5getT1Ev, align 4
  call void @stg_update_load_float(float* %_T1__ZNK17VelocitySmoothing5getT1Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @272, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @273, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @274, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @275, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT1Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @276, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @277, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing5getT2Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT2Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT2Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT2Ev, align 8
  %_T2__ZNK17VelocitySmoothing5getT2Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT2Ev, i32 0, i32 8
  %tmp__ZNK17VelocitySmoothing5getT2Ev = load float, float* %_T2__ZNK17VelocitySmoothing5getT2Ev, align 4
  call void @stg_update_load_float(float* %_T2__ZNK17VelocitySmoothing5getT2Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @282, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @283, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @284, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @285, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT2Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @286, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @287, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing5getT3Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT3Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT3Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT3Ev, align 8
  %_T3__ZNK17VelocitySmoothing5getT3Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT3Ev, i32 0, i32 9
  %tmp__ZNK17VelocitySmoothing5getT3Ev = load float, float* %_T3__ZNK17VelocitySmoothing5getT3Ev, align 4
  call void @stg_update_load_float(float* %_T3__ZNK17VelocitySmoothing5getT3Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @292, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @293, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @294, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @295, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT3Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @296, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @297, i32 0, i32 0))
  %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv, align 8
  %this1__ZNK17VelocitySmoothing12getTotalTimeEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv, align 8
  %_T1__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 7
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv = load float, float* %_T1__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T1__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @302, i32 0, i32 0))
  %_T2__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 8
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv1 = load float, float* %_T2__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T2__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @304, i32 0, i32 0))
  %add__ZNK17VelocitySmoothing12getTotalTimeEv = fadd float %tmp__ZNK17VelocitySmoothing12getTotalTimeEv, %tmp__ZNK17VelocitySmoothing12getTotalTimeEv1
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @305, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @306, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @307, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @308, i32 0, i32 0))
  %_T3__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 9
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv2 = load float, float* %_T3__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T3__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @310, i32 0, i32 0))
  %add2__ZNK17VelocitySmoothing12getTotalTimeEv = fadd float %add__ZNK17VelocitySmoothing12getTotalTimeEv, %tmp__ZNK17VelocitySmoothing12getTotalTimeEv2
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @311, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @312, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @313, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @314, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @315, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @316, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @317, i32 0, i32 0))
  ret float %add2__ZNK17VelocitySmoothing12getTotalTimeEv
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this, float %a0, float %j_max, float %T1, float %a_max) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @318, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @319, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @320, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @321, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @322, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @323, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @324, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @325, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @326, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @327, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca %class.VelocitySmoothing*, align 8
  %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 8
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @329, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @330, i32 0, i32 0))
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @331, i32 0, i32 0))
  store float %a_max, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @332, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 8
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @336, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @337, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @338, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @339, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @340, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @341, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff)
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @343, i32 0, i32 0))
  %conv2__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @344, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @345, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @346, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @347, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @348, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1)
  %call__ZN17VelocitySmoothing18saturateT1ForAccelEffff = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), double %conv__ZN17VelocitySmoothing18saturateT1ForAccelEffff, double %conv2__ZN17VelocitySmoothing18saturateT1ForAccelEffff)
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2 = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @350, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @352, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4 = load float, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @354, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fmul float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @355, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @356, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @357, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @358, i32 0, i32 0))
  %add__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fadd float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2, %mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @359, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @360, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @361, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @362, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @363, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5 = load float, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @365, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @366, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @368, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @370, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fcmp ogt float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7
  call void @stg_update_cmp(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @371, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @372, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @373, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @374, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @375, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @376, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @377, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @379, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9 = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @381, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @382, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @383, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @384, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @385, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @387, i32 0, i32 0))
  %div__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fdiv float %sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @388, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @389, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @390, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @391, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @392, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @394, i32 0, i32 0))
  %conv3__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @395, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @396, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @397, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @398, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @399, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11)
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12 = load float, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @401, i32 0, i32 0))
  %conv4__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @402, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @403, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @404, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @405, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @406, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12)
  %call5__ZN17VelocitySmoothing18saturateT1ForAccelEffff = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), double %conv3__ZN17VelocitySmoothing18saturateT1ForAccelEffff, double %conv4__ZN17VelocitySmoothing18saturateT1ForAccelEffff)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @407, i32 0, i32 0))
  br label %if.end17

if.else:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @409, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @411, i32 0, i32 0))
  %sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @412, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @413, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @414, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @415, i32 0, i32 0))
  %cmp7__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fcmp olt float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13, %sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @416, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @417, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @418, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @419, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @420, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @421, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @422, i32 0, i32 0))
  br i1 %cmp7__ZN17VelocitySmoothing18saturateT1ForAccelEffff, label %if.then8, label %if.else15

if.then8:                                         ; preds = %if.else
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @424, i32 0, i32 0))
  %conv9__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @425, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @426, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @427, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @428, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @429, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff15)
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16 = load float, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @431, i32 0, i32 0))
  %conv10__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fpext float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @432, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @433, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @434, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @435, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @436, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff16)
  %call11__ZN17VelocitySmoothing18saturateT1ForAccelEffff = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), double %conv9__ZN17VelocitySmoothing18saturateT1ForAccelEffff, double %conv10__ZN17VelocitySmoothing18saturateT1ForAccelEffff)
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff17 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @438, i32 0, i32 0))
  %sub12__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff17
  call void @stg_update_op(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @439, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @440, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @441, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @442, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff18 = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @444, i32 0, i32 0))
  %sub13__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float %sub12__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff18
  call void @stg_update_op(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @445, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @446, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @447, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @448, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff19 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @450, i32 0, i32 0))
  %div14__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fdiv float %sub13__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff19
  call void @stg_update_op(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @451, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @452, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @453, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @454, i32 0, i32 0))
  store float %div14__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @455, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @456, i32 0, i32 0))
  br label %if.end

if.else15:                                        ; preds = %if.else
  %call16__ZN17VelocitySmoothing18saturateT1ForAccelEffff = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @457, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then8
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @458, i32 0, i32 0))
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff20 = load float, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @460, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @461, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @462, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @463, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff20
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this, float %a0, float %v3, float %j_max, float %a_max) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @464, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @465, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @466, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @467, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @468, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @469, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @470, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @471, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @472, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @473, i32 0, i32 0))
  %retval__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %this.addr__ZN17VelocitySmoothing9computeT1Effff = alloca %class.VelocitySmoothing*, align 8
  %a0.addr__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %v3.addr__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %a_max.addr__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %delta__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %T1_plus__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %T1_minus__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %T3_plus__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %T3_minus__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  %T1__ZN17VelocitySmoothing9computeT1Effff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT1Effff, align 8
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @475, i32 0, i32 0))
  store float %v3, float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @476, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @477, i32 0, i32 0))
  store float %a_max, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @478, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT1Effff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT1Effff, align 8
  %tmp__ZN17VelocitySmoothing9computeT1Effff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @482, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing9computeT1Effff = fmul float 2.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @483, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @484, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @485, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @486, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff1 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @488, i32 0, i32 0))
  %mul2__ZN17VelocitySmoothing9computeT1Effff = fmul float %mul__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff1
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @489, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @490, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @491, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @492, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff2 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @494, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing9computeT1Effff = fmul float 4.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff2
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @495, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @496, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @497, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @498, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff3 = load float, float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @500, i32 0, i32 0))
  %mul4__ZN17VelocitySmoothing9computeT1Effff = fmul float %mul3__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff3
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @501, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @502, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @503, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @504, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT1Effff = fadd float %mul2__ZN17VelocitySmoothing9computeT1Effff, %mul4__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @505, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @506, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @507, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @508, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT1Effff, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @509, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff4 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @511, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing9computeT1Effff = fcmp olt float %tmp__ZN17VelocitySmoothing9computeT1Effff4, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @512, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @513, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @514, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @515, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @516, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @517, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @518, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing9computeT1Effff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @519, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @520, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZN17VelocitySmoothing9computeT1Effff5 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @522, i32 0, i32 0))
  call void @stg_update_una_intrinsic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @523, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @524, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @525, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @526, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff6 = call float @llvm.sqrt.f32(float %tmp__ZN17VelocitySmoothing9computeT1Effff5)
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff6, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @527, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff7 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @529, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT1Effff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff7
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @530, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @531, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @532, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @533, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff8 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @535, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing9computeT1Effff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT1Effff8
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @536, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @537, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @538, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @539, i32 0, i32 0))
  %add6__ZN17VelocitySmoothing9computeT1Effff = fadd float %sub__ZN17VelocitySmoothing9computeT1Effff, %mul5__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @540, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @541, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @542, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @543, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff9 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @545, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT1Effff = fdiv float %add6__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff9
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @546, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @547, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @548, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @549, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing9computeT1Effff, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @550, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff10 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @552, i32 0, i32 0))
  %sub7__ZN17VelocitySmoothing9computeT1Effff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff10
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @553, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @554, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @555, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @556, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff11 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @558, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing9computeT1Effff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT1Effff11
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @559, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @560, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @561, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @562, i32 0, i32 0))
  %sub9__ZN17VelocitySmoothing9computeT1Effff = fsub float %sub7__ZN17VelocitySmoothing9computeT1Effff, %mul8__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @563, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @564, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @565, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @566, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff12 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @568, i32 0, i32 0))
  %div10__ZN17VelocitySmoothing9computeT1Effff = fdiv float %sub9__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff12
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @569, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @570, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @571, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @572, i32 0, i32 0))
  store float %div10__ZN17VelocitySmoothing9computeT1Effff, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @573, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff13 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @575, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff14 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @577, i32 0, i32 0))
  %div11__ZN17VelocitySmoothing9computeT1Effff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Effff13, %tmp__ZN17VelocitySmoothing9computeT1Effff14
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @578, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @579, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @580, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @581, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff15 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @583, i32 0, i32 0))
  %add12__ZN17VelocitySmoothing9computeT1Effff = fadd float %div11__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff15
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @584, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @585, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @586, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @587, i32 0, i32 0))
  store float %add12__ZN17VelocitySmoothing9computeT1Effff, float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @588, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff16 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @590, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff17 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @592, i32 0, i32 0))
  %div13__ZN17VelocitySmoothing9computeT1Effff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Effff16, %tmp__ZN17VelocitySmoothing9computeT1Effff17
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @593, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @594, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @595, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @596, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff18 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @598, i32 0, i32 0))
  %add14__ZN17VelocitySmoothing9computeT1Effff = fadd float %div13__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff18
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @599, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @600, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @601, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @602, i32 0, i32 0))
  store float %add14__ZN17VelocitySmoothing9computeT1Effff, float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @603, i32 0, i32 0))
  store float 0.000000e+00, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @604, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff19 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @606, i32 0, i32 0))
  %cmp15__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff19, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @607, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @608, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @609, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @610, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @611, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp15__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @612, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @613, i32 0, i32 0))
  br i1 %cmp15__ZN17VelocitySmoothing9computeT1Effff, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Effff20 = load float, float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @615, i32 0, i32 0))
  %cmp16__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff20, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @616, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @617, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @618, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @619, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @620, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp16__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @621, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @622, i32 0, i32 0))
  br i1 %cmp16__ZN17VelocitySmoothing9computeT1Effff, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %tmp__ZN17VelocitySmoothing9computeT1Effff21 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @624, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff21, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @625, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @626, i32 0, i32 0))
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Effff22 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @628, i32 0, i32 0))
  %cmp18__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff22, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @629, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @630, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @631, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @632, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @633, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp18__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @634, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @635, i32 0, i32 0))
  br i1 %cmp18__ZN17VelocitySmoothing9computeT1Effff, label %land.lhs.true19, label %if.end22

land.lhs.true19:                                  ; preds = %if.else
  %tmp__ZN17VelocitySmoothing9computeT1Effff23 = load float, float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @637, i32 0, i32 0))
  %cmp20__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff23, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @638, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @639, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @640, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @641, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @642, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp20__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @643, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @644, i32 0, i32 0))
  br i1 %cmp20__ZN17VelocitySmoothing9computeT1Effff, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true19
  %tmp__ZN17VelocitySmoothing9computeT1Effff24 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @646, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff24, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @647, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @648, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true19, %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @649, i32 0, i32 0))
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then17
  %tmp__ZN17VelocitySmoothing9computeT1Effff25 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @651, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff26 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @653, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff27 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @655, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff28 = load float, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @657, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @658, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @659, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @660, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @661, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @662, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @663, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @664, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @665, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @666, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @667, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT1Effff = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing9computeT1Effff, float %tmp__ZN17VelocitySmoothing9computeT1Effff25, float %tmp__ZN17VelocitySmoothing9computeT1Effff26, float %tmp__ZN17VelocitySmoothing9computeT1Effff27, float %tmp__ZN17VelocitySmoothing9computeT1Effff28)
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @668, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @669, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing9computeT1Effff, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @670, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff29 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @672, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @673, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @674, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @675, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @676, i32 0, i32 0))
  %call24__ZN17VelocitySmoothing9computeT1Effff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT1Effff29, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @677, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @678, i32 0, i32 0))
  store float %call24__ZN17VelocitySmoothing9computeT1Effff, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @679, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @680, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %tmp__ZN17VelocitySmoothing9computeT1Effff30 = load float, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @682, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @683, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @684, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @685, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing9computeT1Effff30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3maxIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @686, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @687, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @688, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @689, i32 0, i32 0))
  %a.addr__ZN4math3maxIfEET_S1_S1_ = alloca float, align 4
  %b.addr__ZN4math3maxIfEET_S1_S1_ = alloca float, align 4
  store float %a, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @690, i32 0, i32 0))
  store float %b, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @691, i32 0, i32 0))
  %tmp__ZN4math3maxIfEET_S1_S1_ = load float, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @693, i32 0, i32 0))
  %tmp__ZN4math3maxIfEET_S1_S1_1 = load float, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @695, i32 0, i32 0))
  %cmp__ZN4math3maxIfEET_S1_S1_ = fcmp ogt float %tmp__ZN4math3maxIfEET_S1_S1_, %tmp__ZN4math3maxIfEET_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @696, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @697, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @698, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @699, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @700, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @701, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @702, i32 0, i32 0))
  br i1 %cmp__ZN4math3maxIfEET_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math3maxIfEET_S1_S1_2 = load float, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @704, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @705, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math3maxIfEET_S1_S1_3 = load float, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @707, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @708, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math3maxIfEET_S1_S1_ = phi float [ %tmp__ZN4math3maxIfEET_S1_S1_2, %cond.true ], [ %tmp__ZN4math3maxIfEET_S1_S1_3, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @709, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @710, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @711, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @712, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @713, i32 0, i32 0))
  ret float %cond__ZN4math3maxIfEET_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this, float %T1, float %T3, float %a0, float %v3, float %j_max) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @714, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @715, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @716, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @717, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @718, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @719, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @720, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @721, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @722, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @723, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @724, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @725, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca %class.VelocitySmoothing*, align 8
  %T1.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %T3.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %a0.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %v3.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %T2__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  %den__ZN17VelocitySmoothing9computeT2Efffff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT2Efffff, align 8
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @727, i32 0, i32 0))
  store float %T3, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @728, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @729, i32 0, i32 0))
  store float %v3, float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @730, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @731, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT2Efffff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT2Efffff, align 8
  store float 0.000000e+00, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @734, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @736, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @738, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff2 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @740, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff1, %tmp__ZN17VelocitySmoothing9computeT2Efffff2
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @741, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @742, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @743, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @744, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT2Efffff = fadd float %tmp__ZN17VelocitySmoothing9computeT2Efffff, %mul__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @745, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @746, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @747, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @748, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT2Efffff, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @749, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff3 = load float, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @751, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @752, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @753, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT2Efffff = call float @_ZN4math5abs_tIfEET_S1_(float %tmp__ZN17VelocitySmoothing9computeT2Efffff3)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @754, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @755, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing9computeT2Efffff = fcmp ogt float %call__ZN17VelocitySmoothing9computeT2Efffff, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @756, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @757, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @758, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @759, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @760, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @761, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @762, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing9computeT2Efffff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2__ZN17VelocitySmoothing9computeT2Efffff = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff4 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @764, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing9computeT2Efffff = fmul float -5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT2Efffff4
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @765, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @766, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @767, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @768, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff5 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @770, i32 0, i32 0))
  %mul4__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul3__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff5
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @771, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @772, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @773, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @774, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff6 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @776, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul4__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff6
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @777, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @778, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @779, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @780, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff7 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @782, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff8 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @784, i32 0, i32 0))
  %mul6__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff7, %tmp__ZN17VelocitySmoothing9computeT2Efffff8
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @785, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @786, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @787, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @788, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff9 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @790, i32 0, i32 0))
  %mul7__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul6__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff9
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @791, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @792, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @793, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @794, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT2Efffff = fsub float %mul5__ZN17VelocitySmoothing9computeT2Efffff, %mul7__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @795, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @796, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @797, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @798, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff10 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @800, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff11 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @802, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff10, %tmp__ZN17VelocitySmoothing9computeT2Efffff11
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @803, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @804, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @805, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @806, i32 0, i32 0))
  %sub9__ZN17VelocitySmoothing9computeT2Efffff = fsub float %sub__ZN17VelocitySmoothing9computeT2Efffff, %mul8__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @807, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @808, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @809, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @810, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff12 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @812, i32 0, i32 0))
  %mul10__ZN17VelocitySmoothing9computeT2Efffff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT2Efffff12
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @813, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @814, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @815, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @816, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff13 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @818, i32 0, i32 0))
  %mul11__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul10__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff13
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @819, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @820, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @821, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @822, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff14 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @824, i32 0, i32 0))
  %mul12__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul11__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff14
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @825, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @826, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @827, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @828, i32 0, i32 0))
  %add13__ZN17VelocitySmoothing9computeT2Efffff = fadd float %sub9__ZN17VelocitySmoothing9computeT2Efffff, %mul12__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @829, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @830, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @831, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @832, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff15 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @834, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff16 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @836, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff15, %tmp__ZN17VelocitySmoothing9computeT2Efffff16
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @837, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @838, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @839, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @840, i32 0, i32 0))
  %sub15__ZN17VelocitySmoothing9computeT2Efffff = fsub float %add13__ZN17VelocitySmoothing9computeT2Efffff, %mul14__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @841, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @842, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @843, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @844, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff17 = load float, float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @846, i32 0, i32 0))
  %add16__ZN17VelocitySmoothing9computeT2Efffff = fadd float %sub15__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff17
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @847, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @848, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @849, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @850, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff18 = load float, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @852, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT2Efffff = fdiv float %add16__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff18
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @853, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @854, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @855, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @856, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing9computeT2Efffff, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @857, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @858, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing9computeT2Efffff19 = load float, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @860, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @861, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @862, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @863, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @864, i32 0, i32 0))
  %call17__ZN17VelocitySmoothing9computeT2Efffff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT2Efffff19, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @865, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @866, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @867, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @868, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @869, i32 0, i32 0))
  ret float %call17__ZN17VelocitySmoothing9computeT2Efffff
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math5abs_tIfEET_S1_(float %val) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @870, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @871, i32 0, i32 0))
  %val.addr__ZN4math5abs_tIfEET_S1_ = alloca float, align 4
  store float %val, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @872, i32 0, i32 0))
  %tmp__ZN4math5abs_tIfEET_S1_ = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @874, i32 0, i32 0))
  %cmp__ZN4math5abs_tIfEET_S1_ = fcmp ogt float %tmp__ZN4math5abs_tIfEET_S1_, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @875, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @876, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @877, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @878, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @879, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @880, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @881, i32 0, i32 0))
  br i1 %cmp__ZN4math5abs_tIfEET_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math5abs_tIfEET_S1_1 = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @883, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @884, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math5abs_tIfEET_S1_2 = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @886, i32 0, i32 0))
  %sub__ZN4math5abs_tIfEET_S1_ = fsub float -0.000000e+00, %tmp__ZN4math5abs_tIfEET_S1_2
  call void @stg_update_op(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @887, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @888, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @889, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @890, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @891, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math5abs_tIfEET_S1_ = phi float [ %tmp__ZN4math5abs_tIfEET_S1_1, %cond.true ], [ %sub__ZN4math5abs_tIfEET_S1_, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @892, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @893, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @894, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @895, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @896, i32 0, i32 0))
  ret float %cond__ZN4math5abs_tIfEET_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this, float %T1, float %a0, float %j_max) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @897, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @898, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @899, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @900, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @901, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @902, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @903, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @904, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing9computeT3Efff = alloca %class.VelocitySmoothing*, align 8
  %T1.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %a0.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %T3__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT3Efff, align 8
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @906, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @907, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @908, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT3Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT3Efff, align 8
  %tmp__ZN17VelocitySmoothing9computeT3Efff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @912, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @914, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT3Efff = fdiv float %tmp__ZN17VelocitySmoothing9computeT3Efff, %tmp__ZN17VelocitySmoothing9computeT3Efff1
  call void @stg_update_op(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @915, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @916, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @917, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @918, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff2 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @920, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT3Efff = fadd float %div__ZN17VelocitySmoothing9computeT3Efff, %tmp__ZN17VelocitySmoothing9computeT3Efff2
  call void @stg_update_op(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @921, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @922, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @923, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @924, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT3Efff, float* %T3__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %T3__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @925, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff3 = load float, float* %T3__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %T3__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @927, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @928, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @929, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @930, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @931, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT3Efff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT3Efff3, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @932, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @933, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @934, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @935, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @936, i32 0, i32 0))
  ret float %call__ZN17VelocitySmoothing9computeT3Efff
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %this, float %vel_setpoint) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @937, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @938, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @939, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @940, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing15updateDurationsEf = alloca %class.VelocitySmoothing*, align 8
  %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing15updateDurationsEf, align 8
  store float %vel_setpoint, float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @942, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing15updateDurationsEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing15updateDurationsEf, align 8
  %tmp__ZN17VelocitySmoothing15updateDurationsEf = load float, float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @946, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing15updateDurationsEf1 = load float, float* %_max_vel__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %_max_vel__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @948, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing15updateDurationsEf = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing15updateDurationsEf1
  call void @stg_update_op(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @949, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @950, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @951, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @952, i32 0, i32 0))
  %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing15updateDurationsEf2 = load float, float* %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @954, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @955, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @956, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @957, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @958, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @959, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @960, i32 0, i32 0))
  %call__ZN17VelocitySmoothing15updateDurationsEf = call float @_ZN4math9constrainIfEET_S1_S1_S1_(float %tmp__ZN17VelocitySmoothing15updateDurationsEf, float %sub__ZN17VelocitySmoothing15updateDurationsEf, float %tmp__ZN17VelocitySmoothing15updateDurationsEf2)
  call void @stg_update_char(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @961, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @962, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 0
  store float %call__ZN17VelocitySmoothing15updateDurationsEf, float* %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @963, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @964, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 4
  %_state_init__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 6
  %tmp__ZN17VelocitySmoothing15updateDurationsEf3 = bitcast %struct.Trajectory* %_state_init__ZN17VelocitySmoothing15updateDurationsEf to i8*
  %tmp__ZN17VelocitySmoothing15updateDurationsEf4 = bitcast %struct.Trajectory* %_state__ZN17VelocitySmoothing15updateDurationsEf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing15updateDurationsEf3, i8* align 4 %tmp__ZN17VelocitySmoothing15updateDurationsEf4, i64 16, i1 false)
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @972, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @973, i32 0, i32 0))
  %call3__ZN17VelocitySmoothing15updateDurationsEf = call i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf)
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @974, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @975, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 5
  store i32 %call3__ZN17VelocitySmoothing15updateDurationsEf, i32* %_direction__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_i32(i32* %_direction__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @976, i32 0, i32 0))
  %_direction4__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing15updateDurationsEf5 = load i32, i32* %_direction4__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_i32(i32* %_direction4__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @978, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing15updateDurationsEf = icmp ne i32 %tmp__ZN17VelocitySmoothing15updateDurationsEf5, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @979, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @980, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @981, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @982, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @983, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @984, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @985, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing15updateDurationsEf, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @986, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @987, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @988, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @989, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @990, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %_T3__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 9
  store float 0.000000e+00, float* %_T3__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @991, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 8
  store float 0.000000e+00, float* %_T2__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @992, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 7
  store float 0.000000e+00, float* %_T1__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @993, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @994, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @995, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math9constrainIfEET_S1_S1_S1_(float %val, float %min_val, float %max_val) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @996, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @997, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @998, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @999, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1000, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1001, i32 0, i32 0))
  %val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  store float %val, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1002, i32 0, i32 0))
  store float %min_val, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1003, i32 0, i32 0))
  store float %max_val, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1004, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_ = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1006, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_1 = load float, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1008, i32 0, i32 0))
  %cmp__ZN4math9constrainIfEET_S1_S1_S1_ = fcmp olt float %tmp__ZN4math9constrainIfEET_S1_S1_S1_, %tmp__ZN4math9constrainIfEET_S1_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1009, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1010, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1011, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1012, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1013, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1014, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1015, i32 0, i32 0))
  br i1 %cmp__ZN4math9constrainIfEET_S1_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_2 = load float, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1017, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1018, i32 0, i32 0))
  br label %cond.end4

cond.false:                                       ; preds = %entry
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_3 = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1020, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_4 = load float, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1022, i32 0, i32 0))
  %cmp1__ZN4math9constrainIfEET_S1_S1_S1_ = fcmp ogt float %tmp__ZN4math9constrainIfEET_S1_S1_S1_3, %tmp__ZN4math9constrainIfEET_S1_S1_S1_4
  call void @stg_update_cmp(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1023, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1024, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1025, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1026, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1027, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1028, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1029, i32 0, i32 0))
  br i1 %cmp1__ZN4math9constrainIfEET_S1_S1_S1_, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_5 = load float, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1031, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1032, i32 0, i32 0))
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_6 = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1034, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1035, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond__ZN4math9constrainIfEET_S1_S1_S1_ = phi float [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_5, %cond.true2 ], [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_6, %cond.false3 ]
  call void @stg_update_phi(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1036, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @1037, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1038, i32 0, i32 0))
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5__ZN4math9constrainIfEET_S1_S1_S1_ = phi float [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_2, %cond.true ], [ %cond__ZN4math9constrainIfEET_S1_S1_S1_, %cond.end ]
  call void @stg_update_phi(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1039, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @1040, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1041, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1042, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1043, i32 0, i32 0))
  ret float %cond5__ZN4math9constrainIfEET_S1_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1044, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1045, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing16computeDirectionEv = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv = alloca float, align 4
  %direction__ZN17VelocitySmoothing16computeDirectionEv = alloca i32, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing16computeDirectionEv, align 8
  %this1__ZN17VelocitySmoothing16computeDirectionEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing16computeDirectionEv, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1049, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1050, i32 0, i32 0))
  %call__ZN17VelocitySmoothing16computeDirectionEv = call float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv)
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1051, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1052, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing16computeDirectionEv, float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1053, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing16computeDirectionEv = load float, float* %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1055, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing16computeDirectionEv1 = load float, float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1057, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing16computeDirectionEv = fsub float %tmp__ZN17VelocitySmoothing16computeDirectionEv, %tmp__ZN17VelocitySmoothing16computeDirectionEv1
  call void @stg_update_op(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1058, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1059, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1060, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1061, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1062, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1063, i32 0, i32 0))
  %call2__ZN17VelocitySmoothing16computeDirectionEv = call i32 @_ZN6matrix4signIfEEiT_(float %sub__ZN17VelocitySmoothing16computeDirectionEv)
  call void @stg_update_char(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1064, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1065, i32 0, i32 0))
  store i32 %call2__ZN17VelocitySmoothing16computeDirectionEv, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1066, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing16computeDirectionEv2 = load i32, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1068, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing16computeDirectionEv = icmp eq i32 %tmp__ZN17VelocitySmoothing16computeDirectionEv2, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1069, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1070, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1071, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1072, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1073, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1074, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1075, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing16computeDirectionEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_state__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing16computeDirectionEv3 = load float, float* %a__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1077, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1078, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1079, i32 0, i32 0))
  %call3__ZN17VelocitySmoothing16computeDirectionEv = call i32 @_ZN6matrix4signIfEEiT_(float %tmp__ZN17VelocitySmoothing16computeDirectionEv3)
  call void @stg_update_char(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1080, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1081, i32 0, i32 0))
  store i32 %call3__ZN17VelocitySmoothing16computeDirectionEv, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1082, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1083, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing16computeDirectionEv4 = load i32, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1085, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1086, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1087, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1088, i32 0, i32 0))
  ret i32 %tmp__ZN17VelocitySmoothing16computeDirectionEv4
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1089, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1090, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca %class.VelocitySmoothing*, align 8
  %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca float, align 4
  %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 8
  %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 8
  %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = load i32, i32* %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_i32(i32* %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1095, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = sitofp i32 %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv to float
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1096, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1097, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1098, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1099, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1100, i32 0, i32 0), i32 %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv)
  %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1 = load float, float* %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1102, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = fmul float %conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1
  call void @stg_update_op(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1103, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1104, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1105, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1106, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1107, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2 = load float, float* %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1109, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3 = load float, float* %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1111, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = fsub float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2, %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3
  call void @stg_update_op(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1112, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1113, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1114, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1115, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1116, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4 = load float, float* %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1118, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5 = load float, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1120, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1122, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7 = load float, float* %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1124, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1125, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1126, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1127, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1128, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1129, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1130, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1131, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1132, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1133, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1134, i32 0, i32 0))
  %call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7)
  call void @stg_update_char(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1135, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1136, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  store float %call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1137, i32 0, i32 0))
  %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8 = load float, float* %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1139, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9 = load float, float* %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1141, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1143, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1144, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1145, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1146, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1147, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1148, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1149, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1150, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1151, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10)
  call void @stg_update_char(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1152, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1153, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 9
  store float %call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1154, i32 0, i32 0))
  %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11 = load float, float* %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1156, i32 0, i32 0))
  %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 9
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12 = load float, float* %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1158, i32 0, i32 0))
  %_state9__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state9__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13 = load float, float* %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1160, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14 = load float, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1162, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1164, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1165, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1166, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1167, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1168, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1169, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1170, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1171, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1172, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1173, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1174, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1175, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1176, i32 0, i32 0))
  %call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15)
  call void @stg_update_char(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1177, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1178, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 8
  store float %call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1179, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1180, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1181, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1182, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 8
  %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 8
  %_state__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv = load float, float* %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1187, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1188, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1 = load float, float* %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1190, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1191, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1192, i32 0, i32 0))
  %call__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call float @_ZN4math5abs_tIfEET_S1_(float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1)
  call void @stg_update_char(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1193, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1194, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fcmp ogt float %call__ZN17VelocitySmoothing19computeVelAtZeroAccEv, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1195, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1196, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1197, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1199, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1200, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1201, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a5__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2 = load float, float* %a5__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a5__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1203, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1204, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1205, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call i32 @_ZN6matrix4signIfEEiT_(float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1206, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1207, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv = sub nsw i32 0, %call6__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1208, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1209, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1210, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1211, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv = sitofp i32 %sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv to float
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1212, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1213, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1214, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1215, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1216, i32 0, i32 0), i32 %sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv)
  %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3 = load float, float* %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1218, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1219, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1221, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1222, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1223, i32 0, i32 0))
  %_state7__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a8__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state7__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4 = load float, float* %a8__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a8__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1225, i32 0, i32 0))
  %sub9__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4
  call void @stg_update_op(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1226, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1227, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1228, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1229, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5 = load float, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1231, i32 0, i32 0))
  %div__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fdiv float %sub9__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1232, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1233, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1234, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1235, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1236, i32 0, i32 0))
  %_state10__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %v11__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state10__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6 = load float, float* %v11__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %v11__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1238, i32 0, i32 0))
  %_state12__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a13__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state12__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7 = load float, float* %a13__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a13__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1240, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1242, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1243, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1244, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1245, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1246, i32 0, i32 0))
  %add__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fadd float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6, %mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1247, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1248, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1249, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1250, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9 = load float, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1252, i32 0, i32 0))
  %mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1253, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1254, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1255, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1256, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1258, i32 0, i32 0))
  %mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1259, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1260, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1261, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1262, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1264, i32 0, i32 0))
  %mul17__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1265, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1266, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1267, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1268, i32 0, i32 0))
  %add18__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fadd float %add__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %mul17__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1269, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1270, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1271, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1272, i32 0, i32 0))
  store float %add18__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1273, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1274, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12 = load float, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1276, i32 0, i32 0))
  %conv19__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fpext float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12 to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1277, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1278, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1279, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1280, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1281, i32 0, i32 0), float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12)
  %call20__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), double %conv19__ZN17VelocitySmoothing19computeVelAtZeroAccEv)
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv13 = load float, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1283, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1284, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1285, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1286, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZN6matrix4signIfEEiT_(float %val) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1287, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1288, i32 0, i32 0))
  %retval__ZN6matrix4signIfEEiT_ = alloca i32, align 4
  %val.addr__ZN6matrix4signIfEEiT_ = alloca float, align 4
  store float %val, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1289, i32 0, i32 0))
  %tmp__ZN6matrix4signIfEEiT_ = load float, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1291, i32 0, i32 0))
  %cmp__ZN6matrix4signIfEEiT_ = fcmp olt float 0x3E80000000000000, %tmp__ZN6matrix4signIfEEiT_
  call void @stg_update_cmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1292, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1293, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1294, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1295, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1296, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1297, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1298, i32 0, i32 0))
  br i1 %cmp__ZN6matrix4signIfEEiT_, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1299, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1300, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  %tmp__ZN6matrix4signIfEEiT_1 = load float, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1302, i32 0, i32 0))
  %cmp1__ZN6matrix4signIfEEiT_ = fcmp olt float %tmp__ZN6matrix4signIfEEiT_1, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1303, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1304, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1305, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1306, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1307, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1308, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1309, i32 0, i32 0))
  br i1 %cmp1__ZN6matrix4signIfEEiT_, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 -1, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1310, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1311, i32 0, i32 0))
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1312, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1313, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %tmp__ZN6matrix4signIfEEiT_2 = load i32, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1315, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1316, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1317, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1318, i32 0, i32 0))
  ret i32 %tmp__ZN6matrix4signIfEEiT_2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this, float %j, float %a0, float %v0, float %x0, float %t, i32 %d) #1 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1319, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1320, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1321, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1322, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1323, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1324, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1325, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1326, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1327, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1328, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1329, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1330, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1331, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1332, i32 0, i32 0))
  %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca %struct.Trajectory, align 4
  %this.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca %class.VelocitySmoothing*, align 8
  %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca i32, align 4
  %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 8
  store float %j, float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1334, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1335, i32 0, i32 0))
  store float %v0, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1336, i32 0, i32 0))
  store float %x0, float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1337, i32 0, i32 0))
  store float %t, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1338, i32 0, i32 0))
  store i32 %d, i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_i32(i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1339, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing12evaluatePolyEfffffi = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 8
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi = load i32, i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_i32(i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1343, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing12evaluatePolyEfffffi = sitofp i32 %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi to float
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1344, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1345, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1346, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1347, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1348, i32 0, i32 0), i32 %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi)
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1 = load float, float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1350, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %conv__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1351, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1352, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1353, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1354, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1355, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1357, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1359, i32 0, i32 0))
  %mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1360, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1361, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1362, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1363, i32 0, i32 0))
  store float %mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1364, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1366, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1368, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1369, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1370, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1371, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1372, i32 0, i32 0))
  store float %mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1373, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1375, i32 0, i32 0))
  %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 0
  store float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6, float* %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1376, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1378, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1380, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1382, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1383, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1384, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1385, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1386, i32 0, i32 0))
  %add__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7, %mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1387, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1388, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1389, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1390, i32 0, i32 0))
  %a__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 1
  store float %add__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %a__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1391, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10 = load float, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1393, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1395, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1397, i32 0, i32 0))
  %mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1398, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1399, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1400, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1401, i32 0, i32 0))
  %add7__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10, %mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1402, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1403, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1404, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1405, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1407, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1408, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1409, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1410, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1411, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1413, i32 0, i32 0))
  %mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1414, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1415, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1416, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1417, i32 0, i32 0))
  %add10__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add7__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1418, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1419, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1420, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1421, i32 0, i32 0))
  %v__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 2
  store float %add10__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %v__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1422, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15 = load float, float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1424, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16 = load float, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1426, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1428, i32 0, i32 0))
  %mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1429, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1430, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1431, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1432, i32 0, i32 0))
  %add12__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15, %mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1433, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1434, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1435, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1436, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1438, i32 0, i32 0))
  %mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1439, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1440, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1441, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1442, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1444, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1445, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1446, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1447, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1448, i32 0, i32 0))
  %add15__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add12__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1449, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1450, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1451, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1452, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1454, i32 0, i32 0))
  %mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 0x3FC5555560000000, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1455, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1456, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1457, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1458, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21 = load float, float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1460, i32 0, i32 0))
  %mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1461, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1462, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1463, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1464, i32 0, i32 0))
  %add18__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add15__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1465, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1466, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1467, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1468, i32 0, i32 0))
  %x__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 3
  store float %add18__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %x__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1469, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi22 = bitcast %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi22, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1472, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1473, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1474, i32 0, i32 0))
  ret { <2 x float>, <2 x float> } %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %this, float %dt, float %time_stretch) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1475, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1476, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1477, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1478, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1479, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1480, i32 0, i32 0))
  %this.addr__ZN17VelocitySmoothing10updateTrajEff = alloca %class.VelocitySmoothing*, align 8
  %dt.addr__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %t_remain__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %t1__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %ref.tmp__ZN17VelocitySmoothing10updateTrajEff = alloca %struct.Trajectory, align 4
  %t2__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %ref.tmp7__ZN17VelocitySmoothing10updateTrajEff = alloca %struct.Trajectory, align 4
  %t3__ZN17VelocitySmoothing10updateTrajEff = alloca float, align 4
  %ref.tmp20__ZN17VelocitySmoothing10updateTrajEff = alloca %struct.Trajectory, align 4
  %ref.tmp36__ZN17VelocitySmoothing10updateTrajEff = alloca %struct.Trajectory, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10updateTrajEff, align 8
  store float %dt, float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1482, i32 0, i32 0))
  store float %time_stretch, float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1483, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing10updateTrajEff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10updateTrajEff, align 8
  %tmp__ZN17VelocitySmoothing10updateTrajEff = load float, float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1487, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff1 = load float, float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1489, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing10updateTrajEff = fmul float %tmp__ZN17VelocitySmoothing10updateTrajEff, %tmp__ZN17VelocitySmoothing10updateTrajEff1
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1490, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1491, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1492, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1493, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 10
  %tmp__ZN17VelocitySmoothing10updateTrajEff2 = load float, float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1495, i32 0, i32 0))
  %add__ZN17VelocitySmoothing10updateTrajEff = fadd float %tmp__ZN17VelocitySmoothing10updateTrajEff2, %mul__ZN17VelocitySmoothing10updateTrajEff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1496, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1497, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1498, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1499, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing10updateTrajEff, float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1500, i32 0, i32 0))
  %_local_time2__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 10
  %tmp__ZN17VelocitySmoothing10updateTrajEff3 = load float, float* %_local_time2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_local_time2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1502, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing10updateTrajEff3, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1503, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff4 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1505, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing10updateTrajEff5 = load float, float* %_T1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1507, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1508, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1509, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1510, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1511, i32 0, i32 0))
  %call__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff4, float %tmp__ZN17VelocitySmoothing10updateTrajEff5)
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1512, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1513, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing10updateTrajEff, float* %t1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1514, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff6 = load float, float* %_max_jerk__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1516, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %a__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff7 = load float, float* %a__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1518, i32 0, i32 0))
  %_state_init3__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %v__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init3__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff8 = load float, float* %v__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1520, i32 0, i32 0))
  %_state_init4__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %x__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init4__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff9 = load float, float* %x__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1522, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff10 = load float, float* %t1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1524, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing10updateTrajEff11 = load i32, i32* %_direction__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_i32(i32* %_direction__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1526, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1527, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1528, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1529, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1530, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1531, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1532, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1533, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1534, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1535, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1536, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1537, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1538, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1539, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1540, i32 0, i32 0))
  %call5__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float %tmp__ZN17VelocitySmoothing10updateTrajEff6, float %tmp__ZN17VelocitySmoothing10updateTrajEff7, float %tmp__ZN17VelocitySmoothing10updateTrajEff8, float %tmp__ZN17VelocitySmoothing10updateTrajEff9, float %tmp__ZN17VelocitySmoothing10updateTrajEff10, i32 %tmp__ZN17VelocitySmoothing10updateTrajEff11)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1541, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1542, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff12 = bitcast %struct.Trajectory* %ref.tmp__ZN17VelocitySmoothing10updateTrajEff to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing10updateTrajEff13 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff12, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing10updateTrajEff14 = extractvalue { <2 x float>, <2 x float> } %call5__ZN17VelocitySmoothing10updateTrajEff, 0
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff14, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff13, align 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff15 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff12, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff16 = extractvalue { <2 x float>, <2 x float> } %call5__ZN17VelocitySmoothing10updateTrajEff, 1
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff16, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff15, align 4
  %_state__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff17 = bitcast %struct.Trajectory* %_state__ZN17VelocitySmoothing10updateTrajEff to i8*
  %tmp__ZN17VelocitySmoothing10updateTrajEff18 = bitcast %struct.Trajectory* %ref.tmp__ZN17VelocitySmoothing10updateTrajEff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff17, i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff18, i64 16, i1 false)
  %tmp__ZN17VelocitySmoothing10updateTrajEff19 = load float, float* %t1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1553, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff20 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1555, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff20, %tmp__ZN17VelocitySmoothing10updateTrajEff19
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1556, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1557, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1558, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1559, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1560, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff21 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1562, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff21, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1563, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1564, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1565, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1566, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1567, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1568, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1569, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing10updateTrajEff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing10updateTrajEff22 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1571, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 8
  %tmp__ZN17VelocitySmoothing10updateTrajEff23 = load float, float* %_T2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1573, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1574, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1575, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1576, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1577, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff22, float %tmp__ZN17VelocitySmoothing10updateTrajEff23)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1578, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1579, i32 0, i32 0))
  store float %call6__ZN17VelocitySmoothing10updateTrajEff, float* %t2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1580, i32 0, i32 0))
  %_state8__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %a9__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state8__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff24 = load float, float* %a9__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a9__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1582, i32 0, i32 0))
  %_state10__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v11__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state10__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff25 = load float, float* %v11__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v11__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1584, i32 0, i32 0))
  %_state12__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x13__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state12__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff26 = load float, float* %x13__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x13__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1586, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff27 = load float, float* %t2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1588, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1589, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1590, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1591, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1592, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1593, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1594, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1595, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1596, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1597, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1598, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1599, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1600, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1601, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1602, i32 0, i32 0))
  %call14__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float 0.000000e+00, float %tmp__ZN17VelocitySmoothing10updateTrajEff24, float %tmp__ZN17VelocitySmoothing10updateTrajEff25, float %tmp__ZN17VelocitySmoothing10updateTrajEff26, float %tmp__ZN17VelocitySmoothing10updateTrajEff27, i32 0)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1603, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1604, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff28 = bitcast %struct.Trajectory* %ref.tmp7__ZN17VelocitySmoothing10updateTrajEff to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing10updateTrajEff29 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff28, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing10updateTrajEff30 = extractvalue { <2 x float>, <2 x float> } %call14__ZN17VelocitySmoothing10updateTrajEff, 0
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff30, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff29, align 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff31 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff28, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff32 = extractvalue { <2 x float>, <2 x float> } %call14__ZN17VelocitySmoothing10updateTrajEff, 1
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff32, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff31, align 4
  %_state15__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff33 = bitcast %struct.Trajectory* %_state15__ZN17VelocitySmoothing10updateTrajEff to i8*
  %tmp__ZN17VelocitySmoothing10updateTrajEff34 = bitcast %struct.Trajectory* %ref.tmp7__ZN17VelocitySmoothing10updateTrajEff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff33, i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff34, i64 16, i1 false)
  %tmp__ZN17VelocitySmoothing10updateTrajEff35 = load float, float* %t2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1615, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff36 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1617, i32 0, i32 0))
  %sub16__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff36, %tmp__ZN17VelocitySmoothing10updateTrajEff35
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1618, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1619, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1620, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1621, i32 0, i32 0))
  store float %sub16__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1622, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1623, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing10updateTrajEff37 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1625, i32 0, i32 0))
  %cmp17__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff37, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1626, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1627, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1628, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1629, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1630, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp17__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1631, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1632, i32 0, i32 0))
  br i1 %cmp17__ZN17VelocitySmoothing10updateTrajEff, label %if.then18, label %if.end33

if.then18:                                        ; preds = %if.end
  %tmp__ZN17VelocitySmoothing10updateTrajEff38 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1634, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 9
  %tmp__ZN17VelocitySmoothing10updateTrajEff39 = load float, float* %_T3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1636, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1637, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1638, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1639, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1640, i32 0, i32 0))
  %call19__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff38, float %tmp__ZN17VelocitySmoothing10updateTrajEff39)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1641, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1642, i32 0, i32 0))
  store float %call19__ZN17VelocitySmoothing10updateTrajEff, float* %t3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1643, i32 0, i32 0))
  %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff40 = load float, float* %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1645, i32 0, i32 0))
  %_state22__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %a23__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state22__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff41 = load float, float* %a23__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a23__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1647, i32 0, i32 0))
  %_state24__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v25__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state24__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff42 = load float, float* %v25__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v25__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1649, i32 0, i32 0))
  %_state26__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x27__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state26__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff43 = load float, float* %x27__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x27__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1651, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff44 = load float, float* %t3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1653, i32 0, i32 0))
  %_direction28__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing10updateTrajEff45 = load i32, i32* %_direction28__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_i32(i32* %_direction28__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1655, i32 0, i32 0))
  %sub29__ZN17VelocitySmoothing10updateTrajEff = sub nsw i32 0, %tmp__ZN17VelocitySmoothing10updateTrajEff45
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1656, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1657, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1658, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1659, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1660, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1661, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1662, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1663, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1664, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1665, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1666, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1667, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1668, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1669, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1670, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1671, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1672, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1673, i32 0, i32 0))
  %call30__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float %tmp__ZN17VelocitySmoothing10updateTrajEff40, float %tmp__ZN17VelocitySmoothing10updateTrajEff41, float %tmp__ZN17VelocitySmoothing10updateTrajEff42, float %tmp__ZN17VelocitySmoothing10updateTrajEff43, float %tmp__ZN17VelocitySmoothing10updateTrajEff44, i32 %sub29__ZN17VelocitySmoothing10updateTrajEff)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1674, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1675, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff46 = bitcast %struct.Trajectory* %ref.tmp20__ZN17VelocitySmoothing10updateTrajEff to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing10updateTrajEff47 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff46, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing10updateTrajEff48 = extractvalue { <2 x float>, <2 x float> } %call30__ZN17VelocitySmoothing10updateTrajEff, 0
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff48, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff47, align 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff49 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff46, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff50 = extractvalue { <2 x float>, <2 x float> } %call30__ZN17VelocitySmoothing10updateTrajEff, 1
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff50, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff49, align 4
  %_state31__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff51 = bitcast %struct.Trajectory* %_state31__ZN17VelocitySmoothing10updateTrajEff to i8*
  %tmp__ZN17VelocitySmoothing10updateTrajEff52 = bitcast %struct.Trajectory* %ref.tmp20__ZN17VelocitySmoothing10updateTrajEff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff51, i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff52, i64 16, i1 false)
  %tmp__ZN17VelocitySmoothing10updateTrajEff53 = load float, float* %t3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1686, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff54 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1688, i32 0, i32 0))
  %sub32__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff54, %tmp__ZN17VelocitySmoothing10updateTrajEff53
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1689, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1690, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1691, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1692, i32 0, i32 0))
  store float %sub32__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1693, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1694, i32 0, i32 0))
  br label %if.end33

if.end33:                                         ; preds = %if.then18, %if.end
  %tmp__ZN17VelocitySmoothing10updateTrajEff55 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1696, i32 0, i32 0))
  %cmp34__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff55, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1697, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1698, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1699, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1700, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1701, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp34__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1702, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1703, i32 0, i32 0))
  br i1 %cmp34__ZN17VelocitySmoothing10updateTrajEff, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end33
  %_state37__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v38__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state37__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff56 = load float, float* %v38__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v38__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1705, i32 0, i32 0))
  %_state39__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x40__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state39__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff57 = load float, float* %x40__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x40__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1707, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff58 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1709, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1710, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1711, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1712, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1713, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1714, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1715, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1716, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1717, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1718, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1719, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1720, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1721, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1722, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1723, i32 0, i32 0))
  %call41__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float 0.000000e+00, float 0.000000e+00, float %tmp__ZN17VelocitySmoothing10updateTrajEff56, float %tmp__ZN17VelocitySmoothing10updateTrajEff57, float %tmp__ZN17VelocitySmoothing10updateTrajEff58, i32 0)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1724, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1725, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff59 = bitcast %struct.Trajectory* %ref.tmp36__ZN17VelocitySmoothing10updateTrajEff to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing10updateTrajEff60 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff59, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing10updateTrajEff61 = extractvalue { <2 x float>, <2 x float> } %call41__ZN17VelocitySmoothing10updateTrajEff, 0
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff61, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff60, align 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff62 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing10updateTrajEff59, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff63 = extractvalue { <2 x float>, <2 x float> } %call41__ZN17VelocitySmoothing10updateTrajEff, 1
  store <2 x float> %tmp__ZN17VelocitySmoothing10updateTrajEff63, <2 x float>* %tmp__ZN17VelocitySmoothing10updateTrajEff62, align 4
  %_state42__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %tmp__ZN17VelocitySmoothing10updateTrajEff64 = bitcast %struct.Trajectory* %_state42__ZN17VelocitySmoothing10updateTrajEff to i8*
  %tmp__ZN17VelocitySmoothing10updateTrajEff65 = bitcast %struct.Trajectory* %ref.tmp36__ZN17VelocitySmoothing10updateTrajEff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff64, i8* align 4 %tmp__ZN17VelocitySmoothing10updateTrajEff65, i64 16, i1 false)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1735, i32 0, i32 0))
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end33
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1736, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3minIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1737, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1738, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1739, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1740, i32 0, i32 0))
  %a.addr__ZN4math3minIfEET_S1_S1_ = alloca float, align 4
  %b.addr__ZN4math3minIfEET_S1_S1_ = alloca float, align 4
  store float %a, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1741, i32 0, i32 0))
  store float %b, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1742, i32 0, i32 0))
  %tmp__ZN4math3minIfEET_S1_S1_ = load float, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1744, i32 0, i32 0))
  %tmp__ZN4math3minIfEET_S1_S1_1 = load float, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1746, i32 0, i32 0))
  %cmp__ZN4math3minIfEET_S1_S1_ = fcmp olt float %tmp__ZN4math3minIfEET_S1_S1_, %tmp__ZN4math3minIfEET_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1747, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1748, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1749, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1750, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1751, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1752, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1753, i32 0, i32 0))
  br i1 %cmp__ZN4math3minIfEET_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math3minIfEET_S1_S1_2 = load float, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1755, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1756, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math3minIfEET_S1_S1_3 = load float, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1758, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1759, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math3minIfEET_S1_S1_ = phi float [ %tmp__ZN4math3minIfEET_S1_S1_2, %cond.true ], [ %tmp__ZN4math3minIfEET_S1_S1_3, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1760, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @1761, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1762, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1763, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1764, i32 0, i32 0))
  ret float %cond__ZN4math3minIfEET_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1765, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1766, i32 0, i32 0))
  %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %trajectory, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %_max_accel__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing, i32 0, i32 2
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1 = bitcast float* %_max_accel__Z24make_trajectory_symbolicP17VelocitySmoothing to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1770, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1771, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1772, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1773, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1774, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1775, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1776, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1777, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1778, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1779, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1780, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1781, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1782, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1783, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1784, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1785, i32 0, i32 0))
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %_state__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2, i32 0, i32 4
  %a__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__Z24make_trajectory_symbolicP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3 = bitcast float* %a__Z24make_trajectory_symbolicP17VelocitySmoothing to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1788, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1789, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1790, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1791, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1792, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1793, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1794, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1795, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1796, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1797, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1798, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1799, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1800, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1801, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1802, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1803, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1804, i32 0, i32 0))
  ret void
}

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #3

; Function Attrs: noinline optnone ssp uwtable
define void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1805, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1806, i32 0, i32 0))
  %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_max_accel__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 2
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing1 = bitcast float* %_max_accel__Z22stg_initial_trajectoryP17VelocitySmoothing to i8*
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2, i32 0, i32 2
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3 = load float, float* %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing, align 4
  call void @stg_update_load_float(float* %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1813, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing1, float %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3)
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_state__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4, i32 0, i32 4
  %a__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing5 = bitcast float* %a__Z22stg_initial_trajectoryP17VelocitySmoothing to i8*
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_state2__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6, i32 0, i32 4
  %a3__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7 = load float, float* %a3__Z22stg_initial_trajectoryP17VelocitySmoothing, align 4
  call void @stg_update_load_float(float* %a3__Z22stg_initial_trajectoryP17VelocitySmoothing, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1819, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing5, float %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1820, i32 0, i32 0))
  ret void
}

declare void @stg_input_float(i8*, float) #3

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1821, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1822, i32 0, i32 0))
  %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing = alloca i8, align 1
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_pause_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1824, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1825, i32 0, i32 0))
  store i8 1, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1826, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1829, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1830, i32 0, i32 0))
  %call__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing)
  call void @stg_update_char(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1831, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1832, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1835, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1836, i32 0, i32 0))
  %call1__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @1837, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1838, i32 0, i32 0))
  %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing = fcmp ogt float %call__Z27check_kinematic_constraintsP17VelocitySmoothing, %call1__Z27check_kinematic_constraintsP17VelocitySmoothing
  call void @stg_update_cmp(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1839, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1840, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1841, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @1842, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1843, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1844, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1845, i32 0, i32 0))
  br i1 %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1846, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1847, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_resume_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1848, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1849, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2 = load i8, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_load_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1851, i32 0, i32 0))
  %tobool__Z27check_kinematic_constraintsP17VelocitySmoothing = trunc i8 %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1852, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1853, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1854, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1855, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1856, i32 0, i32 0), i8 %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2)
  call void @stg_update_char(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1857, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1858, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1859, i32 0, i32 0))
  ret i1 %tobool__Z27check_kinematic_constraintsP17VelocitySmoothing
}

declare void @stg_pause_recording() #3

declare void @stg_resume_recording() #3

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z23test_initial_conditionsv() #0 {
entry:
  %trajectory__Z23test_initial_conditionsv = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z23test_initial_conditionsv = alloca float, align 4
  %result__Z23test_initial_conditionsv = alloca i8, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1860, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1861, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1862, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1863, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1864, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1865, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1866, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1867, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1868, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1869, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_store_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1870, i32 0, i32 0))
  %tmp__Z23test_initial_conditionsv = bitcast float* %acceleration__Z23test_initial_conditionsv to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1871, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1872, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1873, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1874, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1875, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1876, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1877, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1878, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1879, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1880, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1881, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1882, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1883, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1884, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z23test_initial_conditionsv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1885, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1886, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z23test_initial_conditionsv1 = bitcast float* %acceleration__Z23test_initial_conditionsv to i8*
  %tmp__Z23test_initial_conditionsv2 = load float, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_load_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1888, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z23test_initial_conditionsv1, float %tmp__Z23test_initial_conditionsv2)
  %tmp__Z23test_initial_conditionsv3 = load float, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_load_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1890, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1891, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1892, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1893, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1894, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv, float %tmp__Z23test_initial_conditionsv3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1895, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1896, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1897, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1898, i32 0, i32 0))
  %call__Z23test_initial_conditionsv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1899, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1900, i32 0, i32 0))
  store i8 1, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1901, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1902, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1903, i32 0, i32 0))
  %call1__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1904, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1905, i32 0, i32 0))
  %conv__Z23test_initial_conditionsv = fpext float %call1__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1906, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1907, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1908, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1909, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1910, i32 0, i32 0), float %call1__Z23test_initial_conditionsv)
  %cmp__Z23test_initial_conditionsv = fcmp une double %conv__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1911, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1912, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1913, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1914, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1915, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z23test_initial_conditionsv, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1916, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1917, i32 0, i32 0))
  br i1 %cmp__Z23test_initial_conditionsv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1918, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1919, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1920, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1921, i32 0, i32 0))
  %call2__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1922, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1923, i32 0, i32 0))
  %conv3__Z23test_initial_conditionsv = fpext float %call2__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1924, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1925, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1926, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1927, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1928, i32 0, i32 0), float %call2__Z23test_initial_conditionsv)
  %cmp4__Z23test_initial_conditionsv = fcmp une double %conv3__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1929, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1930, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1931, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1932, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1933, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1934, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1935, i32 0, i32 0))
  br i1 %cmp4__Z23test_initial_conditionsv, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1936, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1937, i32 0, i32 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1938, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1939, i32 0, i32 0))
  %call7__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1940, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1941, i32 0, i32 0))
  %conv8__Z23test_initial_conditionsv = fpext float %call7__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1942, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1943, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1944, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1945, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1946, i32 0, i32 0), float %call7__Z23test_initial_conditionsv)
  %cmp9__Z23test_initial_conditionsv = fcmp une double %conv8__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1947, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1948, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1949, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1950, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1951, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp9__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1952, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1953, i32 0, i32 0))
  br i1 %cmp9__Z23test_initial_conditionsv, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1954, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1955, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1956, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1957, i32 0, i32 0))
  %call12__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1958, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1959, i32 0, i32 0))
  %conv13__Z23test_initial_conditionsv = fpext float %call12__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1960, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1961, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1962, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1963, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1964, i32 0, i32 0), float %call12__Z23test_initial_conditionsv)
  %cmp14__Z23test_initial_conditionsv = fcmp une double %conv13__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1965, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1966, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1967, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1968, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1969, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp14__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1970, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1971, i32 0, i32 0))
  br i1 %cmp14__Z23test_initial_conditionsv, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1972, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1973, i32 0, i32 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1974, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1975, i32 0, i32 0))
  %call17__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1976, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1977, i32 0, i32 0))
  %conv18__Z23test_initial_conditionsv = fpext float %call17__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1978, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1979, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1980, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1981, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1982, i32 0, i32 0), float %call17__Z23test_initial_conditionsv)
  %cmp19__Z23test_initial_conditionsv = fcmp une double %conv18__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1983, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1984, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1985, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1986, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1987, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp19__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1988, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1989, i32 0, i32 0))
  br i1 %cmp19__Z23test_initial_conditionsv, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1990, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1991, i32 0, i32 0))
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1992, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1993, i32 0, i32 0))
  %call22__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1994, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1995, i32 0, i32 0))
  %conv23__Z23test_initial_conditionsv = fpext float %call22__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1996, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @1997, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1998, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1999, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2000, i32 0, i32 0), float %call22__Z23test_initial_conditionsv)
  %cmp24__Z23test_initial_conditionsv = fcmp une double %conv23__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2001, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2002, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2003, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2004, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2005, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp24__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2006, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2007, i32 0, i32 0))
  br i1 %cmp24__Z23test_initial_conditionsv, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2008, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2009, i32 0, i32 0))
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2010, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2011, i32 0, i32 0))
  %call27__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2012, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2013, i32 0, i32 0))
  %conv28__Z23test_initial_conditionsv = fpext float %call27__Z23test_initial_conditionsv to double
  call void @stg_update_cast_float(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2014, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2015, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2016, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2017, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2018, i32 0, i32 0), float %call27__Z23test_initial_conditionsv)
  %cmp29__Z23test_initial_conditionsv = fcmp une double %conv28__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2019, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2020, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2021, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2022, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2023, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp29__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2024, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2025, i32 0, i32 0))
  br i1 %cmp29__Z23test_initial_conditionsv, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2026, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2027, i32 0, i32 0))
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2028, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2029, i32 0, i32 0))
  %call32__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2030, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2031, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2032, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2033, i32 0, i32 0))
  %call33__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2034, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2035, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2036, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2037, i32 0, i32 0))
  %call34__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2038, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2039, i32 0, i32 0))
  %add__Z23test_initial_conditionsv = fadd float %call33__Z23test_initial_conditionsv, %call34__Z23test_initial_conditionsv
  call void @stg_update_op(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2040, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2041, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2042, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2043, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2044, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2045, i32 0, i32 0))
  %call35__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2046, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2047, i32 0, i32 0))
  %add36__Z23test_initial_conditionsv = fadd float %add__Z23test_initial_conditionsv, %call35__Z23test_initial_conditionsv
  call void @stg_update_op(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2048, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2049, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2050, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2051, i32 0, i32 0))
  %cmp37__Z23test_initial_conditionsv = fcmp une float %call32__Z23test_initial_conditionsv, %add36__Z23test_initial_conditionsv
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2052, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2053, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2054, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2055, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2056, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp37__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2057, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2058, i32 0, i32 0))
  br i1 %cmp37__Z23test_initial_conditionsv, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end31
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2059, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2060, i32 0, i32 0))
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end31
  call void @stg_end_test()
  %tmp__Z23test_initial_conditionsv4 = load i8, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_load_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2062, i32 0, i32 0))
  %tobool__Z23test_initial_conditionsv = trunc i8 %tmp__Z23test_initial_conditionsv4 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2063, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2064, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2065, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2066, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2067, i32 0, i32 0), i8 %tmp__Z23test_initial_conditionsv4)
  call void @stg_record_test(i1 zeroext %tobool__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2068, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2069, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2070, i32 0, i32 0))
  ret i32 1
}

declare void @stg_begin_test() #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_getter_setterv() #0 {
entry:
  %trajectory__Z18test_getter_setterv = alloca %class.VelocitySmoothing, align 4
  %maxAcceleration__Z18test_getter_setterv = alloca float, align 4
  %oracle__Z18test_getter_setterv = alloca i8, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2071, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2072, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2073, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2074, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2075, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2076, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2077, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2078, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2079, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2080, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2081, i32 0, i32 0))
  %tmp__Z18test_getter_setterv = bitcast float* %maxAcceleration__Z18test_getter_setterv to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2082, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2083, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2084, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2085, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2086, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2087, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2088, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2089, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2090, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2091, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2092, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2093, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2094, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2095, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z18test_getter_setterv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2096, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2097, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z18test_getter_setterv1 = bitcast float* %maxAcceleration__Z18test_getter_setterv to i8*
  %tmp__Z18test_getter_setterv2 = load float, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2099, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_getter_setterv1, float %tmp__Z18test_getter_setterv2)
  %tmp__Z18test_getter_setterv3 = load float, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2101, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2102, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2103, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2104, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2105, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float %tmp__Z18test_getter_setterv3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2106, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2107, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2108, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2109, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2110, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2111, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2112, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2113, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2114, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2115, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2116, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2117, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2118, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2119, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2120, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2121, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2122, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2123, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2124, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2125, i32 0, i32 0))
  store i8 1, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2126, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2127, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2128, i32 0, i32 0))
  %call__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2129, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2130, i32 0, i32 0))
  %cmp__Z18test_getter_setterv = fcmp une float %call__Z18test_getter_setterv, 0x404B9999A0000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2131, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2133, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2134, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2135, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z18test_getter_setterv, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2136, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2137, i32 0, i32 0))
  br i1 %cmp__Z18test_getter_setterv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2138, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2139, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2140, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2141, i32 0, i32 0))
  %call1__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2142, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2143, i32 0, i32 0))
  %cmp2__Z18test_getter_setterv = fcmp une float %call1__Z18test_getter_setterv, 6.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2144, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2145, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2146, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2148, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2149, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2150, i32 0, i32 0))
  br i1 %cmp2__Z18test_getter_setterv, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2151, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2152, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2153, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2154, i32 0, i32 0))
  %call5__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2155, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2156, i32 0, i32 0))
  %cmp6__Z18test_getter_setterv = fcmp une float %call5__Z18test_getter_setterv, 6.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2157, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2158, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2159, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2161, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp6__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2162, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2163, i32 0, i32 0))
  br i1 %cmp6__Z18test_getter_setterv, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2164, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2165, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2166, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2167, i32 0, i32 0))
  %call9__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2168, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2169, i32 0, i32 0))
  %cmp10__Z18test_getter_setterv = fcmp une float %call9__Z18test_getter_setterv, 1.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2170, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2171, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2172, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2173, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2174, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp10__Z18test_getter_setterv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2175, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2176, i32 0, i32 0))
  br i1 %cmp10__Z18test_getter_setterv, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2177, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2178, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  call void @stg_end_test()
  %tmp__Z18test_getter_setterv4 = load i8, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2180, i32 0, i32 0))
  %tobool__Z18test_getter_setterv = trunc i8 %tmp__Z18test_getter_setterv4 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2181, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2182, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2183, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2185, i32 0, i32 0), i8 %tmp__Z18test_getter_setterv4)
  call void @stg_record_test(i1 zeroext %tobool__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2186, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2187, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2188, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z17test_T1_edge_casev() #0 {
entry:
  %trajectory__Z17test_T1_edge_casev = alloca %class.VelocitySmoothing, align 4
  %T1__Z17test_T1_edge_casev = alloca float, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2189, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2190, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2191, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2192, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2194, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2195, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2196, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z17test_T1_edge_casev, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2197, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2198, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2199, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2200, i32 0, i32 0))
  call void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z17test_T1_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2201, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2202, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2203, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2204, i32 0, i32 0))
  call void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z17test_T1_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2205, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @2206, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2207, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2208, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2209, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2210, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2211, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2212, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2213, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2214, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2215, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2216, i32 0, i32 0))
  %call__Z17test_T1_edge_casev = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %trajectory__Z17test_T1_edge_casev, float 0x3FF19999A0000000, float 0x3FF3333340000000, float -1.000000e+00, float 5.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2217, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2218, i32 0, i32 0))
  store float %call__Z17test_T1_edge_casev, float* %T1__Z17test_T1_edge_casev, align 4
  call void @stg_update_store_float(float* %T1__Z17test_T1_edge_casev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2219, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2220, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2221, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2222, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_edge_casev() #0 {
entry:
  %retval__Z14test_edge_casev = alloca i32, align 4
  %trajectory__Z14test_edge_casev = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z14test_edge_casev = alloca float, align 4
  %maxAcceleration__Z14test_edge_casev = alloca float, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2223, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2224, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2225, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2226, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2227, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2228, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2229, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2230, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2231, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2232, i32 0, i32 0))
  store float 0x3E80000000000000, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_store_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2233, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2234, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2235, i32 0, i32 0))
  %call__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2236, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2237, i32 0, i32 0))
  store float %call__Z14test_edge_casev, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2238, i32 0, i32 0))
  %tmp__Z14test_edge_casev = bitcast float* %acceleration__Z14test_edge_casev to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2239, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2240, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2241, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2242, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2243, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2244, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2245, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2246, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2247, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2248, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2249, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2250, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2251, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2252, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z14test_edge_casev, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2253, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2254, i32 0, i32 0))
  %tmp__Z14test_edge_casev1 = bitcast float* %maxAcceleration__Z14test_edge_casev to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2255, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2256, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2257, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2258, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2259, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2260, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2261, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2262, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2263, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2264, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2265, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2266, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2267, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2268, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z14test_edge_casev1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2269, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2270, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z14test_edge_casev2 = bitcast float* %acceleration__Z14test_edge_casev to i8*
  %tmp__Z14test_edge_casev3 = load float, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2272, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_edge_casev2, float %tmp__Z14test_edge_casev3)
  %tmp__Z14test_edge_casev4 = bitcast float* %maxAcceleration__Z14test_edge_casev to i8*
  %tmp__Z14test_edge_casev5 = load float, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2274, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_edge_casev4, float %tmp__Z14test_edge_casev5)
  %tmp__Z14test_edge_casev6 = load float, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2276, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2277, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2278, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2279, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2280, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float %tmp__Z14test_edge_casev6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2281, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2282, i32 0, i32 0))
  %tmp__Z14test_edge_casev7 = load float, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2284, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2285, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2286, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2287, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2288, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float %tmp__Z14test_edge_casev7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2289, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2290, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2291, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2292, i32 0, i32 0))
  %call1__Z14test_edge_casev = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2293, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2294, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2295, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2296, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2297, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2298, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float 0x3E80000000000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2299, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2300, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2301, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2302, i32 0, i32 0))
  %call2__Z14test_edge_casev = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2303, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2304, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2305, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2306, i32 0, i32 0))
  %call3__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2307, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2308, i32 0, i32 0))
  %cmp__Z14test_edge_casev = fcmp une float %call3__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2309, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2310, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2311, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2312, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2313, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z14test_edge_casev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2314, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2315, i32 0, i32 0))
  br i1 %cmp__Z14test_edge_casev, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2316, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2317, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2318, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2319, i32 0, i32 0))
  %call4__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2320, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2321, i32 0, i32 0))
  %cmp5__Z14test_edge_casev = fcmp une float %call4__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2322, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2323, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2324, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2325, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2326, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp5__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2327, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2328, i32 0, i32 0))
  br i1 %cmp5__Z14test_edge_casev, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2329, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2330, i32 0, i32 0))
  br label %return

if.end7:                                          ; preds = %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2331, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2332, i32 0, i32 0))
  %call8__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2333, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2334, i32 0, i32 0))
  %cmp9__Z14test_edge_casev = fcmp une float %call8__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2335, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2336, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2337, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2338, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2339, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp9__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2340, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2341, i32 0, i32 0))
  br i1 %cmp9__Z14test_edge_casev, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2342, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2343, i32 0, i32 0))
  br label %return

if.end11:                                         ; preds = %if.end7
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store i32 1, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2344, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2345, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then6, %if.then
  %tmp__Z14test_edge_casev8 = load i32, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_load_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2347, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2348, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2349, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2350, i32 0, i32 0))
  ret i32 %tmp__Z14test_edge_casev8
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z10test_velspf(float %velsp) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2351, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2352, i32 0, i32 0))
  %velsp.addr__Z10test_velspf = alloca float, align 4
  %trajectory__Z10test_velspf = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z10test_velspf = alloca float, align 4
  %maxAcceleration__Z10test_velspf = alloca float, align 4
  %dt__Z10test_velspf = alloca float, align 4
  %nb_steps__Z10test_velspf = alloca i32, align 4
  %i__Z10test_velspf = alloca i32, align 4
  store float %velsp, float* %velsp.addr__Z10test_velspf, align 4
  call void @stg_update_store_float(float* %velsp.addr__Z10test_velspf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2353, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2354, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2355, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2356, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2357, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2358, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2359, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2360, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2361, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2362, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2363, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z10test_velspf, align 4
  call void @stg_update_store_float(float* %acceleration__Z10test_velspf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2364, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z10test_velspf, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z10test_velspf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2365, i32 0, i32 0))
  %tmp__Z10test_velspf = bitcast float* %acceleration__Z10test_velspf to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2366, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2367, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2368, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2369, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2370, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2371, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2372, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2373, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2374, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2375, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2376, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2377, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2378, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2379, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z10test_velspf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2380, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2381, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2382, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2383, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2384, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2385, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2386, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2387, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2388, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2389, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2390, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2391, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2392, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2393, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2394, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2395, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2396, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2397, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2398, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2399, i32 0, i32 0))
  %tmp__Z10test_velspf1 = load float, float* %maxAcceleration__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2401, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2402, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2403, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2404, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2405, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf1)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2406, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2407, i32 0, i32 0))
  %tmp__Z10test_velspf2 = load float, float* %acceleration__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %acceleration__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2409, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2410, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2411, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2412, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2413, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2414, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2415, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2416, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2417, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2418, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2419, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2420, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2421, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 0.000000e+00, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2422, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2423, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z10test_velspf3 = bitcast float* %acceleration__Z10test_velspf to i8*
  %tmp__Z10test_velspf4 = load float, float* %acceleration__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %acceleration__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2425, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z10test_velspf3, float %tmp__Z10test_velspf4)
  %tmp__Z10test_velspf5 = load float, float* %velsp.addr__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %velsp.addr__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2427, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2428, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2429, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2430, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2431, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf5)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2432, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2433, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2434, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2435, i32 0, i32 0))
  %call__Z10test_velspf = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z10test_velspf)
  call void @stg_update_char(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2436, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2437, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store float 0x3FB99999A0000000, float* %dt__Z10test_velspf, align 4
  call void @stg_update_store_float(float* %dt__Z10test_velspf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2438, i32 0, i32 0))
  store i32 3, i32* %nb_steps__Z10test_velspf, align 4
  call void @stg_update_store_i32(i32* %nb_steps__Z10test_velspf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2439, i32 0, i32 0))
  store i32 0, i32* %i__Z10test_velspf, align 4
  call void @stg_update_store_i32(i32* %i__Z10test_velspf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2440, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2441, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z10test_velspf6 = load i32, i32* %i__Z10test_velspf, align 4
  call void @stg_update_load_i32(i32* %i__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2443, i32 0, i32 0))
  %tmp__Z10test_velspf7 = load i32, i32* %nb_steps__Z10test_velspf, align 4
  call void @stg_update_load_i32(i32* %nb_steps__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2445, i32 0, i32 0))
  %cmp__Z10test_velspf = icmp slt i32 %tmp__Z10test_velspf6, %tmp__Z10test_velspf7
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2446, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2447, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2448, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2449, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2450, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z10test_velspf, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2451, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2452, i32 0, i32 0))
  br i1 %cmp__Z10test_velspf, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2453, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2454, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2455, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2456, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2457, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2458, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float 0x3FB99999A0000000, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2459, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2460, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z10test_velspf8 = bitcast float* %acceleration__Z10test_velspf to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2461, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2462, i32 0, i32 0))
  %call1__Z10test_velspf = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory__Z10test_velspf)
  call void @stg_update_char(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2463, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2464, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z10test_velspf8, float %call1__Z10test_velspf)
  %tmp__Z10test_velspf9 = load float, float* %maxAcceleration__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z10test_velspf, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2466, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2467, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2468, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2469, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2470, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf9)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2471, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2472, i32 0, i32 0))
  %tmp__Z10test_velspf10 = load float, float* %acceleration__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %acceleration__Z10test_velspf, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2474, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2475, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2476, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2477, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2478, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf10)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2479, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2480, i32 0, i32 0))
  %tmp__Z10test_velspf11 = load float, float* %velsp.addr__Z10test_velspf, align 4
  call void @stg_update_load_float(float* %velsp.addr__Z10test_velspf, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2482, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2483, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2484, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2485, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2486, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z10test_velspf, float %tmp__Z10test_velspf11)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2487, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2488, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2489, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2490, i32 0, i32 0))
  %call2__Z10test_velspf = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z10test_velspf)
  call void @stg_update_char(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2491, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2492, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2493, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__Z10test_velspf12 = load i32, i32* %i__Z10test_velspf, align 4
  call void @stg_update_load_i32(i32* %i__Z10test_velspf, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2495, i32 0, i32 0))
  %inc__Z10test_velspf = add nsw i32 %tmp__Z10test_velspf12, 1
  call void @stg_update_op(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2496, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2497, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2498, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2499, i32 0, i32 0))
  store i32 %inc__Z10test_velspf, i32* %i__Z10test_velspf, align 4
  call void @stg_update_store_i32(i32* %i__Z10test_velspf, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2500, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2501, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_update_char(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2502, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2503, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2504, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_t1_saturationf(float %t1) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2505, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2506, i32 0, i32 0))
  %t1.addr__Z18test_t1_saturationf = alloca float, align 4
  %trajectory__Z18test_t1_saturationf = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z18test_t1_saturationf = alloca float, align 4
  %maxAcceleration__Z18test_t1_saturationf = alloca float, align 4
  store float %t1, float* %t1.addr__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %t1.addr__Z18test_t1_saturationf, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2507, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2508, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2509, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2510, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2511, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2512, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2513, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2514, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2515, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2516, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2517, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2518, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2519, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf = bitcast float* %acceleration__Z18test_t1_saturationf to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2520, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2521, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2522, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2523, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2524, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2525, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2526, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2527, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2528, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2529, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2530, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2531, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2532, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2533, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z18test_t1_saturationf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2534, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2535, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf1 = bitcast float* %maxAcceleration__Z18test_t1_saturationf to i8*
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2536, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2537, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2538, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2539, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2540, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2541, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2542, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2543, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2544, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2545, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2546, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2547, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2548, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2549, i32 0, i32 0))
  call void @stg_symbolic_variable(i8* %tmp__Z18test_t1_saturationf1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2550, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2551, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z18test_t1_saturationf2 = bitcast float* %acceleration__Z18test_t1_saturationf to i8*
  %tmp__Z18test_t1_saturationf3 = load float, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2553, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_t1_saturationf2, float %tmp__Z18test_t1_saturationf3)
  %tmp__Z18test_t1_saturationf4 = bitcast float* %maxAcceleration__Z18test_t1_saturationf to i8*
  %tmp__Z18test_t1_saturationf5 = load float, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2555, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_t1_saturationf4, float %tmp__Z18test_t1_saturationf5)
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2556, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2557, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2558, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2559, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2560, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2561, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2562, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2563, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2564, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2565, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2566, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2567, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2568, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2569, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2570, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2571, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2572, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2573, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf6 = load float, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2575, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2576, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2577, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2578, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2579, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2580, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2581, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf7 = load float, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2583, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2584, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2585, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2586, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2587, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2588, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2589, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2590, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2591, i32 0, i32 0))
  %call__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2592, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2593, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2594, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2595, i32 0, i32 0))
  %call1__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2596, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2597, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf8 = load float, float* %t1.addr__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %t1.addr__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2599, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2600, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2601, i32 0, i32 0))
  %call2__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2602, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2603, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2604, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2605, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2606, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2607, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2608, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2609, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2610, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2611, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2612, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2613, i32 0, i32 0))
  %call3__Z18test_t1_saturationf = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %call__Z18test_t1_saturationf, float %call1__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf8, float %call2__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2614, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2615, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2616, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2617, i32 0, i32 0))
  %call4__Z18test_t1_saturationf = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2618, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2619, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2620, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2621, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2622, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #5 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2623, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2624, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2625, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2626, i32 0, i32 0))
  %retval_main = alloca i32, align 4
  %argc.addr_main = alloca i32, align 4
  %argv.addr_main = alloca i8**, align 8
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2627, i32 0, i32 0))
  store i32 %argc, i32* %argc.addr_main, align 4
  call void @stg_update_store_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2628, i32 0, i32 0))
  store i8** %argv, i8*** %argv.addr_main, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2630, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2631, i32 0, i32 0))
  %call_main = call i32 @_Z10test_velspf(float -1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2632, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2633, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2634, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2635, i32 0, i32 0))
  %call1_main = call i32 @_Z10test_velspf(float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2636, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2637, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2638, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2639, i32 0, i32 0))
  %call2_main = call i32 @_Z10test_velspf(float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2640, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2641, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2642, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2643, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2644, i32 0, i32 0))
  ret i32 0
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

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
