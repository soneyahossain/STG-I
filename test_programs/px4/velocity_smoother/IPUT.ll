; ModuleID = 'IPUT.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%class.VelocitySmoothing = type { float, float, float, float, %struct.Trajectory, i32, %struct.Trajectory, float, float, float, float }
%struct.Trajectory = type { float, float, float, float }

@.str = private unnamed_addr constant [4 x i8] c"M_A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"test_velsp_neg(): total time = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"test_velsp_zero(): total time = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"test_velsp_pos(): total time = %f\0A\00", align 1
@__const._Z20test_trajectory_syncv.velocity_setpoint = private unnamed_addr constant [2 x float] [float 1.000000e+00, float 0.000000e+00], align 4
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@3 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@4 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@5 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@6 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@7 = private unnamed_addr constant [18 x i8] c"(float 22.000000)\00", align 1
@8 = private unnamed_addr constant [17 x i8] c"(float 8.000000)\00", align 1
@9 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@10 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@11 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@12 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@13 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@15 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@16 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@17 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@18 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@19 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@20 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@21 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@22 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@23 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@24 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@25 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@26 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@27 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@28 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@29 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@30 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC2Efff\00", align 1
@31 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@32 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC2Efff\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@34 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff1\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@36 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC2Efff2\00", align 1
@37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@38 = private unnamed_addr constant [37 x i8] c"_ZN17VelocitySmoothing5resetEfff_RET\00", align 1
@39 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@40 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@41 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@42 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@43 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@44 = private unnamed_addr constant [39 x i8] c"this1__ZN17VelocitySmoothing5resetEfff\00", align 1
@45 = private unnamed_addr constant [39 x i8] c"this1__ZN17VelocitySmoothing5resetEfff\00", align 1
@46 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@47 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@48 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@49 = private unnamed_addr constant [37 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff\00", align 1
@50 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@51 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@52 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff1\00", align 1
@53 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@54 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@55 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff2\00", align 1
@56 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff3\00", align 1
@57 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff4\00", align 1
@58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@59 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff3\00", align 1
@60 = private unnamed_addr constant [38 x i8] c"tmp__ZN17VelocitySmoothing5resetEfff4\00", align 1
@61 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@62 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@63 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@64 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@65 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@66 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@67 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@68 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@69 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@70 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@71 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@72 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@73 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@74 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@75 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@76 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@77 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@78 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@79 = private unnamed_addr constant [35 x i8] c"this1__ZN17VelocitySmoothingC1Efff\00", align 1
@80 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@81 = private unnamed_addr constant [33 x i8] c"tmp__ZN17VelocitySmoothingC1Efff\00", align 1
@82 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@83 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff1\00", align 1
@84 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@85 = private unnamed_addr constant [34 x i8] c"tmp__ZN17VelocitySmoothingC1Efff2\00", align 1
@86 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@87 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC2Efff_RET\00", align 1
@88 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@89 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@90 = private unnamed_addr constant [44 x i8] c"this1__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@91 = private unnamed_addr constant [44 x i8] c"this1__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@92 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@93 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@94 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@95 = private unnamed_addr constant [42 x i8] c"tmp__ZNK17VelocitySmoothing10getMaxJerkEv\00", align 1
@96 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@97 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@98 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@99 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@100 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@101 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@102 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@103 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing10setMaxJerkEf\00", align 1
@104 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@105 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@106 = private unnamed_addr constant [45 x i8] c"this1__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@107 = private unnamed_addr constant [45 x i8] c"this1__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@108 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@109 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@110 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@111 = private unnamed_addr constant [43 x i8] c"tmp__ZNK17VelocitySmoothing11getMaxAccelEv\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@113 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@114 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@115 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@116 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@117 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@118 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@119 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing11setMaxAccelEf\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@121 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@122 = private unnamed_addr constant [42 x i8] c"this1__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@123 = private unnamed_addr constant [42 x i8] c"this1__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@124 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@125 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@126 = private unnamed_addr constant [40 x i8] c"_ZNK17VelocitySmoothing9getMaxVelEv_RET\00", align 1
@127 = private unnamed_addr constant [40 x i8] c"tmp__ZNK17VelocitySmoothing9getMaxVelEv\00", align 1
@128 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@129 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@130 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@131 = private unnamed_addr constant [41 x i8] c"this1__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@132 = private unnamed_addr constant [41 x i8] c"this1__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@133 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@134 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@135 = private unnamed_addr constant [39 x i8] c"tmp__ZN17VelocitySmoothing9setMaxVelEf\00", align 1
@136 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@137 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@138 = private unnamed_addr constant [48 x i8] c"this1__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@139 = private unnamed_addr constant [48 x i8] c"this1__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@140 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@141 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@142 = private unnamed_addr constant [46 x i8] c"_ZNK17VelocitySmoothing14getCurrentJerkEv_RET\00", align 1
@143 = private unnamed_addr constant [46 x i8] c"tmp__ZNK17VelocitySmoothing14getCurrentJerkEv\00", align 1
@144 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@145 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@147 = private unnamed_addr constant [55 x i8] c"this1__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@148 = private unnamed_addr constant [55 x i8] c"this1__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@149 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@150 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@151 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@152 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf\00", align 1
@153 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@154 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@155 = private unnamed_addr constant [56 x i8] c"this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@156 = private unnamed_addr constant [56 x i8] c"this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@157 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@158 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@159 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@160 = private unnamed_addr constant [54 x i8] c"tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv\00", align 1
@161 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@162 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@163 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@164 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@165 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@166 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@167 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@168 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@169 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentVelocityEf\00", align 1
@170 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@171 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@172 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@173 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@174 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@175 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@176 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentVelocityEv_RET\00", align 1
@177 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv\00", align 1
@178 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@179 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@180 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@181 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@182 = private unnamed_addr constant [51 x i8] c"this1__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@183 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@184 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@185 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@186 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing18setCurrentPositionEf\00", align 1
@187 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@188 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@189 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@190 = private unnamed_addr constant [52 x i8] c"this1__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@191 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@192 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@193 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentPositionEv_RET\00", align 1
@194 = private unnamed_addr constant [50 x i8] c"tmp__ZNK17VelocitySmoothing18getCurrentPositionEv\00", align 1
@195 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@196 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@197 = private unnamed_addr constant [41 x i8] c"this1__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@198 = private unnamed_addr constant [41 x i8] c"this1__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@199 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@200 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@201 = private unnamed_addr constant [39 x i8] c"_ZNK17VelocitySmoothing8getVelSpEv_RET\00", align 1
@202 = private unnamed_addr constant [39 x i8] c"tmp__ZNK17VelocitySmoothing8getVelSpEv\00", align 1
@203 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@204 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@205 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@206 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@207 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@208 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@209 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@210 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT1Ev\00", align 1
@211 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@212 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@213 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@214 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@215 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@216 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@217 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@218 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT2Ev\00", align 1
@219 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@220 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@221 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@222 = private unnamed_addr constant [38 x i8] c"this1__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@223 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@224 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@225 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@226 = private unnamed_addr constant [36 x i8] c"tmp__ZNK17VelocitySmoothing5getT3Ev\00", align 1
@227 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@228 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@229 = private unnamed_addr constant [46 x i8] c"this1__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@230 = private unnamed_addr constant [46 x i8] c"this1__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@231 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@232 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@233 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@234 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@235 = private unnamed_addr constant [44 x i8] c"add__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@236 = private unnamed_addr constant [44 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@237 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@238 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv1\00", align 1
@239 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@240 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@241 = private unnamed_addr constant [45 x i8] c"add2__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@242 = private unnamed_addr constant [44 x i8] c"add__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@243 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@244 = private unnamed_addr constant [45 x i8] c"tmp__ZNK17VelocitySmoothing12getTotalTimeEv2\00", align 1
@245 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@246 = private unnamed_addr constant [45 x i8] c"add2__ZNK17VelocitySmoothing12getTotalTimeEv\00", align 1
@247 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@248 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@249 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@250 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@251 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@252 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@253 = private unnamed_addr constant [54 x i8] c"this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@254 = private unnamed_addr constant [54 x i8] c"this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@255 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@256 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@257 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@258 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@259 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@260 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@261 = private unnamed_addr constant [52 x i8] c"mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@262 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1\00", align 1
@263 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@264 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2\00", align 1
@265 = private unnamed_addr constant [52 x i8] c"add__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@266 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@267 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@268 = private unnamed_addr constant [52 x i8] c"mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@269 = private unnamed_addr constant [52 x i8] c"add__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@270 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@271 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@272 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3\00", align 1
@273 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@274 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@275 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@276 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@277 = private unnamed_addr constant [52 x i8] c"cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@278 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4\00", align 1
@279 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@280 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5\00", align 1
@281 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@282 = private unnamed_addr constant [52 x i8] c"cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@283 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@284 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@285 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@286 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@287 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@288 = private unnamed_addr constant [52 x i8] c"sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@289 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6\00", align 1
@290 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@291 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7\00", align 1
@292 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@293 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@294 = private unnamed_addr constant [52 x i8] c"div__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@295 = private unnamed_addr constant [52 x i8] c"sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@296 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@297 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8\00", align 1
@298 = private unnamed_addr constant [52 x i8] c"div__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@299 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@300 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@301 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@302 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@303 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@304 = private unnamed_addr constant [53 x i8] c"sub2__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@305 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@306 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@307 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10\00", align 1
@308 = private unnamed_addr constant [53 x i8] c"cmp3__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@309 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9\00", align 1
@310 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@311 = private unnamed_addr constant [53 x i8] c"sub2__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@312 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@313 = private unnamed_addr constant [53 x i8] c"cmp3__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@314 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@315 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@316 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@317 = private unnamed_addr constant [53 x i8] c"sub5__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@318 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@319 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@320 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11\00", align 1
@321 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@322 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@323 = private unnamed_addr constant [53 x i8] c"sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@324 = private unnamed_addr constant [53 x i8] c"sub5__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@325 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@326 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12\00", align 1
@327 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@328 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@329 = private unnamed_addr constant [53 x i8] c"div7__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@330 = private unnamed_addr constant [53 x i8] c"sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@331 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@332 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13\00", align 1
@333 = private unnamed_addr constant [53 x i8] c"div7__ZN17VelocitySmoothing18saturateT1ForAccelEffff\00", align 1
@334 = private unnamed_addr constant [9 x i8] c"if.then4\00", align 1
@335 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@336 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@337 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@338 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@339 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14\00", align 1
@340 = private unnamed_addr constant [8 x i8] c"if.end8\00", align 1
@341 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@342 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@343 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@344 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@345 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@346 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@347 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@348 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@349 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@350 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@351 = private unnamed_addr constant [17 x i8] c"(float 2.000000)\00", align 1
@352 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@353 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@354 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@355 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@356 = private unnamed_addr constant [43 x i8] c"mul2__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@357 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@358 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@359 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff1\00", align 1
@360 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@361 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@362 = private unnamed_addr constant [43 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@363 = private unnamed_addr constant [17 x i8] c"(float 4.000000)\00", align 1
@364 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@365 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff2\00", align 1
@366 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@367 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@368 = private unnamed_addr constant [43 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@369 = private unnamed_addr constant [43 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@370 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@371 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff3\00", align 1
@372 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@373 = private unnamed_addr constant [43 x i8] c"mul2__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@374 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@375 = private unnamed_addr constant [43 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@376 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@377 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@378 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@379 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@380 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff4\00", align 1
@381 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@382 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@383 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@384 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@385 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@386 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@387 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@388 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@389 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@390 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff6\00", align 1
@391 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff5\00", align 1
@392 = private unnamed_addr constant [14 x i8] c"llvm.sqrt.f32\00", align 1
@393 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@394 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff6\00", align 1
@395 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@396 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@397 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@398 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@399 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@400 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff7\00", align 1
@401 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@402 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@403 = private unnamed_addr constant [43 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@404 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@405 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@406 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff8\00", align 1
@407 = private unnamed_addr constant [43 x i8] c"add6__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@408 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@409 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@410 = private unnamed_addr constant [43 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@411 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@412 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@413 = private unnamed_addr constant [42 x i8] c"div__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@414 = private unnamed_addr constant [43 x i8] c"add6__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@415 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@416 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff9\00", align 1
@417 = private unnamed_addr constant [42 x i8] c"div__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@418 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@419 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@420 = private unnamed_addr constant [43 x i8] c"sub7__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@421 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@422 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@423 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff10\00", align 1
@424 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@425 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@426 = private unnamed_addr constant [43 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@427 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@428 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@429 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff11\00", align 1
@430 = private unnamed_addr constant [43 x i8] c"sub9__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@431 = private unnamed_addr constant [43 x i8] c"sub7__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@432 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@433 = private unnamed_addr constant [43 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@434 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@435 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@436 = private unnamed_addr constant [44 x i8] c"div10__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@437 = private unnamed_addr constant [43 x i8] c"sub9__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@438 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@439 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff12\00", align 1
@440 = private unnamed_addr constant [44 x i8] c"div10__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@441 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@442 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@443 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@444 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@445 = private unnamed_addr constant [44 x i8] c"div11__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@446 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff13\00", align 1
@447 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@448 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff14\00", align 1
@449 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@450 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@451 = private unnamed_addr constant [44 x i8] c"add12__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@452 = private unnamed_addr constant [44 x i8] c"div11__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@453 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@454 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff15\00", align 1
@455 = private unnamed_addr constant [44 x i8] c"add12__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@456 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@457 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@458 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@459 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@460 = private unnamed_addr constant [44 x i8] c"div13__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@461 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff16\00", align 1
@462 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@463 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff17\00", align 1
@464 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@465 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@466 = private unnamed_addr constant [44 x i8] c"add14__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@467 = private unnamed_addr constant [44 x i8] c"div13__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@468 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@469 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff18\00", align 1
@470 = private unnamed_addr constant [44 x i8] c"add14__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@471 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@472 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@473 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@474 = private unnamed_addr constant [44 x i8] c"cmp15__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@475 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff19\00", align 1
@476 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@477 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@478 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@479 = private unnamed_addr constant [44 x i8] c"cmp15__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@480 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@481 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@482 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@483 = private unnamed_addr constant [44 x i8] c"cmp16__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@484 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff20\00", align 1
@485 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@486 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@487 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@488 = private unnamed_addr constant [44 x i8] c"cmp16__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@489 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@490 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@491 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@492 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff21\00", align 1
@493 = private unnamed_addr constant [10 x i8] c"if.then17\00", align 1
@494 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@495 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@496 = private unnamed_addr constant [44 x i8] c"cmp18__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@497 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff22\00", align 1
@498 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@499 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@500 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@501 = private unnamed_addr constant [44 x i8] c"cmp18__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@502 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@503 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@504 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@505 = private unnamed_addr constant [44 x i8] c"cmp20__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@506 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff23\00", align 1
@507 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@508 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@509 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@510 = private unnamed_addr constant [44 x i8] c"cmp20__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@511 = private unnamed_addr constant [16 x i8] c"land.lhs.true19\00", align 1
@512 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@513 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@514 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff24\00", align 1
@515 = private unnamed_addr constant [10 x i8] c"if.then21\00", align 1
@516 = private unnamed_addr constant [9 x i8] c"if.end22\00", align 1
@517 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@518 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@519 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@520 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@521 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@522 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@523 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@524 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@525 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@526 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@527 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@528 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff25\00", align 1
@529 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@530 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff26\00", align 1
@531 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@532 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff27\00", align 1
@533 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@534 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff28\00", align 1
@535 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@536 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@537 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@538 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@539 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@540 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@541 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff29\00", align 1
@542 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@543 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@544 = private unnamed_addr constant [45 x i8] c"call24__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@545 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@546 = private unnamed_addr constant [45 x i8] c"call24__ZN17VelocitySmoothing9computeT1Effff\00", align 1
@547 = private unnamed_addr constant [9 x i8] c"if.end23\00", align 1
@548 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@549 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@550 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@551 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Effff30\00", align 1
@552 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@553 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@554 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@555 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@556 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@557 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@558 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@559 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@560 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@561 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@562 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_1\00", align 1
@563 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@564 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3maxIfEET_S1_S1_\00", align 1
@565 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@566 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_2\00", align 1
@567 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_2\00", align 1
@568 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@569 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_3\00", align 1
@570 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3maxIfEET_S1_S1_3\00", align 1
@571 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@572 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3maxIfEET_S1_S1_\00", align 1
@573 = private unnamed_addr constant [82 x i8] c"cond.true,tmp__ZN4math3maxIfEET_S1_S1_2,cond.false,tmp__ZN4math3maxIfEET_S1_S1_3,\00", align 1
@574 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@575 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3maxIfEET_S1_S1_\00", align 1
@576 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@577 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@578 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@579 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@580 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@581 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@582 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@583 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@584 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@585 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@586 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@587 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@588 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@589 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@590 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@591 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@592 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff1\00", align 1
@593 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff1\00", align 1
@594 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff2\00", align 1
@595 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff2\00", align 1
@596 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@597 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff1\00", align 1
@598 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@599 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff2\00", align 1
@600 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff3\00", align 1
@601 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff3\00", align 1
@602 = private unnamed_addr constant [44 x i8] c"sub2__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@603 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@604 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@605 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff3\00", align 1
@606 = private unnamed_addr constant [44 x i8] c"sub2__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@607 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff4\00", align 1
@608 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff4\00", align 1
@609 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff5\00", align 1
@610 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff5\00", align 1
@611 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@612 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff4\00", align 1
@613 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@614 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff5\00", align 1
@615 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff6\00", align 1
@616 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff6\00", align 1
@617 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@618 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@619 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@620 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff6\00", align 1
@621 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff7\00", align 1
@622 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff7\00", align 1
@623 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@624 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@625 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@626 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff7\00", align 1
@627 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff8\00", align 1
@628 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff8\00", align 1
@629 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@630 = private unnamed_addr constant [17 x i8] c"(float 2.000000)\00", align 1
@631 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@632 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff8\00", align 1
@633 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff9\00", align 1
@634 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff9\00", align 1
@635 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@636 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@637 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@638 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff9\00", align 1
@639 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff10\00", align 1
@640 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff10\00", align 1
@641 = private unnamed_addr constant [44 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@642 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@643 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@644 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff10\00", align 1
@645 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@646 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@647 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@648 = private unnamed_addr constant [44 x i8] c"mul8__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@649 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff11\00", align 1
@650 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff11\00", align 1
@651 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff12\00", align 1
@652 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff12\00", align 1
@653 = private unnamed_addr constant [44 x i8] c"mul9__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@654 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff11\00", align 1
@655 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@656 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff12\00", align 1
@657 = private unnamed_addr constant [45 x i8] c"sub10__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@658 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@659 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@660 = private unnamed_addr constant [44 x i8] c"mul9__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@661 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff13\00", align 1
@662 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff13\00", align 1
@663 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@664 = private unnamed_addr constant [17 x i8] c"(float 4.000000)\00", align 1
@665 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@666 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff13\00", align 1
@667 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff14\00", align 1
@668 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff14\00", align 1
@669 = private unnamed_addr constant [45 x i8] c"mul12__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@670 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@671 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@672 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff14\00", align 1
@673 = private unnamed_addr constant [45 x i8] c"sub13__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@674 = private unnamed_addr constant [45 x i8] c"sub10__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@675 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@676 = private unnamed_addr constant [45 x i8] c"mul12__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@677 = private unnamed_addr constant [45 x i8] c"sub13__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@678 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff15\00", align 1
@679 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff15\00", align 1
@680 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@681 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff15\00", align 1
@682 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@683 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@684 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@685 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@686 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@687 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@688 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@689 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff16\00", align 1
@690 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff16\00", align 1
@691 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff17\00", align 1
@692 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff16\00", align 1
@693 = private unnamed_addr constant [14 x i8] c"llvm.sqrt.f32\00", align 1
@694 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@695 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff17\00", align 1
@696 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff18\00", align 1
@697 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff18\00", align 1
@698 = private unnamed_addr constant [45 x i8] c"mul14__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@699 = private unnamed_addr constant [17 x i8] c"(float 2.000000)\00", align 1
@700 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@701 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff18\00", align 1
@702 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@703 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@704 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@705 = private unnamed_addr constant [45 x i8] c"mul14__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@706 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@707 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff19\00", align 1
@708 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff19\00", align 1
@709 = private unnamed_addr constant [45 x i8] c"sub15__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@710 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@711 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@712 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff19\00", align 1
@713 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff20\00", align 1
@714 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff20\00", align 1
@715 = private unnamed_addr constant [45 x i8] c"add16__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@716 = private unnamed_addr constant [45 x i8] c"sub15__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@717 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@718 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff20\00", align 1
@719 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff21\00", align 1
@720 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff21\00", align 1
@721 = private unnamed_addr constant [45 x i8] c"mul17__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@722 = private unnamed_addr constant [45 x i8] c"add16__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@723 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@724 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff21\00", align 1
@725 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@726 = private unnamed_addr constant [45 x i8] c"mul17__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@727 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@728 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@729 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@730 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@731 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@732 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff22\00", align 1
@733 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff22\00", align 1
@734 = private unnamed_addr constant [45 x i8] c"sub18__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@735 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@736 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@737 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff22\00", align 1
@738 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff23\00", align 1
@739 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff23\00", align 1
@740 = private unnamed_addr constant [45 x i8] c"sub19__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@741 = private unnamed_addr constant [45 x i8] c"sub18__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@742 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@743 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff23\00", align 1
@744 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff24\00", align 1
@745 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff24\00", align 1
@746 = private unnamed_addr constant [45 x i8] c"mul20__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@747 = private unnamed_addr constant [45 x i8] c"sub19__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@748 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@749 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff24\00", align 1
@750 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@751 = private unnamed_addr constant [45 x i8] c"mul20__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@752 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@753 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@754 = private unnamed_addr constant [46 x i8] c"call21__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@755 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@756 = private unnamed_addr constant [46 x i8] c"call21__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@757 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff25\00", align 1
@758 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff25\00", align 1
@759 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff26\00", align 1
@760 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff26\00", align 1
@761 = private unnamed_addr constant [45 x i8] c"div22__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@762 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff25\00", align 1
@763 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@764 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff26\00", align 1
@765 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff27\00", align 1
@766 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff27\00", align 1
@767 = private unnamed_addr constant [45 x i8] c"add23__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@768 = private unnamed_addr constant [45 x i8] c"div22__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@769 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@770 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff27\00", align 1
@771 = private unnamed_addr constant [45 x i8] c"add23__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@772 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff28\00", align 1
@773 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff28\00", align 1
@774 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff29\00", align 1
@775 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff29\00", align 1
@776 = private unnamed_addr constant [45 x i8] c"div24__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@777 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff28\00", align 1
@778 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@779 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff29\00", align 1
@780 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff30\00", align 1
@781 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff30\00", align 1
@782 = private unnamed_addr constant [45 x i8] c"add25__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@783 = private unnamed_addr constant [45 x i8] c"div24__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@784 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@785 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff30\00", align 1
@786 = private unnamed_addr constant [45 x i8] c"add25__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@787 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff31\00", align 1
@788 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff31\00", align 1
@789 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff32\00", align 1
@790 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff32\00", align 1
@791 = private unnamed_addr constant [45 x i8] c"add26__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@792 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff31\00", align 1
@793 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@794 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff32\00", align 1
@795 = private unnamed_addr constant [45 x i8] c"add26__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@796 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff33\00", align 1
@797 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff33\00", align 1
@798 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff34\00", align 1
@799 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff34\00", align 1
@800 = private unnamed_addr constant [45 x i8] c"add27__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@801 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff33\00", align 1
@802 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@803 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff34\00", align 1
@804 = private unnamed_addr constant [45 x i8] c"add27__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@805 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@806 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff35\00", align 1
@807 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff35\00", align 1
@808 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff36\00", align 1
@809 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff36\00", align 1
@810 = private unnamed_addr constant [45 x i8] c"cmp28__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@811 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff35\00", align 1
@812 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@813 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff36\00", align 1
@814 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@815 = private unnamed_addr constant [45 x i8] c"cmp28__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@816 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@817 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff37\00", align 1
@818 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff37\00", align 1
@819 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff37\00", align 1
@820 = private unnamed_addr constant [10 x i8] c"if.then29\00", align 1
@821 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff38\00", align 1
@822 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff38\00", align 1
@823 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff39\00", align 1
@824 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff39\00", align 1
@825 = private unnamed_addr constant [45 x i8] c"cmp30__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@826 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff38\00", align 1
@827 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@828 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff39\00", align 1
@829 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@830 = private unnamed_addr constant [45 x i8] c"cmp30__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@831 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@832 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff40\00", align 1
@833 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff40\00", align 1
@834 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff40\00", align 1
@835 = private unnamed_addr constant [10 x i8] c"if.then31\00", align 1
@836 = private unnamed_addr constant [9 x i8] c"if.end32\00", align 1
@837 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff41\00", align 1
@838 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff41\00", align 1
@839 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff42\00", align 1
@840 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff42\00", align 1
@841 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff43\00", align 1
@842 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff43\00", align 1
@843 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff44\00", align 1
@844 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff44\00", align 1
@845 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@846 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@847 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@848 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff41\00", align 1
@849 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@850 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff42\00", align 1
@851 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@852 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff43\00", align 1
@853 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@854 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff44\00", align 1
@855 = private unnamed_addr constant [46 x i8] c"call34__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@856 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@857 = private unnamed_addr constant [46 x i8] c"call34__ZN17VelocitySmoothing9computeT1Efffff\00", align 1
@858 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff45\00", align 1
@859 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff45\00", align 1
@860 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff45\00", align 1
@861 = private unnamed_addr constant [9 x i8] c"if.end33\00", align 1
@862 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff46\00", align 1
@863 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff46\00", align 1
@864 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT1Efffff_RET\00", align 1
@865 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT1Efffff46\00", align 1
@866 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@867 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@868 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@869 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@870 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@871 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@872 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@873 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@874 = private unnamed_addr constant [45 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@875 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@876 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@877 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@878 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@879 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@880 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@881 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@882 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@883 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff1\00", align 1
@884 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@885 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff2\00", align 1
@886 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@887 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@888 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@889 = private unnamed_addr constant [43 x i8] c"mul__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@890 = private unnamed_addr constant [43 x i8] c"add__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@891 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@892 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@893 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@894 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff3\00", align 1
@895 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@896 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@897 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@898 = private unnamed_addr constant [44 x i8] c"call__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@899 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@900 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@901 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@902 = private unnamed_addr constant [43 x i8] c"cmp__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@903 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@904 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@905 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@906 = private unnamed_addr constant [44 x i8] c"mul2__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@907 = private unnamed_addr constant [18 x i8] c"(float -0.500000)\00", align 1
@908 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@909 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff4\00", align 1
@910 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@911 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@912 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@913 = private unnamed_addr constant [44 x i8] c"mul2__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@914 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@915 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff5\00", align 1
@916 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@917 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@918 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@919 = private unnamed_addr constant [44 x i8] c"mul3__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@920 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@921 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff6\00", align 1
@922 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@923 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@924 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@925 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@926 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@927 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff7\00", align 1
@928 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@929 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff8\00", align 1
@930 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@931 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@932 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@933 = private unnamed_addr constant [44 x i8] c"mul5__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@934 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@935 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff9\00", align 1
@936 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@937 = private unnamed_addr constant [44 x i8] c"mul4__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@938 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@939 = private unnamed_addr constant [44 x i8] c"mul6__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@940 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@941 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@942 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@943 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@944 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@945 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff10\00", align 1
@946 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@947 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff11\00", align 1
@948 = private unnamed_addr constant [44 x i8] c"sub8__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@949 = private unnamed_addr constant [43 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@950 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@951 = private unnamed_addr constant [44 x i8] c"mul7__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@952 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@953 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@954 = private unnamed_addr constant [44 x i8] c"mul9__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@955 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@956 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@957 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff12\00", align 1
@958 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@959 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@960 = private unnamed_addr constant [45 x i8] c"mul10__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@961 = private unnamed_addr constant [44 x i8] c"mul9__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@962 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@963 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff13\00", align 1
@964 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@965 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@966 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@967 = private unnamed_addr constant [45 x i8] c"mul10__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@968 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@969 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff14\00", align 1
@970 = private unnamed_addr constant [45 x i8] c"add12__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@971 = private unnamed_addr constant [44 x i8] c"sub8__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@972 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@973 = private unnamed_addr constant [45 x i8] c"mul11__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@974 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@975 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@976 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@977 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@978 = private unnamed_addr constant [45 x i8] c"mul13__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@979 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff15\00", align 1
@980 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@981 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff16\00", align 1
@982 = private unnamed_addr constant [45 x i8] c"sub14__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@983 = private unnamed_addr constant [45 x i8] c"add12__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@984 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@985 = private unnamed_addr constant [45 x i8] c"mul13__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@986 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@987 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@988 = private unnamed_addr constant [45 x i8] c"add15__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@989 = private unnamed_addr constant [45 x i8] c"sub14__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@990 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@991 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff17\00", align 1
@992 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@993 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@994 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@995 = private unnamed_addr constant [45 x i8] c"add15__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@996 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@997 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff18\00", align 1
@998 = private unnamed_addr constant [43 x i8] c"div__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@999 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1000 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@1001 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@1002 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1003 = private unnamed_addr constant [45 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efffff19\00", align 1
@1004 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1005 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1006 = private unnamed_addr constant [46 x i8] c"call16__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@1007 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@1008 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT2Efffff_RET\00", align 1
@1009 = private unnamed_addr constant [46 x i8] c"call16__ZN17VelocitySmoothing9computeT2Efffff\00", align 1
@1010 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1011 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1012 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@1013 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@1014 = private unnamed_addr constant [28 x i8] c"cmp__ZN4math5abs_tIfEET_S1_\00", align 1
@1015 = private unnamed_addr constant [28 x i8] c"tmp__ZN4math5abs_tIfEET_S1_\00", align 1
@1016 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1017 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1018 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1019 = private unnamed_addr constant [28 x i8] c"cmp__ZN4math5abs_tIfEET_S1_\00", align 1
@1020 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1021 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_1\00", align 1
@1022 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_1\00", align 1
@1023 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@1024 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@1025 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@1026 = private unnamed_addr constant [28 x i8] c"sub__ZN4math5abs_tIfEET_S1_\00", align 1
@1027 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@1028 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1029 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math5abs_tIfEET_S1_2\00", align 1
@1030 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@1031 = private unnamed_addr constant [29 x i8] c"cond__ZN4math5abs_tIfEET_S1_\00", align 1
@1032 = private unnamed_addr constant [79 x i8] c"cond.true,tmp__ZN4math5abs_tIfEET_S1_1,cond.false,sub__ZN4math5abs_tIfEET_S1_,\00", align 1
@1033 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@1034 = private unnamed_addr constant [29 x i8] c"cond__ZN4math5abs_tIfEET_S1_\00", align 1
@1035 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@1036 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1037 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@1038 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@1039 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@1040 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1041 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1042 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1043 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1044 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff1\00", align 1
@1045 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff1\00", align 1
@1046 = private unnamed_addr constant [41 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1047 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1048 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1049 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff1\00", align 1
@1050 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff2\00", align 1
@1051 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff2\00", align 1
@1052 = private unnamed_addr constant [42 x i8] c"sub2__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1053 = private unnamed_addr constant [41 x i8] c"sub__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1054 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1055 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff2\00", align 1
@1056 = private unnamed_addr constant [42 x i8] c"sub2__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1057 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff3\00", align 1
@1058 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff3\00", align 1
@1059 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1060 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT2Efff3\00", align 1
@1061 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1062 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1063 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1064 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@1065 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT2Efff_RET\00", align 1
@1066 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT2Efff\00", align 1
@1067 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1068 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1069 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@1070 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1071 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@1072 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1073 = private unnamed_addr constant [43 x i8] c"this1__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1074 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1075 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1076 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@1077 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@1078 = private unnamed_addr constant [41 x i8] c"div__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1079 = private unnamed_addr constant [41 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1080 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@1081 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff1\00", align 1
@1082 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@1083 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@1084 = private unnamed_addr constant [41 x i8] c"add__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1085 = private unnamed_addr constant [41 x i8] c"div__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1086 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1087 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff2\00", align 1
@1088 = private unnamed_addr constant [41 x i8] c"add__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1089 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@1090 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@1091 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1092 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing9computeT3Efff3\00", align 1
@1093 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1094 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1095 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1096 = private unnamed_addr constant [29 x i8] c"_ZN4math3maxIfEET_S1_S1__RET\00", align 1
@1097 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT3Efff_RET\00", align 1
@1098 = private unnamed_addr constant [42 x i8] c"call__ZN17VelocitySmoothing9computeT3Efff\00", align 1
@1099 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1100 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1101 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@1102 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1103 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1104 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1105 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1106 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@1107 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@1108 = private unnamed_addr constant [46 x i8] c"sub__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1109 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@1110 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1111 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf1\00", align 1
@1112 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@1113 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@1114 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1115 = private unnamed_addr constant [46 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1116 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@1117 = private unnamed_addr constant [46 x i8] c"sub__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1118 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@1119 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf2\00", align 1
@1120 = private unnamed_addr constant [47 x i8] c"call__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1121 = private unnamed_addr constant [38 x i8] c"_ZN4math9constrainIfEET_S1_S1_S1__RET\00", align 1
@1122 = private unnamed_addr constant [47 x i8] c"call__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1123 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1124 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf3\00", align 1
@1125 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf4\00", align 1
@1126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1127 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf3\00", align 1
@1128 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf4\00", align 1
@1129 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1130 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1131 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1132 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1133 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1134 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1135 = private unnamed_addr constant [48 x i8] c"call3__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1136 = private unnamed_addr constant [47 x i8] c"_ZN17VelocitySmoothing16computeDirectionEv_RET\00", align 1
@1137 = private unnamed_addr constant [48 x i8] c"call3__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1138 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@1139 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@1140 = private unnamed_addr constant [46 x i8] c"cmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1141 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing15updateDurationsEf5\00", align 1
@1142 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@1143 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1144 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1145 = private unnamed_addr constant [46 x i8] c"cmp__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1146 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1147 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1148 = private unnamed_addr constant [48 x i8] c"this1__ZN17VelocitySmoothing15updateDurationsEf\00", align 1
@1149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1150 = private unnamed_addr constant [63 x i8] c"_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv_RET\00", align 1
@1151 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1152 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1153 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1154 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1155 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@1156 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1157 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1158 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@1159 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@1160 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1161 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1162 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1163 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1164 = private unnamed_addr constant [38 x i8] c"cmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1165 = private unnamed_addr constant [38 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1166 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1167 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_1\00", align 1
@1168 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1169 = private unnamed_addr constant [38 x i8] c"cmp__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1170 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1171 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_2\00", align 1
@1172 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_2\00", align 1
@1173 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@1174 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1175 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1176 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1177 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1178 = private unnamed_addr constant [39 x i8] c"cmp1__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1179 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_3\00", align 1
@1180 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1181 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_4\00", align 1
@1182 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1183 = private unnamed_addr constant [39 x i8] c"cmp1__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1184 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@1185 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_5\00", align 1
@1186 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_5\00", align 1
@1187 = private unnamed_addr constant [11 x i8] c"cond.true2\00", align 1
@1188 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_6\00", align 1
@1189 = private unnamed_addr constant [39 x i8] c"tmp__ZN4math9constrainIfEET_S1_S1_S1_6\00", align 1
@1190 = private unnamed_addr constant [12 x i8] c"cond.false3\00", align 1
@1191 = private unnamed_addr constant [39 x i8] c"cond__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1192 = private unnamed_addr constant [102 x i8] c"cond.true2,tmp__ZN4math9constrainIfEET_S1_S1_S1_5,cond.false3,tmp__ZN4math9constrainIfEET_S1_S1_S1_6,\00", align 1
@1193 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@1194 = private unnamed_addr constant [40 x i8] c"cond5__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1195 = private unnamed_addr constant [98 x i8] c"cond.true,tmp__ZN4math9constrainIfEET_S1_S1_S1_2,cond.end,cond__ZN4math9constrainIfEET_S1_S1_S1_,\00", align 1
@1196 = private unnamed_addr constant [38 x i8] c"_ZN4math9constrainIfEET_S1_S1_S1__RET\00", align 1
@1197 = private unnamed_addr constant [40 x i8] c"cond5__ZN4math9constrainIfEET_S1_S1_S1_\00", align 1
@1198 = private unnamed_addr constant [10 x i8] c"cond.end4\00", align 1
@1199 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1200 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1201 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1202 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1203 = private unnamed_addr constant [49 x i8] c"this1__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1204 = private unnamed_addr constant [48 x i8] c"call__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1205 = private unnamed_addr constant [50 x i8] c"_ZN17VelocitySmoothing19computeVelAtZeroAccEv_RET\00", align 1
@1206 = private unnamed_addr constant [48 x i8] c"call__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1207 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1208 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1209 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1210 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1211 = private unnamed_addr constant [47 x i8] c"sub__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1212 = private unnamed_addr constant [47 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1213 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1214 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv1\00", align 1
@1215 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1216 = private unnamed_addr constant [47 x i8] c"sub__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1217 = private unnamed_addr constant [49 x i8] c"call2__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1218 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1219 = private unnamed_addr constant [49 x i8] c"call2__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1220 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1221 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1222 = private unnamed_addr constant [47 x i8] c"cmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1223 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv2\00", align 1
@1224 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@1225 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1226 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1227 = private unnamed_addr constant [47 x i8] c"cmp__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1228 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1229 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1230 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1231 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1232 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv3\00", align 1
@1233 = private unnamed_addr constant [49 x i8] c"call3__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1234 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1235 = private unnamed_addr constant [49 x i8] c"call3__ZN17VelocitySmoothing16computeDirectionEv\00", align 1
@1236 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1237 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1238 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1239 = private unnamed_addr constant [47 x i8] c"_ZN17VelocitySmoothing16computeDirectionEv_RET\00", align 1
@1240 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing16computeDirectionEv4\00", align 1
@1241 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1242 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1243 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1244 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1245 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1246 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1247 = private unnamed_addr constant [64 x i8] c"conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1248 = private unnamed_addr constant [63 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1249 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1250 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1251 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1252 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1253 = private unnamed_addr constant [63 x i8] c"mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1254 = private unnamed_addr constant [64 x i8] c"conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1255 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1256 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1\00", align 1
@1257 = private unnamed_addr constant [63 x i8] c"mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1258 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1259 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1260 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1261 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1262 = private unnamed_addr constant [63 x i8] c"sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1263 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2\00", align 1
@1264 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1265 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3\00", align 1
@1266 = private unnamed_addr constant [63 x i8] c"sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1267 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1268 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1269 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1270 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1271 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1272 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1273 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1274 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1275 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1276 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1277 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1278 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4\00", align 1
@1279 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@1280 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5\00", align 1
@1281 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@1282 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6\00", align 1
@1283 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@1284 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7\00", align 1
@1285 = private unnamed_addr constant [64 x i8] c"call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1286 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@1287 = private unnamed_addr constant [64 x i8] c"call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1288 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1289 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1290 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1291 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1292 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1293 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1294 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1295 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1296 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@1297 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8\00", align 1
@1298 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1299 = private unnamed_addr constant [64 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9\00", align 1
@1300 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@1301 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10\00", align 1
@1302 = private unnamed_addr constant [65 x i8] c"call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1303 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT3Efff_RET\00", align 1
@1304 = private unnamed_addr constant [65 x i8] c"call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1305 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1306 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1307 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1308 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1309 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1310 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1311 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1312 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1313 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1314 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1315 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1316 = private unnamed_addr constant [65 x i8] c"this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1317 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@1318 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11\00", align 1
@1319 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@1320 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12\00", align 1
@1321 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1322 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13\00", align 1
@1323 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@1324 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14\00", align 1
@1325 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@1326 = private unnamed_addr constant [65 x i8] c"tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15\00", align 1
@1327 = private unnamed_addr constant [66 x i8] c"call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1328 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT2Efffff_RET\00", align 1
@1329 = private unnamed_addr constant [66 x i8] c"call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv\00", align 1
@1330 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1331 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1332 = private unnamed_addr constant [52 x i8] c"this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1333 = private unnamed_addr constant [52 x i8] c"this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1334 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1335 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1336 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1337 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1338 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1339 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1340 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1\00", align 1
@1341 = private unnamed_addr constant [51 x i8] c"call__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1342 = private unnamed_addr constant [28 x i8] c"_ZN4math5abs_tIfEET_S1__RET\00", align 1
@1343 = private unnamed_addr constant [50 x i8] c"cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1344 = private unnamed_addr constant [51 x i8] c"call__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1345 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1346 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1347 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1348 = private unnamed_addr constant [50 x i8] c"cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1349 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1350 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1351 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1352 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1353 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2\00", align 1
@1354 = private unnamed_addr constant [52 x i8] c"call5__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1355 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1356 = private unnamed_addr constant [50 x i8] c"sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1357 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1358 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@1359 = private unnamed_addr constant [52 x i8] c"call5__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1360 = private unnamed_addr constant [51 x i8] c"conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1361 = private unnamed_addr constant [50 x i8] c"sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1362 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1363 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1364 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1365 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1366 = private unnamed_addr constant [50 x i8] c"mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1367 = private unnamed_addr constant [51 x i8] c"conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1368 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1369 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3\00", align 1
@1370 = private unnamed_addr constant [50 x i8] c"mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1371 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1372 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1373 = private unnamed_addr constant [51 x i8] c"sub8__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1374 = private unnamed_addr constant [18 x i8] c"(float -0.000000)\00", align 1
@1375 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1376 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4\00", align 1
@1377 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1378 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1379 = private unnamed_addr constant [50 x i8] c"div__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1380 = private unnamed_addr constant [51 x i8] c"sub8__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1381 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@1382 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5\00", align 1
@1383 = private unnamed_addr constant [50 x i8] c"div__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1384 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1385 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1386 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1387 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1388 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1389 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1390 = private unnamed_addr constant [52 x i8] c"mul13__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1391 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7\00", align 1
@1392 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1393 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8\00", align 1
@1394 = private unnamed_addr constant [50 x i8] c"add__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1395 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6\00", align 1
@1396 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1397 = private unnamed_addr constant [52 x i8] c"mul13__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1398 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1399 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1400 = private unnamed_addr constant [52 x i8] c"mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1401 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1402 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1403 = private unnamed_addr constant [51 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9\00", align 1
@1404 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1405 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1406 = private unnamed_addr constant [52 x i8] c"mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1407 = private unnamed_addr constant [52 x i8] c"mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1408 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1409 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10\00", align 1
@1410 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1411 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1412 = private unnamed_addr constant [52 x i8] c"mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1413 = private unnamed_addr constant [52 x i8] c"mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1414 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1415 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11\00", align 1
@1416 = private unnamed_addr constant [52 x i8] c"add17__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1417 = private unnamed_addr constant [50 x i8] c"add__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1418 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1419 = private unnamed_addr constant [52 x i8] c"mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1420 = private unnamed_addr constant [52 x i8] c"add17__ZN17VelocitySmoothing19computeVelAtZeroAccEv\00", align 1
@1421 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1422 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1423 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1424 = private unnamed_addr constant [50 x i8] c"_ZN17VelocitySmoothing19computeVelAtZeroAccEv_RET\00", align 1
@1425 = private unnamed_addr constant [52 x i8] c"tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12\00", align 1
@1426 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1427 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@1428 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1429 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1430 = private unnamed_addr constant [27 x i8] c"cmp__ZN6matrix4signIfEEiT_\00", align 1
@1431 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1432 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1433 = private unnamed_addr constant [27 x i8] c"tmp__ZN6matrix4signIfEEiT_\00", align 1
@1434 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1435 = private unnamed_addr constant [27 x i8] c"cmp__ZN6matrix4signIfEEiT_\00", align 1
@1436 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1437 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@1438 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1439 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1440 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1441 = private unnamed_addr constant [28 x i8] c"cmp1__ZN6matrix4signIfEEiT_\00", align 1
@1442 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_1\00", align 1
@1443 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1444 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1445 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1446 = private unnamed_addr constant [28 x i8] c"cmp1__ZN6matrix4signIfEEiT_\00", align 1
@1447 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@1448 = private unnamed_addr constant [9 x i8] c"(i32 -1)\00", align 1
@1449 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@1450 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1451 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@1452 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1453 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1454 = private unnamed_addr constant [27 x i8] c"_ZN6matrix4signIfEEiT__RET\00", align 1
@1455 = private unnamed_addr constant [28 x i8] c"tmp__ZN6matrix4signIfEEiT_2\00", align 1
@1456 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@1457 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1458 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1459 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1460 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1461 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1462 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1463 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1464 = private unnamed_addr constant [50 x i8] c"this1__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1465 = private unnamed_addr constant [50 x i8] c"this1__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1466 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1467 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1468 = private unnamed_addr constant [49 x i8] c"conv__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1469 = private unnamed_addr constant [48 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1470 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@1471 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1472 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1473 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1474 = private unnamed_addr constant [48 x i8] c"mul__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1475 = private unnamed_addr constant [49 x i8] c"conv__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1476 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1477 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1\00", align 1
@1478 = private unnamed_addr constant [48 x i8] c"mul__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1479 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1480 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1481 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1482 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1483 = private unnamed_addr constant [49 x i8] c"mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1484 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2\00", align 1
@1485 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1486 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3\00", align 1
@1487 = private unnamed_addr constant [49 x i8] c"mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1488 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1489 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1490 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1491 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1492 = private unnamed_addr constant [49 x i8] c"mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1493 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4\00", align 1
@1494 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1495 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5\00", align 1
@1496 = private unnamed_addr constant [49 x i8] c"mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1497 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1498 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1499 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6\00", align 1
@1500 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1501 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1502 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1503 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1504 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1505 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1506 = private unnamed_addr constant [49 x i8] c"mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1507 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8\00", align 1
@1508 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1509 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9\00", align 1
@1510 = private unnamed_addr constant [48 x i8] c"add__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1511 = private unnamed_addr constant [49 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7\00", align 1
@1512 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1513 = private unnamed_addr constant [49 x i8] c"mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1514 = private unnamed_addr constant [48 x i8] c"add__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1515 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1516 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1517 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1518 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1519 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1520 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1521 = private unnamed_addr constant [49 x i8] c"mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1522 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11\00", align 1
@1523 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1524 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12\00", align 1
@1525 = private unnamed_addr constant [49 x i8] c"add7__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1526 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10\00", align 1
@1527 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1528 = private unnamed_addr constant [49 x i8] c"mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1529 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1530 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1531 = private unnamed_addr constant [49 x i8] c"mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1532 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1533 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1534 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13\00", align 1
@1535 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1536 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1537 = private unnamed_addr constant [49 x i8] c"mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1538 = private unnamed_addr constant [49 x i8] c"mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1539 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1540 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14\00", align 1
@1541 = private unnamed_addr constant [50 x i8] c"add10__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1542 = private unnamed_addr constant [49 x i8] c"add7__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1543 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1544 = private unnamed_addr constant [49 x i8] c"mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1545 = private unnamed_addr constant [50 x i8] c"add10__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1546 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1547 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1548 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1549 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1550 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1551 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1552 = private unnamed_addr constant [50 x i8] c"mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1553 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16\00", align 1
@1554 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1555 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17\00", align 1
@1556 = private unnamed_addr constant [50 x i8] c"add12__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1557 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15\00", align 1
@1558 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1559 = private unnamed_addr constant [50 x i8] c"mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1560 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1561 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1562 = private unnamed_addr constant [50 x i8] c"mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1563 = private unnamed_addr constant [17 x i8] c"(float 0.500000)\00", align 1
@1564 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1565 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18\00", align 1
@1566 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1567 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1568 = private unnamed_addr constant [50 x i8] c"mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1569 = private unnamed_addr constant [50 x i8] c"mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1570 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1571 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19\00", align 1
@1572 = private unnamed_addr constant [50 x i8] c"add15__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1573 = private unnamed_addr constant [50 x i8] c"add12__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1574 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1575 = private unnamed_addr constant [50 x i8] c"mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1576 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1577 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1578 = private unnamed_addr constant [50 x i8] c"mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1579 = private unnamed_addr constant [17 x i8] c"(float 0.166667)\00", align 1
@1580 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1581 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20\00", align 1
@1582 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1583 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1584 = private unnamed_addr constant [50 x i8] c"mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1585 = private unnamed_addr constant [50 x i8] c"mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1586 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1587 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21\00", align 1
@1588 = private unnamed_addr constant [50 x i8] c"add18__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1589 = private unnamed_addr constant [50 x i8] c"add15__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1590 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1591 = private unnamed_addr constant [50 x i8] c"mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1592 = private unnamed_addr constant [50 x i8] c"add18__ZN17VelocitySmoothing12evaluatePolyEfffffi\00", align 1
@1593 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi22\00", align 1
@1594 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1595 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1596 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1597 = private unnamed_addr constant [50 x i8] c"tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23\00", align 1
@1598 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1599 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1600 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@1601 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@1602 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1603 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1604 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1605 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1606 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1607 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1608 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1609 = private unnamed_addr constant [42 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1610 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@1611 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff1\00", align 1
@1612 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1613 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1614 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1615 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff2\00", align 1
@1616 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@1617 = private unnamed_addr constant [42 x i8] c"mul__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1618 = private unnamed_addr constant [42 x i8] c"add__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1619 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1620 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1621 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff3\00", align 1
@1622 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1623 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1624 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1625 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1626 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1627 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff4\00", align 1
@1628 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1629 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff5\00", align 1
@1630 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1631 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1632 = private unnamed_addr constant [43 x i8] c"call__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1633 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1634 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1635 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1636 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1637 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1638 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1639 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1640 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1641 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1642 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1643 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1644 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1645 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1646 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1647 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1648 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff6\00", align 1
@1649 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1650 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff7\00", align 1
@1651 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1652 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff8\00", align 1
@1653 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1654 = private unnamed_addr constant [43 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff9\00", align 1
@1655 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1656 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff10\00", align 1
@1657 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1658 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff11\00", align 1
@1659 = private unnamed_addr constant [44 x i8] c"call5__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1660 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1661 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff12\00", align 1
@1662 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff14\00", align 1
@1663 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff16\00", align 1
@1664 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff17\00", align 1
@1665 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff18\00", align 1
@1666 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1667 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff17\00", align 1
@1668 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff18\00", align 1
@1669 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1670 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1671 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1672 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1673 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1674 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1675 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1676 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1677 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1678 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff20\00", align 1
@1679 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1680 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff19\00", align 1
@1681 = private unnamed_addr constant [42 x i8] c"sub__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1682 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1683 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1684 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1685 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff21\00", align 1
@1686 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1687 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1688 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1689 = private unnamed_addr constant [42 x i8] c"cmp__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1690 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1691 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1692 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1693 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1694 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1695 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1696 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff22\00", align 1
@1697 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1698 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff23\00", align 1
@1699 = private unnamed_addr constant [44 x i8] c"call6__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1700 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1701 = private unnamed_addr constant [44 x i8] c"call6__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1702 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1703 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1704 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1705 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1706 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1707 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1708 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1709 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1710 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1711 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1712 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1713 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1714 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1715 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff24\00", align 1
@1716 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1717 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff25\00", align 1
@1718 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1719 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff26\00", align 1
@1720 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1721 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff27\00", align 1
@1722 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1723 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1724 = private unnamed_addr constant [45 x i8] c"call14__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1725 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1726 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff28\00", align 1
@1727 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff30\00", align 1
@1728 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff32\00", align 1
@1729 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff33\00", align 1
@1730 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff34\00", align 1
@1731 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1732 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff33\00", align 1
@1733 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff34\00", align 1
@1734 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1735 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1736 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1737 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1738 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1739 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1740 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1741 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1742 = private unnamed_addr constant [44 x i8] c"sub16__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1743 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff36\00", align 1
@1744 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1745 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff35\00", align 1
@1746 = private unnamed_addr constant [44 x i8] c"sub16__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1747 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1748 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1749 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1750 = private unnamed_addr constant [44 x i8] c"cmp17__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1751 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff37\00", align 1
@1752 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1753 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1754 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1755 = private unnamed_addr constant [44 x i8] c"cmp17__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1756 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1757 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1758 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1759 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1760 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1761 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1762 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff38\00", align 1
@1763 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1764 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff39\00", align 1
@1765 = private unnamed_addr constant [45 x i8] c"call19__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1766 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1767 = private unnamed_addr constant [45 x i8] c"call19__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1768 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1769 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1770 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1771 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1772 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1773 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1774 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1775 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1776 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1777 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1778 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1779 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1780 = private unnamed_addr constant [44 x i8] c"sub29__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1781 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1782 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@1783 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff45\00", align 1
@1784 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1785 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1786 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1787 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff40\00", align 1
@1788 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1789 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff41\00", align 1
@1790 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1791 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff42\00", align 1
@1792 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1793 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff43\00", align 1
@1794 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1795 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff44\00", align 1
@1796 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1797 = private unnamed_addr constant [44 x i8] c"sub29__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1798 = private unnamed_addr constant [45 x i8] c"call30__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1799 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1800 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff46\00", align 1
@1801 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff48\00", align 1
@1802 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff50\00", align 1
@1803 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff51\00", align 1
@1804 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff52\00", align 1
@1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1806 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff51\00", align 1
@1807 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff52\00", align 1
@1808 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1809 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1810 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1811 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1812 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1813 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1814 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1815 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1816 = private unnamed_addr constant [44 x i8] c"sub32__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1817 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff54\00", align 1
@1818 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@1819 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff53\00", align 1
@1820 = private unnamed_addr constant [44 x i8] c"sub32__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1821 = private unnamed_addr constant [10 x i8] c"if.then18\00", align 1
@1822 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1823 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1824 = private unnamed_addr constant [44 x i8] c"cmp34__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1825 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff55\00", align 1
@1826 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1827 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1828 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1829 = private unnamed_addr constant [44 x i8] c"cmp34__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1830 = private unnamed_addr constant [9 x i8] c"if.end33\00", align 1
@1831 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1832 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1833 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1834 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1835 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1836 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1837 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1838 = private unnamed_addr constant [44 x i8] c"this1__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1839 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@1840 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1841 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@1842 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1843 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@1844 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff56\00", align 1
@1845 = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@1846 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff57\00", align 1
@1847 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@1848 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff58\00", align 1
@1849 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@1850 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1851 = private unnamed_addr constant [45 x i8] c"call41__ZN17VelocitySmoothing10updateTrajEff\00", align 1
@1852 = private unnamed_addr constant [48 x i8] c"_ZN17VelocitySmoothing12evaluatePolyEfffffi_RET\00", align 1
@1853 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff59\00", align 1
@1854 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff61\00", align 1
@1855 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff63\00", align 1
@1856 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff64\00", align 1
@1857 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff65\00", align 1
@1858 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1859 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff64\00", align 1
@1860 = private unnamed_addr constant [44 x i8] c"tmp__ZN17VelocitySmoothing10updateTrajEff65\00", align 1
@1861 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@1862 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@1863 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@1864 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@1865 = private unnamed_addr constant [10 x i8] c"if.then35\00", align 1
@1866 = private unnamed_addr constant [9 x i8] c"if.end43\00", align 1
@1867 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1868 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@1869 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1870 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1871 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1872 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1873 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1874 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1875 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@1876 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_1\00", align 1
@1877 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1878 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math3minIfEET_S1_S1_\00", align 1
@1879 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1880 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_2\00", align 1
@1881 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_2\00", align 1
@1882 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@1883 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_3\00", align 1
@1884 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math3minIfEET_S1_S1_3\00", align 1
@1885 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@1886 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3minIfEET_S1_S1_\00", align 1
@1887 = private unnamed_addr constant [82 x i8] c"cond.true,tmp__ZN4math3minIfEET_S1_S1_2,cond.false,tmp__ZN4math3minIfEET_S1_S1_3,\00", align 1
@1888 = private unnamed_addr constant [29 x i8] c"_ZN4math3minIfEET_S1_S1__RET\00", align 1
@1889 = private unnamed_addr constant [30 x i8] c"cond__ZN4math3minIfEET_S1_S1_\00", align 1
@1890 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@1891 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@1892 = private unnamed_addr constant [7 x i8] c"n_traj\00", align 1
@1893 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1894 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1895 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1896 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@1897 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1898 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1899 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i1\00", align 1
@1900 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i1\00", align 1
@1901 = private unnamed_addr constant [53 x i8] c"cmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1902 = private unnamed_addr constant [53 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1903 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@1904 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i1\00", align 1
@1905 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1906 = private unnamed_addr constant [53 x i8] c"cmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1907 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@1908 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i2\00", align 1
@1909 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i2\00", align 1
@1910 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i3\00", align 1
@1911 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i3\00", align 1
@1912 = private unnamed_addr constant [57 x i8] c"idxprom__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1913 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i3\00", align 1
@1914 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@1915 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@1916 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1917 = private unnamed_addr constant [58 x i8] c"arrayidx__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1918 = private unnamed_addr constant [54 x i8] c"call__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1919 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@1920 = private unnamed_addr constant [54 x i8] c"call__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1921 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i4\00", align 1
@1922 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i4\00", align 1
@1923 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i5\00", align 1
@1924 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i5\00", align 1
@1925 = private unnamed_addr constant [54 x i8] c"cmp1__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1926 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i4\00", align 1
@1927 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1928 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i5\00", align 1
@1929 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1930 = private unnamed_addr constant [54 x i8] c"cmp1__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1931 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@1932 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i6\00", align 1
@1933 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i6\00", align 1
@1934 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i6\00", align 1
@1935 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i7\00", align 1
@1936 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i7\00", align 1
@1937 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i7\00", align 1
@1938 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@1939 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@1940 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i8\00", align 1
@1941 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i8\00", align 1
@1942 = private unnamed_addr constant [53 x i8] c"inc__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1943 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i8\00", align 1
@1944 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@1945 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@1946 = private unnamed_addr constant [53 x i8] c"inc__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1947 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@1948 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i9\00", align 1
@1949 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i9\00", align 1
@1950 = private unnamed_addr constant [54 x i8] c"cmp2__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1951 = private unnamed_addr constant [54 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i9\00", align 1
@1952 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@1953 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@1954 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@1955 = private unnamed_addr constant [54 x i8] c"cmp2__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1956 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@1957 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1958 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@1959 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i10\00", align 1
@1960 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i10\00", align 1
@1961 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i11\00", align 1
@1962 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i11\00", align 1
@1963 = private unnamed_addr constant [54 x i8] c"cmp6__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1964 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i10\00", align 1
@1965 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@1966 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i11\00", align 1
@1967 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1968 = private unnamed_addr constant [54 x i8] c"cmp6__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1969 = private unnamed_addr constant [10 x i8] c"for.cond5\00", align 1
@1970 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i12\00", align 1
@1971 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i12\00", align 1
@1972 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i13\00", align 1
@1973 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i13\00", align 1
@1974 = private unnamed_addr constant [54 x i8] c"cmp8__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1975 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i12\00", align 1
@1976 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@1977 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i13\00", align 1
@1978 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@1979 = private unnamed_addr constant [54 x i8] c"cmp8__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1980 = private unnamed_addr constant [10 x i8] c"for.body7\00", align 1
@1981 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i14\00", align 1
@1982 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i14\00", align 1
@1983 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i15\00", align 1
@1984 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i15\00", align 1
@1985 = private unnamed_addr constant [59 x i8] c"idxprom10__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1986 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i15\00", align 1
@1987 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@1988 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@1989 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i16\00", align 1
@1990 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i16\00", align 1
@1991 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1992 = private unnamed_addr constant [60 x i8] c"arrayidx11__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@1993 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@1994 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i16\00", align 1
@1995 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1996 = private unnamed_addr constant [60 x i8] c"_ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf_RET\00", align 1
@1997 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@1998 = private unnamed_addr constant [9 x i8] c"if.end12\00", align 1
@1999 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i17\00", align 1
@2000 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i17\00", align 1
@2001 = private unnamed_addr constant [55 x i8] c"inc14__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@2002 = private unnamed_addr constant [55 x i8] c"tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i17\00", align 1
@2003 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@2004 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2005 = private unnamed_addr constant [55 x i8] c"inc14__ZN17VelocitySmoothing19timeSynchronizationEPS_i\00", align 1
@2006 = private unnamed_addr constant [10 x i8] c"for.inc13\00", align 1
@2007 = private unnamed_addr constant [10 x i8] c"for.end15\00", align 1
@2008 = private unnamed_addr constant [9 x i8] c"if.end16\00", align 1
@2009 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2010 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@2011 = private unnamed_addr constant [62 x i8] c"this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2012 = private unnamed_addr constant [62 x i8] c"this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2013 = private unnamed_addr constant [60 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2014 = private unnamed_addr constant [60 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2015 = private unnamed_addr constant [61 x i8] c"conv__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2016 = private unnamed_addr constant [60 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2017 = private unnamed_addr constant [7 x i8] c"sitofp\00", align 1
@2018 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2019 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf1\00", align 1
@2020 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf1\00", align 1
@2021 = private unnamed_addr constant [60 x i8] c"mul__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2022 = private unnamed_addr constant [61 x i8] c"conv__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2023 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@2024 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf1\00", align 1
@2025 = private unnamed_addr constant [60 x i8] c"mul__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2026 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf2\00", align 1
@2027 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf2\00", align 1
@2028 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf3\00", align 1
@2029 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf3\00", align 1
@2030 = private unnamed_addr constant [60 x i8] c"sub__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2031 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf2\00", align 1
@2032 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@2033 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf3\00", align 1
@2034 = private unnamed_addr constant [60 x i8] c"sub__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2035 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf4\00", align 1
@2036 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf4\00", align 1
@2037 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf5\00", align 1
@2038 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf5\00", align 1
@2039 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf6\00", align 1
@2040 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf6\00", align 1
@2041 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf7\00", align 1
@2042 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf7\00", align 1
@2043 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf8\00", align 1
@2044 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf8\00", align 1
@2045 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2046 = private unnamed_addr constant [62 x i8] c"this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2047 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@2048 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf4\00", align 1
@2049 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@2050 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf5\00", align 1
@2051 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@2052 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf6\00", align 1
@2053 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@2054 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf7\00", align 1
@2055 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@2056 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf8\00", align 1
@2057 = private unnamed_addr constant [61 x i8] c"call__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2058 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT1Efffff_RET\00", align 1
@2059 = private unnamed_addr constant [61 x i8] c"call__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2060 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf9\00", align 1
@2061 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf9\00", align 1
@2062 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf10\00", align 1
@2063 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf10\00", align 1
@2064 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf11\00", align 1
@2065 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf11\00", align 1
@2066 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2067 = private unnamed_addr constant [62 x i8] c"this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2068 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@2069 = private unnamed_addr constant [61 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf9\00", align 1
@2070 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@2071 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf10\00", align 1
@2072 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@2073 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf11\00", align 1
@2074 = private unnamed_addr constant [62 x i8] c"call6__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2075 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT3Efff_RET\00", align 1
@2076 = private unnamed_addr constant [62 x i8] c"call6__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2077 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf12\00", align 1
@2078 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf12\00", align 1
@2079 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf13\00", align 1
@2080 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf13\00", align 1
@2081 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf14\00", align 1
@2082 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf14\00", align 1
@2083 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2084 = private unnamed_addr constant [62 x i8] c"this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2085 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@2086 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf12\00", align 1
@2087 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@2088 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf13\00", align 1
@2089 = private unnamed_addr constant [3 x i8] c"T3\00", align 1
@2090 = private unnamed_addr constant [62 x i8] c"tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf14\00", align 1
@2091 = private unnamed_addr constant [62 x i8] c"call9__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2092 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing9computeT2Efff_RET\00", align 1
@2093 = private unnamed_addr constant [62 x i8] c"call9__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf\00", align 1
@2094 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2095 = private unnamed_addr constant [11 x i8] c"trajectory\00", align 1
@2096 = private unnamed_addr constant [53 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing\00", align 1
@2097 = private unnamed_addr constant [53 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing\00", align 1
@2098 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1\00", align 1
@2099 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2\00", align 1
@2100 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2\00", align 1
@2101 = private unnamed_addr constant [54 x i8] c"tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3\00", align 1
@2102 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2103 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@2104 = private unnamed_addr constant [51 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing\00", align 1
@2105 = private unnamed_addr constant [51 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing\00", align 1
@2106 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing1\00", align 1
@2107 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2\00", align 1
@2108 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2\00", align 1
@2109 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3\00", align 1
@2110 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3\00", align 1
@2111 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4\00", align 1
@2112 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4\00", align 1
@2113 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing5\00", align 1
@2114 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6\00", align 1
@2115 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6\00", align 1
@2116 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7\00", align 1
@2117 = private unnamed_addr constant [52 x i8] c"tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7\00", align 1
@2118 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2119 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@2120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2121 = private unnamed_addr constant [24 x i8] c"stg_pause_recording_RET\00", align 1
@2122 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@2123 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2124 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2125 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2126 = private unnamed_addr constant [56 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2127 = private unnamed_addr constant [57 x i8] c"call__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2128 = private unnamed_addr constant [46 x i8] c"_ZNK17VelocitySmoothing14getCurrentJerkEv_RET\00", align 1
@2129 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@2130 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@2131 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2132 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1\00", align 1
@2133 = private unnamed_addr constant [58 x i8] c"call1__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2134 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@2135 = private unnamed_addr constant [56 x i8] c"cmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2136 = private unnamed_addr constant [57 x i8] c"call__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2137 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@2138 = private unnamed_addr constant [58 x i8] c"call1__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2139 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2140 = private unnamed_addr constant [56 x i8] c"cmp__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2141 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2142 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2143 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2144 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@2145 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@2146 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2147 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2\00", align 1
@2148 = private unnamed_addr constant [58 x i8] c"call2__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2149 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@2150 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing3\00", align 1
@2151 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing3\00", align 1
@2152 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2153 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing3\00", align 1
@2154 = private unnamed_addr constant [58 x i8] c"call3__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2155 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2156 = private unnamed_addr constant [57 x i8] c"cmp4__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2157 = private unnamed_addr constant [58 x i8] c"call2__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2158 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@2159 = private unnamed_addr constant [58 x i8] c"call3__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2160 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2161 = private unnamed_addr constant [57 x i8] c"cmp4__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2162 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2163 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2164 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@2165 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing4\00", align 1
@2166 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing4\00", align 1
@2167 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2168 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing4\00", align 1
@2169 = private unnamed_addr constant [58 x i8] c"call7__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2170 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentVelocityEv_RET\00", align 1
@2171 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing5\00", align 1
@2172 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing5\00", align 1
@2173 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2174 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing5\00", align 1
@2175 = private unnamed_addr constant [58 x i8] c"call8__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2176 = private unnamed_addr constant [40 x i8] c"_ZNK17VelocitySmoothing9getMaxVelEv_RET\00", align 1
@2177 = private unnamed_addr constant [57 x i8] c"cmp9__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2178 = private unnamed_addr constant [58 x i8] c"call7__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2179 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@2180 = private unnamed_addr constant [58 x i8] c"call8__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2181 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2182 = private unnamed_addr constant [57 x i8] c"cmp9__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2183 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@2184 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2185 = private unnamed_addr constant [10 x i8] c"if.then10\00", align 1
@2186 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2187 = private unnamed_addr constant [25 x i8] c"stg_resume_recording_RET\00", align 1
@2188 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing6\00", align 1
@2189 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing6\00", align 1
@2190 = private unnamed_addr constant [59 x i8] c"tobool__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2191 = private unnamed_addr constant [57 x i8] c"tmp__Z27check_kinematic_constraintsP17VelocitySmoothing6\00", align 1
@2192 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@2193 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@2194 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@2195 = private unnamed_addr constant [59 x i8] c"tobool__Z27check_kinematic_constraintsP17VelocitySmoothing\00", align 1
@2196 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@2197 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2198 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2199 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2200 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2201 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2202 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2203 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2204 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2205 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2206 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2207 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2208 = private unnamed_addr constant [33 x i8] c"tmp__Z23test_initial_conditionsv\00", align 1
@2209 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv1\00", align 1
@2210 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv2\00", align 1
@2211 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv2\00", align 1
@2212 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@2213 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@2214 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2215 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2216 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@2217 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv3\00", align 1
@2218 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2219 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2220 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@2221 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2222 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2223 = private unnamed_addr constant [34 x i8] c"call__Z23test_initial_conditionsv\00", align 1
@2224 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@2225 = private unnamed_addr constant [34 x i8] c"conv__Z23test_initial_conditionsv\00", align 1
@2226 = private unnamed_addr constant [34 x i8] c"call__Z23test_initial_conditionsv\00", align 1
@2227 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2228 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2229 = private unnamed_addr constant [33 x i8] c"cmp__Z23test_initial_conditionsv\00", align 1
@2230 = private unnamed_addr constant [34 x i8] c"conv__Z23test_initial_conditionsv\00", align 1
@2231 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2232 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2233 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2234 = private unnamed_addr constant [33 x i8] c"cmp__Z23test_initial_conditionsv\00", align 1
@2235 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2236 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2237 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2238 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2239 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2240 = private unnamed_addr constant [35 x i8] c"call1__Z23test_initial_conditionsv\00", align 1
@2241 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@2242 = private unnamed_addr constant [35 x i8] c"conv2__Z23test_initial_conditionsv\00", align 1
@2243 = private unnamed_addr constant [35 x i8] c"call1__Z23test_initial_conditionsv\00", align 1
@2244 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2245 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2246 = private unnamed_addr constant [34 x i8] c"cmp3__Z23test_initial_conditionsv\00", align 1
@2247 = private unnamed_addr constant [35 x i8] c"conv2__Z23test_initial_conditionsv\00", align 1
@2248 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2249 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2250 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2251 = private unnamed_addr constant [34 x i8] c"cmp3__Z23test_initial_conditionsv\00", align 1
@2252 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2253 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2254 = private unnamed_addr constant [9 x i8] c"if.then4\00", align 1
@2255 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2256 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2257 = private unnamed_addr constant [35 x i8] c"call6__Z23test_initial_conditionsv\00", align 1
@2258 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@2259 = private unnamed_addr constant [35 x i8] c"conv7__Z23test_initial_conditionsv\00", align 1
@2260 = private unnamed_addr constant [35 x i8] c"call6__Z23test_initial_conditionsv\00", align 1
@2261 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2262 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2263 = private unnamed_addr constant [34 x i8] c"cmp8__Z23test_initial_conditionsv\00", align 1
@2264 = private unnamed_addr constant [35 x i8] c"conv7__Z23test_initial_conditionsv\00", align 1
@2265 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2266 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2267 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2268 = private unnamed_addr constant [34 x i8] c"cmp8__Z23test_initial_conditionsv\00", align 1
@2269 = private unnamed_addr constant [8 x i8] c"if.end5\00", align 1
@2270 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2271 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@2272 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2273 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2274 = private unnamed_addr constant [36 x i8] c"call11__Z23test_initial_conditionsv\00", align 1
@2275 = private unnamed_addr constant [46 x i8] c"_ZNK17VelocitySmoothing14getCurrentJerkEv_RET\00", align 1
@2276 = private unnamed_addr constant [36 x i8] c"conv12__Z23test_initial_conditionsv\00", align 1
@2277 = private unnamed_addr constant [36 x i8] c"call11__Z23test_initial_conditionsv\00", align 1
@2278 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2279 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2280 = private unnamed_addr constant [35 x i8] c"cmp13__Z23test_initial_conditionsv\00", align 1
@2281 = private unnamed_addr constant [36 x i8] c"conv12__Z23test_initial_conditionsv\00", align 1
@2282 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2283 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2284 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2285 = private unnamed_addr constant [35 x i8] c"cmp13__Z23test_initial_conditionsv\00", align 1
@2286 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@2287 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2288 = private unnamed_addr constant [10 x i8] c"if.then14\00", align 1
@2289 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2290 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2291 = private unnamed_addr constant [36 x i8] c"call16__Z23test_initial_conditionsv\00", align 1
@2292 = private unnamed_addr constant [39 x i8] c"_ZNK17VelocitySmoothing8getVelSpEv_RET\00", align 1
@2293 = private unnamed_addr constant [36 x i8] c"conv17__Z23test_initial_conditionsv\00", align 1
@2294 = private unnamed_addr constant [36 x i8] c"call16__Z23test_initial_conditionsv\00", align 1
@2295 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2296 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2297 = private unnamed_addr constant [35 x i8] c"cmp18__Z23test_initial_conditionsv\00", align 1
@2298 = private unnamed_addr constant [36 x i8] c"conv17__Z23test_initial_conditionsv\00", align 1
@2299 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2300 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2301 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2302 = private unnamed_addr constant [35 x i8] c"cmp18__Z23test_initial_conditionsv\00", align 1
@2303 = private unnamed_addr constant [9 x i8] c"if.end15\00", align 1
@2304 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2305 = private unnamed_addr constant [10 x i8] c"if.then19\00", align 1
@2306 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2307 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2308 = private unnamed_addr constant [36 x i8] c"call21__Z23test_initial_conditionsv\00", align 1
@2309 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentVelocityEv_RET\00", align 1
@2310 = private unnamed_addr constant [36 x i8] c"conv22__Z23test_initial_conditionsv\00", align 1
@2311 = private unnamed_addr constant [36 x i8] c"call21__Z23test_initial_conditionsv\00", align 1
@2312 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2313 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2314 = private unnamed_addr constant [35 x i8] c"cmp23__Z23test_initial_conditionsv\00", align 1
@2315 = private unnamed_addr constant [36 x i8] c"conv22__Z23test_initial_conditionsv\00", align 1
@2316 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2317 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2318 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2319 = private unnamed_addr constant [35 x i8] c"cmp23__Z23test_initial_conditionsv\00", align 1
@2320 = private unnamed_addr constant [9 x i8] c"if.end20\00", align 1
@2321 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2322 = private unnamed_addr constant [10 x i8] c"if.then24\00", align 1
@2323 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2324 = private unnamed_addr constant [40 x i8] c"trajectory__Z23test_initial_conditionsv\00", align 1
@2325 = private unnamed_addr constant [36 x i8] c"call26__Z23test_initial_conditionsv\00", align 1
@2326 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@2327 = private unnamed_addr constant [36 x i8] c"conv27__Z23test_initial_conditionsv\00", align 1
@2328 = private unnamed_addr constant [36 x i8] c"call26__Z23test_initial_conditionsv\00", align 1
@2329 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2330 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2331 = private unnamed_addr constant [35 x i8] c"cmp28__Z23test_initial_conditionsv\00", align 1
@2332 = private unnamed_addr constant [36 x i8] c"conv27__Z23test_initial_conditionsv\00", align 1
@2333 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2334 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2335 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2336 = private unnamed_addr constant [35 x i8] c"cmp28__Z23test_initial_conditionsv\00", align 1
@2337 = private unnamed_addr constant [9 x i8] c"if.end25\00", align 1
@2338 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2339 = private unnamed_addr constant [10 x i8] c"if.then29\00", align 1
@2340 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2341 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2342 = private unnamed_addr constant [36 x i8] c"tobool__Z23test_initial_conditionsv\00", align 1
@2343 = private unnamed_addr constant [34 x i8] c"tmp__Z23test_initial_conditionsv4\00", align 1
@2344 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@2345 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@2346 = private unnamed_addr constant [33 x i8] c"_Z23test_initial_conditionsv_RET\00", align 1
@2347 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2348 = private unnamed_addr constant [9 x i8] c"if.end30\00", align 1
@2349 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2350 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2351 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2352 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2353 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2354 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2355 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2356 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2357 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2358 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2359 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2360 = private unnamed_addr constant [28 x i8] c"tmp__Z18test_getter_setterv\00", align 1
@2361 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv1\00", align 1
@2362 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv2\00", align 1
@2363 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv2\00", align 1
@2364 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2365 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2366 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2367 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2368 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@2369 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv3\00", align 1
@2370 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2371 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2372 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2373 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2374 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@2375 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2376 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2377 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2378 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2379 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2380 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@2381 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2382 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2383 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2384 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2385 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2386 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@2387 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2388 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2389 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentPositionEf_RET\00", align 1
@2390 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@2391 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2392 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2393 = private unnamed_addr constant [29 x i8] c"call__Z18test_getter_setterv\00", align 1
@2394 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@2395 = private unnamed_addr constant [28 x i8] c"cmp__Z18test_getter_setterv\00", align 1
@2396 = private unnamed_addr constant [29 x i8] c"call__Z18test_getter_setterv\00", align 1
@2397 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2398 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2399 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2400 = private unnamed_addr constant [28 x i8] c"cmp__Z18test_getter_setterv\00", align 1
@2401 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2402 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2403 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2404 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2405 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2406 = private unnamed_addr constant [30 x i8] c"call1__Z18test_getter_setterv\00", align 1
@2407 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2408 = private unnamed_addr constant [29 x i8] c"cmp2__Z18test_getter_setterv\00", align 1
@2409 = private unnamed_addr constant [30 x i8] c"call1__Z18test_getter_setterv\00", align 1
@2410 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2411 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2412 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2413 = private unnamed_addr constant [29 x i8] c"cmp2__Z18test_getter_setterv\00", align 1
@2414 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2415 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2416 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@2417 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2418 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2419 = private unnamed_addr constant [30 x i8] c"call5__Z18test_getter_setterv\00", align 1
@2420 = private unnamed_addr constant [40 x i8] c"_ZNK17VelocitySmoothing9getMaxVelEv_RET\00", align 1
@2421 = private unnamed_addr constant [29 x i8] c"cmp6__Z18test_getter_setterv\00", align 1
@2422 = private unnamed_addr constant [30 x i8] c"call5__Z18test_getter_setterv\00", align 1
@2423 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2424 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2425 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2426 = private unnamed_addr constant [29 x i8] c"cmp6__Z18test_getter_setterv\00", align 1
@2427 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@2428 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2429 = private unnamed_addr constant [9 x i8] c"if.then7\00", align 1
@2430 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2431 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_getter_setterv\00", align 1
@2432 = private unnamed_addr constant [30 x i8] c"call9__Z18test_getter_setterv\00", align 1
@2433 = private unnamed_addr constant [50 x i8] c"_ZNK17VelocitySmoothing18getCurrentPositionEv_RET\00", align 1
@2434 = private unnamed_addr constant [30 x i8] c"cmp10__Z18test_getter_setterv\00", align 1
@2435 = private unnamed_addr constant [30 x i8] c"call9__Z18test_getter_setterv\00", align 1
@2436 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2437 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2438 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2439 = private unnamed_addr constant [30 x i8] c"cmp10__Z18test_getter_setterv\00", align 1
@2440 = private unnamed_addr constant [8 x i8] c"if.end8\00", align 1
@2441 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@2442 = private unnamed_addr constant [10 x i8] c"if.then11\00", align 1
@2443 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2444 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2445 = private unnamed_addr constant [31 x i8] c"tobool__Z18test_getter_setterv\00", align 1
@2446 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_getter_setterv4\00", align 1
@2447 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@2448 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@2449 = private unnamed_addr constant [28 x i8] c"_Z18test_getter_setterv_RET\00", align 1
@2450 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2451 = private unnamed_addr constant [9 x i8] c"if.end12\00", align 1
@2452 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2453 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2454 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2455 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2456 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2457 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2458 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2459 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2460 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2461 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2462 = private unnamed_addr constant [11 x i8] c"trajectory\00", align 1
@2463 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2464 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2465 = private unnamed_addr constant [53 x i8] c"_Z24make_trajectory_symbolicP17VelocitySmoothing_RET\00", align 1
@2466 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@2467 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2468 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2469 = private unnamed_addr constant [51 x i8] c"_Z22stg_initial_trajectoryP17VelocitySmoothing_RET\00", align 1
@2470 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2471 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2472 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@2473 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2474 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@2475 = private unnamed_addr constant [18 x i8] c"(float -2.052579)\00", align 1
@2476 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@2477 = private unnamed_addr constant [17 x i8] c"(float 4.966730)\00", align 1
@2478 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@2479 = private unnamed_addr constant [17 x i8] c"(float 0.334284)\00", align 1
@2480 = private unnamed_addr constant [25 x i8] c"call__Z14test_computeT1v\00", align 1
@2481 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing9computeT1Effff_RET\00", align 1
@2482 = private unnamed_addr constant [25 x i8] c"call__Z14test_computeT1v\00", align 1
@2483 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_computeT1v\00", align 1
@2484 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_computeT1v\00", align 1
@2485 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_computeT1v\00", align 1
@2486 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_computeT1v\00", align 1
@2487 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2488 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2489 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2490 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_computeT1v\00", align 1
@2491 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2492 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2493 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2494 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2495 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2496 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@2497 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2498 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@2499 = private unnamed_addr constant [17 x i8] c"(float 1.100000)\00", align 1
@2500 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@2501 = private unnamed_addr constant [17 x i8] c"(float 1.200000)\00", align 1
@2502 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@2503 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2504 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@2505 = private unnamed_addr constant [17 x i8] c"(float 5.000000)\00", align 1
@2506 = private unnamed_addr constant [26 x i8] c"call1__Z14test_computeT1v\00", align 1
@2507 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT1Efffff_RET\00", align 1
@2508 = private unnamed_addr constant [26 x i8] c"call1__Z14test_computeT1v\00", align 1
@2509 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v1\00", align 1
@2510 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v1\00", align 1
@2511 = private unnamed_addr constant [25 x i8] c"cmp2__Z14test_computeT1v\00", align 1
@2512 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v1\00", align 1
@2513 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2514 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2515 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2516 = private unnamed_addr constant [25 x i8] c"cmp2__Z14test_computeT1v\00", align 1
@2517 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2518 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2519 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@2520 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2521 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_computeT1v\00", align 1
@2522 = private unnamed_addr constant [5 x i8] c"T123\00", align 1
@2523 = private unnamed_addr constant [17 x i8] c"(float 0.861905)\00", align 1
@2524 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@2525 = private unnamed_addr constant [17 x i8] c"(float 0.769221)\00", align 1
@2526 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@2527 = private unnamed_addr constant [17 x i8] c"(float 0.052579)\00", align 1
@2528 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@2529 = private unnamed_addr constant [17 x i8] c"(float 0.966730)\00", align 1
@2530 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@2531 = private unnamed_addr constant [17 x i8] c"(float 0.334284)\00", align 1
@2532 = private unnamed_addr constant [26 x i8] c"call5__Z14test_computeT1v\00", align 1
@2533 = private unnamed_addr constant [43 x i8] c"_ZN17VelocitySmoothing9computeT1Efffff_RET\00", align 1
@2534 = private unnamed_addr constant [26 x i8] c"call5__Z14test_computeT1v\00", align 1
@2535 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v2\00", align 1
@2536 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v2\00", align 1
@2537 = private unnamed_addr constant [25 x i8] c"conv__Z14test_computeT1v\00", align 1
@2538 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v2\00", align 1
@2539 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2540 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2541 = private unnamed_addr constant [24 x i8] c"sub__Z14test_computeT1v\00", align 1
@2542 = private unnamed_addr constant [25 x i8] c"conv__Z14test_computeT1v\00", align 1
@2543 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@2544 = private unnamed_addr constant [19 x i8] c"(double -0.449905)\00", align 1
@2545 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@2546 = private unnamed_addr constant [24 x i8] c"sub__Z14test_computeT1v\00", align 1
@2547 = private unnamed_addr constant [26 x i8] c"call6__Z14test_computeT1v\00", align 1
@2548 = private unnamed_addr constant [29 x i8] c"_ZN4math6fabs_tIdEET_S1__RET\00", align 1
@2549 = private unnamed_addr constant [25 x i8] c"cmp7__Z14test_computeT1v\00", align 1
@2550 = private unnamed_addr constant [26 x i8] c"call6__Z14test_computeT1v\00", align 1
@2551 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@2552 = private unnamed_addr constant [18 x i8] c"(double 0.000010)\00", align 1
@2553 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2554 = private unnamed_addr constant [25 x i8] c"cmp7__Z14test_computeT1v\00", align 1
@2555 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@2556 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2557 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@2558 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2559 = private unnamed_addr constant [8 x i8] c"if.end9\00", align 1
@2560 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v3\00", align 1
@2561 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v3\00", align 1
@2562 = private unnamed_addr constant [24 x i8] c"_Z14test_computeT1v_RET\00", align 1
@2563 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_computeT1v3\00", align 1
@2564 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@2565 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@2566 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_\00", align 1
@2567 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_\00", align 1
@2568 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math6fabs_tIdEET_S1_\00", align 1
@2569 = private unnamed_addr constant [29 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_\00", align 1
@2570 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@2571 = private unnamed_addr constant [18 x i8] c"(double 0.000000)\00", align 1
@2572 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2573 = private unnamed_addr constant [29 x i8] c"cmp__ZN4math6fabs_tIdEET_S1_\00", align 1
@2574 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2575 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_1\00", align 1
@2576 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_1\00", align 1
@2577 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@2578 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_2\00", align 1
@2579 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_2\00", align 1
@2580 = private unnamed_addr constant [29 x i8] c"sub__ZN4math6fabs_tIdEET_S1_\00", align 1
@2581 = private unnamed_addr constant [19 x i8] c"(double -0.000000)\00", align 1
@2582 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@2583 = private unnamed_addr constant [30 x i8] c"tmp__ZN4math6fabs_tIdEET_S1_2\00", align 1
@2584 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@2585 = private unnamed_addr constant [30 x i8] c"cond__ZN4math6fabs_tIdEET_S1_\00", align 1
@2586 = private unnamed_addr constant [81 x i8] c"cond.true,tmp__ZN4math6fabs_tIdEET_S1_1,cond.false,sub__ZN4math6fabs_tIdEET_S1_,\00", align 1
@2587 = private unnamed_addr constant [29 x i8] c"_ZN4math6fabs_tIdEET_S1__RET\00", align 1
@2588 = private unnamed_addr constant [30 x i8] c"cond__ZN4math6fabs_tIdEET_S1_\00", align 1
@2589 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@2590 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2591 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2592 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2593 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2594 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2595 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2596 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2597 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2598 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2599 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2600 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2601 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2602 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2603 = private unnamed_addr constant [25 x i8] c"call__Z14test_edge_casev\00", align 1
@2604 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@2605 = private unnamed_addr constant [25 x i8] c"call__Z14test_edge_casev\00", align 1
@2606 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_edge_casev\00", align 1
@2607 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev1\00", align 1
@2608 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev2\00", align 1
@2609 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev3\00", align 1
@2610 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev3\00", align 1
@2611 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev4\00", align 1
@2612 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev5\00", align 1
@2613 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev5\00", align 1
@2614 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2615 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2616 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2617 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2618 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@2619 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev6\00", align 1
@2620 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2621 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2622 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2623 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2624 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2625 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2626 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@2627 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev7\00", align 1
@2628 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2629 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2630 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2631 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2632 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@2633 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2634 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2635 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2636 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2637 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2638 = private unnamed_addr constant [26 x i8] c"call1__Z14test_edge_casev\00", align 1
@2639 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT1Ev_RET\00", align 1
@2640 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_edge_casev\00", align 1
@2641 = private unnamed_addr constant [26 x i8] c"call1__Z14test_edge_casev\00", align 1
@2642 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2643 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2644 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2645 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_edge_casev\00", align 1
@2646 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2647 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2648 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@2649 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2650 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2651 = private unnamed_addr constant [26 x i8] c"call2__Z14test_edge_casev\00", align 1
@2652 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT2Ev_RET\00", align 1
@2653 = private unnamed_addr constant [25 x i8] c"cmp3__Z14test_edge_casev\00", align 1
@2654 = private unnamed_addr constant [26 x i8] c"call2__Z14test_edge_casev\00", align 1
@2655 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2656 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2657 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2658 = private unnamed_addr constant [25 x i8] c"cmp3__Z14test_edge_casev\00", align 1
@2659 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@2660 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2661 = private unnamed_addr constant [9 x i8] c"if.then4\00", align 1
@2662 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2663 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_edge_casev\00", align 1
@2664 = private unnamed_addr constant [26 x i8] c"call6__Z14test_edge_casev\00", align 1
@2665 = private unnamed_addr constant [36 x i8] c"_ZNK17VelocitySmoothing5getT3Ev_RET\00", align 1
@2666 = private unnamed_addr constant [25 x i8] c"cmp7__Z14test_edge_casev\00", align 1
@2667 = private unnamed_addr constant [26 x i8] c"call6__Z14test_edge_casev\00", align 1
@2668 = private unnamed_addr constant [5 x i8] c"fune\00", align 1
@2669 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2670 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2671 = private unnamed_addr constant [25 x i8] c"cmp7__Z14test_edge_casev\00", align 1
@2672 = private unnamed_addr constant [8 x i8] c"if.end5\00", align 1
@2673 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2674 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@2675 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2676 = private unnamed_addr constant [8 x i8] c"if.end9\00", align 1
@2677 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2678 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2679 = private unnamed_addr constant [24 x i8] c"_Z14test_edge_casev_RET\00", align 1
@2680 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_edge_casev8\00", align 1
@2681 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@2682 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2683 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2684 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2685 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2686 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2687 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2688 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2689 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2690 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2691 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2692 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2693 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2694 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_velsp_negv\00", align 1
@2695 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv1\00", align 1
@2696 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv2\00", align 1
@2697 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv3\00", align 1
@2698 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv3\00", align 1
@2699 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv4\00", align 1
@2700 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv5\00", align 1
@2701 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv5\00", align 1
@2702 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2703 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2704 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@2705 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2706 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2707 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2708 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv6\00", align 1
@2709 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv6\00", align 1
@2710 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2711 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2712 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@2713 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv6\00", align 1
@2714 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2715 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2716 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2717 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2718 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@2719 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2720 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2721 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2722 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2723 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2724 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@2725 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2726 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2727 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@2728 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv7\00", align 1
@2729 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv7\00", align 1
@2730 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2731 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2732 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@2733 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv7\00", align 1
@2734 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2735 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2736 = private unnamed_addr constant [18 x i8] c"(float -1.000000)\00", align 1
@2737 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2738 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2739 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@2740 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2741 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@2742 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2743 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2744 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2745 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv8\00", align 1
@2746 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv8\00", align 1
@2747 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2748 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2749 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@2750 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv8\00", align 1
@2751 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2752 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2753 = private unnamed_addr constant [17 x i8] c"(float 0.100000)\00", align 1
@2754 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2755 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2756 = private unnamed_addr constant [25 x i8] c"call__Z14test_velsp_negv\00", align 1
@2757 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@2758 = private unnamed_addr constant [25 x i8] c"call__Z14test_velsp_negv\00", align 1
@2759 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@2760 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv9\00", align 1
@2761 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv9\00", align 1
@2762 = private unnamed_addr constant [25 x i8] c"conv__Z14test_velsp_negv\00", align 1
@2763 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_negv9\00", align 1
@2764 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2765 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2766 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2767 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2768 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv10\00", align 1
@2769 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv10\00", align 1
@2770 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv11\00", align 1
@2771 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv11\00", align 1
@2772 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_velsp_negv\00", align 1
@2773 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv10\00", align 1
@2774 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@2775 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv11\00", align 1
@2776 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@2777 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_velsp_negv\00", align 1
@2778 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@2779 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2780 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2781 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@2782 = private unnamed_addr constant [17 x i8] c"(float 0.100000)\00", align 1
@2783 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@2784 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2785 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2786 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2787 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv12\00", align 1
@2788 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv12\00", align 1
@2789 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2790 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_negv\00", align 1
@2791 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@2792 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv12\00", align 1
@2793 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2794 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2795 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@2796 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv13\00", align 1
@2797 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv13\00", align 1
@2798 = private unnamed_addr constant [24 x i8] c"inc__Z14test_velsp_negv\00", align 1
@2799 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_negv13\00", align 1
@2800 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@2801 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2802 = private unnamed_addr constant [24 x i8] c"inc__Z14test_velsp_negv\00", align 1
@2803 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@2804 = private unnamed_addr constant [24 x i8] c"_Z14test_velsp_negv_RET\00", align 1
@2805 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2806 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@2807 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2808 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2809 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2810 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2811 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2812 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2813 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2814 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2815 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2816 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2817 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2818 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2819 = private unnamed_addr constant [25 x i8] c"tmp__Z15test_velsp_zerov\00", align 1
@2820 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov1\00", align 1
@2821 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov2\00", align 1
@2822 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov3\00", align 1
@2823 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov3\00", align 1
@2824 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov4\00", align 1
@2825 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov5\00", align 1
@2826 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov5\00", align 1
@2827 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2828 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2829 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@2830 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2831 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2832 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2833 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov6\00", align 1
@2834 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov6\00", align 1
@2835 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2836 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2837 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@2838 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov6\00", align 1
@2839 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2840 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2841 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2842 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2843 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@2844 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2845 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2846 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2847 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2848 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2849 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@2850 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2851 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2852 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@2853 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov7\00", align 1
@2854 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov7\00", align 1
@2855 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2856 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2857 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@2858 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov7\00", align 1
@2859 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2860 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@2861 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2862 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2863 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2864 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@2865 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2866 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@2867 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2868 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2869 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2870 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov8\00", align 1
@2871 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov8\00", align 1
@2872 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2873 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2874 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@2875 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov8\00", align 1
@2876 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2877 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2878 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2879 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2880 = private unnamed_addr constant [26 x i8] c"call__Z15test_velsp_zerov\00", align 1
@2881 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@2882 = private unnamed_addr constant [26 x i8] c"call__Z15test_velsp_zerov\00", align 1
@2883 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov9\00", align 1
@2884 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov9\00", align 1
@2885 = private unnamed_addr constant [26 x i8] c"conv__Z15test_velsp_zerov\00", align 1
@2886 = private unnamed_addr constant [26 x i8] c"tmp__Z15test_velsp_zerov9\00", align 1
@2887 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2888 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2889 = private unnamed_addr constant [25 x i8] c"div__Z15test_velsp_zerov\00", align 1
@2890 = private unnamed_addr constant [26 x i8] c"conv__Z15test_velsp_zerov\00", align 1
@2891 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@2892 = private unnamed_addr constant [18 x i8] c"(double 3.000000)\00", align 1
@2893 = private unnamed_addr constant [27 x i8] c"conv1__Z15test_velsp_zerov\00", align 1
@2894 = private unnamed_addr constant [25 x i8] c"div__Z15test_velsp_zerov\00", align 1
@2895 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@2896 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@2897 = private unnamed_addr constant [27 x i8] c"conv1__Z15test_velsp_zerov\00", align 1
@2898 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@2899 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov10\00", align 1
@2900 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov10\00", align 1
@2901 = private unnamed_addr constant [27 x i8] c"conv2__Z15test_velsp_zerov\00", align 1
@2902 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov10\00", align 1
@2903 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@2904 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@2905 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@2906 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@2907 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov11\00", align 1
@2908 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov11\00", align 1
@2909 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov12\00", align 1
@2910 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov12\00", align 1
@2911 = private unnamed_addr constant [25 x i8] c"cmp__Z15test_velsp_zerov\00", align 1
@2912 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov11\00", align 1
@2913 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@2914 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov12\00", align 1
@2915 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@2916 = private unnamed_addr constant [25 x i8] c"cmp__Z15test_velsp_zerov\00", align 1
@2917 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@2918 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov13\00", align 1
@2919 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov13\00", align 1
@2920 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2921 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2922 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@2923 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov13\00", align 1
@2924 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@2925 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@2926 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2927 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@2928 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov14\00", align 1
@2929 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov14\00", align 1
@2930 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2931 = private unnamed_addr constant [32 x i8] c"trajectory__Z15test_velsp_zerov\00", align 1
@2932 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@2933 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov14\00", align 1
@2934 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2935 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@2936 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@2937 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov15\00", align 1
@2938 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov15\00", align 1
@2939 = private unnamed_addr constant [25 x i8] c"inc__Z15test_velsp_zerov\00", align 1
@2940 = private unnamed_addr constant [27 x i8] c"tmp__Z15test_velsp_zerov15\00", align 1
@2941 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@2942 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@2943 = private unnamed_addr constant [25 x i8] c"inc__Z15test_velsp_zerov\00", align 1
@2944 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@2945 = private unnamed_addr constant [25 x i8] c"_Z15test_velsp_zerov_RET\00", align 1
@2946 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2947 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@2948 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2949 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2950 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@2951 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2952 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@2953 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2954 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@2955 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2956 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2957 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@2958 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2959 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2960 = private unnamed_addr constant [24 x i8] c"tmp__Z14test_velsp_posv\00", align 1
@2961 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv1\00", align 1
@2962 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv2\00", align 1
@2963 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv3\00", align 1
@2964 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv3\00", align 1
@2965 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv4\00", align 1
@2966 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv5\00", align 1
@2967 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv5\00", align 1
@2968 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2969 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2970 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@2971 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@2972 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2973 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@2974 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv6\00", align 1
@2975 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv6\00", align 1
@2976 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2977 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2978 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@2979 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv6\00", align 1
@2980 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2981 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@2982 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2983 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2984 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@2985 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@2986 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2987 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@2988 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2989 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2990 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@2991 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@2992 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2993 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@2994 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv7\00", align 1
@2995 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv7\00", align 1
@2996 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@2997 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@2998 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@2999 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv7\00", align 1
@3000 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3001 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@3002 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@3003 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3004 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@3005 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@3006 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3007 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@3008 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@3009 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3010 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@3011 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv8\00", align 1
@3012 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv8\00", align 1
@3013 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3014 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@3015 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@3016 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv8\00", align 1
@3017 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3018 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@3019 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3020 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@3021 = private unnamed_addr constant [25 x i8] c"call__Z14test_velsp_posv\00", align 1
@3022 = private unnamed_addr constant [44 x i8] c"_ZNK17VelocitySmoothing12getTotalTimeEv_RET\00", align 1
@3023 = private unnamed_addr constant [25 x i8] c"call__Z14test_velsp_posv\00", align 1
@3024 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv9\00", align 1
@3025 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv9\00", align 1
@3026 = private unnamed_addr constant [25 x i8] c"conv__Z14test_velsp_posv\00", align 1
@3027 = private unnamed_addr constant [25 x i8] c"tmp__Z14test_velsp_posv9\00", align 1
@3028 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@3029 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@3030 = private unnamed_addr constant [24 x i8] c"div__Z14test_velsp_posv\00", align 1
@3031 = private unnamed_addr constant [25 x i8] c"conv__Z14test_velsp_posv\00", align 1
@3032 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@3033 = private unnamed_addr constant [18 x i8] c"(double 3.000000)\00", align 1
@3034 = private unnamed_addr constant [26 x i8] c"conv1__Z14test_velsp_posv\00", align 1
@3035 = private unnamed_addr constant [24 x i8] c"div__Z14test_velsp_posv\00", align 1
@3036 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@3037 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@3038 = private unnamed_addr constant [26 x i8] c"conv1__Z14test_velsp_posv\00", align 1
@3039 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@3040 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv10\00", align 1
@3041 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv10\00", align 1
@3042 = private unnamed_addr constant [26 x i8] c"conv2__Z14test_velsp_posv\00", align 1
@3043 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv10\00", align 1
@3044 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@3045 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@3046 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3047 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@3048 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv11\00", align 1
@3049 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv11\00", align 1
@3050 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv12\00", align 1
@3051 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv12\00", align 1
@3052 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_velsp_posv\00", align 1
@3053 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv11\00", align 1
@3054 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@3055 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv12\00", align 1
@3056 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3057 = private unnamed_addr constant [24 x i8] c"cmp__Z14test_velsp_posv\00", align 1
@3058 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@3059 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv13\00", align 1
@3060 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv13\00", align 1
@3061 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3062 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@3063 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@3064 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv13\00", align 1
@3065 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@3066 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@3067 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3068 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@3069 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv14\00", align 1
@3070 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv14\00", align 1
@3071 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3072 = private unnamed_addr constant [31 x i8] c"trajectory__Z14test_velsp_posv\00", align 1
@3073 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@3074 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv14\00", align 1
@3075 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3076 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@3077 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@3078 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv15\00", align 1
@3079 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv15\00", align 1
@3080 = private unnamed_addr constant [24 x i8] c"inc__Z14test_velsp_posv\00", align 1
@3081 = private unnamed_addr constant [26 x i8] c"tmp__Z14test_velsp_posv15\00", align 1
@3082 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@3083 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@3084 = private unnamed_addr constant [24 x i8] c"inc__Z14test_velsp_posv\00", align 1
@3085 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@3086 = private unnamed_addr constant [24 x i8] c"_Z14test_velsp_posv_RET\00", align 1
@3087 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@3088 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@3089 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@3090 = private unnamed_addr constant [40 x i8] c"arrayctor.cur__Z20test_trajectory_syncv\00", align 1
@3091 = private unnamed_addr constant [75 x i8] c"entry,array.begin__Z20test_trajectory_syncv,arrayctor.loop,arrayctor.next,\00", align 1
@3092 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3093 = private unnamed_addr constant [40 x i8] c"arrayctor.cur__Z20test_trajectory_syncv\00", align 1
@3094 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@3095 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3096 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@3097 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3098 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@3099 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3101 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@3102 = private unnamed_addr constant [41 x i8] c"arrayctor.done__Z20test_trajectory_syncv\00", align 1
@3103 = private unnamed_addr constant [41 x i8] c"arrayctor.next__Z20test_trajectory_syncv\00", align 1
@3104 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@3105 = private unnamed_addr constant [40 x i8] c"arrayctor.end__Z20test_trajectory_syncv\00", align 1
@3106 = private unnamed_addr constant [26 x i8] c"%class.VelocitySmoothing*\00", align 1
@3107 = private unnamed_addr constant [41 x i8] c"arrayctor.done__Z20test_trajectory_syncv\00", align 1
@3108 = private unnamed_addr constant [15 x i8] c"arrayctor.loop\00", align 1
@3109 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3110 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@3111 = private unnamed_addr constant [30 x i8] c"tmp__Z20test_trajectory_syncv\00", align 1
@3112 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv1\00", align 1
@3113 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv2\00", align 1
@3114 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv3\00", align 1
@3115 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv3\00", align 1
@3116 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv4\00", align 1
@3117 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv5\00", align 1
@3118 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv5\00", align 1
@3119 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv6\00", align 1
@3120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3121 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv6\00", align 1
@3122 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@3123 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@3124 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@3125 = private unnamed_addr constant [21 x i8] c"llvm.memset.p0i8.i64\00", align 1
@3126 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@3127 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv7\00", align 1
@3128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3129 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv7\00", align 1
@3130 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@3131 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@3132 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@3133 = private unnamed_addr constant [21 x i8] c"llvm.memset.p0i8.i64\00", align 1
@3134 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@3135 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv8\00", align 1
@3136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3137 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv8\00", align 1
@3138 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@3139 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@3140 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@3141 = private unnamed_addr constant [21 x i8] c"llvm.memset.p0i8.i64\00", align 1
@3142 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@3143 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@3144 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@3145 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3146 = private unnamed_addr constant [15 x i8] c"arrayctor.cont\00", align 1
@3147 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv9\00", align 1
@3148 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv9\00", align 1
@3149 = private unnamed_addr constant [30 x i8] c"cmp__Z20test_trajectory_syncv\00", align 1
@3150 = private unnamed_addr constant [31 x i8] c"tmp__Z20test_trajectory_syncv9\00", align 1
@3151 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@3152 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@3153 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3154 = private unnamed_addr constant [30 x i8] c"cmp__Z20test_trajectory_syncv\00", align 1
@3155 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@3156 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv10\00", align 1
@3157 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv10\00", align 1
@3158 = private unnamed_addr constant [34 x i8] c"idxprom__Z20test_trajectory_syncv\00", align 1
@3159 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv10\00", align 1
@3160 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3161 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3162 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv11\00", align 1
@3163 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv11\00", align 1
@3164 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3165 = private unnamed_addr constant [35 x i8] c"arrayidx__Z20test_trajectory_syncv\00", align 1
@3166 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@3167 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv11\00", align 1
@3168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3169 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@3170 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv12\00", align 1
@3171 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv12\00", align 1
@3172 = private unnamed_addr constant [35 x i8] c"idxprom1__Z20test_trajectory_syncv\00", align 1
@3173 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv12\00", align 1
@3174 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3175 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3176 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv13\00", align 1
@3177 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv13\00", align 1
@3178 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3179 = private unnamed_addr constant [36 x i8] c"arrayidx2__Z20test_trajectory_syncv\00", align 1
@3180 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@3181 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv13\00", align 1
@3182 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3183 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@3184 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv14\00", align 1
@3185 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv14\00", align 1
@3186 = private unnamed_addr constant [35 x i8] c"idxprom3__Z20test_trajectory_syncv\00", align 1
@3187 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv14\00", align 1
@3188 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3189 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3190 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv15\00", align 1
@3191 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv15\00", align 1
@3192 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3193 = private unnamed_addr constant [36 x i8] c"arrayidx4__Z20test_trajectory_syncv\00", align 1
@3194 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@3195 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv15\00", align 1
@3196 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3197 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@3198 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv16\00", align 1
@3199 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv16\00", align 1
@3200 = private unnamed_addr constant [35 x i8] c"idxprom5__Z20test_trajectory_syncv\00", align 1
@3201 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv16\00", align 1
@3202 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3203 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3204 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv17\00", align 1
@3205 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv17\00", align 1
@3206 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3207 = private unnamed_addr constant [36 x i8] c"arrayidx6__Z20test_trajectory_syncv\00", align 1
@3208 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@3209 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv17\00", align 1
@3210 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3211 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@3212 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv18\00", align 1
@3213 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv18\00", align 1
@3214 = private unnamed_addr constant [35 x i8] c"idxprom7__Z20test_trajectory_syncv\00", align 1
@3215 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv18\00", align 1
@3216 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3217 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3218 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv19\00", align 1
@3219 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv19\00", align 1
@3220 = private unnamed_addr constant [35 x i8] c"idxprom9__Z20test_trajectory_syncv\00", align 1
@3221 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv19\00", align 1
@3222 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3223 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3224 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv20\00", align 1
@3225 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv20\00", align 1
@3226 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3227 = private unnamed_addr constant [36 x i8] c"arrayidx8__Z20test_trajectory_syncv\00", align 1
@3228 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@3229 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv20\00", align 1
@3230 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3231 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@3232 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@3233 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv21\00", align 1
@3234 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv21\00", align 1
@3235 = private unnamed_addr constant [30 x i8] c"inc__Z20test_trajectory_syncv\00", align 1
@3236 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv21\00", align 1
@3237 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@3238 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@3239 = private unnamed_addr constant [30 x i8] c"inc__Z20test_trajectory_syncv\00", align 1
@3240 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@3241 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@3242 = private unnamed_addr constant [17 x i8] c"(float 0.010000)\00", align 1
@3243 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv22\00", align 1
@3244 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3245 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv22\00", align 1
@3246 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3247 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@3248 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@3249 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@3250 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@3251 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3252 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@3253 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv23\00", align 1
@3254 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv23\00", align 1
@3255 = private unnamed_addr constant [32 x i8] c"cmp13__Z20test_trajectory_syncv\00", align 1
@3256 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv23\00", align 1
@3257 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@3258 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@3259 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3260 = private unnamed_addr constant [32 x i8] c"cmp13__Z20test_trajectory_syncv\00", align 1
@3261 = private unnamed_addr constant [11 x i8] c"for.cond12\00", align 1
@3262 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv24\00", align 1
@3263 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv24\00", align 1
@3264 = private unnamed_addr constant [36 x i8] c"idxprom15__Z20test_trajectory_syncv\00", align 1
@3265 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv24\00", align 1
@3266 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3267 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3268 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv25\00", align 1
@3269 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv25\00", align 1
@3270 = private unnamed_addr constant [36 x i8] c"idxprom17__Z20test_trajectory_syncv\00", align 1
@3271 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv25\00", align 1
@3272 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3273 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3274 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv26\00", align 1
@3275 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv26\00", align 1
@3276 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3277 = private unnamed_addr constant [37 x i8] c"arrayidx16__Z20test_trajectory_syncv\00", align 1
@3278 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@3279 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv26\00", align 1
@3280 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3281 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@3282 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv27\00", align 1
@3283 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv27\00", align 1
@3284 = private unnamed_addr constant [36 x i8] c"idxprom19__Z20test_trajectory_syncv\00", align 1
@3285 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv27\00", align 1
@3286 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3287 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3288 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3289 = private unnamed_addr constant [37 x i8] c"arrayidx20__Z20test_trajectory_syncv\00", align 1
@3290 = private unnamed_addr constant [31 x i8] c"call__Z20test_trajectory_syncv\00", align 1
@3291 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@3292 = private unnamed_addr constant [31 x i8] c"conv__Z20test_trajectory_syncv\00", align 1
@3293 = private unnamed_addr constant [31 x i8] c"call__Z20test_trajectory_syncv\00", align 1
@3294 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3295 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3296 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv28\00", align 1
@3297 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv28\00", align 1
@3298 = private unnamed_addr constant [33 x i8] c"tobool__Z20test_trajectory_syncv\00", align 1
@3299 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv28\00", align 1
@3300 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3301 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3302 = private unnamed_addr constant [33 x i8] c"conv21__Z20test_trajectory_syncv\00", align 1
@3303 = private unnamed_addr constant [33 x i8] c"tobool__Z20test_trajectory_syncv\00", align 1
@3304 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3305 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3306 = private unnamed_addr constant [30 x i8] c"and__Z20test_trajectory_syncv\00", align 1
@3307 = private unnamed_addr constant [33 x i8] c"conv21__Z20test_trajectory_syncv\00", align 1
@3308 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@3309 = private unnamed_addr constant [31 x i8] c"conv__Z20test_trajectory_syncv\00", align 1
@3310 = private unnamed_addr constant [35 x i8] c"tobool22__Z20test_trajectory_syncv\00", align 1
@3311 = private unnamed_addr constant [30 x i8] c"and__Z20test_trajectory_syncv\00", align 1
@3312 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@3313 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3314 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3315 = private unnamed_addr constant [35 x i8] c"frombool__Z20test_trajectory_syncv\00", align 1
@3316 = private unnamed_addr constant [35 x i8] c"tobool22__Z20test_trajectory_syncv\00", align 1
@3317 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3318 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@3319 = private unnamed_addr constant [35 x i8] c"frombool__Z20test_trajectory_syncv\00", align 1
@3320 = private unnamed_addr constant [11 x i8] c"for.body14\00", align 1
@3321 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv29\00", align 1
@3322 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv29\00", align 1
@3323 = private unnamed_addr constant [32 x i8] c"inc24__Z20test_trajectory_syncv\00", align 1
@3324 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv29\00", align 1
@3325 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@3326 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@3327 = private unnamed_addr constant [32 x i8] c"inc24__Z20test_trajectory_syncv\00", align 1
@3328 = private unnamed_addr constant [10 x i8] c"for.inc23\00", align 1
@3329 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3330 = private unnamed_addr constant [10 x i8] c"for.end25\00", align 1
@3331 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv30\00", align 1
@3332 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv30\00", align 1
@3333 = private unnamed_addr constant [32 x i8] c"cmp28__Z20test_trajectory_syncv\00", align 1
@3334 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv30\00", align 1
@3335 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@3336 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@3337 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3338 = private unnamed_addr constant [32 x i8] c"cmp28__Z20test_trajectory_syncv\00", align 1
@3339 = private unnamed_addr constant [11 x i8] c"for.cond27\00", align 1
@3340 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv31\00", align 1
@3341 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv31\00", align 1
@3342 = private unnamed_addr constant [36 x i8] c"idxprom30__Z20test_trajectory_syncv\00", align 1
@3343 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv31\00", align 1
@3344 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3345 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3346 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3347 = private unnamed_addr constant [37 x i8] c"arrayidx31__Z20test_trajectory_syncv\00", align 1
@3348 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@3349 = private unnamed_addr constant [17 x i8] c"(float 0.010000)\00", align 1
@3350 = private unnamed_addr constant [13 x i8] c"time_stretch\00", align 1
@3351 = private unnamed_addr constant [17 x i8] c"(float 1.000000)\00", align 1
@3352 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3353 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing10updateTrajEff_RET\00", align 1
@3354 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv32\00", align 1
@3355 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv32\00", align 1
@3356 = private unnamed_addr constant [36 x i8] c"idxprom32__Z20test_trajectory_syncv\00", align 1
@3357 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv32\00", align 1
@3358 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3359 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3360 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3361 = private unnamed_addr constant [37 x i8] c"arrayidx33__Z20test_trajectory_syncv\00", align 1
@3362 = private unnamed_addr constant [33 x i8] c"call34__Z20test_trajectory_syncv\00", align 1
@3363 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@3364 = private unnamed_addr constant [33 x i8] c"conv35__Z20test_trajectory_syncv\00", align 1
@3365 = private unnamed_addr constant [33 x i8] c"call34__Z20test_trajectory_syncv\00", align 1
@3366 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3367 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3368 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv33\00", align 1
@3369 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv33\00", align 1
@3370 = private unnamed_addr constant [35 x i8] c"tobool36__Z20test_trajectory_syncv\00", align 1
@3371 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv33\00", align 1
@3372 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3373 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3374 = private unnamed_addr constant [33 x i8] c"conv37__Z20test_trajectory_syncv\00", align 1
@3375 = private unnamed_addr constant [35 x i8] c"tobool36__Z20test_trajectory_syncv\00", align 1
@3376 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3377 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3378 = private unnamed_addr constant [32 x i8] c"and38__Z20test_trajectory_syncv\00", align 1
@3379 = private unnamed_addr constant [33 x i8] c"conv37__Z20test_trajectory_syncv\00", align 1
@3380 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@3381 = private unnamed_addr constant [33 x i8] c"conv35__Z20test_trajectory_syncv\00", align 1
@3382 = private unnamed_addr constant [35 x i8] c"tobool39__Z20test_trajectory_syncv\00", align 1
@3383 = private unnamed_addr constant [32 x i8] c"and38__Z20test_trajectory_syncv\00", align 1
@3384 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@3385 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3386 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3387 = private unnamed_addr constant [37 x i8] c"frombool40__Z20test_trajectory_syncv\00", align 1
@3388 = private unnamed_addr constant [35 x i8] c"tobool39__Z20test_trajectory_syncv\00", align 1
@3389 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3390 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@3391 = private unnamed_addr constant [37 x i8] c"frombool40__Z20test_trajectory_syncv\00", align 1
@3392 = private unnamed_addr constant [11 x i8] c"for.body29\00", align 1
@3393 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv34\00", align 1
@3394 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv34\00", align 1
@3395 = private unnamed_addr constant [32 x i8] c"inc42__Z20test_trajectory_syncv\00", align 1
@3396 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv34\00", align 1
@3397 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@3398 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@3399 = private unnamed_addr constant [32 x i8] c"inc42__Z20test_trajectory_syncv\00", align 1
@3400 = private unnamed_addr constant [10 x i8] c"for.inc41\00", align 1
@3401 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3402 = private unnamed_addr constant [10 x i8] c"for.end43\00", align 1
@3403 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv35\00", align 1
@3404 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv35\00", align 1
@3405 = private unnamed_addr constant [32 x i8] c"cmp46__Z20test_trajectory_syncv\00", align 1
@3406 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv35\00", align 1
@3407 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@3408 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@3409 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3410 = private unnamed_addr constant [32 x i8] c"cmp46__Z20test_trajectory_syncv\00", align 1
@3411 = private unnamed_addr constant [11 x i8] c"for.cond45\00", align 1
@3412 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv36\00", align 1
@3413 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv36\00", align 1
@3414 = private unnamed_addr constant [36 x i8] c"idxprom48__Z20test_trajectory_syncv\00", align 1
@3415 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv36\00", align 1
@3416 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3417 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3418 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv37\00", align 1
@3419 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv37\00", align 1
@3420 = private unnamed_addr constant [36 x i8] c"idxprom50__Z20test_trajectory_syncv\00", align 1
@3421 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv37\00", align 1
@3422 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3423 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3424 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv38\00", align 1
@3425 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv38\00", align 1
@3426 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3427 = private unnamed_addr constant [37 x i8] c"arrayidx49__Z20test_trajectory_syncv\00", align 1
@3428 = private unnamed_addr constant [13 x i8] c"vel_setpoint\00", align 1
@3429 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv38\00", align 1
@3430 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3431 = private unnamed_addr constant [46 x i8] c"_ZN17VelocitySmoothing15updateDurationsEf_RET\00", align 1
@3432 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv39\00", align 1
@3433 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv39\00", align 1
@3434 = private unnamed_addr constant [36 x i8] c"idxprom52__Z20test_trajectory_syncv\00", align 1
@3435 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv39\00", align 1
@3436 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@3437 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@3438 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3439 = private unnamed_addr constant [37 x i8] c"arrayidx53__Z20test_trajectory_syncv\00", align 1
@3440 = private unnamed_addr constant [33 x i8] c"call54__Z20test_trajectory_syncv\00", align 1
@3441 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@3442 = private unnamed_addr constant [33 x i8] c"conv55__Z20test_trajectory_syncv\00", align 1
@3443 = private unnamed_addr constant [33 x i8] c"call54__Z20test_trajectory_syncv\00", align 1
@3444 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3445 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3446 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv40\00", align 1
@3447 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv40\00", align 1
@3448 = private unnamed_addr constant [35 x i8] c"tobool56__Z20test_trajectory_syncv\00", align 1
@3449 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv40\00", align 1
@3450 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3451 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3452 = private unnamed_addr constant [33 x i8] c"conv57__Z20test_trajectory_syncv\00", align 1
@3453 = private unnamed_addr constant [35 x i8] c"tobool56__Z20test_trajectory_syncv\00", align 1
@3454 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3455 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3456 = private unnamed_addr constant [32 x i8] c"and58__Z20test_trajectory_syncv\00", align 1
@3457 = private unnamed_addr constant [33 x i8] c"conv57__Z20test_trajectory_syncv\00", align 1
@3458 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@3459 = private unnamed_addr constant [33 x i8] c"conv55__Z20test_trajectory_syncv\00", align 1
@3460 = private unnamed_addr constant [35 x i8] c"tobool59__Z20test_trajectory_syncv\00", align 1
@3461 = private unnamed_addr constant [32 x i8] c"and58__Z20test_trajectory_syncv\00", align 1
@3462 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@3463 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3464 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3465 = private unnamed_addr constant [37 x i8] c"frombool60__Z20test_trajectory_syncv\00", align 1
@3466 = private unnamed_addr constant [35 x i8] c"tobool59__Z20test_trajectory_syncv\00", align 1
@3467 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3468 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@3469 = private unnamed_addr constant [37 x i8] c"frombool60__Z20test_trajectory_syncv\00", align 1
@3470 = private unnamed_addr constant [11 x i8] c"for.body47\00", align 1
@3471 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv41\00", align 1
@3472 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv41\00", align 1
@3473 = private unnamed_addr constant [32 x i8] c"inc62__Z20test_trajectory_syncv\00", align 1
@3474 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv41\00", align 1
@3475 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@3476 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@3477 = private unnamed_addr constant [32 x i8] c"inc62__Z20test_trajectory_syncv\00", align 1
@3478 = private unnamed_addr constant [10 x i8] c"for.inc61\00", align 1
@3479 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3480 = private unnamed_addr constant [37 x i8] c"arraydecay__Z20test_trajectory_syncv\00", align 1
@3481 = private unnamed_addr constant [7 x i8] c"n_traj\00", align 1
@3482 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@3483 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3484 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing19timeSynchronizationEPS_i_RET\00", align 1
@3485 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3486 = private unnamed_addr constant [37 x i8] c"arrayidx64__Z20test_trajectory_syncv\00", align 1
@3487 = private unnamed_addr constant [33 x i8] c"call65__Z20test_trajectory_syncv\00", align 1
@3488 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@3489 = private unnamed_addr constant [33 x i8] c"conv66__Z20test_trajectory_syncv\00", align 1
@3490 = private unnamed_addr constant [33 x i8] c"call65__Z20test_trajectory_syncv\00", align 1
@3491 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3492 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3493 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv42\00", align 1
@3494 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv42\00", align 1
@3495 = private unnamed_addr constant [35 x i8] c"tobool67__Z20test_trajectory_syncv\00", align 1
@3496 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv42\00", align 1
@3497 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3498 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3499 = private unnamed_addr constant [33 x i8] c"conv68__Z20test_trajectory_syncv\00", align 1
@3500 = private unnamed_addr constant [35 x i8] c"tobool67__Z20test_trajectory_syncv\00", align 1
@3501 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3502 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3503 = private unnamed_addr constant [32 x i8] c"and69__Z20test_trajectory_syncv\00", align 1
@3504 = private unnamed_addr constant [33 x i8] c"conv68__Z20test_trajectory_syncv\00", align 1
@3505 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@3506 = private unnamed_addr constant [33 x i8] c"conv66__Z20test_trajectory_syncv\00", align 1
@3507 = private unnamed_addr constant [35 x i8] c"tobool70__Z20test_trajectory_syncv\00", align 1
@3508 = private unnamed_addr constant [32 x i8] c"and69__Z20test_trajectory_syncv\00", align 1
@3509 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@3510 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3511 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3512 = private unnamed_addr constant [37 x i8] c"frombool71__Z20test_trajectory_syncv\00", align 1
@3513 = private unnamed_addr constant [35 x i8] c"tobool70__Z20test_trajectory_syncv\00", align 1
@3514 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3515 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@3516 = private unnamed_addr constant [37 x i8] c"frombool71__Z20test_trajectory_syncv\00", align 1
@3517 = private unnamed_addr constant [5 x i8] c"traj\00", align 1
@3518 = private unnamed_addr constant [37 x i8] c"arrayidx72__Z20test_trajectory_syncv\00", align 1
@3519 = private unnamed_addr constant [33 x i8] c"call73__Z20test_trajectory_syncv\00", align 1
@3520 = private unnamed_addr constant [56 x i8] c"_Z27check_kinematic_constraintsP17VelocitySmoothing_RET\00", align 1
@3521 = private unnamed_addr constant [33 x i8] c"conv74__Z20test_trajectory_syncv\00", align 1
@3522 = private unnamed_addr constant [33 x i8] c"call73__Z20test_trajectory_syncv\00", align 1
@3523 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3524 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3525 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv43\00", align 1
@3526 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv43\00", align 1
@3527 = private unnamed_addr constant [35 x i8] c"tobool75__Z20test_trajectory_syncv\00", align 1
@3528 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv43\00", align 1
@3529 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3530 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3531 = private unnamed_addr constant [33 x i8] c"conv76__Z20test_trajectory_syncv\00", align 1
@3532 = private unnamed_addr constant [35 x i8] c"tobool75__Z20test_trajectory_syncv\00", align 1
@3533 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3534 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3535 = private unnamed_addr constant [32 x i8] c"and77__Z20test_trajectory_syncv\00", align 1
@3536 = private unnamed_addr constant [33 x i8] c"conv76__Z20test_trajectory_syncv\00", align 1
@3537 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@3538 = private unnamed_addr constant [33 x i8] c"conv74__Z20test_trajectory_syncv\00", align 1
@3539 = private unnamed_addr constant [35 x i8] c"tobool78__Z20test_trajectory_syncv\00", align 1
@3540 = private unnamed_addr constant [32 x i8] c"and77__Z20test_trajectory_syncv\00", align 1
@3541 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@3542 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3543 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@3544 = private unnamed_addr constant [37 x i8] c"frombool79__Z20test_trajectory_syncv\00", align 1
@3545 = private unnamed_addr constant [35 x i8] c"tobool78__Z20test_trajectory_syncv\00", align 1
@3546 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@3547 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@3548 = private unnamed_addr constant [37 x i8] c"frombool79__Z20test_trajectory_syncv\00", align 1
@3549 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv44\00", align 1
@3550 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv44\00", align 1
@3551 = private unnamed_addr constant [35 x i8] c"tobool80__Z20test_trajectory_syncv\00", align 1
@3552 = private unnamed_addr constant [32 x i8] c"tmp__Z20test_trajectory_syncv44\00", align 1
@3553 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@3554 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@3555 = private unnamed_addr constant [30 x i8] c"_Z20test_trajectory_syncv_RET\00", align 1
@3556 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@3557 = private unnamed_addr constant [10 x i8] c"for.end63\00", align 1
@3558 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@3559 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3560 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3561 = private unnamed_addr constant [14 x i8] c"initial_accel\00", align 1
@3562 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3563 = private unnamed_addr constant [12 x i8] c"initial_vel\00", align 1
@3564 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3565 = private unnamed_addr constant [12 x i8] c"initial_pos\00", align 1
@3566 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3567 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3568 = private unnamed_addr constant [33 x i8] c"_ZN17VelocitySmoothingC1Efff_RET\00", align 1
@3569 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3570 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@3571 = private unnamed_addr constant [28 x i8] c"tmp__Z18test_t1_saturationf\00", align 1
@3572 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf1\00", align 1
@3573 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf2\00", align 1
@3574 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf3\00", align 1
@3575 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf3\00", align 1
@3576 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf4\00", align 1
@3577 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf5\00", align 1
@3578 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf5\00", align 1
@3579 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3580 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3581 = private unnamed_addr constant [9 x i8] c"max_jerk\00", align 1
@3582 = private unnamed_addr constant [18 x i8] c"(float 55.200001)\00", align 1
@3583 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3584 = private unnamed_addr constant [41 x i8] c"_ZN17VelocitySmoothing10setMaxJerkEf_RET\00", align 1
@3585 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3586 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3587 = private unnamed_addr constant [8 x i8] c"max_vel\00", align 1
@3588 = private unnamed_addr constant [17 x i8] c"(float 6.000000)\00", align 1
@3589 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3590 = private unnamed_addr constant [39 x i8] c"_ZN17VelocitySmoothing9setMaxVelEf_RET\00", align 1
@3591 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3592 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3593 = private unnamed_addr constant [4 x i8] c"vel\00", align 1
@3594 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3595 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3596 = private unnamed_addr constant [49 x i8] c"_ZN17VelocitySmoothing18setCurrentVelocityEf_RET\00", align 1
@3597 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@3598 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@3599 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3600 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3601 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@3602 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf6\00", align 1
@3603 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3604 = private unnamed_addr constant [53 x i8] c"_ZN17VelocitySmoothing22setCurrentAccelerationEf_RET\00", align 1
@3605 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@3606 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@3607 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3608 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3609 = private unnamed_addr constant [10 x i8] c"max_accel\00", align 1
@3610 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf7\00", align 1
@3611 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3612 = private unnamed_addr constant [42 x i8] c"_ZN17VelocitySmoothing11setMaxAccelEf_RET\00", align 1
@3613 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3614 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3615 = private unnamed_addr constant [29 x i8] c"call__Z18test_t1_saturationf\00", align 1
@3616 = private unnamed_addr constant [54 x i8] c"_ZNK17VelocitySmoothing22getCurrentAccelerationEv_RET\00", align 1
@3617 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3618 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3619 = private unnamed_addr constant [30 x i8] c"call1__Z18test_t1_saturationf\00", align 1
@3620 = private unnamed_addr constant [42 x i8] c"_ZNK17VelocitySmoothing10getMaxJerkEv_RET\00", align 1
@3621 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@3622 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@3623 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3624 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3625 = private unnamed_addr constant [30 x i8] c"call2__Z18test_t1_saturationf\00", align 1
@3626 = private unnamed_addr constant [43 x i8] c"_ZNK17VelocitySmoothing11getMaxAccelEv_RET\00", align 1
@3627 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3628 = private unnamed_addr constant [35 x i8] c"trajectory__Z18test_t1_saturationf\00", align 1
@3629 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@3630 = private unnamed_addr constant [29 x i8] c"call__Z18test_t1_saturationf\00", align 1
@3631 = private unnamed_addr constant [6 x i8] c"j_max\00", align 1
@3632 = private unnamed_addr constant [30 x i8] c"call1__Z18test_t1_saturationf\00", align 1
@3633 = private unnamed_addr constant [3 x i8] c"T1\00", align 1
@3634 = private unnamed_addr constant [29 x i8] c"tmp__Z18test_t1_saturationf8\00", align 1
@3635 = private unnamed_addr constant [6 x i8] c"a_max\00", align 1
@3636 = private unnamed_addr constant [30 x i8] c"call2__Z18test_t1_saturationf\00", align 1
@3637 = private unnamed_addr constant [30 x i8] c"call3__Z18test_t1_saturationf\00", align 1
@3638 = private unnamed_addr constant [52 x i8] c"_ZN17VelocitySmoothing18saturateT1ForAccelEffff_RET\00", align 1
@3639 = private unnamed_addr constant [28 x i8] c"_Z18test_t1_saturationf_RET\00", align 1
@3640 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@3641 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@3642 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3643 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@3644 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@3645 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@3646 = private unnamed_addr constant [18 x i8] c"(float -7.420000)\00", align 1
@3647 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@3648 = private unnamed_addr constant [28 x i8] c"_Z18test_t1_saturationf_RET\00", align 1
@3649 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@3650 = private unnamed_addr constant [17 x i8] c"(float 7.420000)\00", align 1
@3651 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@3652 = private unnamed_addr constant [28 x i8] c"_Z18test_t1_saturationf_RET\00", align 1
@3653 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@3654 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@3655 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@3656 = private unnamed_addr constant [28 x i8] c"_Z18test_t1_saturationf_RET\00", align 1
@3657 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@3658 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@3659 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothingC2Efff = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  %initial_vel.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  %initial_pos.addr__ZN17VelocitySmoothingC2Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC2Efff, align 8
  store float %initial_accel, float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0))
  store float %initial_vel, float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0))
  store float %initial_pos, float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0))
  %this1__ZN17VelocitySmoothingC2Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC2Efff, align 8
  %_vel_sp__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %_vel_sp__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_vel_sp__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 2.200000e+01, float* %_max_jerk__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_jerk__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @7, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 8.000000e+00, float* %_max_accel__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_accel__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 6.000000e+00, float* %_max_vel__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_max_vel__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0))
  %_state__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 4
  %j__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %j__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %j__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0))
  %a__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 0.000000e+00, float* %a__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0))
  %v__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 0.000000e+00, float* %v__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0))
  %x__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 0.000000e+00, float* %x__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 5
  store i32 0, i32* %_direction__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_i32(i32* %_direction__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 6
  %j2__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 0
  store float 0.000000e+00, float* %j2__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %j2__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0))
  %a3__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 1
  store float 0.000000e+00, float* %a3__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %a3__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @16, i32 0, i32 0))
  %v4__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 2
  store float 0.000000e+00, float* %v4__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %v4__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0))
  %x5__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothingC2Efff, i32 0, i32 3
  store float 0.000000e+00, float* %x5__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %x5__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 7
  store float 0.000000e+00, float* %_T1__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 8
  store float 0.000000e+00, float* %_T2__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @20, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 9
  store float 0.000000e+00, float* %_T3__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothingC2Efff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @22, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff = load float, float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_accel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @24, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff1 = load float, float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_vel.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @26, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC2Efff2 = load float, float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, align 4
  call void @stg_update_load_float(float* %initial_pos.addr__ZN17VelocitySmoothingC2Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @28, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @30, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @32, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @34, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @36, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC2Efff, float %tmp__ZN17VelocitySmoothingC2Efff, float %tmp__ZN17VelocitySmoothingC2Efff1, float %tmp__ZN17VelocitySmoothingC2Efff2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @38, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @39, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this, float %accel, float %vel, float %pos) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing5resetEfff = alloca %class.VelocitySmoothing*, align 8
  %accel.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  %vel.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  %pos.addr__ZN17VelocitySmoothing5resetEfff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing5resetEfff, align 8
  store float %accel, float* %accel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %accel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @41, i32 0, i32 0))
  store float %vel, float* %vel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %vel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @42, i32 0, i32 0))
  store float %pos, float* %pos.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %pos.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @43, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing5resetEfff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing5resetEfff, align 8
  %_state__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %j__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing5resetEfff, i32 0, i32 0
  store float 0.000000e+00, float* %j__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %j__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @46, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff = load float, float* %accel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %accel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @48, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %a__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing5resetEfff, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing5resetEfff, float* %a__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @49, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff1 = load float, float* %vel.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %vel.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @51, i32 0, i32 0))
  %_state3__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %v__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state3__ZN17VelocitySmoothing5resetEfff, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing5resetEfff1, float* %v__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @52, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing5resetEfff2 = load float, float* %pos.addr__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_load_float(float* %pos.addr__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @54, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %x__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing5resetEfff, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing5resetEfff2, float* %x__ZN17VelocitySmoothing5resetEfff, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing5resetEfff, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @55, i32 0, i32 0))
  %_state5__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 4
  %_state_init__ZN17VelocitySmoothing5resetEfff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing5resetEfff, i32 0, i32 6
  %tmp__ZN17VelocitySmoothing5resetEfff3 = bitcast %struct.Trajectory* %_state_init__ZN17VelocitySmoothing5resetEfff to i8*
  %tmp__ZN17VelocitySmoothing5resetEfff4 = bitcast %struct.Trajectory* %_state5__ZN17VelocitySmoothing5resetEfff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing5resetEfff3, i8* align 4 %tmp__ZN17VelocitySmoothing5resetEfff4, i64 16, i1 false)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @65, i32 0, i32 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothingC1Efff = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  %initial_vel.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  %initial_pos.addr__ZN17VelocitySmoothingC1Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC1Efff, align 8
  store float %initial_accel, float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @67, i32 0, i32 0))
  store float %initial_vel, float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @68, i32 0, i32 0))
  store float %initial_pos, float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_store_float(float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @69, i32 0, i32 0))
  %this1__ZN17VelocitySmoothingC1Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothingC1Efff, align 8
  %tmp__ZN17VelocitySmoothingC1Efff = load float, float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_accel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @73, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC1Efff1 = load float, float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_vel.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @75, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothingC1Efff2 = load float, float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, align 4
  call void @stg_update_load_float(float* %initial_pos.addr__ZN17VelocitySmoothingC1Efff, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @77, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @79, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @81, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @83, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @85, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothingC1Efff, float %tmp__ZN17VelocitySmoothingC1Efff, float %tmp__ZN17VelocitySmoothingC1Efff1, float %tmp__ZN17VelocitySmoothingC1Efff2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @87, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @88, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv, align 8
  %this1__ZNK17VelocitySmoothing10getMaxJerkEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing10getMaxJerkEv, align 8
  %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing10getMaxJerkEv, i32 0, i32 1
  %tmp__ZNK17VelocitySmoothing10getMaxJerkEv = load float, float* %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZNK17VelocitySmoothing10getMaxJerkEv, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @93, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @95, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @96, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing10getMaxJerkEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %this, float %max_jerk) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing10setMaxJerkEf = alloca %class.VelocitySmoothing*, align 8
  %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 8
  store float %max_jerk, float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_store_float(float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @98, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing10setMaxJerkEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 8
  %tmp__ZN17VelocitySmoothing10setMaxJerkEf = load float, float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_load_float(float* %max_jerk.addr__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @102, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10setMaxJerkEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing10setMaxJerkEf, float* %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf, align 4
  call void @stg_update_store_float(float* %_max_jerk__ZN17VelocitySmoothing10setMaxJerkEf, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @103, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @104, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv, align 8
  %this1__ZNK17VelocitySmoothing11getMaxAccelEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing11getMaxAccelEv, align 8
  %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing11getMaxAccelEv, i32 0, i32 2
  %tmp__ZNK17VelocitySmoothing11getMaxAccelEv = load float, float* %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv, align 4
  call void @stg_update_load_float(float* %_max_accel__ZNK17VelocitySmoothing11getMaxAccelEv, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @109, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @111, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @112, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing11getMaxAccelEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %this, float %max_accel) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing11setMaxAccelEf = alloca %class.VelocitySmoothing*, align 8
  %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 8
  store float %max_accel, float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_store_float(float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @114, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing11setMaxAccelEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 8
  %tmp__ZN17VelocitySmoothing11setMaxAccelEf = load float, float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_load_float(float* %max_accel.addr__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @118, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing11setMaxAccelEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing11setMaxAccelEf, float* %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf, align 4
  call void @stg_update_store_float(float* %_max_accel__ZN17VelocitySmoothing11setMaxAccelEf, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @119, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @120, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing9getMaxVelEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing9getMaxVelEv, align 8
  %this1__ZNK17VelocitySmoothing9getMaxVelEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing9getMaxVelEv, align 8
  %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing9getMaxVelEv, i32 0, i32 3
  %tmp__ZNK17VelocitySmoothing9getMaxVelEv = load float, float* %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv, align 4
  call void @stg_update_load_float(float* %_max_vel__ZNK17VelocitySmoothing9getMaxVelEv, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @125, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @127, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @128, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing9getMaxVelEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %this, float %max_vel) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing9setMaxVelEf = alloca %class.VelocitySmoothing*, align 8
  %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9setMaxVelEf, align 8
  store float %max_vel, float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_store_float(float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @130, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9setMaxVelEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9setMaxVelEf, align 8
  %tmp__ZN17VelocitySmoothing9setMaxVelEf = load float, float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_load_float(float* %max_vel.addr__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @134, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothing9setMaxVelEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing9setMaxVelEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing9setMaxVelEf, float* %_max_vel__ZN17VelocitySmoothing9setMaxVelEf, align 4
  call void @stg_update_store_float(float* %_max_vel__ZN17VelocitySmoothing9setMaxVelEf, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @135, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @136, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv, align 8
  %this1__ZNK17VelocitySmoothing14getCurrentJerkEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing14getCurrentJerkEv, align 8
  %_state__ZNK17VelocitySmoothing14getCurrentJerkEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing14getCurrentJerkEv, i32 0, i32 4
  %j__ZNK17VelocitySmoothing14getCurrentJerkEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing14getCurrentJerkEv, i32 0, i32 0
  %tmp__ZNK17VelocitySmoothing14getCurrentJerkEv = load float, float* %j__ZNK17VelocitySmoothing14getCurrentJerkEv, align 4
  call void @stg_update_load_float(float* %j__ZNK17VelocitySmoothing14getCurrentJerkEv, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @141, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @143, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing14getCurrentJerkEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %this, float %accel) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf = alloca %class.VelocitySmoothing*, align 8
  %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 8
  store float %accel, float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 8
  %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf = load float, float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_load_float(float* %accel.addr__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @150, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 6
  %a__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf, float* %a__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @151, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 4
  %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing22setCurrentAccelerationEf, i32 0, i32 1
  store float %tmp__ZN17VelocitySmoothing22setCurrentAccelerationEf, float* %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf, align 4
  call void @stg_update_store_float(float* %a2__ZN17VelocitySmoothing22setCurrentAccelerationEf, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @152, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @153, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 8
  %this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 8
  %_state__ZNK17VelocitySmoothing22getCurrentAccelerationEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i32 0, i32 4
  %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i32 0, i32 1
  %tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv = load float, float* %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv, align 4
  call void @stg_update_load_float(float* %a__ZNK17VelocitySmoothing22getCurrentAccelerationEv, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @158, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @160, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @161, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing22getCurrentAccelerationEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %this, float %vel) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf = alloca %class.VelocitySmoothing*, align 8
  %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 8
  store float %vel, float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @163, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18setCurrentVelocityEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 8
  %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf = load float, float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_load_float(float* %vel.addr__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @167, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 6
  %v__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf, float* %v__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @168, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 4
  %v2__ZN17VelocitySmoothing18setCurrentVelocityEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing18setCurrentVelocityEf, i32 0, i32 2
  store float %tmp__ZN17VelocitySmoothing18setCurrentVelocityEf, float* %v2__ZN17VelocitySmoothing18setCurrentVelocityEf, align 4
  call void @stg_update_store_float(float* %v2__ZN17VelocitySmoothing18setCurrentVelocityEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @169, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @170, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 8
  %this1__ZNK17VelocitySmoothing18getCurrentVelocityEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 8
  %_state__ZNK17VelocitySmoothing18getCurrentVelocityEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing18getCurrentVelocityEv, i32 0, i32 4
  %v__ZNK17VelocitySmoothing18getCurrentVelocityEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing18getCurrentVelocityEv, i32 0, i32 2
  %tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv = load float, float* %v__ZNK17VelocitySmoothing18getCurrentVelocityEv, align 4
  call void @stg_update_load_float(float* %v__ZNK17VelocitySmoothing18getCurrentVelocityEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @175, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @176, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @177, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @178, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing18getCurrentVelocityEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %this, float %pos) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf = alloca %class.VelocitySmoothing*, align 8
  %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 8
  store float %pos, float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @180, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18setCurrentPositionEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 8
  %tmp__ZN17VelocitySmoothing18setCurrentPositionEf = load float, float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_load_float(float* %pos.addr__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @184, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 6
  %x__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing18setCurrentPositionEf, float* %x__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @185, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 4
  %x2__ZN17VelocitySmoothing18setCurrentPositionEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing18setCurrentPositionEf, i32 0, i32 3
  store float %tmp__ZN17VelocitySmoothing18setCurrentPositionEf, float* %x2__ZN17VelocitySmoothing18setCurrentPositionEf, align 4
  call void @stg_update_store_float(float* %x2__ZN17VelocitySmoothing18setCurrentPositionEf, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @186, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @187, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv, align 8
  %this1__ZNK17VelocitySmoothing18getCurrentPositionEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing18getCurrentPositionEv, align 8
  %_state__ZNK17VelocitySmoothing18getCurrentPositionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing18getCurrentPositionEv, i32 0, i32 4
  %x__ZNK17VelocitySmoothing18getCurrentPositionEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZNK17VelocitySmoothing18getCurrentPositionEv, i32 0, i32 3
  %tmp__ZNK17VelocitySmoothing18getCurrentPositionEv = load float, float* %x__ZNK17VelocitySmoothing18getCurrentPositionEv, align 4
  call void @stg_update_load_float(float* %x__ZNK17VelocitySmoothing18getCurrentPositionEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @192, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @193, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @194, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @195, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing18getCurrentPositionEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing8getVelSpEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing8getVelSpEv, align 8
  %this1__ZNK17VelocitySmoothing8getVelSpEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing8getVelSpEv, align 8
  %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing8getVelSpEv, i32 0, i32 0
  %tmp__ZNK17VelocitySmoothing8getVelSpEv = load float, float* %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZNK17VelocitySmoothing8getVelSpEv, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @200, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @201, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @202, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @203, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing8getVelSpEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing5getT1Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT1Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT1Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT1Ev, align 8
  %_T1__ZNK17VelocitySmoothing5getT1Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT1Ev, i32 0, i32 7
  %tmp__ZNK17VelocitySmoothing5getT1Ev = load float, float* %_T1__ZNK17VelocitySmoothing5getT1Ev, align 4
  call void @stg_update_load_float(float* %_T1__ZNK17VelocitySmoothing5getT1Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @208, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @210, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @211, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT1Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing5getT2Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT2Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT2Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT2Ev, align 8
  %_T2__ZNK17VelocitySmoothing5getT2Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT2Ev, i32 0, i32 8
  %tmp__ZNK17VelocitySmoothing5getT2Ev = load float, float* %_T2__ZNK17VelocitySmoothing5getT2Ev, align 4
  call void @stg_update_load_float(float* %_T2__ZNK17VelocitySmoothing5getT2Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @216, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @217, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @218, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @219, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT2Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing5getT3Ev = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT3Ev, align 8
  %this1__ZNK17VelocitySmoothing5getT3Ev = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing5getT3Ev, align 8
  %_T3__ZNK17VelocitySmoothing5getT3Ev = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing5getT3Ev, i32 0, i32 9
  %tmp__ZNK17VelocitySmoothing5getT3Ev = load float, float* %_T3__ZNK17VelocitySmoothing5getT3Ev, align 4
  call void @stg_update_load_float(float* %_T3__ZNK17VelocitySmoothing5getT3Ev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @224, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @225, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @226, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @227, i32 0, i32 0))
  ret float %tmp__ZNK17VelocitySmoothing5getT3Ev
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv, align 8
  %this1__ZNK17VelocitySmoothing12getTotalTimeEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZNK17VelocitySmoothing12getTotalTimeEv, align 8
  %_T1__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 7
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv = load float, float* %_T1__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T1__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @232, i32 0, i32 0))
  %_T2__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 8
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv1 = load float, float* %_T2__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T2__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @234, i32 0, i32 0))
  %add__ZNK17VelocitySmoothing12getTotalTimeEv = fadd float %tmp__ZNK17VelocitySmoothing12getTotalTimeEv, %tmp__ZNK17VelocitySmoothing12getTotalTimeEv1
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @235, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @236, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @237, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @238, i32 0, i32 0))
  %_T3__ZNK17VelocitySmoothing12getTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZNK17VelocitySmoothing12getTotalTimeEv, i32 0, i32 9
  %tmp__ZNK17VelocitySmoothing12getTotalTimeEv2 = load float, float* %_T3__ZNK17VelocitySmoothing12getTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T3__ZNK17VelocitySmoothing12getTotalTimeEv, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @240, i32 0, i32 0))
  %add2__ZNK17VelocitySmoothing12getTotalTimeEv = fadd float %add__ZNK17VelocitySmoothing12getTotalTimeEv, %tmp__ZNK17VelocitySmoothing12getTotalTimeEv2
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @241, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @242, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @243, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @244, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @245, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @246, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @247, i32 0, i32 0))
  ret float %add2__ZNK17VelocitySmoothing12getTotalTimeEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this, float %a0, float %j_max, float %T1, float %a_max) #1 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca %class.VelocitySmoothing*, align 8
  %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 8
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @249, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @250, i32 0, i32 0))
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @251, i32 0, i32 0))
  store float %a_max, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @252, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing18saturateT1ForAccelEffff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 8
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @256, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @258, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2 = load float, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @260, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fmul float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff1, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff2
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @261, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @262, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @264, i32 0, i32 0))
  %add__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fadd float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %mul__ZN17VelocitySmoothing18saturateT1ForAccelEffff
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @265, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @266, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @267, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @268, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @269, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3 = load float, float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @271, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff3, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @272, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @274, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @276, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fcmp ogt float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff4, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff5
  call void @stg_update_cmp(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @277, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @278, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @279, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @280, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @281, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @282, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @283, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @285, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7 = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @287, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff6, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff7
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @288, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @289, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @290, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @291, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @293, i32 0, i32 0))
  %div__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fdiv float %sub__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff8
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @294, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @295, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @296, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @297, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @298, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @299, i32 0, i32 0))
  br label %if.end8

if.else:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9 = load float, float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %accel_T1__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @301, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @303, i32 0, i32 0))
  %sub2__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff10
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @304, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @305, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @306, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @307, i32 0, i32 0))
  %cmp3__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fcmp olt float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff9, %sub2__ZN17VelocitySmoothing18saturateT1ForAccelEffff
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @308, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @309, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @310, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @311, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @312, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp3__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @313, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @314, i32 0, i32 0))
  br i1 %cmp3__ZN17VelocitySmoothing18saturateT1ForAccelEffff, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11 = load float, float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @316, i32 0, i32 0))
  %sub5__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff11
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @317, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @318, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @319, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @320, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12 = load float, float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @322, i32 0, i32 0))
  %sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fsub float %sub5__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff12
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @323, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @324, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @325, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @326, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13 = load float, float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @328, i32 0, i32 0))
  %div7__ZN17VelocitySmoothing18saturateT1ForAccelEffff = fdiv float %sub6__ZN17VelocitySmoothing18saturateT1ForAccelEffff, %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff13
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @329, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @330, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @331, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @332, i32 0, i32 0))
  store float %div7__ZN17VelocitySmoothing18saturateT1ForAccelEffff, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_store_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @333, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @334, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @335, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14 = load float, float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, align 4
  call void @stg_update_load_float(float* %T1_new__ZN17VelocitySmoothing18saturateT1ForAccelEffff, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @337, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @338, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @339, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @340, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing18saturateT1ForAccelEffff14
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this, float %a0, float %v3, float %j_max, float %a_max) #0 align 2 {
entry:
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
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @342, i32 0, i32 0))
  store float %v3, float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @343, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @344, i32 0, i32 0))
  store float %a_max, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @345, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT1Effff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT1Effff, align 8
  %tmp__ZN17VelocitySmoothing9computeT1Effff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @349, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing9computeT1Effff = fmul float 2.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @350, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @351, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @352, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @353, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff1 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @355, i32 0, i32 0))
  %mul2__ZN17VelocitySmoothing9computeT1Effff = fmul float %mul__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff1
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @356, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @357, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @358, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @359, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff2 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @361, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing9computeT1Effff = fmul float 4.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff2
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @362, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @363, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @364, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @365, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff3 = load float, float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @367, i32 0, i32 0))
  %mul4__ZN17VelocitySmoothing9computeT1Effff = fmul float %mul3__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff3
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @368, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @369, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @370, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @371, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT1Effff = fadd float %mul2__ZN17VelocitySmoothing9computeT1Effff, %mul4__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @372, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @373, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @374, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @375, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT1Effff, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @376, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff4 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @378, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing9computeT1Effff = fcmp olt float %tmp__ZN17VelocitySmoothing9computeT1Effff4, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @379, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @380, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @381, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @382, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @383, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @384, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @385, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing9computeT1Effff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @386, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @387, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZN17VelocitySmoothing9computeT1Effff5 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @389, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @390, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @391, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @392, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @393, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff6 = call float @llvm.sqrt.f32(float %tmp__ZN17VelocitySmoothing9computeT1Effff5)
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff6, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @394, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff7 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @396, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT1Effff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff7
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @397, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @398, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @399, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @400, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff8 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @402, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing9computeT1Effff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT1Effff8
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @403, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @404, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @405, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @406, i32 0, i32 0))
  %add6__ZN17VelocitySmoothing9computeT1Effff = fadd float %sub__ZN17VelocitySmoothing9computeT1Effff, %mul5__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @407, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @408, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @409, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @410, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff9 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @412, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT1Effff = fdiv float %add6__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff9
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @413, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @414, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @415, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @416, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing9computeT1Effff, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @417, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff10 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @419, i32 0, i32 0))
  %sub7__ZN17VelocitySmoothing9computeT1Effff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Effff10
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @420, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @421, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @422, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @423, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff11 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @425, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing9computeT1Effff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT1Effff11
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @426, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @427, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @428, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @429, i32 0, i32 0))
  %sub9__ZN17VelocitySmoothing9computeT1Effff = fsub float %sub7__ZN17VelocitySmoothing9computeT1Effff, %mul8__ZN17VelocitySmoothing9computeT1Effff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @430, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @431, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @432, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @433, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff12 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @435, i32 0, i32 0))
  %div10__ZN17VelocitySmoothing9computeT1Effff = fdiv float %sub9__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff12
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @436, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @437, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @438, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @439, i32 0, i32 0))
  store float %div10__ZN17VelocitySmoothing9computeT1Effff, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @440, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff13 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @442, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff14 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @444, i32 0, i32 0))
  %div11__ZN17VelocitySmoothing9computeT1Effff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Effff13, %tmp__ZN17VelocitySmoothing9computeT1Effff14
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @445, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @446, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @447, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @448, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff15 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @450, i32 0, i32 0))
  %add12__ZN17VelocitySmoothing9computeT1Effff = fadd float %div11__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff15
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @451, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @452, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @453, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @454, i32 0, i32 0))
  store float %add12__ZN17VelocitySmoothing9computeT1Effff, float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @455, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff16 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @457, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff17 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @459, i32 0, i32 0))
  %div13__ZN17VelocitySmoothing9computeT1Effff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Effff16, %tmp__ZN17VelocitySmoothing9computeT1Effff17
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @460, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @461, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @462, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @463, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff18 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @465, i32 0, i32 0))
  %add14__ZN17VelocitySmoothing9computeT1Effff = fadd float %div13__ZN17VelocitySmoothing9computeT1Effff, %tmp__ZN17VelocitySmoothing9computeT1Effff18
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @466, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @467, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @468, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @469, i32 0, i32 0))
  store float %add14__ZN17VelocitySmoothing9computeT1Effff, float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @470, i32 0, i32 0))
  store float 0.000000e+00, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @471, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff19 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @473, i32 0, i32 0))
  %cmp15__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff19, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @474, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @475, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @476, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @477, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @478, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp15__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @479, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @480, i32 0, i32 0))
  br i1 %cmp15__ZN17VelocitySmoothing9computeT1Effff, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Effff20 = load float, float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @482, i32 0, i32 0))
  %cmp16__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff20, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @483, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @484, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @485, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @486, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @487, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp16__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @488, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @489, i32 0, i32 0))
  br i1 %cmp16__ZN17VelocitySmoothing9computeT1Effff, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %tmp__ZN17VelocitySmoothing9computeT1Effff21 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @491, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff21, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @492, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @493, i32 0, i32 0))
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Effff22 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @495, i32 0, i32 0))
  %cmp18__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff22, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @496, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @497, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @498, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @499, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @500, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp18__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @501, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @502, i32 0, i32 0))
  br i1 %cmp18__ZN17VelocitySmoothing9computeT1Effff, label %land.lhs.true19, label %if.end22

land.lhs.true19:                                  ; preds = %if.else
  %tmp__ZN17VelocitySmoothing9computeT1Effff23 = load float, float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @504, i32 0, i32 0))
  %cmp20__ZN17VelocitySmoothing9computeT1Effff = fcmp oge float %tmp__ZN17VelocitySmoothing9computeT1Effff23, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @505, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @506, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @507, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @508, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @509, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp20__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @510, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @511, i32 0, i32 0))
  br i1 %cmp20__ZN17VelocitySmoothing9computeT1Effff, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true19
  %tmp__ZN17VelocitySmoothing9computeT1Effff24 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @513, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Effff24, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @514, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @515, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true19, %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @516, i32 0, i32 0))
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then17
  %tmp__ZN17VelocitySmoothing9computeT1Effff25 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @518, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff26 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @520, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff27 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @522, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff28 = load float, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @524, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @525, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @526, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @527, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @528, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @529, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @530, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @531, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @532, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @533, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @534, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT1Effff = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing9computeT1Effff, float %tmp__ZN17VelocitySmoothing9computeT1Effff25, float %tmp__ZN17VelocitySmoothing9computeT1Effff26, float %tmp__ZN17VelocitySmoothing9computeT1Effff27, float %tmp__ZN17VelocitySmoothing9computeT1Effff28)
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @535, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @536, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing9computeT1Effff, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @537, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Effff29 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @539, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @540, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @541, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @542, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @543, i32 0, i32 0))
  %call24__ZN17VelocitySmoothing9computeT1Effff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT1Effff29, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @544, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @545, i32 0, i32 0))
  store float %call24__ZN17VelocitySmoothing9computeT1Effff, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @546, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @547, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %tmp__ZN17VelocitySmoothing9computeT1Effff30 = load float, float* %retval__ZN17VelocitySmoothing9computeT1Effff, align 4
  call void @stg_update_load_float(float* %retval__ZN17VelocitySmoothing9computeT1Effff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @549, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @550, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @551, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @552, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing9computeT1Effff30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3maxIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  %a.addr__ZN4math3maxIfEET_S1_S1_ = alloca float, align 4
  %b.addr__ZN4math3maxIfEET_S1_S1_ = alloca float, align 4
  store float %a, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @553, i32 0, i32 0))
  store float %b, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @554, i32 0, i32 0))
  %tmp__ZN4math3maxIfEET_S1_S1_ = load float, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @556, i32 0, i32 0))
  %tmp__ZN4math3maxIfEET_S1_S1_1 = load float, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @558, i32 0, i32 0))
  %cmp__ZN4math3maxIfEET_S1_S1_ = fcmp ogt float %tmp__ZN4math3maxIfEET_S1_S1_, %tmp__ZN4math3maxIfEET_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @559, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @560, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @561, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @562, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @563, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @564, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @565, i32 0, i32 0))
  br i1 %cmp__ZN4math3maxIfEET_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math3maxIfEET_S1_S1_2 = load float, float* %a.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @567, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @568, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math3maxIfEET_S1_S1_3 = load float, float* %b.addr__ZN4math3maxIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3maxIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @570, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @571, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math3maxIfEET_S1_S1_ = phi float [ %tmp__ZN4math3maxIfEET_S1_S1_2, %cond.true ], [ %tmp__ZN4math3maxIfEET_S1_S1_3, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @572, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @573, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @574, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @575, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @576, i32 0, i32 0))
  ret float %cond__ZN4math3maxIfEET_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT1Efffff(%class.VelocitySmoothing* %this, float %T123, float %a0, float %v3, float %j_max, float %a_max) #0 align 2 {
entry:
  %retval__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %this.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca %class.VelocitySmoothing*, align 8
  %T123.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %a0.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %v3.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %a_max.addr__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %a__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %b__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %delta__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T1_plus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T1_minus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T3_plus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T3_minus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T13_plus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T13_minus__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  %T1__ZN17VelocitySmoothing9computeT1Efffff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT1Efffff, align 8
  store float %T123, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @578, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @579, i32 0, i32 0))
  store float %v3, float* %v3.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @580, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @581, i32 0, i32 0))
  store float %a_max, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @582, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT1Efffff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT1Efffff, align 8
  %tmp__ZN17VelocitySmoothing9computeT1Efffff = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @586, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT1Efffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @587, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @588, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @589, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @590, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing9computeT1Efffff, float* %a__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @591, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @593, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff2 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @595, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing9computeT1Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT1Efffff1, %tmp__ZN17VelocitySmoothing9computeT1Efffff2
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @596, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @597, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @598, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @599, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff3 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @601, i32 0, i32 0))
  %sub2__ZN17VelocitySmoothing9computeT1Efffff = fsub float %mul__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff3
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @602, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @603, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @604, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @605, i32 0, i32 0))
  store float %sub2__ZN17VelocitySmoothing9computeT1Efffff, float* %b__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %b__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @606, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff4 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @608, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff5 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @610, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing9computeT1Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT1Efffff4, %tmp__ZN17VelocitySmoothing9computeT1Efffff5
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @611, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @612, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @613, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @614, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff6 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @616, i32 0, i32 0))
  %mul4__ZN17VelocitySmoothing9computeT1Efffff = fmul float %mul3__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff6
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @617, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @618, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @619, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @620, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff7 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @622, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing9computeT1Efffff = fmul float %mul4__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff7
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @623, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @624, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @625, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @626, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff8 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @628, i32 0, i32 0))
  %mul6__ZN17VelocitySmoothing9computeT1Efffff = fmul float 2.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff8
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @629, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @630, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @631, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @632, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff9 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @634, i32 0, i32 0))
  %mul7__ZN17VelocitySmoothing9computeT1Efffff = fmul float %mul6__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff9
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @635, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @636, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @637, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @638, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff10 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @640, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing9computeT1Efffff = fmul float %mul7__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff10
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @641, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @642, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @643, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @644, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT1Efffff = fadd float %mul5__ZN17VelocitySmoothing9computeT1Efffff, %mul8__ZN17VelocitySmoothing9computeT1Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @645, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @646, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @647, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @648, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff11 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @650, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff12 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @652, i32 0, i32 0))
  %mul9__ZN17VelocitySmoothing9computeT1Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT1Efffff11, %tmp__ZN17VelocitySmoothing9computeT1Efffff12
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @653, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @654, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @655, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @656, i32 0, i32 0))
  %sub10__ZN17VelocitySmoothing9computeT1Efffff = fsub float %add__ZN17VelocitySmoothing9computeT1Efffff, %mul9__ZN17VelocitySmoothing9computeT1Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @657, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @658, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @659, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @660, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff13 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @662, i32 0, i32 0))
  %mul11__ZN17VelocitySmoothing9computeT1Efffff = fmul float 4.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff13
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @663, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @664, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @665, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @666, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff14 = load float, float* %v3.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %v3.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @668, i32 0, i32 0))
  %mul12__ZN17VelocitySmoothing9computeT1Efffff = fmul float %mul11__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff14
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @669, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @670, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @671, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @672, i32 0, i32 0))
  %sub13__ZN17VelocitySmoothing9computeT1Efffff = fsub float %sub10__ZN17VelocitySmoothing9computeT1Efffff, %mul12__ZN17VelocitySmoothing9computeT1Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @673, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @674, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @675, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @676, i32 0, i32 0))
  store float %sub13__ZN17VelocitySmoothing9computeT1Efffff, float* %delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @677, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff15 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @679, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing9computeT1Efffff = fcmp olt float %tmp__ZN17VelocitySmoothing9computeT1Efffff15, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @680, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @681, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @682, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @683, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @684, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @685, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @686, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing9computeT1Efffff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @687, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @688, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %tmp__ZN17VelocitySmoothing9computeT1Efffff16 = load float, float* %delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @690, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @691, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @692, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @693, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @694, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff17 = call float @llvm.sqrt.f32(float %tmp__ZN17VelocitySmoothing9computeT1Efffff16)
  store float %tmp__ZN17VelocitySmoothing9computeT1Efffff17, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @695, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff18 = load float, float* %a__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @697, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing9computeT1Efffff = fmul float 2.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff18
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @698, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @699, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @700, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @701, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT1Efffff = fdiv float 1.000000e+00, %mul14__ZN17VelocitySmoothing9computeT1Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @702, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @703, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @704, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @705, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing9computeT1Efffff, float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @706, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff19 = load float, float* %b__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %b__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @708, i32 0, i32 0))
  %sub15__ZN17VelocitySmoothing9computeT1Efffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff19
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @709, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @710, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @711, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @712, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff20 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @714, i32 0, i32 0))
  %add16__ZN17VelocitySmoothing9computeT1Efffff = fadd float %sub15__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff20
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @715, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @716, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @717, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @718, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff21 = load float, float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @720, i32 0, i32 0))
  %mul17__ZN17VelocitySmoothing9computeT1Efffff = fmul float %add16__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff21
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @721, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @722, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @723, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @724, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @725, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @726, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @727, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @728, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT1Efffff = call float @_ZN4math3maxIfEET_S1_S1_(float %mul17__ZN17VelocitySmoothing9computeT1Efffff, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @729, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @730, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing9computeT1Efffff, float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @731, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff22 = load float, float* %b__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %b__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @733, i32 0, i32 0))
  %sub18__ZN17VelocitySmoothing9computeT1Efffff = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing9computeT1Efffff22
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @734, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @735, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @736, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @737, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff23 = load float, float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %sqrt_delta__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @739, i32 0, i32 0))
  %sub19__ZN17VelocitySmoothing9computeT1Efffff = fsub float %sub18__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff23
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @740, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @741, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @742, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @743, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff24 = load float, float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %denominator_inv__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @745, i32 0, i32 0))
  %mul20__ZN17VelocitySmoothing9computeT1Efffff = fmul float %sub19__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff24
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @746, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @747, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @748, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @749, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @750, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @751, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @752, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @753, i32 0, i32 0))
  %call21__ZN17VelocitySmoothing9computeT1Efffff = call float @_ZN4math3maxIfEET_S1_S1_(float %mul20__ZN17VelocitySmoothing9computeT1Efffff, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @754, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @755, i32 0, i32 0))
  store float %call21__ZN17VelocitySmoothing9computeT1Efffff, float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @756, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff25 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @758, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff26 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @760, i32 0, i32 0))
  %div22__ZN17VelocitySmoothing9computeT1Efffff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Efffff25, %tmp__ZN17VelocitySmoothing9computeT1Efffff26
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @761, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @762, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @763, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @764, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff27 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @766, i32 0, i32 0))
  %add23__ZN17VelocitySmoothing9computeT1Efffff = fadd float %div22__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff27
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @767, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @768, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @769, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @770, i32 0, i32 0))
  store float %add23__ZN17VelocitySmoothing9computeT1Efffff, float* %T3_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @771, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff28 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @773, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff29 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @775, i32 0, i32 0))
  %div24__ZN17VelocitySmoothing9computeT1Efffff = fdiv float %tmp__ZN17VelocitySmoothing9computeT1Efffff28, %tmp__ZN17VelocitySmoothing9computeT1Efffff29
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @776, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @777, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @778, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @779, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff30 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @781, i32 0, i32 0))
  %add25__ZN17VelocitySmoothing9computeT1Efffff = fadd float %div24__ZN17VelocitySmoothing9computeT1Efffff, %tmp__ZN17VelocitySmoothing9computeT1Efffff30
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @782, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @783, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @784, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @785, i32 0, i32 0))
  store float %add25__ZN17VelocitySmoothing9computeT1Efffff, float* %T3_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @786, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff31 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @788, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff32 = load float, float* %T3_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T3_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @790, i32 0, i32 0))
  %add26__ZN17VelocitySmoothing9computeT1Efffff = fadd float %tmp__ZN17VelocitySmoothing9computeT1Efffff31, %tmp__ZN17VelocitySmoothing9computeT1Efffff32
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @791, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @792, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @793, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @794, i32 0, i32 0))
  store float %add26__ZN17VelocitySmoothing9computeT1Efffff, float* %T13_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T13_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @795, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff33 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @797, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff34 = load float, float* %T3_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T3_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @799, i32 0, i32 0))
  %add27__ZN17VelocitySmoothing9computeT1Efffff = fadd float %tmp__ZN17VelocitySmoothing9computeT1Efffff33, %tmp__ZN17VelocitySmoothing9computeT1Efffff34
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @800, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @801, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @802, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @803, i32 0, i32 0))
  store float %add27__ZN17VelocitySmoothing9computeT1Efffff, float* %T13_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T13_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @804, i32 0, i32 0))
  store float 0.000000e+00, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @805, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff35 = load float, float* %T13_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T13_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @807, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff36 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @809, i32 0, i32 0))
  %cmp28__ZN17VelocitySmoothing9computeT1Efffff = fcmp ogt float %tmp__ZN17VelocitySmoothing9computeT1Efffff35, %tmp__ZN17VelocitySmoothing9computeT1Efffff36
  call void @stg_update_cmp(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @810, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @811, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @812, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @813, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @814, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp28__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @815, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @816, i32 0, i32 0))
  br i1 %cmp28__ZN17VelocitySmoothing9computeT1Efffff, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Efffff37 = load float, float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @818, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Efffff37, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @819, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @820, i32 0, i32 0))
  br label %if.end33

if.else:                                          ; preds = %if.end
  %tmp__ZN17VelocitySmoothing9computeT1Efffff38 = load float, float* %T13_minus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T13_minus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @822, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff39 = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @824, i32 0, i32 0))
  %cmp30__ZN17VelocitySmoothing9computeT1Efffff = fcmp ogt float %tmp__ZN17VelocitySmoothing9computeT1Efffff38, %tmp__ZN17VelocitySmoothing9computeT1Efffff39
  call void @stg_update_cmp(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @825, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @826, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @827, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @828, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @829, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp30__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @830, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @831, i32 0, i32 0))
  br i1 %cmp30__ZN17VelocitySmoothing9computeT1Efffff, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else
  %tmp__ZN17VelocitySmoothing9computeT1Efffff40 = load float, float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1_plus__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @833, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Efffff40, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @834, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @835, i32 0, i32 0))
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @836, i32 0, i32 0))
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then29
  %tmp__ZN17VelocitySmoothing9computeT1Efffff41 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @838, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff42 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @840, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff43 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @842, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff44 = load float, float* %a_max.addr__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %a_max.addr__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @844, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @845, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @846, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @847, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @848, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @849, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @850, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @851, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @852, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @853, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @854, i32 0, i32 0))
  %call34__ZN17VelocitySmoothing9computeT1Efffff = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing9computeT1Efffff, float %tmp__ZN17VelocitySmoothing9computeT1Efffff41, float %tmp__ZN17VelocitySmoothing9computeT1Efffff42, float %tmp__ZN17VelocitySmoothing9computeT1Efffff43, float %tmp__ZN17VelocitySmoothing9computeT1Efffff44)
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @855, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @856, i32 0, i32 0))
  store float %call34__ZN17VelocitySmoothing9computeT1Efffff, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @857, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT1Efffff45 = load float, float* %T1__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %T1__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @859, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing9computeT1Efffff45, float* %retval__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_store_float(float* %retval__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @860, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @861, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end33, %if.then
  %tmp__ZN17VelocitySmoothing9computeT1Efffff46 = load float, float* %retval__ZN17VelocitySmoothing9computeT1Efffff, align 4
  call void @stg_update_load_float(float* %retval__ZN17VelocitySmoothing9computeT1Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @863, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @864, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @865, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @866, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing9computeT1Efffff46
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this, float %T1, float %T3, float %a0, float %v3, float %j_max) #0 align 2 {
entry:
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
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @868, i32 0, i32 0))
  store float %T3, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @869, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @870, i32 0, i32 0))
  store float %v3, float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @871, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @872, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT2Efffff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT2Efffff, align 8
  store float 0.000000e+00, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @875, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @877, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @879, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff2 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @881, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff1, %tmp__ZN17VelocitySmoothing9computeT2Efffff2
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @882, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @883, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @884, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @885, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT2Efffff = fadd float %tmp__ZN17VelocitySmoothing9computeT2Efffff, %mul__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @886, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @887, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @888, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @889, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT2Efffff, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @890, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff3 = load float, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @892, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @893, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @894, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT2Efffff = call float @_ZN4math5abs_tIfEET_S1_(float %tmp__ZN17VelocitySmoothing9computeT2Efffff3)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @895, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @896, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing9computeT2Efffff = fcmp ogt float %call__ZN17VelocitySmoothing9computeT2Efffff, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @897, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @898, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @899, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @900, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @901, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @902, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @903, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing9computeT2Efffff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing9computeT2Efffff4 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @905, i32 0, i32 0))
  %mul2__ZN17VelocitySmoothing9computeT2Efffff = fmul float -5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT2Efffff4
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @906, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @907, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @908, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @909, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff5 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @911, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul2__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff5
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @912, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @913, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @914, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @915, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff6 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @917, i32 0, i32 0))
  %mul4__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul3__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff6
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @918, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @919, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @920, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @921, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff7 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @923, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff8 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @925, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff7, %tmp__ZN17VelocitySmoothing9computeT2Efffff8
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @926, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @927, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @928, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @929, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff9 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @931, i32 0, i32 0))
  %mul6__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul5__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff9
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @932, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @933, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @934, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @935, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT2Efffff = fsub float %mul4__ZN17VelocitySmoothing9computeT2Efffff, %mul6__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @936, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @937, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @938, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @939, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff10 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @941, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff11 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @943, i32 0, i32 0))
  %mul7__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff10, %tmp__ZN17VelocitySmoothing9computeT2Efffff11
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @944, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @945, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @946, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @947, i32 0, i32 0))
  %sub8__ZN17VelocitySmoothing9computeT2Efffff = fsub float %sub__ZN17VelocitySmoothing9computeT2Efffff, %mul7__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @948, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @949, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @950, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @951, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff12 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @953, i32 0, i32 0))
  %mul9__ZN17VelocitySmoothing9computeT2Efffff = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing9computeT2Efffff12
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @954, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @955, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @956, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @957, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff13 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @959, i32 0, i32 0))
  %mul10__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul9__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff13
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @960, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @961, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @962, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @963, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff14 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @965, i32 0, i32 0))
  %mul11__ZN17VelocitySmoothing9computeT2Efffff = fmul float %mul10__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff14
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @966, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @967, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @968, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @969, i32 0, i32 0))
  %add12__ZN17VelocitySmoothing9computeT2Efffff = fadd float %sub8__ZN17VelocitySmoothing9computeT2Efffff, %mul11__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @970, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @971, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @972, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @973, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff15 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @975, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff16 = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @977, i32 0, i32 0))
  %mul13__ZN17VelocitySmoothing9computeT2Efffff = fmul float %tmp__ZN17VelocitySmoothing9computeT2Efffff15, %tmp__ZN17VelocitySmoothing9computeT2Efffff16
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @978, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @979, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @980, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @981, i32 0, i32 0))
  %sub14__ZN17VelocitySmoothing9computeT2Efffff = fsub float %add12__ZN17VelocitySmoothing9computeT2Efffff, %mul13__ZN17VelocitySmoothing9computeT2Efffff
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @982, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @983, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @984, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @985, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff17 = load float, float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %v3.addr__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @987, i32 0, i32 0))
  %add15__ZN17VelocitySmoothing9computeT2Efffff = fadd float %sub14__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff17
  call void @stg_update_op(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @988, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @989, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @990, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @991, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efffff18 = load float, float* %den__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %den__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @993, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT2Efffff = fdiv float %add15__ZN17VelocitySmoothing9computeT2Efffff, %tmp__ZN17VelocitySmoothing9computeT2Efffff18
  call void @stg_update_op(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @994, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @995, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @996, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @997, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing9computeT2Efffff, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_store_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @998, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @999, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing9computeT2Efffff19 = load float, float* %T2__ZN17VelocitySmoothing9computeT2Efffff, align 4
  call void @stg_update_load_float(float* %T2__ZN17VelocitySmoothing9computeT2Efffff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1001, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1002, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1003, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1004, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1005, i32 0, i32 0))
  %call16__ZN17VelocitySmoothing9computeT2Efffff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT2Efffff19, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1006, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1007, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1008, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1009, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1010, i32 0, i32 0))
  ret float %call16__ZN17VelocitySmoothing9computeT2Efffff
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math5abs_tIfEET_S1_(float %val) #1 {
entry:
  %val.addr__ZN4math5abs_tIfEET_S1_ = alloca float, align 4
  store float %val, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1011, i32 0, i32 0))
  %tmp__ZN4math5abs_tIfEET_S1_ = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1013, i32 0, i32 0))
  %cmp__ZN4math5abs_tIfEET_S1_ = fcmp ogt float %tmp__ZN4math5abs_tIfEET_S1_, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1014, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1015, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1016, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1017, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1018, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1019, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1020, i32 0, i32 0))
  br i1 %cmp__ZN4math5abs_tIfEET_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math5abs_tIfEET_S1_1 = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1022, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1023, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math5abs_tIfEET_S1_2 = load float, float* %val.addr__ZN4math5abs_tIfEET_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math5abs_tIfEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1025, i32 0, i32 0))
  %sub__ZN4math5abs_tIfEET_S1_ = fsub float -0.000000e+00, %tmp__ZN4math5abs_tIfEET_S1_2
  call void @stg_update_op(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1026, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1027, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1028, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1029, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1030, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math5abs_tIfEET_S1_ = phi float [ %tmp__ZN4math5abs_tIfEET_S1_1, %cond.true ], [ %sub__ZN4math5abs_tIfEET_S1_, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1031, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1032, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1033, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1034, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1035, i32 0, i32 0))
  ret float %cond__ZN4math5abs_tIfEET_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT2Efff(%class.VelocitySmoothing* %this, float %T123, float %T1, float %T3) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing9computeT2Efff = alloca %class.VelocitySmoothing*, align 8
  %T123.addr__ZN17VelocitySmoothing9computeT2Efff = alloca float, align 4
  %T1.addr__ZN17VelocitySmoothing9computeT2Efff = alloca float, align 4
  %T3.addr__ZN17VelocitySmoothing9computeT2Efff = alloca float, align 4
  %T2__ZN17VelocitySmoothing9computeT2Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT2Efff, align 8
  store float %T123, float* %T123.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_store_float(float* %T123.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1037, i32 0, i32 0))
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1038, i32 0, i32 0))
  store float %T3, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_store_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1039, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT2Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT2Efff, align 8
  %tmp__ZN17VelocitySmoothing9computeT2Efff = load float, float* %T123.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1043, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efff1 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1045, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing9computeT2Efff = fsub float %tmp__ZN17VelocitySmoothing9computeT2Efff, %tmp__ZN17VelocitySmoothing9computeT2Efff1
  call void @stg_update_op(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1046, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1047, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1048, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1049, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efff2 = load float, float* %T3.addr__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_load_float(float* %T3.addr__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1051, i32 0, i32 0))
  %sub2__ZN17VelocitySmoothing9computeT2Efff = fsub float %sub__ZN17VelocitySmoothing9computeT2Efff, %tmp__ZN17VelocitySmoothing9computeT2Efff2
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1052, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1053, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1054, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1055, i32 0, i32 0))
  store float %sub2__ZN17VelocitySmoothing9computeT2Efff, float* %T2__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_store_float(float* %T2__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1056, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT2Efff3 = load float, float* %T2__ZN17VelocitySmoothing9computeT2Efff, align 4
  call void @stg_update_load_float(float* %T2__ZN17VelocitySmoothing9computeT2Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1058, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1059, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1060, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1061, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1062, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT2Efff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT2Efff3, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1063, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1064, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1065, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1066, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1067, i32 0, i32 0))
  ret float %call__ZN17VelocitySmoothing9computeT2Efff
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this, float %T1, float %a0, float %j_max) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing9computeT3Efff = alloca %class.VelocitySmoothing*, align 8
  %T1.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %a0.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %j_max.addr__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  %T3__ZN17VelocitySmoothing9computeT3Efff = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT3Efff, align 8
  store float %T1, float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1069, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1070, i32 0, i32 0))
  store float %j_max, float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1071, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing9computeT3Efff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing9computeT3Efff, align 8
  %tmp__ZN17VelocitySmoothing9computeT3Efff = load float, float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1075, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff1 = load float, float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %j_max.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1077, i32 0, i32 0))
  %div__ZN17VelocitySmoothing9computeT3Efff = fdiv float %tmp__ZN17VelocitySmoothing9computeT3Efff, %tmp__ZN17VelocitySmoothing9computeT3Efff1
  call void @stg_update_op(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1078, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1079, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1080, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1081, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff2 = load float, float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %T1.addr__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1083, i32 0, i32 0))
  %add__ZN17VelocitySmoothing9computeT3Efff = fadd float %div__ZN17VelocitySmoothing9computeT3Efff, %tmp__ZN17VelocitySmoothing9computeT3Efff2
  call void @stg_update_op(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1084, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1085, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1086, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1087, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing9computeT3Efff, float* %T3__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_store_float(float* %T3__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1088, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing9computeT3Efff3 = load float, float* %T3__ZN17VelocitySmoothing9computeT3Efff, align 4
  call void @stg_update_load_float(float* %T3__ZN17VelocitySmoothing9computeT3Efff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1090, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1091, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1092, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1093, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1094, i32 0, i32 0))
  %call__ZN17VelocitySmoothing9computeT3Efff = call float @_ZN4math3maxIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing9computeT3Efff3, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1095, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1096, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1097, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1098, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1099, i32 0, i32 0))
  ret float %call__ZN17VelocitySmoothing9computeT3Efff
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %this, float %vel_setpoint) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing15updateDurationsEf = alloca %class.VelocitySmoothing*, align 8
  %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing15updateDurationsEf, align 8
  store float %vel_setpoint, float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1101, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing15updateDurationsEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing15updateDurationsEf, align 8
  %tmp__ZN17VelocitySmoothing15updateDurationsEf = load float, float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %vel_setpoint.addr__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1105, i32 0, i32 0))
  %_max_vel__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing15updateDurationsEf1 = load float, float* %_max_vel__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %_max_vel__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1107, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing15updateDurationsEf = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing15updateDurationsEf1
  call void @stg_update_op(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1108, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1110, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1111, i32 0, i32 0))
  %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing15updateDurationsEf2 = load float, float* %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_float(float* %_max_vel2__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1113, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1114, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1115, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1116, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1117, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1118, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1119, i32 0, i32 0))
  %call__ZN17VelocitySmoothing15updateDurationsEf = call float @_ZN4math9constrainIfEET_S1_S1_S1_(float %tmp__ZN17VelocitySmoothing15updateDurationsEf, float %sub__ZN17VelocitySmoothing15updateDurationsEf, float %tmp__ZN17VelocitySmoothing15updateDurationsEf2)
  call void @stg_update_char(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1120, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1121, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 0
  store float %call__ZN17VelocitySmoothing15updateDurationsEf, float* %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_vel_sp__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1122, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1123, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 4
  %_state_init__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 6
  %tmp__ZN17VelocitySmoothing15updateDurationsEf3 = bitcast %struct.Trajectory* %_state_init__ZN17VelocitySmoothing15updateDurationsEf to i8*
  %tmp__ZN17VelocitySmoothing15updateDurationsEf4 = bitcast %struct.Trajectory* %_state__ZN17VelocitySmoothing15updateDurationsEf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__ZN17VelocitySmoothing15updateDurationsEf3, i8* align 4 %tmp__ZN17VelocitySmoothing15updateDurationsEf4, i64 16, i1 false)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1133, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1134, i32 0, i32 0))
  %call3__ZN17VelocitySmoothing15updateDurationsEf = call i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf)
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1135, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1136, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 5
  store i32 %call3__ZN17VelocitySmoothing15updateDurationsEf, i32* %_direction__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_i32(i32* %_direction__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1137, i32 0, i32 0))
  %_direction4__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing15updateDurationsEf5 = load i32, i32* %_direction4__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_load_i32(i32* %_direction4__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1139, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing15updateDurationsEf = icmp ne i32 %tmp__ZN17VelocitySmoothing15updateDurationsEf5, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1140, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1142, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1144, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1145, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1146, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing15updateDurationsEf, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1147, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1148, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1149, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1150, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1151, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %_T3__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 9
  store float 0.000000e+00, float* %_T3__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1152, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 8
  store float 0.000000e+00, float* %_T2__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1153, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing15updateDurationsEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing15updateDurationsEf, i32 0, i32 7
  store float 0.000000e+00, float* %_T1__ZN17VelocitySmoothing15updateDurationsEf, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothing15updateDurationsEf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1154, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1155, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1156, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math9constrainIfEET_S1_S1_S1_(float %val, float %min_val, float %max_val) #1 {
entry:
  %val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_ = alloca float, align 4
  store float %val, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1157, i32 0, i32 0))
  store float %min_val, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1158, i32 0, i32 0))
  store float %max_val, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_store_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1159, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_ = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1161, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_1 = load float, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1163, i32 0, i32 0))
  %cmp__ZN4math9constrainIfEET_S1_S1_S1_ = fcmp olt float %tmp__ZN4math9constrainIfEET_S1_S1_S1_, %tmp__ZN4math9constrainIfEET_S1_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1164, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1165, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1166, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1168, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1169, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1170, i32 0, i32 0))
  br i1 %cmp__ZN4math9constrainIfEET_S1_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_2 = load float, float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %min_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1172, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1173, i32 0, i32 0))
  br label %cond.end4

cond.false:                                       ; preds = %entry
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_3 = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1175, i32 0, i32 0))
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_4 = load float, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1177, i32 0, i32 0))
  %cmp1__ZN4math9constrainIfEET_S1_S1_S1_ = fcmp ogt float %tmp__ZN4math9constrainIfEET_S1_S1_S1_3, %tmp__ZN4math9constrainIfEET_S1_S1_S1_4
  call void @stg_update_cmp(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1178, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1180, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1181, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1182, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1183, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1184, i32 0, i32 0))
  br i1 %cmp1__ZN4math9constrainIfEET_S1_S1_S1_, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_5 = load float, float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %max_val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1186, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1187, i32 0, i32 0))
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  %tmp__ZN4math9constrainIfEET_S1_S1_S1_6 = load float, float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN4math9constrainIfEET_S1_S1_S1_, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1189, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1190, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond__ZN4math9constrainIfEET_S1_S1_S1_ = phi float [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_5, %cond.true2 ], [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_6, %cond.false3 ]
  call void @stg_update_phi(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1191, i32 0, i32 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @1192, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1193, i32 0, i32 0))
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5__ZN4math9constrainIfEET_S1_S1_S1_ = phi float [ %tmp__ZN4math9constrainIfEET_S1_S1_S1_2, %cond.true ], [ %cond__ZN4math9constrainIfEET_S1_S1_S1_, %cond.end ]
  call void @stg_update_phi(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1194, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @1195, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1196, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1197, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1198, i32 0, i32 0))
  ret float %cond5__ZN4math9constrainIfEET_S1_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing16computeDirectionEv = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv = alloca float, align 4
  %direction__ZN17VelocitySmoothing16computeDirectionEv = alloca i32, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing16computeDirectionEv, align 8
  %this1__ZN17VelocitySmoothing16computeDirectionEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing16computeDirectionEv, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1202, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1203, i32 0, i32 0))
  %call__ZN17VelocitySmoothing16computeDirectionEv = call float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv)
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1204, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1205, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing16computeDirectionEv, float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1206, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing16computeDirectionEv = load float, float* %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1208, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing16computeDirectionEv1 = load float, float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %vel_zero_acc__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1210, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing16computeDirectionEv = fsub float %tmp__ZN17VelocitySmoothing16computeDirectionEv, %tmp__ZN17VelocitySmoothing16computeDirectionEv1
  call void @stg_update_op(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1211, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1212, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1213, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1214, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1215, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1216, i32 0, i32 0))
  %call2__ZN17VelocitySmoothing16computeDirectionEv = call i32 @_ZN6matrix4signIfEEiT_(float %sub__ZN17VelocitySmoothing16computeDirectionEv)
  call void @stg_update_char(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1217, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1218, i32 0, i32 0))
  store i32 %call2__ZN17VelocitySmoothing16computeDirectionEv, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1219, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing16computeDirectionEv2 = load i32, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1221, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing16computeDirectionEv = icmp eq i32 %tmp__ZN17VelocitySmoothing16computeDirectionEv2, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1222, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1223, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1224, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1225, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1226, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1227, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1228, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing16computeDirectionEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_state__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing16computeDirectionEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing16computeDirectionEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing16computeDirectionEv3 = load float, float* %a__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1230, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1231, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1232, i32 0, i32 0))
  %call3__ZN17VelocitySmoothing16computeDirectionEv = call i32 @_ZN6matrix4signIfEEiT_(float %tmp__ZN17VelocitySmoothing16computeDirectionEv3)
  call void @stg_update_char(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1233, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1234, i32 0, i32 0))
  store i32 %call3__ZN17VelocitySmoothing16computeDirectionEv, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_store_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1235, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1236, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing16computeDirectionEv4 = load i32, i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, align 4
  call void @stg_update_load_i32(i32* %direction__ZN17VelocitySmoothing16computeDirectionEv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1238, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1239, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1240, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1241, i32 0, i32 0))
  ret i32 %tmp__ZN17VelocitySmoothing16computeDirectionEv4
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca %class.VelocitySmoothing*, align 8
  %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca float, align 4
  %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 8
  %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 8
  %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = load i32, i32* %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_i32(i32* %_direction__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1246, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1247, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1248, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1249, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1250, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = sitofp i32 %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv to float
  %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1 = load float, float* %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1252, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = fmul float %conv__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv1
  call void @stg_update_op(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1253, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1254, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1255, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1256, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1257, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2 = load float, float* %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1259, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3 = load float, float* %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1261, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = fsub float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv2, %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv3
  call void @stg_update_op(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1262, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1263, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1264, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1265, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1266, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4 = load float, float* %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1268, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5 = load float, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1270, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1272, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7 = load float, float* %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_max_accel__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1274, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1275, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1276, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1277, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1278, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1279, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1280, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1281, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1282, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1283, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1284, i32 0, i32 0))
  %call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv4, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv5, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv6, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv7)
  call void @stg_update_char(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1285, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1286, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  store float %call__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1287, i32 0, i32 0))
  %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8 = load float, float* %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T13__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1289, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9 = load float, float* %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a5__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1291, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1293, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1294, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1295, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1296, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1297, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1298, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1299, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1300, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1301, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv8, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv9, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv10)
  call void @stg_update_char(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1302, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1303, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 9
  store float %call6__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1304, i32 0, i32 0))
  %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11 = load float, float* %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T17__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1306, i32 0, i32 0))
  %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 9
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12 = load float, float* %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %_T38__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1308, i32 0, i32 0))
  %_state9__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 4
  %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state9__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13 = load float, float* %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %a10__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1310, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14 = load float, float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %delta_v__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1312, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1314, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1315, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1316, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1317, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1318, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1319, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1320, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1321, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1322, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1323, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1324, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1325, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1326, i32 0, i32 0))
  %call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = call float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv11, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv12, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv13, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv14, float %tmp__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv15)
  call void @stg_update_char(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1327, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1328, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i32 0, i32 8
  store float %call11__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, float* %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1329, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1330, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 8
  %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 8
  %_state__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv = load float, float* %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1335, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1336, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1 = load float, float* %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1338, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1339, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1340, i32 0, i32 0))
  %call__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call float @_ZN4math5abs_tIfEET_S1_(float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv1)
  call void @stg_update_char(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1341, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1342, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fcmp ogt float %call__ZN17VelocitySmoothing19computeVelAtZeroAccEv, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1343, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1344, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1345, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1346, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1347, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1348, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1349, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_state3__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a4__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state3__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2 = load float, float* %a4__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a4__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1351, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1352, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1353, i32 0, i32 0))
  %call5__ZN17VelocitySmoothing19computeVelAtZeroAccEv = call i32 @_ZN6matrix4signIfEEiT_(float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv2)
  call void @stg_update_char(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1354, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1355, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv = sub nsw i32 0, %call5__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1356, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1357, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1358, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1359, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1360, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1361, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1362, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1363, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv = sitofp i32 %sub__ZN17VelocitySmoothing19computeVelAtZeroAccEv to float
  %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3 = load float, float* %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1365, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %conv__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv3
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1366, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1367, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1368, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1369, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1370, i32 0, i32 0))
  %_state6__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a7__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state6__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4 = load float, float* %a7__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a7__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1372, i32 0, i32 0))
  %sub8__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fsub float -0.000000e+00, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv4
  call void @stg_update_op(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1373, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1374, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1375, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1376, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5 = load float, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1378, i32 0, i32 0))
  %div__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fdiv float %sub8__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv5
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1379, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1380, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1381, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1382, i32 0, i32 0))
  store float %div__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1383, i32 0, i32 0))
  %_state9__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %v10__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state9__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6 = load float, float* %v10__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %v10__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1385, i32 0, i32 0))
  %_state11__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 4
  %a12__ZN17VelocitySmoothing19computeVelAtZeroAccEv = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state11__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7 = load float, float* %a12__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %a12__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1387, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1389, i32 0, i32 0))
  %mul13__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv7, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv8
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1390, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1391, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1392, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1393, i32 0, i32 0))
  %add__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fadd float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv6, %mul13__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1394, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1395, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1396, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1397, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9 = load float, float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %j_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1399, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv9
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1400, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1401, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1402, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1403, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1405, i32 0, i32 0))
  %mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %mul14__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv10
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1406, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1407, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1408, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1409, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11 = load float, float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %t_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1411, i32 0, i32 0))
  %mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fmul float %mul15__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv11
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1412, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1413, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1414, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1415, i32 0, i32 0))
  %add17__ZN17VelocitySmoothing19computeVelAtZeroAccEv = fadd float %add__ZN17VelocitySmoothing19computeVelAtZeroAccEv, %mul16__ZN17VelocitySmoothing19computeVelAtZeroAccEv
  call void @stg_update_op(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1416, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1417, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1418, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1419, i32 0, i32 0))
  store float %add17__ZN17VelocitySmoothing19computeVelAtZeroAccEv, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_store_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1420, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1421, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12 = load float, float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, align 4
  call void @stg_update_load_float(float* %vel_zero_acc__ZN17VelocitySmoothing19computeVelAtZeroAccEv, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1423, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1424, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1425, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1426, i32 0, i32 0))
  ret float %tmp__ZN17VelocitySmoothing19computeVelAtZeroAccEv12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZN6matrix4signIfEEiT_(float %val) #1 {
entry:
  %retval__ZN6matrix4signIfEEiT_ = alloca i32, align 4
  %val.addr__ZN6matrix4signIfEEiT_ = alloca float, align 4
  store float %val, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1427, i32 0, i32 0))
  %tmp__ZN6matrix4signIfEEiT_ = load float, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1429, i32 0, i32 0))
  %cmp__ZN6matrix4signIfEEiT_ = fcmp olt float 0x3E80000000000000, %tmp__ZN6matrix4signIfEEiT_
  call void @stg_update_cmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1430, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1431, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1432, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1433, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1434, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1435, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1436, i32 0, i32 0))
  br i1 %cmp__ZN6matrix4signIfEEiT_, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1437, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1438, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  %tmp__ZN6matrix4signIfEEiT_1 = load float, float* %val.addr__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_float(float* %val.addr__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1440, i32 0, i32 0))
  %cmp1__ZN6matrix4signIfEEiT_ = fcmp olt float %tmp__ZN6matrix4signIfEEiT_1, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1441, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1442, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1443, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1444, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1445, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1446, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1447, i32 0, i32 0))
  br i1 %cmp1__ZN6matrix4signIfEEiT_, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 -1, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1448, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1449, i32 0, i32 0))
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_store_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1450, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1451, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %tmp__ZN6matrix4signIfEEiT_2 = load i32, i32* %retval__ZN6matrix4signIfEEiT_, align 4
  call void @stg_update_load_i32(i32* %retval__ZN6matrix4signIfEEiT_, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1453, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @1454, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1455, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1456, i32 0, i32 0))
  ret i32 %tmp__ZN6matrix4signIfEEiT_2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this, float %j, float %a0, float %v0, float %x0, float %t, i32 %d) #1 align 2 {
entry:
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
  call void @stg_update_store_float(float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1458, i32 0, i32 0))
  store float %a0, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1459, i32 0, i32 0))
  store float %v0, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1460, i32 0, i32 0))
  store float %x0, float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1461, i32 0, i32 0))
  store float %t, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1462, i32 0, i32 0))
  store i32 %d, i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_i32(i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1463, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing12evaluatePolyEfffffi = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 8
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi = load i32, i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_i32(i32* %d.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1467, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1468, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1469, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1470, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1471, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing12evaluatePolyEfffffi = sitofp i32 %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi to float
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1 = load float, float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %j.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1473, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %conv__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi1
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1474, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1475, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1476, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1477, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1478, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1480, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1482, i32 0, i32 0))
  %mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi2, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi3
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1483, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1484, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1485, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1486, i32 0, i32 0))
  store float %mul2__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1487, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1489, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1491, i32 0, i32 0))
  %mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi4, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi5
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1492, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1493, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1494, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1495, i32 0, i32 0))
  store float %mul3__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1496, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1498, i32 0, i32 0))
  %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 0
  store float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi6, float* %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %j4__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1499, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1501, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1503, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1505, i32 0, i32 0))
  %mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi8, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi9
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1506, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1507, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1508, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1509, i32 0, i32 0))
  %add__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi7, %mul5__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1510, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1511, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1512, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1513, i32 0, i32 0))
  %a__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 1
  store float %add__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %a__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %a__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1514, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10 = load float, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1516, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1518, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1520, i32 0, i32 0))
  %mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi11, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi12
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1521, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1522, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1523, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1524, i32 0, i32 0))
  %add7__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi10, %mul6__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1525, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1526, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1527, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1528, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1530, i32 0, i32 0))
  %mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi13
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1531, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1532, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1533, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1534, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1536, i32 0, i32 0))
  %mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul8__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi14
  call void @stg_update_op(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1537, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1538, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1539, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1540, i32 0, i32 0))
  %add10__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add7__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul9__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1541, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1542, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1543, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1544, i32 0, i32 0))
  %v__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 2
  store float %add10__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %v__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %v__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1545, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15 = load float, float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %x0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1547, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16 = load float, float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %v0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1549, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17 = load float, float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1551, i32 0, i32 0))
  %mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi16, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi17
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1552, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1553, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1554, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1555, i32 0, i32 0))
  %add12__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi15, %mul11__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1556, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1557, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1558, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1559, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18 = load float, float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %a0.addr__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1561, i32 0, i32 0))
  %mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 5.000000e-01, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi18
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1562, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1563, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1564, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1565, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19 = load float, float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1567, i32 0, i32 0))
  %mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul13__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi19
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1568, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1569, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1570, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1571, i32 0, i32 0))
  %add15__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add12__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul14__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1572, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1573, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1574, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1575, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20 = load float, float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %jt__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1577, i32 0, i32 0))
  %mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float 0x3FC5555560000000, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi20
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1578, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1579, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1580, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1581, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21 = load float, float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1583, i32 0, i32 0))
  %mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi = fmul float %mul16__ZN17VelocitySmoothing12evaluatePolyEfffffi, %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi21
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1584, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1585, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1586, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1587, i32 0, i32 0))
  %add18__ZN17VelocitySmoothing12evaluatePolyEfffffi = fadd float %add15__ZN17VelocitySmoothing12evaluatePolyEfffffi, %mul17__ZN17VelocitySmoothing12evaluatePolyEfffffi
  call void @stg_update_op(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1588, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1589, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1590, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1591, i32 0, i32 0))
  %x__ZN17VelocitySmoothing12evaluatePolyEfffffi = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi, i32 0, i32 3
  store float %add18__ZN17VelocitySmoothing12evaluatePolyEfffffi, float* %x__ZN17VelocitySmoothing12evaluatePolyEfffffi, align 4
  call void @stg_update_store_float(float* %x__ZN17VelocitySmoothing12evaluatePolyEfffffi, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1592, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi22 = bitcast %struct.Trajectory* %retval__ZN17VelocitySmoothing12evaluatePolyEfffffi to { <2 x float>, <2 x float> }*
  %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi22, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1596, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1597, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1598, i32 0, i32 0))
  ret { <2 x float>, <2 x float> } %tmp__ZN17VelocitySmoothing12evaluatePolyEfffffi23
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %this, float %dt, float %time_stretch) #0 align 2 {
entry:
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
  call void @stg_update_store_float(float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1600, i32 0, i32 0))
  store float %time_stretch, float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1601, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing10updateTrajEff = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing10updateTrajEff, align 8
  %tmp__ZN17VelocitySmoothing10updateTrajEff = load float, float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %dt.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1605, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff1 = load float, float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %time_stretch.addr__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1607, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing10updateTrajEff = fmul float %tmp__ZN17VelocitySmoothing10updateTrajEff, %tmp__ZN17VelocitySmoothing10updateTrajEff1
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1608, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1609, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1610, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1611, i32 0, i32 0))
  %_local_time__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 10
  %tmp__ZN17VelocitySmoothing10updateTrajEff2 = load float, float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1613, i32 0, i32 0))
  %add__ZN17VelocitySmoothing10updateTrajEff = fadd float %tmp__ZN17VelocitySmoothing10updateTrajEff2, %mul__ZN17VelocitySmoothing10updateTrajEff
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1614, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1615, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1616, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1617, i32 0, i32 0))
  store float %add__ZN17VelocitySmoothing10updateTrajEff, float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %_local_time__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1618, i32 0, i32 0))
  %_local_time2__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 10
  %tmp__ZN17VelocitySmoothing10updateTrajEff3 = load float, float* %_local_time2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_local_time2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1620, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing10updateTrajEff3, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1621, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff4 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1623, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing10updateTrajEff5 = load float, float* %_T1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1625, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1626, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1627, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1628, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1629, i32 0, i32 0))
  %call__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff4, float %tmp__ZN17VelocitySmoothing10updateTrajEff5)
  call void @stg_update_char(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1630, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1631, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing10updateTrajEff, float* %t1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1632, i32 0, i32 0))
  %_max_jerk__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff6 = load float, float* %_max_jerk__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1634, i32 0, i32 0))
  %_state_init__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %a__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff7 = load float, float* %a__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1636, i32 0, i32 0))
  %_state_init3__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %v__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init3__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff8 = load float, float* %v__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1638, i32 0, i32 0))
  %_state_init4__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 6
  %x__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init4__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff9 = load float, float* %x__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1640, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff10 = load float, float* %t1__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1642, i32 0, i32 0))
  %_direction__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing10updateTrajEff11 = load i32, i32* %_direction__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_i32(i32* %_direction__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1644, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1645, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1646, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1647, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1648, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1649, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1650, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1651, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1652, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1653, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1654, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1655, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1656, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1657, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1658, i32 0, i32 0))
  %call5__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float %tmp__ZN17VelocitySmoothing10updateTrajEff6, float %tmp__ZN17VelocitySmoothing10updateTrajEff7, float %tmp__ZN17VelocitySmoothing10updateTrajEff8, float %tmp__ZN17VelocitySmoothing10updateTrajEff9, float %tmp__ZN17VelocitySmoothing10updateTrajEff10, i32 %tmp__ZN17VelocitySmoothing10updateTrajEff11)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1659, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1660, i32 0, i32 0))
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
  call void @stg_update_load_float(float* %t1__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1674, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff20 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1676, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff20, %tmp__ZN17VelocitySmoothing10updateTrajEff19
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1677, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1678, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1679, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1680, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1681, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff21 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1683, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff21, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1684, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1685, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1686, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1687, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1688, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1689, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1690, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing10updateTrajEff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp__ZN17VelocitySmoothing10updateTrajEff22 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1692, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 8
  %tmp__ZN17VelocitySmoothing10updateTrajEff23 = load float, float* %_T2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1694, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1695, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1696, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1697, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1698, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff22, float %tmp__ZN17VelocitySmoothing10updateTrajEff23)
  call void @stg_update_char(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1699, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1700, i32 0, i32 0))
  store float %call6__ZN17VelocitySmoothing10updateTrajEff, float* %t2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1701, i32 0, i32 0))
  %_state8__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %a9__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state8__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff24 = load float, float* %a9__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a9__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1703, i32 0, i32 0))
  %_state10__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v11__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state10__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff25 = load float, float* %v11__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v11__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1705, i32 0, i32 0))
  %_state12__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x13__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state12__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff26 = load float, float* %x13__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x13__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1707, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff27 = load float, float* %t2__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1709, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1710, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1711, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1712, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1713, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1714, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1715, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1716, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1717, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1718, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1719, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1720, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1721, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1722, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1723, i32 0, i32 0))
  %call14__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float 0.000000e+00, float %tmp__ZN17VelocitySmoothing10updateTrajEff24, float %tmp__ZN17VelocitySmoothing10updateTrajEff25, float %tmp__ZN17VelocitySmoothing10updateTrajEff26, float %tmp__ZN17VelocitySmoothing10updateTrajEff27, i32 0)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1724, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1725, i32 0, i32 0))
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
  call void @stg_update_load_float(float* %t2__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1739, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff36 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1741, i32 0, i32 0))
  %sub16__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff36, %tmp__ZN17VelocitySmoothing10updateTrajEff35
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1742, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1743, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1744, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1745, i32 0, i32 0))
  store float %sub16__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1746, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1747, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__ZN17VelocitySmoothing10updateTrajEff37 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1749, i32 0, i32 0))
  %cmp17__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff37, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1750, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1751, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1752, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1753, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1754, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp17__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1755, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1756, i32 0, i32 0))
  br i1 %cmp17__ZN17VelocitySmoothing10updateTrajEff, label %if.then18, label %if.end33

if.then18:                                        ; preds = %if.end
  %tmp__ZN17VelocitySmoothing10updateTrajEff38 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1758, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 9
  %tmp__ZN17VelocitySmoothing10updateTrajEff39 = load float, float* %_T3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_T3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1760, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1761, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1762, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1763, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1764, i32 0, i32 0))
  %call19__ZN17VelocitySmoothing10updateTrajEff = call float @_ZN4math3minIfEET_S1_S1_(float %tmp__ZN17VelocitySmoothing10updateTrajEff38, float %tmp__ZN17VelocitySmoothing10updateTrajEff39)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1765, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1766, i32 0, i32 0))
  store float %call19__ZN17VelocitySmoothing10updateTrajEff, float* %t3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1767, i32 0, i32 0))
  %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff40 = load float, float* %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %_max_jerk21__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1769, i32 0, i32 0))
  %_state22__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %a23__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state22__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing10updateTrajEff41 = load float, float* %a23__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %a23__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1771, i32 0, i32 0))
  %_state24__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v25__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state24__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff42 = load float, float* %v25__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v25__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1773, i32 0, i32 0))
  %_state26__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x27__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state26__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff43 = load float, float* %x27__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x27__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1775, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff44 = load float, float* %t3__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1777, i32 0, i32 0))
  %_direction28__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing10updateTrajEff45 = load i32, i32* %_direction28__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_i32(i32* %_direction28__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1779, i32 0, i32 0))
  %sub29__ZN17VelocitySmoothing10updateTrajEff = sub nsw i32 0, %tmp__ZN17VelocitySmoothing10updateTrajEff45
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1780, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1781, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1782, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1783, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1784, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1785, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1786, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1787, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1788, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1789, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1790, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1791, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1792, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1793, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1794, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1795, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1796, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1797, i32 0, i32 0))
  %call30__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float %tmp__ZN17VelocitySmoothing10updateTrajEff40, float %tmp__ZN17VelocitySmoothing10updateTrajEff41, float %tmp__ZN17VelocitySmoothing10updateTrajEff42, float %tmp__ZN17VelocitySmoothing10updateTrajEff43, float %tmp__ZN17VelocitySmoothing10updateTrajEff44, i32 %sub29__ZN17VelocitySmoothing10updateTrajEff)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1798, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1799, i32 0, i32 0))
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
  call void @stg_update_load_float(float* %t3__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1813, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff54 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1815, i32 0, i32 0))
  %sub32__ZN17VelocitySmoothing10updateTrajEff = fsub float %tmp__ZN17VelocitySmoothing10updateTrajEff54, %tmp__ZN17VelocitySmoothing10updateTrajEff53
  call void @stg_update_op(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1816, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1817, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1818, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1819, i32 0, i32 0))
  store float %sub32__ZN17VelocitySmoothing10updateTrajEff, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_store_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1820, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1821, i32 0, i32 0))
  br label %if.end33

if.end33:                                         ; preds = %if.then18, %if.end
  %tmp__ZN17VelocitySmoothing10updateTrajEff55 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1823, i32 0, i32 0))
  %cmp34__ZN17VelocitySmoothing10updateTrajEff = fcmp ogt float %tmp__ZN17VelocitySmoothing10updateTrajEff55, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1824, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1825, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1826, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1827, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1828, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp34__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1829, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1830, i32 0, i32 0))
  br i1 %cmp34__ZN17VelocitySmoothing10updateTrajEff, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end33
  %_state37__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %v38__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state37__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing10updateTrajEff56 = load float, float* %v38__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %v38__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1832, i32 0, i32 0))
  %_state39__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 4
  %x40__ZN17VelocitySmoothing10updateTrajEff = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state39__ZN17VelocitySmoothing10updateTrajEff, i32 0, i32 3
  %tmp__ZN17VelocitySmoothing10updateTrajEff57 = load float, float* %x40__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %x40__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1834, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing10updateTrajEff58 = load float, float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, align 4
  call void @stg_update_load_float(float* %t_remain__ZN17VelocitySmoothing10updateTrajEff, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1836, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1837, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1838, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1839, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1840, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1841, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1842, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1843, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1844, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1845, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1846, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1847, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1848, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1849, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1850, i32 0, i32 0))
  %call41__ZN17VelocitySmoothing10updateTrajEff = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing10updateTrajEff, float 0.000000e+00, float 0.000000e+00, float %tmp__ZN17VelocitySmoothing10updateTrajEff56, float %tmp__ZN17VelocitySmoothing10updateTrajEff57, float %tmp__ZN17VelocitySmoothing10updateTrajEff58, i32 0)
  call void @stg_update_char(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1851, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1852, i32 0, i32 0))
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
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1865, i32 0, i32 0))
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end33
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1866, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3minIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  %a.addr__ZN4math3minIfEET_S1_S1_ = alloca float, align 4
  %b.addr__ZN4math3minIfEET_S1_S1_ = alloca float, align 4
  store float %a, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1867, i32 0, i32 0))
  store float %b, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_store_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1868, i32 0, i32 0))
  %tmp__ZN4math3minIfEET_S1_S1_ = load float, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1870, i32 0, i32 0))
  %tmp__ZN4math3minIfEET_S1_S1_1 = load float, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1872, i32 0, i32 0))
  %cmp__ZN4math3minIfEET_S1_S1_ = fcmp olt float %tmp__ZN4math3minIfEET_S1_S1_, %tmp__ZN4math3minIfEET_S1_S1_1
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1873, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1874, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1875, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1876, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1877, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1878, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1879, i32 0, i32 0))
  br i1 %cmp__ZN4math3minIfEET_S1_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math3minIfEET_S1_S1_2 = load float, float* %a.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %a.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1881, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1882, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math3minIfEET_S1_S1_3 = load float, float* %b.addr__ZN4math3minIfEET_S1_S1_, align 4
  call void @stg_update_load_float(float* %b.addr__ZN4math3minIfEET_S1_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1884, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1885, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math3minIfEET_S1_S1_ = phi float [ %tmp__ZN4math3minIfEET_S1_S1_2, %cond.true ], [ %tmp__ZN4math3minIfEET_S1_S1_3, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1886, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @1887, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @1888, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @1889, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1890, i32 0, i32 0))
  ret float %cond__ZN4math3minIfEET_S1_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing19timeSynchronizationEPS_i(%class.VelocitySmoothing* %traj, i32 %n_traj) #0 align 2 {
entry:
  %traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca %class.VelocitySmoothing*, align 8
  %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca i32, align 4
  %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca float, align 4
  %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca i32, align 4
  %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca i32, align 4
  %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca float, align 4
  %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i = alloca i32, align 4
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 8
  store i32 %n_traj, i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1892, i32 0, i32 0))
  store float 0.000000e+00, float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_float(float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1893, i32 0, i32 0))
  store i32 0, i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1894, i32 0, i32 0))
  store i32 0, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1895, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1896, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i = load i32, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1898, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i1 = load i32, i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1900, i32 0, i32 0))
  %cmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i = icmp slt i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i, %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i1
  call void @stg_update_cmp(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1901, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1902, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1903, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1904, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1905, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1906, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1907, i32 0, i32 0))
  br i1 %cmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 8
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i3 = load i32, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1911, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1912, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1913, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1914, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1915, i32 0, i32 0))
  %idxprom__ZN17VelocitySmoothing19timeSynchronizationEPS_i = sext i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i3 to i64
  %arrayidx__ZN17VelocitySmoothing19timeSynchronizationEPS_i = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i2, i64 %idxprom__ZN17VelocitySmoothing19timeSynchronizationEPS_i
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1916, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @1917, i32 0, i32 0))
  %call__ZN17VelocitySmoothing19timeSynchronizationEPS_i = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %arrayidx__ZN17VelocitySmoothing19timeSynchronizationEPS_i)
  call void @stg_update_char(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1918, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1919, i32 0, i32 0))
  store float %call__ZN17VelocitySmoothing19timeSynchronizationEPS_i, float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_float(float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1920, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i4 = load float, float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_float(float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1922, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i5 = load float, float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_float(float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1924, i32 0, i32 0))
  %cmp1__ZN17VelocitySmoothing19timeSynchronizationEPS_i = fcmp ogt float %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i4, %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i5
  call void @stg_update_cmp(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1925, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1926, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1927, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1928, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1929, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1930, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1931, i32 0, i32 0))
  br i1 %cmp1__ZN17VelocitySmoothing19timeSynchronizationEPS_i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i6 = load float, float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_float(float* %T123__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1933, i32 0, i32 0))
  store float %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i6, float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_float(float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1934, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i7 = load i32, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1936, i32 0, i32 0))
  store i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i7, i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1937, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1938, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1939, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i8 = load i32, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1941, i32 0, i32 0))
  %inc__ZN17VelocitySmoothing19timeSynchronizationEPS_i = add nsw i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i8, 1
  call void @stg_update_op(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1942, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1943, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1944, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1945, i32 0, i32 0))
  store i32 %inc__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %i__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1946, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1947, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i9 = load float, float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_float(float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1949, i32 0, i32 0))
  %cmp2__ZN17VelocitySmoothing19timeSynchronizationEPS_i = fcmp ogt float %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i9, 0x3E80000000000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1950, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1951, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1952, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1953, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1954, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1955, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1956, i32 0, i32 0))
  br i1 %cmp2__ZN17VelocitySmoothing19timeSynchronizationEPS_i, label %if.then3, label %if.end16

if.then3:                                         ; preds = %for.end
  store i32 0, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1957, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1958, i32 0, i32 0))
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %if.then3
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i10 = load i32, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1960, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i11 = load i32, i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %n_traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1962, i32 0, i32 0))
  %cmp6__ZN17VelocitySmoothing19timeSynchronizationEPS_i = icmp slt i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i10, %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i11
  call void @stg_update_cmp(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1963, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1964, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1965, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1966, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1967, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp6__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1968, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1969, i32 0, i32 0))
  br i1 %cmp6__ZN17VelocitySmoothing19timeSynchronizationEPS_i, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i12 = load i32, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1971, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i13 = load i32, i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %longest_traj_index__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1973, i32 0, i32 0))
  %cmp8__ZN17VelocitySmoothing19timeSynchronizationEPS_i = icmp ne i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i12, %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i13
  call void @stg_update_cmp(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1974, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1975, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1976, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1977, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1978, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1979, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1980, i32 0, i32 0))
  br i1 %cmp8__ZN17VelocitySmoothing19timeSynchronizationEPS_i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body7
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i14 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 8
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i15 = load i32, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1984, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1985, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1986, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1987, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1988, i32 0, i32 0))
  %idxprom10__ZN17VelocitySmoothing19timeSynchronizationEPS_i = sext i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i15 to i64
  %arrayidx11__ZN17VelocitySmoothing19timeSynchronizationEPS_i = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i14, i64 %idxprom10__ZN17VelocitySmoothing19timeSynchronizationEPS_i
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i16 = load float, float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_float(float* %desired_time__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1990, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1991, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1992, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1993, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1994, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf(%class.VelocitySmoothing* %arrayidx11__ZN17VelocitySmoothing19timeSynchronizationEPS_i, float %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i16)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @1995, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1996, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1997, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %for.body7
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1998, i32 0, i32 0))
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i17 = load i32, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_load_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2000, i32 0, i32 0))
  %inc14__ZN17VelocitySmoothing19timeSynchronizationEPS_i = add nsw i32 %tmp__ZN17VelocitySmoothing19timeSynchronizationEPS_i17, 1
  call void @stg_update_op(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2001, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2002, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2003, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2004, i32 0, i32 0))
  store i32 %inc14__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, align 4
  call void @stg_update_store_i32(i32* %i4__ZN17VelocitySmoothing19timeSynchronizationEPS_i, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2005, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2006, i32 0, i32 0))
  br label %for.cond5

for.end15:                                        ; preds = %for.cond5
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2007, i32 0, i32 0))
  br label %if.end16

if.end16:                                         ; preds = %for.end15, %for.end
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2008, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf(%class.VelocitySmoothing* %this, float %T123) #0 align 2 {
entry:
  %this.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = alloca %class.VelocitySmoothing*, align 8
  %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = alloca float, align 4
  %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = alloca float, align 4
  %delta_v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 8
  store float %T123, float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2010, i32 0, i32 0))
  %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 8
  %_direction__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 5
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = load i32, i32* %_direction__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_i32(i32* %_direction__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2014, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2015, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2016, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2017, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2018, i32 0, i32 0))
  %conv__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = sitofp i32 %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf to float
  %_max_jerk__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf1 = load float, float* %_max_jerk__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_max_jerk__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2020, i32 0, i32 0))
  %mul__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = fmul float %conv__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf1
  call void @stg_update_op(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2021, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2022, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2023, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2024, i32 0, i32 0))
  store float %mul__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2025, i32 0, i32 0))
  %_vel_sp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 0
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf2 = load float, float* %_vel_sp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_vel_sp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2027, i32 0, i32 0))
  %_state__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 4
  %v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf3 = load float, float* %v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2029, i32 0, i32 0))
  %sub__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = fsub float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf2, %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf3
  call void @stg_update_op(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2030, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2031, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2032, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2033, i32 0, i32 0))
  store float %sub__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float* %delta_v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %delta_v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @2034, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf4 = load float, float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2036, i32 0, i32 0))
  %_state2__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 4
  %a__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf5 = load float, float* %a__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %a__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2038, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf6 = load float, float* %delta_v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %delta_v__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2040, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf7 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2042, i32 0, i32 0))
  %_max_accel__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 2
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf8 = load float, float* %_max_accel__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_max_accel__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2044, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2045, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2046, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2047, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2048, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2049, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2050, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2051, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2052, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2053, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2054, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2055, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2056, i32 0, i32 0))
  %call__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = call float @_ZN17VelocitySmoothing9computeT1Efffff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf4, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf5, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf6, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf7, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf8)
  call void @stg_update_char(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2057, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2058, i32 0, i32 0))
  %_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 7
  store float %call__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float* %_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2059, i32 0, i32 0))
  %_T13__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf9 = load float, float* %_T13__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_T13__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2061, i32 0, i32 0))
  %_state4__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 4
  %a5__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 1
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf10 = load float, float* %a5__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %a5__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2063, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf11 = load float, float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %jerk_max_T1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2065, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2066, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2067, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2068, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2069, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2070, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2071, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2072, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2073, i32 0, i32 0))
  %call6__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = call float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf9, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf10, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf11)
  call void @stg_update_char(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2074, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2075, i32 0, i32 0))
  %_T3__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 9
  store float %call6__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float* %_T3__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %_T3__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2076, i32 0, i32 0))
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf12 = load float, float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %T123.addr__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2078, i32 0, i32 0))
  %_T17__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 7
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf13 = load float, float* %_T17__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_T17__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2080, i32 0, i32 0))
  %_T38__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 9
  %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf14 = load float, float* %_T38__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_load_float(float* %_T38__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2082, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2083, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2084, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2085, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2086, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2087, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2088, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2089, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2090, i32 0, i32 0))
  %call9__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = call float @_ZN17VelocitySmoothing9computeT2Efff(%class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf12, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf13, float %tmp__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf14)
  call void @stg_update_char(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2091, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2092, i32 0, i32 0))
  %_T2__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i32 0, i32 8
  store float %call9__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, float* %_T2__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, align 4
  call void @stg_update_store_float(float* %_T2__ZN17VelocitySmoothing29updateDurationsGivenTotalTimeEf, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @2093, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2094, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory) #0 {
entry:
  %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %trajectory, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %_max_accel__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing, i32 0, i32 2
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1 = bitcast float* %_max_accel__Z24make_trajectory_symbolicP17VelocitySmoothing to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr__Z24make_trajectory_symbolicP17VelocitySmoothing, align 8
  %_state__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing2, i32 0, i32 4
  %a__Z24make_trajectory_symbolicP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__Z24make_trajectory_symbolicP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3 = bitcast float* %a__Z24make_trajectory_symbolicP17VelocitySmoothing to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z24make_trajectory_symbolicP17VelocitySmoothing3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2102, i32 0, i32 0))
  ret void
}

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #4

; Function Attrs: noinline optnone ssp uwtable
define void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_max_accel__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 2
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing1 = bitcast float* %_max_accel__Z22stg_initial_trajectoryP17VelocitySmoothing to i8*
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing2, i32 0, i32 2
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3 = load float, float* %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing, align 4
  call void @stg_update_load_float(float* %_max_accel1__Z22stg_initial_trajectoryP17VelocitySmoothing, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2110, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing1, float %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing3)
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_state__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing4, i32 0, i32 4
  %a__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing5 = bitcast float* %a__Z22stg_initial_trajectoryP17VelocitySmoothing to i8*
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z22stg_initial_trajectoryP17VelocitySmoothing, align 8
  %_state2__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing6, i32 0, i32 4
  %a3__Z22stg_initial_trajectoryP17VelocitySmoothing = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2__Z22stg_initial_trajectoryP17VelocitySmoothing, i32 0, i32 1
  %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7 = load float, float* %a3__Z22stg_initial_trajectoryP17VelocitySmoothing, align 4
  call void @stg_update_load_float(float* %a3__Z22stg_initial_trajectoryP17VelocitySmoothing, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2117, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing5, float %tmp__Z22stg_initial_trajectoryP17VelocitySmoothing7)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2118, i32 0, i32 0))
  ret void
}

declare void @stg_input_float(i8*, float) #4

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing = alloca %class.VelocitySmoothing*, align 8
  %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing = alloca i8, align 1
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_pause_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2120, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2121, i32 0, i32 0))
  store i8 1, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2122, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2125, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2126, i32 0, i32 0))
  %call__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing)
  call void @stg_update_char(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2127, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2128, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2131, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2132, i32 0, i32 0))
  %call1__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing1)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2133, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2134, i32 0, i32 0))
  %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing = fcmp ogt float %call__Z27check_kinematic_constraintsP17VelocitySmoothing, %call1__Z27check_kinematic_constraintsP17VelocitySmoothing
  call void @stg_update_cmp(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2135, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2136, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2137, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2139, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2140, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2141, i32 0, i32 0))
  br i1 %cmp__Z27check_kinematic_constraintsP17VelocitySmoothing, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2142, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2143, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2146, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2147, i32 0, i32 0))
  %call2__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing2)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2148, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2149, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing3 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2152, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2153, i32 0, i32 0))
  %call3__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing3)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2154, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2155, i32 0, i32 0))
  %cmp4__Z27check_kinematic_constraintsP17VelocitySmoothing = fcmp ogt float %call2__Z27check_kinematic_constraintsP17VelocitySmoothing, %call3__Z27check_kinematic_constraintsP17VelocitySmoothing
  call void @stg_update_cmp(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2156, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2157, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2158, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2160, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2161, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2162, i32 0, i32 0))
  br i1 %cmp4__Z27check_kinematic_constraintsP17VelocitySmoothing, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i8 0, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2163, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2164, i32 0, i32 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing4 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2167, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2168, i32 0, i32 0))
  %call7__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing4)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2169, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2170, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing5 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr__Z27check_kinematic_constraintsP17VelocitySmoothing, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2173, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2174, i32 0, i32 0))
  %call8__Z27check_kinematic_constraintsP17VelocitySmoothing = call float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing5)
  call void @stg_update_char(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2175, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2176, i32 0, i32 0))
  %cmp9__Z27check_kinematic_constraintsP17VelocitySmoothing = fcmp ogt float %call7__Z27check_kinematic_constraintsP17VelocitySmoothing, %call8__Z27check_kinematic_constraintsP17VelocitySmoothing
  call void @stg_update_cmp(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2177, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2178, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2179, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @2180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2181, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp9__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2182, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2183, i32 0, i32 0))
  br i1 %cmp9__Z27check_kinematic_constraintsP17VelocitySmoothing, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i8 0, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_store_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2184, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2185, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  call void @stg_resume_recording()
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2186, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2187, i32 0, i32 0))
  %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing6 = load i8, i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, align 1
  call void @stg_update_load_i8(i8* %oracle__Z27check_kinematic_constraintsP17VelocitySmoothing, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2189, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @2190, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2193, i32 0, i32 0))
  %tobool__Z27check_kinematic_constraintsP17VelocitySmoothing = trunc i8 %tmp__Z27check_kinematic_constraintsP17VelocitySmoothing6 to i1
  call void @stg_update_char(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2194, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @2195, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2196, i32 0, i32 0))
  ret i1 %tobool__Z27check_kinematic_constraintsP17VelocitySmoothing
}

declare void @stg_pause_recording() #4

declare void @stg_resume_recording() #4

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z23test_initial_conditionsv() #0 {
entry:
  %trajectory__Z23test_initial_conditionsv = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z23test_initial_conditionsv = alloca float, align 4
  %result__Z23test_initial_conditionsv = alloca i8, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2197, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2198, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2199, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2200, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2201, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2202, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2203, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2204, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2205, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2206, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_store_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2207, i32 0, i32 0))
  %tmp__Z23test_initial_conditionsv = bitcast float* %acceleration__Z23test_initial_conditionsv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z23test_initial_conditionsv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z23test_initial_conditionsv1 = bitcast float* %acceleration__Z23test_initial_conditionsv to i8*
  %tmp__Z23test_initial_conditionsv2 = load float, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_load_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2211, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z23test_initial_conditionsv1, float %tmp__Z23test_initial_conditionsv2)
  %tmp__Z23test_initial_conditionsv3 = load float, float* %acceleration__Z23test_initial_conditionsv, align 4
  call void @stg_update_load_float(float* %acceleration__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2213, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2214, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2215, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2216, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2217, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv, float %tmp__Z23test_initial_conditionsv3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2218, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2219, i32 0, i32 0))
  store i8 1, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2220, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2221, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2222, i32 0, i32 0))
  %call__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2223, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2224, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2225, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2226, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2228, i32 0, i32 0))
  %conv__Z23test_initial_conditionsv = fpext float %call__Z23test_initial_conditionsv to double
  %cmp__Z23test_initial_conditionsv = fcmp une double %conv__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2229, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2230, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2231, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2232, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2233, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z23test_initial_conditionsv, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2234, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2235, i32 0, i32 0))
  br i1 %cmp__Z23test_initial_conditionsv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2236, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2237, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2238, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2239, i32 0, i32 0))
  %call1__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2240, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2241, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2242, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2243, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2244, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2245, i32 0, i32 0))
  %conv2__Z23test_initial_conditionsv = fpext float %call1__Z23test_initial_conditionsv to double
  %cmp3__Z23test_initial_conditionsv = fcmp une double %conv2__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2246, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2247, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2248, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2249, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2250, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp3__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2251, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2252, i32 0, i32 0))
  br i1 %cmp3__Z23test_initial_conditionsv, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2253, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2254, i32 0, i32 0))
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2255, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2256, i32 0, i32 0))
  %call6__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2257, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2258, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2259, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2260, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2261, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2262, i32 0, i32 0))
  %conv7__Z23test_initial_conditionsv = fpext float %call6__Z23test_initial_conditionsv to double
  %cmp8__Z23test_initial_conditionsv = fcmp une double %conv7__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2263, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2264, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2265, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2266, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2267, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2268, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2269, i32 0, i32 0))
  br i1 %cmp8__Z23test_initial_conditionsv, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2270, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2271, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2272, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2273, i32 0, i32 0))
  %call11__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2274, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2275, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2276, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2277, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2278, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2279, i32 0, i32 0))
  %conv12__Z23test_initial_conditionsv = fpext float %call11__Z23test_initial_conditionsv to double
  %cmp13__Z23test_initial_conditionsv = fcmp une double %conv12__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2280, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2281, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2282, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2283, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2284, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp13__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2285, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2286, i32 0, i32 0))
  br i1 %cmp13__Z23test_initial_conditionsv, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2287, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2288, i32 0, i32 0))
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2289, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2290, i32 0, i32 0))
  %call16__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2291, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2292, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2293, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2294, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2295, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2296, i32 0, i32 0))
  %conv17__Z23test_initial_conditionsv = fpext float %call16__Z23test_initial_conditionsv to double
  %cmp18__Z23test_initial_conditionsv = fcmp une double %conv17__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2297, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2298, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2299, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2300, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2301, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp18__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2302, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2303, i32 0, i32 0))
  br i1 %cmp18__Z23test_initial_conditionsv, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2304, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2305, i32 0, i32 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2306, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2307, i32 0, i32 0))
  %call21__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2308, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2309, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2310, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2311, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2312, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2313, i32 0, i32 0))
  %conv22__Z23test_initial_conditionsv = fpext float %call21__Z23test_initial_conditionsv to double
  %cmp23__Z23test_initial_conditionsv = fcmp une double %conv22__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2314, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2315, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2316, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2317, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2318, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp23__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2319, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2320, i32 0, i32 0))
  br i1 %cmp23__Z23test_initial_conditionsv, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2321, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2322, i32 0, i32 0))
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2323, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2324, i32 0, i32 0))
  %call26__Z23test_initial_conditionsv = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2325, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2326, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2327, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2328, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2329, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2330, i32 0, i32 0))
  %conv27__Z23test_initial_conditionsv = fpext float %call26__Z23test_initial_conditionsv to double
  %cmp28__Z23test_initial_conditionsv = fcmp une double %conv27__Z23test_initial_conditionsv, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2331, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2332, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2333, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2334, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2335, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp28__Z23test_initial_conditionsv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2336, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2337, i32 0, i32 0))
  br i1 %cmp28__Z23test_initial_conditionsv, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  store i8 0, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_store_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2338, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2339, i32 0, i32 0))
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  call void @stg_end_test()
  %tmp__Z23test_initial_conditionsv4 = load i8, i8* %result__Z23test_initial_conditionsv, align 1
  call void @stg_update_load_i8(i8* %result__Z23test_initial_conditionsv, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2341, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2342, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2343, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2344, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2345, i32 0, i32 0))
  %tobool__Z23test_initial_conditionsv = trunc i8 %tmp__Z23test_initial_conditionsv4 to i1
  call void @stg_record_test(i1 zeroext %tobool__Z23test_initial_conditionsv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2346, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2347, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2348, i32 0, i32 0))
  ret i32 1
}

declare void @stg_begin_test() #4

declare void @stg_end_test() #4

declare void @stg_record_test(i1 zeroext) #4

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_getter_setterv() #0 {
entry:
  %trajectory__Z18test_getter_setterv = alloca %class.VelocitySmoothing, align 4
  %maxAcceleration__Z18test_getter_setterv = alloca float, align 4
  %oracle__Z18test_getter_setterv = alloca i8, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2349, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2350, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2351, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2352, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2353, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2354, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2355, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2356, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2357, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2358, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2359, i32 0, i32 0))
  %tmp__Z18test_getter_setterv = bitcast float* %maxAcceleration__Z18test_getter_setterv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z18test_getter_setterv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z18test_getter_setterv1 = bitcast float* %maxAcceleration__Z18test_getter_setterv to i8*
  %tmp__Z18test_getter_setterv2 = load float, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2363, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_getter_setterv1, float %tmp__Z18test_getter_setterv2)
  %tmp__Z18test_getter_setterv3 = load float, float* %maxAcceleration__Z18test_getter_setterv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2365, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2366, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2367, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2368, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2369, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float %tmp__Z18test_getter_setterv3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2370, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2371, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2372, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2373, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2374, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2375, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2376, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2377, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2378, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2379, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2380, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2381, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2382, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2383, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2384, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2385, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2386, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2387, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2388, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2389, i32 0, i32 0))
  store i8 1, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2390, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2391, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2392, i32 0, i32 0))
  %call__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2393, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2394, i32 0, i32 0))
  %cmp__Z18test_getter_setterv = fcmp une float %call__Z18test_getter_setterv, 0x404B9999A0000000
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2395, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2396, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2397, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2398, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2399, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z18test_getter_setterv, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2400, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2401, i32 0, i32 0))
  br i1 %cmp__Z18test_getter_setterv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2402, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2403, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2404, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2405, i32 0, i32 0))
  %call1__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2406, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2407, i32 0, i32 0))
  %cmp2__Z18test_getter_setterv = fcmp une float %call1__Z18test_getter_setterv, 6.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2408, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2409, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2410, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2411, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2412, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2413, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2414, i32 0, i32 0))
  br i1 %cmp2__Z18test_getter_setterv, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2415, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2416, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2417, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2418, i32 0, i32 0))
  %call5__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2419, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2420, i32 0, i32 0))
  %cmp6__Z18test_getter_setterv = fcmp une float %call5__Z18test_getter_setterv, 6.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2421, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2422, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2423, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2424, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2425, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp6__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2426, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2427, i32 0, i32 0))
  br i1 %cmp6__Z18test_getter_setterv, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2428, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2429, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2430, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2431, i32 0, i32 0))
  %call9__Z18test_getter_setterv = call float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %trajectory__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2432, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2433, i32 0, i32 0))
  %cmp10__Z18test_getter_setterv = fcmp une float %call9__Z18test_getter_setterv, 1.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2434, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2435, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2436, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2437, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2438, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp10__Z18test_getter_setterv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2439, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2440, i32 0, i32 0))
  br i1 %cmp10__Z18test_getter_setterv, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i8 0, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2441, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2442, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  call void @stg_end_test()
  %tmp__Z18test_getter_setterv4 = load i8, i8* %oracle__Z18test_getter_setterv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z18test_getter_setterv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2444, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2445, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2446, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2447, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2448, i32 0, i32 0))
  %tobool__Z18test_getter_setterv = trunc i8 %tmp__Z18test_getter_setterv4 to i1
  call void @stg_record_test(i1 zeroext %tobool__Z18test_getter_setterv)
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @2449, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2450, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2451, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_computeT1v() #0 {
entry:
  %retval__Z14test_computeT1v = alloca i32, align 4
  %trajectory__Z14test_computeT1v = alloca %class.VelocitySmoothing, align 4
  %T1__Z14test_computeT1v = alloca float, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2452, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2453, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2454, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2455, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2456, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2457, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2458, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2459, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2460, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2461, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2462, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2463, i32 0, i32 0))
  call void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2464, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2465, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2466, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2467, i32 0, i32 0))
  call void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2468, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @2469, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2470, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2471, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2472, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2473, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2474, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2475, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2476, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2477, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2478, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2479, i32 0, i32 0))
  %call__Z14test_computeT1v = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v, float 1.000000e+00, float 0xC0006BAE80000000, float 0x4013DDEE80000000, float 0x3FD564E8C0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2480, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2481, i32 0, i32 0))
  store float %call__Z14test_computeT1v, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_store_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2482, i32 0, i32 0))
  %tmp__Z14test_computeT1v = load float, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_load_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2484, i32 0, i32 0))
  %cmp__Z14test_computeT1v = fcmp une float %tmp__Z14test_computeT1v, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2485, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2486, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2487, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2488, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2489, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z14test_computeT1v, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2490, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2491, i32 0, i32 0))
  br i1 %cmp__Z14test_computeT1v, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval__Z14test_computeT1v, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_computeT1v, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2492, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2493, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2494, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2495, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2496, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2497, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2498, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2499, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2500, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2501, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2502, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2503, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2504, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2505, i32 0, i32 0))
  %call1__Z14test_computeT1v = call float @_ZN17VelocitySmoothing9computeT1Efffff(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v, float 1.000000e+00, float 0x3FF19999A0000000, float 0x3FF3333340000000, float 0.000000e+00, float 5.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2506, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2507, i32 0, i32 0))
  store float %call1__Z14test_computeT1v, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_store_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2508, i32 0, i32 0))
  %tmp__Z14test_computeT1v1 = load float, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_load_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2510, i32 0, i32 0))
  %cmp2__Z14test_computeT1v = fcmp une float %tmp__Z14test_computeT1v1, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2511, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2512, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2513, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2514, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2515, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2516, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2517, i32 0, i32 0))
  br i1 %cmp2__Z14test_computeT1v, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval__Z14test_computeT1v, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_computeT1v, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2518, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2519, i32 0, i32 0))
  br label %return

if.end4:                                          ; preds = %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2520, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2521, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2522, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2523, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2524, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2525, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2526, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2527, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2528, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2529, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2530, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2531, i32 0, i32 0))
  %call5__Z14test_computeT1v = call float @_ZN17VelocitySmoothing9computeT1Efffff(%class.VelocitySmoothing* %trajectory__Z14test_computeT1v, float 0x3FEB94B9C0000000, float 0x3FE89D7560000000, float 0x3FAAEBA280000000, float 0x3FEEEF73C0000000, float 0x3FD564E8C0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2532, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2533, i32 0, i32 0))
  store float %call5__Z14test_computeT1v, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_store_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2534, i32 0, i32 0))
  %tmp__Z14test_computeT1v2 = load float, float* %T1__Z14test_computeT1v, align 4
  call void @stg_update_load_float(float* %T1__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2536, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2537, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2538, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2539, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2540, i32 0, i32 0))
  %conv__Z14test_computeT1v = fpext float %tmp__Z14test_computeT1v2 to double
  %sub__Z14test_computeT1v = fsub double %conv__Z14test_computeT1v, -4.499050e-01
  call void @stg_update_op(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2541, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2542, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2543, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2544, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2545, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2546, i32 0, i32 0))
  %call6__Z14test_computeT1v = call double @_ZN4math6fabs_tIdEET_S1_(double %sub__Z14test_computeT1v)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2547, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2548, i32 0, i32 0))
  %cmp7__Z14test_computeT1v = fcmp ogt double %call6__Z14test_computeT1v, 1.000000e-05
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2549, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2550, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2551, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2552, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2553, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2554, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2555, i32 0, i32 0))
  br i1 %cmp7__Z14test_computeT1v, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 0, i32* %retval__Z14test_computeT1v, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_computeT1v, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2556, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2557, i32 0, i32 0))
  br label %return

if.end9:                                          ; preds = %if.end4
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store i32 1, i32* %retval__Z14test_computeT1v, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_computeT1v, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2558, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2559, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %tmp__Z14test_computeT1v3 = load i32, i32* %retval__Z14test_computeT1v, align 4
  call void @stg_update_load_i32(i32* %retval__Z14test_computeT1v, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2561, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2562, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2563, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2564, i32 0, i32 0))
  ret i32 %tmp__Z14test_computeT1v3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr double @_ZN4math6fabs_tIdEET_S1_(double %val) #1 {
entry:
  %val.addr__ZN4math6fabs_tIdEET_S1_ = alloca double, align 8
  store double %val, double* %val.addr__ZN4math6fabs_tIdEET_S1_, align 8
  call void @stg_update_store_double(double* %val.addr__ZN4math6fabs_tIdEET_S1_, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2565, i32 0, i32 0))
  %tmp__ZN4math6fabs_tIdEET_S1_ = load double, double* %val.addr__ZN4math6fabs_tIdEET_S1_, align 8
  call void @stg_update_load_double(double* %val.addr__ZN4math6fabs_tIdEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2567, i32 0, i32 0))
  %cmp__ZN4math6fabs_tIdEET_S1_ = fcmp ogt double %tmp__ZN4math6fabs_tIdEET_S1_, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2568, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2569, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2570, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2571, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2572, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__ZN4math6fabs_tIdEET_S1_, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2573, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2574, i32 0, i32 0))
  br i1 %cmp__ZN4math6fabs_tIdEET_S1_, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp__ZN4math6fabs_tIdEET_S1_1 = load double, double* %val.addr__ZN4math6fabs_tIdEET_S1_, align 8
  call void @stg_update_load_double(double* %val.addr__ZN4math6fabs_tIdEET_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2576, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2577, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp__ZN4math6fabs_tIdEET_S1_2 = load double, double* %val.addr__ZN4math6fabs_tIdEET_S1_, align 8
  call void @stg_update_load_double(double* %val.addr__ZN4math6fabs_tIdEET_S1_, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2579, i32 0, i32 0))
  %sub__ZN4math6fabs_tIdEET_S1_ = fsub double -0.000000e+00, %tmp__ZN4math6fabs_tIdEET_S1_2
  call void @stg_update_op(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2580, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2581, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2582, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2583, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2584, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond__ZN4math6fabs_tIdEET_S1_ = phi double [ %tmp__ZN4math6fabs_tIdEET_S1_1, %cond.true ], [ %sub__ZN4math6fabs_tIdEET_S1_, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2585, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @2586, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @2587, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2588, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2589, i32 0, i32 0))
  ret double %cond__ZN4math6fabs_tIdEET_S1_
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_edge_casev() #0 {
entry:
  %retval__Z14test_edge_casev = alloca i32, align 4
  %trajectory__Z14test_edge_casev = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z14test_edge_casev = alloca float, align 4
  %maxAcceleration__Z14test_edge_casev = alloca float, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2590, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2591, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2592, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2593, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2594, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2595, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2596, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2597, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2598, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2599, i32 0, i32 0))
  store float 0x3E80000000000000, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_store_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2600, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2601, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2602, i32 0, i32 0))
  %call__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2603, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2604, i32 0, i32 0))
  store float %call__Z14test_edge_casev, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2605, i32 0, i32 0))
  %tmp__Z14test_edge_casev = bitcast float* %acceleration__Z14test_edge_casev to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_edge_casev, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z14test_edge_casev1 = bitcast float* %maxAcceleration__Z14test_edge_casev to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_edge_casev1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z14test_edge_casev2 = bitcast float* %acceleration__Z14test_edge_casev to i8*
  %tmp__Z14test_edge_casev3 = load float, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2610, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_edge_casev2, float %tmp__Z14test_edge_casev3)
  %tmp__Z14test_edge_casev4 = bitcast float* %maxAcceleration__Z14test_edge_casev to i8*
  %tmp__Z14test_edge_casev5 = load float, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2613, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_edge_casev4, float %tmp__Z14test_edge_casev5)
  %tmp__Z14test_edge_casev6 = load float, float* %maxAcceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2615, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2616, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2617, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2618, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2619, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float %tmp__Z14test_edge_casev6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2620, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2621, i32 0, i32 0))
  %tmp__Z14test_edge_casev7 = load float, float* %acceleration__Z14test_edge_casev, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2623, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2624, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2625, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2626, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2627, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float %tmp__Z14test_edge_casev7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2628, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2629, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2630, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2631, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2632, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2633, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev, float 0x3E80000000000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2634, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2635, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2636, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2637, i32 0, i32 0))
  %call1__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2638, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2639, i32 0, i32 0))
  %cmp__Z14test_edge_casev = fcmp une float %call1__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2640, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2641, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2642, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2643, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2644, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z14test_edge_casev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2645, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2646, i32 0, i32 0))
  br i1 %cmp__Z14test_edge_casev, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2647, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2648, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2649, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2650, i32 0, i32 0))
  %call2__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2651, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2652, i32 0, i32 0))
  %cmp3__Z14test_edge_casev = fcmp une float %call2__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2653, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2654, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2655, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2656, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2657, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp3__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2658, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2659, i32 0, i32 0))
  br i1 %cmp3__Z14test_edge_casev, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2660, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2661, i32 0, i32 0))
  br label %return

if.end5:                                          ; preds = %if.end
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2662, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2663, i32 0, i32 0))
  %call6__Z14test_edge_casev = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory__Z14test_edge_casev)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2664, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @2665, i32 0, i32 0))
  %cmp7__Z14test_edge_casev = fcmp une float %call6__Z14test_edge_casev, 0.000000e+00
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2666, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2667, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2668, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2669, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2670, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2671, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2672, i32 0, i32 0))
  br i1 %cmp7__Z14test_edge_casev, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 0, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2673, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2674, i32 0, i32 0))
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store i32 1, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_store_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2675, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2676, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %tmp__Z14test_edge_casev8 = load i32, i32* %retval__Z14test_edge_casev, align 4
  call void @stg_update_load_i32(i32* %retval__Z14test_edge_casev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2678, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2679, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2680, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2681, i32 0, i32 0))
  ret i32 %tmp__Z14test_edge_casev8
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_velsp_negv() #0 {
entry:
  %trajectory__Z14test_velsp_negv = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z14test_velsp_negv = alloca float, align 4
  %maxAcceleration__Z14test_velsp_negv = alloca float, align 4
  %velocity_setpoint__Z14test_velsp_negv = alloca float, align 4
  %dt__Z14test_velsp_negv = alloca float, align 4
  %t123__Z14test_velsp_negv = alloca float, align 4
  %nb_steps__Z14test_velsp_negv = alloca i32, align 4
  %i__Z14test_velsp_negv = alloca i32, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2682, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2683, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2684, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2685, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2686, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2687, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2688, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2689, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2690, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2691, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z14test_velsp_negv, align 4
  call void @stg_update_store_float(float* %acceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2692, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z14test_velsp_negv, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2693, i32 0, i32 0))
  %tmp__Z14test_velsp_negv = bitcast float* %acceleration__Z14test_velsp_negv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_velsp_negv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z14test_velsp_negv1 = bitcast float* %maxAcceleration__Z14test_velsp_negv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_velsp_negv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z14test_velsp_negv2 = bitcast float* %acceleration__Z14test_velsp_negv to i8*
  %tmp__Z14test_velsp_negv3 = load float, float* %acceleration__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2698, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_velsp_negv2, float %tmp__Z14test_velsp_negv3)
  %tmp__Z14test_velsp_negv4 = bitcast float* %maxAcceleration__Z14test_velsp_negv to i8*
  %tmp__Z14test_velsp_negv5 = load float, float* %maxAcceleration__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2701, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_velsp_negv4, float %tmp__Z14test_velsp_negv5)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2702, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2703, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2704, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2705, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2706, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2707, i32 0, i32 0))
  %tmp__Z14test_velsp_negv6 = load float, float* %maxAcceleration__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2709, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2710, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2711, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2712, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2713, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float %tmp__Z14test_velsp_negv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2714, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2715, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2716, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2717, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2718, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2719, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2720, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2721, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2722, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2723, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2724, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2725, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2726, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2727, i32 0, i32 0))
  %tmp__Z14test_velsp_negv7 = load float, float* %acceleration__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2729, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2730, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2731, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2732, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2733, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float %tmp__Z14test_velsp_negv7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2734, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2735, i32 0, i32 0))
  store float -1.000000e+00, float* %velocity_setpoint__Z14test_velsp_negv, align 4
  call void @stg_update_store_float(float* %velocity_setpoint__Z14test_velsp_negv, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2736, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2737, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2738, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2739, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2740, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2741, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2742, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 0.000000e+00, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2743, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2744, i32 0, i32 0))
  %tmp__Z14test_velsp_negv8 = load float, float* %velocity_setpoint__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2746, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2747, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2748, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2749, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2750, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float %tmp__Z14test_velsp_negv8)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2751, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2752, i32 0, i32 0))
  store float 0x3FB99999A0000000, float* %dt__Z14test_velsp_negv, align 4
  call void @stg_update_store_float(float* %dt__Z14test_velsp_negv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2753, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2754, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2755, i32 0, i32 0))
  %call__Z14test_velsp_negv = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2756, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2757, i32 0, i32 0))
  store float %call__Z14test_velsp_negv, float* %t123__Z14test_velsp_negv, align 4
  call void @stg_update_store_float(float* %t123__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2758, i32 0, i32 0))
  store i32 3, i32* %nb_steps__Z14test_velsp_negv, align 4
  call void @stg_update_store_i32(i32* %nb_steps__Z14test_velsp_negv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2759, i32 0, i32 0))
  %tmp__Z14test_velsp_negv9 = load float, float* %t123__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %t123__Z14test_velsp_negv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2761, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2762, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2763, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2764, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2765, i32 0, i32 0))
  %conv__Z14test_velsp_negv = fpext float %tmp__Z14test_velsp_negv9 to double
  %call1__Z14test_velsp_negv = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), double %conv__Z14test_velsp_negv)
  store i32 0, i32* %i__Z14test_velsp_negv, align 4
  call void @stg_update_store_i32(i32* %i__Z14test_velsp_negv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2766, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2767, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z14test_velsp_negv10 = load i32, i32* %i__Z14test_velsp_negv, align 4
  call void @stg_update_load_i32(i32* %i__Z14test_velsp_negv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2769, i32 0, i32 0))
  %tmp__Z14test_velsp_negv11 = load i32, i32* %nb_steps__Z14test_velsp_negv, align 4
  call void @stg_update_load_i32(i32* %nb_steps__Z14test_velsp_negv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2771, i32 0, i32 0))
  %cmp__Z14test_velsp_negv = icmp slt i32 %tmp__Z14test_velsp_negv10, %tmp__Z14test_velsp_negv11
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2772, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2773, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2774, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2775, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2776, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z14test_velsp_negv, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2777, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2778, i32 0, i32 0))
  br i1 %cmp__Z14test_velsp_negv, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2779, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2780, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2781, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2782, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2783, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2784, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float 0x3FB99999A0000000, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2785, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2786, i32 0, i32 0))
  %tmp__Z14test_velsp_negv12 = load float, float* %velocity_setpoint__Z14test_velsp_negv, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z14test_velsp_negv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2788, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2789, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2790, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2791, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2792, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_negv, float %tmp__Z14test_velsp_negv12)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2793, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2794, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2795, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__Z14test_velsp_negv13 = load i32, i32* %i__Z14test_velsp_negv, align 4
  call void @stg_update_load_i32(i32* %i__Z14test_velsp_negv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2797, i32 0, i32 0))
  %inc__Z14test_velsp_negv = add nsw i32 %tmp__Z14test_velsp_negv13, 1
  call void @stg_update_op(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2798, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2799, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2800, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2801, i32 0, i32 0))
  store i32 %inc__Z14test_velsp_negv, i32* %i__Z14test_velsp_negv, align 4
  call void @stg_update_store_i32(i32* %i__Z14test_velsp_negv, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2802, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2803, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2804, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2805, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2806, i32 0, i32 0))
  ret i32 1
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z15test_velsp_zerov() #0 {
entry:
  %trajectory__Z15test_velsp_zerov = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z15test_velsp_zerov = alloca float, align 4
  %maxAcceleration__Z15test_velsp_zerov = alloca float, align 4
  %velocity_setpoint__Z15test_velsp_zerov = alloca float, align 4
  %t123__Z15test_velsp_zerov = alloca float, align 4
  %dt__Z15test_velsp_zerov = alloca float, align 4
  %nb_steps__Z15test_velsp_zerov = alloca i32, align 4
  %i__Z15test_velsp_zerov = alloca i32, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2807, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2808, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2809, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2810, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2811, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2812, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2813, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2814, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2815, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2816, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_store_float(float* %acceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2817, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2818, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov = bitcast float* %acceleration__Z15test_velsp_zerov to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z15test_velsp_zerov, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z15test_velsp_zerov1 = bitcast float* %maxAcceleration__Z15test_velsp_zerov to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z15test_velsp_zerov1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z15test_velsp_zerov2 = bitcast float* %acceleration__Z15test_velsp_zerov to i8*
  %tmp__Z15test_velsp_zerov3 = load float, float* %acceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %acceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2823, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z15test_velsp_zerov2, float %tmp__Z15test_velsp_zerov3)
  %tmp__Z15test_velsp_zerov4 = bitcast float* %maxAcceleration__Z15test_velsp_zerov to i8*
  %tmp__Z15test_velsp_zerov5 = load float, float* %maxAcceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2826, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z15test_velsp_zerov4, float %tmp__Z15test_velsp_zerov5)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2827, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2828, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2829, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2830, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2831, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2832, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov6 = load float, float* %maxAcceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2834, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2835, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2836, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2837, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2838, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float %tmp__Z15test_velsp_zerov6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2839, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2840, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2841, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2842, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2843, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2844, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2845, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2846, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2847, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2848, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2849, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2850, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2851, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2852, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov7 = load float, float* %acceleration__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %acceleration__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2854, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2855, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2856, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2857, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2858, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float %tmp__Z15test_velsp_zerov7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2859, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2860, i32 0, i32 0))
  store float 0.000000e+00, float* %velocity_setpoint__Z15test_velsp_zerov, align 4
  call void @stg_update_store_float(float* %velocity_setpoint__Z15test_velsp_zerov, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2861, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2862, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2863, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2864, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2865, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2866, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2867, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float 0.000000e+00, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2868, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2869, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov8 = load float, float* %velocity_setpoint__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2871, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2872, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2873, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2874, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2875, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float %tmp__Z15test_velsp_zerov8)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2876, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2877, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2878, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2879, i32 0, i32 0))
  %call__Z15test_velsp_zerov = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov)
  call void @stg_update_char(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2880, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2881, i32 0, i32 0))
  store float %call__Z15test_velsp_zerov, float* %t123__Z15test_velsp_zerov, align 4
  call void @stg_update_store_float(float* %t123__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2882, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov9 = load float, float* %t123__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %t123__Z15test_velsp_zerov, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2884, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2885, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2886, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2887, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2888, i32 0, i32 0))
  %conv__Z15test_velsp_zerov = fpext float %tmp__Z15test_velsp_zerov9 to double
  %div__Z15test_velsp_zerov = fdiv double %conv__Z15test_velsp_zerov, 3.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2889, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2890, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2891, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2892, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2893, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2894, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2895, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2896, i32 0, i32 0))
  %conv1__Z15test_velsp_zerov = fptrunc double %div__Z15test_velsp_zerov to float
  store float %conv1__Z15test_velsp_zerov, float* %dt__Z15test_velsp_zerov, align 4
  call void @stg_update_store_float(float* %dt__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2897, i32 0, i32 0))
  store i32 3, i32* %nb_steps__Z15test_velsp_zerov, align 4
  call void @stg_update_store_i32(i32* %nb_steps__Z15test_velsp_zerov, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2898, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov10 = load float, float* %t123__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %t123__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2900, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2901, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2902, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2903, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2904, i32 0, i32 0))
  %conv2__Z15test_velsp_zerov = fpext float %tmp__Z15test_velsp_zerov10 to double
  %call3__Z15test_velsp_zerov = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), double %conv2__Z15test_velsp_zerov)
  store i32 0, i32* %i__Z15test_velsp_zerov, align 4
  call void @stg_update_store_i32(i32* %i__Z15test_velsp_zerov, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2905, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2906, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z15test_velsp_zerov11 = load i32, i32* %i__Z15test_velsp_zerov, align 4
  call void @stg_update_load_i32(i32* %i__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2908, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov12 = load i32, i32* %nb_steps__Z15test_velsp_zerov, align 4
  call void @stg_update_load_i32(i32* %nb_steps__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2910, i32 0, i32 0))
  %cmp__Z15test_velsp_zerov = icmp slt i32 %tmp__Z15test_velsp_zerov11, %tmp__Z15test_velsp_zerov12
  call void @stg_update_cmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2911, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2912, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2913, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2914, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2915, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z15test_velsp_zerov, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2916, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2917, i32 0, i32 0))
  br i1 %cmp__Z15test_velsp_zerov, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z15test_velsp_zerov13 = load float, float* %dt__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %dt__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2919, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2920, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2921, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @2922, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2923, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2924, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2925, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float %tmp__Z15test_velsp_zerov13, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2926, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2927, i32 0, i32 0))
  %tmp__Z15test_velsp_zerov14 = load float, float* %velocity_setpoint__Z15test_velsp_zerov, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2929, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2930, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @2931, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2932, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2933, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z15test_velsp_zerov, float %tmp__Z15test_velsp_zerov14)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2934, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2935, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2936, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__Z15test_velsp_zerov15 = load i32, i32* %i__Z15test_velsp_zerov, align 4
  call void @stg_update_load_i32(i32* %i__Z15test_velsp_zerov, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2938, i32 0, i32 0))
  %inc__Z15test_velsp_zerov = add nsw i32 %tmp__Z15test_velsp_zerov15, 1
  call void @stg_update_op(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2939, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2940, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2941, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2942, i32 0, i32 0))
  store i32 %inc__Z15test_velsp_zerov, i32* %i__Z15test_velsp_zerov, align 4
  call void @stg_update_store_i32(i32* %i__Z15test_velsp_zerov, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2943, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2944, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2945, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2946, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2947, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_velsp_posv() #0 {
entry:
  %trajectory__Z14test_velsp_posv = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z14test_velsp_posv = alloca float, align 4
  %maxAcceleration__Z14test_velsp_posv = alloca float, align 4
  %velocity_setpoint__Z14test_velsp_posv = alloca float, align 4
  %t123__Z14test_velsp_posv = alloca float, align 4
  %dt__Z14test_velsp_posv = alloca float, align 4
  %nb_steps__Z14test_velsp_posv = alloca i32, align 4
  %i__Z14test_velsp_posv = alloca i32, align 4
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2948, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2949, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2950, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2951, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2952, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2953, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2954, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2955, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2956, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @2957, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z14test_velsp_posv, align 4
  call void @stg_update_store_float(float* %acceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2958, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z14test_velsp_posv, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2959, i32 0, i32 0))
  %tmp__Z14test_velsp_posv = bitcast float* %acceleration__Z14test_velsp_posv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_velsp_posv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z14test_velsp_posv1 = bitcast float* %maxAcceleration__Z14test_velsp_posv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z14test_velsp_posv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z14test_velsp_posv2 = bitcast float* %acceleration__Z14test_velsp_posv to i8*
  %tmp__Z14test_velsp_posv3 = load float, float* %acceleration__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2964, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_velsp_posv2, float %tmp__Z14test_velsp_posv3)
  %tmp__Z14test_velsp_posv4 = bitcast float* %maxAcceleration__Z14test_velsp_posv to i8*
  %tmp__Z14test_velsp_posv5 = load float, float* %maxAcceleration__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2967, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z14test_velsp_posv4, float %tmp__Z14test_velsp_posv5)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2968, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2969, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2970, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2971, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2972, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2973, i32 0, i32 0))
  %tmp__Z14test_velsp_posv6 = load float, float* %maxAcceleration__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2975, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2976, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2977, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2978, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2979, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float %tmp__Z14test_velsp_posv6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2980, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2981, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2982, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2983, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2984, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2985, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2986, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2987, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2988, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2989, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2990, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2991, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @2992, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2993, i32 0, i32 0))
  %tmp__Z14test_velsp_posv7 = load float, float* %acceleration__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %acceleration__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2995, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2996, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @2997, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @2998, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2999, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float %tmp__Z14test_velsp_posv7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3000, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3001, i32 0, i32 0))
  store float 1.000000e+00, float* %velocity_setpoint__Z14test_velsp_posv, align 4
  call void @stg_update_store_float(float* %velocity_setpoint__Z14test_velsp_posv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3002, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3003, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3004, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3005, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3006, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3007, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3008, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float 0.000000e+00, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3009, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3010, i32 0, i32 0))
  %tmp__Z14test_velsp_posv8 = load float, float* %velocity_setpoint__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3012, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3013, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3014, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3015, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3016, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float %tmp__Z14test_velsp_posv8)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3017, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3018, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3019, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3020, i32 0, i32 0))
  %call__Z14test_velsp_posv = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3021, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3022, i32 0, i32 0))
  store float %call__Z14test_velsp_posv, float* %t123__Z14test_velsp_posv, align 4
  call void @stg_update_store_float(float* %t123__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3023, i32 0, i32 0))
  %tmp__Z14test_velsp_posv9 = load float, float* %t123__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %t123__Z14test_velsp_posv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3025, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3026, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3027, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3028, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3029, i32 0, i32 0))
  %conv__Z14test_velsp_posv = fpext float %tmp__Z14test_velsp_posv9 to double
  %div__Z14test_velsp_posv = fdiv double %conv__Z14test_velsp_posv, 3.000000e+00
  call void @stg_update_op(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3030, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3031, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3032, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3033, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3034, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3035, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3036, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3037, i32 0, i32 0))
  %conv1__Z14test_velsp_posv = fptrunc double %div__Z14test_velsp_posv to float
  store float %conv1__Z14test_velsp_posv, float* %dt__Z14test_velsp_posv, align 4
  call void @stg_update_store_float(float* %dt__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3038, i32 0, i32 0))
  store i32 3, i32* %nb_steps__Z14test_velsp_posv, align 4
  call void @stg_update_store_i32(i32* %nb_steps__Z14test_velsp_posv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3039, i32 0, i32 0))
  %tmp__Z14test_velsp_posv10 = load float, float* %t123__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %t123__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3041, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3042, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3043, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3044, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3045, i32 0, i32 0))
  %conv2__Z14test_velsp_posv = fpext float %tmp__Z14test_velsp_posv10 to double
  %call3__Z14test_velsp_posv = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), double %conv2__Z14test_velsp_posv)
  store i32 0, i32* %i__Z14test_velsp_posv, align 4
  call void @stg_update_store_i32(i32* %i__Z14test_velsp_posv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3046, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3047, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z14test_velsp_posv11 = load i32, i32* %i__Z14test_velsp_posv, align 4
  call void @stg_update_load_i32(i32* %i__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3049, i32 0, i32 0))
  %tmp__Z14test_velsp_posv12 = load i32, i32* %nb_steps__Z14test_velsp_posv, align 4
  call void @stg_update_load_i32(i32* %nb_steps__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3051, i32 0, i32 0))
  %cmp__Z14test_velsp_posv = icmp slt i32 %tmp__Z14test_velsp_posv11, %tmp__Z14test_velsp_posv12
  call void @stg_update_cmp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3052, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3053, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3054, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3055, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3056, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z14test_velsp_posv, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3057, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3058, i32 0, i32 0))
  br i1 %cmp__Z14test_velsp_posv, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z14test_velsp_posv13 = load float, float* %dt__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %dt__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3060, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3061, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3062, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3063, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3064, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3065, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3066, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float %tmp__Z14test_velsp_posv13, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3067, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3068, i32 0, i32 0))
  %tmp__Z14test_velsp_posv14 = load float, float* %velocity_setpoint__Z14test_velsp_posv, align 4
  call void @stg_update_load_float(float* %velocity_setpoint__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3070, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3071, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3072, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3073, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3074, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory__Z14test_velsp_posv, float %tmp__Z14test_velsp_posv14)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3075, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3076, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3077, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__Z14test_velsp_posv15 = load i32, i32* %i__Z14test_velsp_posv, align 4
  call void @stg_update_load_i32(i32* %i__Z14test_velsp_posv, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3079, i32 0, i32 0))
  %inc__Z14test_velsp_posv = add nsw i32 %tmp__Z14test_velsp_posv15, 1
  call void @stg_update_op(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3080, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3081, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3082, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3083, i32 0, i32 0))
  store i32 %inc__Z14test_velsp_posv, i32* %i__Z14test_velsp_posv, align 4
  call void @stg_update_store_i32(i32* %i__Z14test_velsp_posv, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3084, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3085, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @3086, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3087, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3088, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z20test_trajectory_syncv() #0 {
entry:
  %trajectory__Z20test_trajectory_syncv = alloca [2 x %class.VelocitySmoothing], align 16
  %acceleration__Z20test_trajectory_syncv = alloca float, align 4
  %maxAcceleration__Z20test_trajectory_syncv = alloca float, align 4
  %a0__Z20test_trajectory_syncv = alloca [3 x float], align 4
  %v0__Z20test_trajectory_syncv = alloca [3 x float], align 4
  %x0__Z20test_trajectory_syncv = alloca [3 x float], align 4
  %j_max__Z20test_trajectory_syncv = alloca float, align 4
  %v_max__Z20test_trajectory_syncv = alloca float, align 4
  %i__Z20test_trajectory_syncv = alloca i32, align 4
  %oracle__Z20test_trajectory_syncv = alloca i8, align 1
  %dt__Z20test_trajectory_syncv = alloca float, align 4
  %velocity_setpoint__Z20test_trajectory_syncv = alloca [2 x float], align 4
  %i11__Z20test_trajectory_syncv = alloca i32, align 4
  %i26__Z20test_trajectory_syncv = alloca i32, align 4
  %i44__Z20test_trajectory_syncv = alloca i32, align 4
  %array.begin__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i32 0, i32 0
  %arrayctor.end__Z20test_trajectory_syncv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %array.begin__Z20test_trajectory_syncv, i64 2
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3089, i32 0, i32 0))
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur__Z20test_trajectory_syncv = phi %class.VelocitySmoothing* [ %array.begin__Z20test_trajectory_syncv, %entry ], [ %arrayctor.next__Z20test_trajectory_syncv, %arrayctor.loop ]
  call void @stg_update_phi(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3090, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @3091, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3092, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3093, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3094, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3095, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3096, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3097, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3098, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3099, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %arrayctor.cur__Z20test_trajectory_syncv, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3100, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3101, i32 0, i32 0))
  %arrayctor.next__Z20test_trajectory_syncv = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %arrayctor.cur__Z20test_trajectory_syncv, i64 1
  %arrayctor.done__Z20test_trajectory_syncv = icmp eq %class.VelocitySmoothing* %arrayctor.next__Z20test_trajectory_syncv, %arrayctor.end__Z20test_trajectory_syncv
  call void @stg_update_cmp(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @3102, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @3103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3104, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3105, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @3106, i32 0, i32 0))
  call void @stg_update_pc(i1 %arrayctor.done__Z20test_trajectory_syncv, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @3107, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3108, i32 0, i32 0))
  br i1 %arrayctor.done__Z20test_trajectory_syncv, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  store float 0.000000e+00, float* %acceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_float(float* %acceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3109, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3110, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv = bitcast float* %acceleration__Z20test_trajectory_syncv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z20test_trajectory_syncv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z20test_trajectory_syncv1 = bitcast float* %maxAcceleration__Z20test_trajectory_syncv to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z20test_trajectory_syncv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z20test_trajectory_syncv2 = bitcast float* %acceleration__Z20test_trajectory_syncv to i8*
  %tmp__Z20test_trajectory_syncv3 = load float, float* %acceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %acceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3115, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z20test_trajectory_syncv2, float %tmp__Z20test_trajectory_syncv3)
  %tmp__Z20test_trajectory_syncv4 = bitcast float* %maxAcceleration__Z20test_trajectory_syncv to i8*
  %tmp__Z20test_trajectory_syncv5 = load float, float* %maxAcceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3118, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z20test_trajectory_syncv4, float %tmp__Z20test_trajectory_syncv5)
  %tmp__Z20test_trajectory_syncv6 = bitcast [3 x float]* %a0__Z20test_trajectory_syncv to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp__Z20test_trajectory_syncv6, i8 0, i64 12, i1 false)
  %tmp__Z20test_trajectory_syncv7 = bitcast [3 x float]* %v0__Z20test_trajectory_syncv to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp__Z20test_trajectory_syncv7, i8 0, i64 12, i1 false)
  %tmp__Z20test_trajectory_syncv8 = bitcast [3 x float]* %x0__Z20test_trajectory_syncv to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp__Z20test_trajectory_syncv8, i8 0, i64 12, i1 false)
  store float 0x404B9999A0000000, float* %j_max__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_float(float* %j_max__Z20test_trajectory_syncv, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3143, i32 0, i32 0))
  store float 6.000000e+00, float* %v_max__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_float(float* %v_max__Z20test_trajectory_syncv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3144, i32 0, i32 0))
  store i32 0, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3145, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3146, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %arrayctor.cont
  %tmp__Z20test_trajectory_syncv9 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3148, i32 0, i32 0))
  %cmp__Z20test_trajectory_syncv = icmp slt i32 %tmp__Z20test_trajectory_syncv9, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3149, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3150, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3153, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z20test_trajectory_syncv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3154, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3155, i32 0, i32 0))
  br i1 %cmp__Z20test_trajectory_syncv, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z20test_trajectory_syncv10 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3157, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @3158, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3159, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3160, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3161, i32 0, i32 0))
  %idxprom__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv10 to i64
  %arrayidx__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv11 = load float, float* %j_max__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %j_max__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3163, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3164, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3165, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3166, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3167, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %arrayidx__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv11)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3168, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @3169, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv12 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3171, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3172, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3173, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3174, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3175, i32 0, i32 0))
  %idxprom1__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv12 to i64
  %arrayidx2__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom1__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv13 = load float, float* %maxAcceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3177, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3178, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3179, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3180, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3181, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %arrayidx2__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv13)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3182, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3183, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv14 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3185, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3186, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3187, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3188, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3189, i32 0, i32 0))
  %idxprom3__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv14 to i64
  %arrayidx4__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom3__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv15 = load float, float* %v_max__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %v_max__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3191, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3192, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3193, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3194, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3195, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %arrayidx4__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv15)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3196, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3197, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv16 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3199, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3200, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3201, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3202, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3203, i32 0, i32 0))
  %idxprom5__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv16 to i64
  %arrayidx6__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom5__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv17 = load float, float* %acceleration__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %acceleration__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3205, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3206, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3207, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3208, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3209, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %arrayidx6__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv17)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3210, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3211, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv18 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3213, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3214, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3215, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3216, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3217, i32 0, i32 0))
  %idxprom7__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv18 to i64
  %arrayidx8__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom7__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv19 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3219, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3220, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3221, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3222, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3223, i32 0, i32 0))
  %idxprom9__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv19 to i64
  %arrayidx10__Z20test_trajectory_syncv = getelementptr inbounds [3 x float], [3 x float]* %v0__Z20test_trajectory_syncv, i64 0, i64 %idxprom9__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv20 = load float, float* %arrayidx10__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %arrayidx10__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3225, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3226, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3227, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3228, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3229, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %arrayidx8__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv20)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3230, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3231, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3232, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp__Z20test_trajectory_syncv21 = load i32, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3234, i32 0, i32 0))
  %inc__Z20test_trajectory_syncv = add nsw i32 %tmp__Z20test_trajectory_syncv21, 1
  call void @stg_update_op(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3235, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3236, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3237, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3238, i32 0, i32 0))
  store i32 %inc__Z20test_trajectory_syncv, i32* %i__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i__Z20test_trajectory_syncv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3239, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3240, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3241, i32 0, i32 0))
  store float 0x3F847AE140000000, float* %dt__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_float(float* %dt__Z20test_trajectory_syncv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3242, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv22 = bitcast [2 x float]* %velocity_setpoint__Z20test_trajectory_syncv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp__Z20test_trajectory_syncv22, i8* align 4 bitcast ([2 x float]* @__const._Z20test_trajectory_syncv.velocity_setpoint to i8*), i64 8, i1 false)
  store i32 0, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3251, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3252, i32 0, i32 0))
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.end
  %tmp__Z20test_trajectory_syncv23 = load i32, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3254, i32 0, i32 0))
  %cmp13__Z20test_trajectory_syncv = icmp slt i32 %tmp__Z20test_trajectory_syncv23, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3255, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3256, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3257, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3258, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3259, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp13__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3260, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3261, i32 0, i32 0))
  br i1 %cmp13__Z20test_trajectory_syncv, label %for.body14, label %for.end25

for.body14:                                       ; preds = %for.cond12
  %tmp__Z20test_trajectory_syncv24 = load i32, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3263, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3264, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3265, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3266, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3267, i32 0, i32 0))
  %idxprom15__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv24 to i64
  %arrayidx16__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom15__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv25 = load i32, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3269, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3270, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3271, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3272, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3273, i32 0, i32 0))
  %idxprom17__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv25 to i64
  %arrayidx18__Z20test_trajectory_syncv = getelementptr inbounds [2 x float], [2 x float]* %velocity_setpoint__Z20test_trajectory_syncv, i64 0, i64 %idxprom17__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv26 = load float, float* %arrayidx18__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %arrayidx18__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3275, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3276, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3277, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3278, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3279, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %arrayidx16__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv26)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3280, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3281, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv27 = load i32, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3283, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3284, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3285, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3286, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3287, i32 0, i32 0))
  %idxprom19__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv27 to i64
  %arrayidx20__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom19__Z20test_trajectory_syncv
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3288, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3289, i32 0, i32 0))
  %call__Z20test_trajectory_syncv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %arrayidx20__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3290, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3291, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3292, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3293, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3294, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3295, i32 0, i32 0))
  %conv__Z20test_trajectory_syncv = zext i1 %call__Z20test_trajectory_syncv to i32
  %tmp__Z20test_trajectory_syncv28 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3297, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3298, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3299, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3300, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3301, i32 0, i32 0))
  %tobool__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv28 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3302, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3303, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3304, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3305, i32 0, i32 0))
  %conv21__Z20test_trajectory_syncv = zext i1 %tobool__Z20test_trajectory_syncv to i32
  %and__Z20test_trajectory_syncv = and i32 %conv21__Z20test_trajectory_syncv, %conv__Z20test_trajectory_syncv
  call void @stg_update_op(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3306, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3307, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3308, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3309, i32 0, i32 0))
  %tobool22__Z20test_trajectory_syncv = icmp ne i32 %and__Z20test_trajectory_syncv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3310, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3311, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3312, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3313, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3314, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3315, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3316, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3317, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3318, i32 0, i32 0))
  %frombool__Z20test_trajectory_syncv = zext i1 %tobool22__Z20test_trajectory_syncv to i8
  store i8 %frombool__Z20test_trajectory_syncv, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3319, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3320, i32 0, i32 0))
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14
  %tmp__Z20test_trajectory_syncv29 = load i32, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3322, i32 0, i32 0))
  %inc24__Z20test_trajectory_syncv = add nsw i32 %tmp__Z20test_trajectory_syncv29, 1
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3323, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3324, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3325, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3326, i32 0, i32 0))
  store i32 %inc24__Z20test_trajectory_syncv, i32* %i11__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i11__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3327, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3328, i32 0, i32 0))
  br label %for.cond12

for.end25:                                        ; preds = %for.cond12
  store i32 0, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3329, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3330, i32 0, i32 0))
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc41, %for.end25
  %tmp__Z20test_trajectory_syncv30 = load i32, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3332, i32 0, i32 0))
  %cmp28__Z20test_trajectory_syncv = icmp slt i32 %tmp__Z20test_trajectory_syncv30, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3333, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3334, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3335, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3336, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3337, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp28__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3338, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3339, i32 0, i32 0))
  br i1 %cmp28__Z20test_trajectory_syncv, label %for.body29, label %for.end43

for.body29:                                       ; preds = %for.cond27
  %tmp__Z20test_trajectory_syncv31 = load i32, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3341, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3342, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3343, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3344, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3345, i32 0, i32 0))
  %idxprom30__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv31 to i64
  %arrayidx31__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom30__Z20test_trajectory_syncv
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3346, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3347, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3348, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3349, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3350, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3351, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %arrayidx31__Z20test_trajectory_syncv, float 0x3F847AE140000000, float 1.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3352, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3353, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv32 = load i32, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3355, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3356, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3357, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3358, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3359, i32 0, i32 0))
  %idxprom32__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv32 to i64
  %arrayidx33__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom32__Z20test_trajectory_syncv
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3360, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3361, i32 0, i32 0))
  %call34__Z20test_trajectory_syncv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %arrayidx33__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3362, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3363, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3364, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3365, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3366, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3367, i32 0, i32 0))
  %conv35__Z20test_trajectory_syncv = zext i1 %call34__Z20test_trajectory_syncv to i32
  %tmp__Z20test_trajectory_syncv33 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3369, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3370, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3371, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3372, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3373, i32 0, i32 0))
  %tobool36__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv33 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3374, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3375, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3376, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3377, i32 0, i32 0))
  %conv37__Z20test_trajectory_syncv = zext i1 %tobool36__Z20test_trajectory_syncv to i32
  %and38__Z20test_trajectory_syncv = and i32 %conv37__Z20test_trajectory_syncv, %conv35__Z20test_trajectory_syncv
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3378, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3379, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3380, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3381, i32 0, i32 0))
  %tobool39__Z20test_trajectory_syncv = icmp ne i32 %and38__Z20test_trajectory_syncv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3382, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3383, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3384, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3385, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3386, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3387, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3388, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3389, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3390, i32 0, i32 0))
  %frombool40__Z20test_trajectory_syncv = zext i1 %tobool39__Z20test_trajectory_syncv to i8
  store i8 %frombool40__Z20test_trajectory_syncv, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3391, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3392, i32 0, i32 0))
  br label %for.inc41

for.inc41:                                        ; preds = %for.body29
  %tmp__Z20test_trajectory_syncv34 = load i32, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3394, i32 0, i32 0))
  %inc42__Z20test_trajectory_syncv = add nsw i32 %tmp__Z20test_trajectory_syncv34, 1
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3395, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3396, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3397, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3398, i32 0, i32 0))
  store i32 %inc42__Z20test_trajectory_syncv, i32* %i26__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i26__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3399, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3400, i32 0, i32 0))
  br label %for.cond27

for.end43:                                        ; preds = %for.cond27
  store i32 0, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3401, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3402, i32 0, i32 0))
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end43
  %tmp__Z20test_trajectory_syncv35 = load i32, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3404, i32 0, i32 0))
  %cmp46__Z20test_trajectory_syncv = icmp slt i32 %tmp__Z20test_trajectory_syncv35, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3405, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3406, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3407, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3408, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3409, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp46__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3410, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3411, i32 0, i32 0))
  br i1 %cmp46__Z20test_trajectory_syncv, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %tmp__Z20test_trajectory_syncv36 = load i32, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3413, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3414, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3415, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3416, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3417, i32 0, i32 0))
  %idxprom48__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv36 to i64
  %arrayidx49__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom48__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv37 = load i32, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3419, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3420, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3421, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3422, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3423, i32 0, i32 0))
  %idxprom50__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv37 to i64
  %arrayidx51__Z20test_trajectory_syncv = getelementptr inbounds [2 x float], [2 x float]* %velocity_setpoint__Z20test_trajectory_syncv, i64 0, i64 %idxprom50__Z20test_trajectory_syncv
  %tmp__Z20test_trajectory_syncv38 = load float, float* %arrayidx51__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_float(float* %arrayidx51__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3425, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3426, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3427, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3428, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3429, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %arrayidx49__Z20test_trajectory_syncv, float %tmp__Z20test_trajectory_syncv38)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3430, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3431, i32 0, i32 0))
  %tmp__Z20test_trajectory_syncv39 = load i32, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3433, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @3434, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3435, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3436, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3437, i32 0, i32 0))
  %idxprom52__Z20test_trajectory_syncv = sext i32 %tmp__Z20test_trajectory_syncv39 to i64
  %arrayidx53__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 %idxprom52__Z20test_trajectory_syncv
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3438, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3439, i32 0, i32 0))
  %call54__Z20test_trajectory_syncv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %arrayidx53__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3440, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3441, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3442, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3443, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3444, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3445, i32 0, i32 0))
  %conv55__Z20test_trajectory_syncv = zext i1 %call54__Z20test_trajectory_syncv to i32
  %tmp__Z20test_trajectory_syncv40 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3447, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3448, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3449, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3450, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3451, i32 0, i32 0))
  %tobool56__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv40 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3452, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3453, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3454, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3455, i32 0, i32 0))
  %conv57__Z20test_trajectory_syncv = zext i1 %tobool56__Z20test_trajectory_syncv to i32
  %and58__Z20test_trajectory_syncv = and i32 %conv57__Z20test_trajectory_syncv, %conv55__Z20test_trajectory_syncv
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3456, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3457, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3458, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3459, i32 0, i32 0))
  %tobool59__Z20test_trajectory_syncv = icmp ne i32 %and58__Z20test_trajectory_syncv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3460, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3461, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3462, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3463, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3464, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3465, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3466, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3467, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3468, i32 0, i32 0))
  %frombool60__Z20test_trajectory_syncv = zext i1 %tobool59__Z20test_trajectory_syncv to i8
  store i8 %frombool60__Z20test_trajectory_syncv, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3469, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3470, i32 0, i32 0))
  br label %for.inc61

for.inc61:                                        ; preds = %for.body47
  %tmp__Z20test_trajectory_syncv41 = load i32, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_load_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3472, i32 0, i32 0))
  %inc62__Z20test_trajectory_syncv = add nsw i32 %tmp__Z20test_trajectory_syncv41, 1
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3473, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3474, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3475, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3476, i32 0, i32 0))
  store i32 %inc62__Z20test_trajectory_syncv, i32* %i44__Z20test_trajectory_syncv, align 4
  call void @stg_update_store_i32(i32* %i44__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3477, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3478, i32 0, i32 0))
  br label %for.cond45

for.end63:                                        ; preds = %for.cond45
  %arraydecay__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3479, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3480, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3481, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3482, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing19timeSynchronizationEPS_i(%class.VelocitySmoothing* %arraydecay__Z20test_trajectory_syncv, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3483, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3484, i32 0, i32 0))
  %arrayidx64__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 0
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3485, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3486, i32 0, i32 0))
  %call65__Z20test_trajectory_syncv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %arrayidx64__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3487, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3488, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3489, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3490, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3491, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3492, i32 0, i32 0))
  %conv66__Z20test_trajectory_syncv = zext i1 %call65__Z20test_trajectory_syncv to i32
  %tmp__Z20test_trajectory_syncv42 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3494, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3495, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3496, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3497, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3498, i32 0, i32 0))
  %tobool67__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv42 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3499, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3500, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3501, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3502, i32 0, i32 0))
  %conv68__Z20test_trajectory_syncv = zext i1 %tobool67__Z20test_trajectory_syncv to i32
  %and69__Z20test_trajectory_syncv = and i32 %conv68__Z20test_trajectory_syncv, %conv66__Z20test_trajectory_syncv
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3503, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3504, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3505, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3506, i32 0, i32 0))
  %tobool70__Z20test_trajectory_syncv = icmp ne i32 %and69__Z20test_trajectory_syncv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3507, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3508, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3509, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3510, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3511, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3512, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3513, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3514, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3515, i32 0, i32 0))
  %frombool71__Z20test_trajectory_syncv = zext i1 %tobool70__Z20test_trajectory_syncv to i8
  store i8 %frombool71__Z20test_trajectory_syncv, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3516, i32 0, i32 0))
  %arrayidx72__Z20test_trajectory_syncv = getelementptr inbounds [2 x %class.VelocitySmoothing], [2 x %class.VelocitySmoothing]* %trajectory__Z20test_trajectory_syncv, i64 0, i64 1
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3517, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3518, i32 0, i32 0))
  %call73__Z20test_trajectory_syncv = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %arrayidx72__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3519, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3520, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3521, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3522, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3523, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3524, i32 0, i32 0))
  %conv74__Z20test_trajectory_syncv = zext i1 %call73__Z20test_trajectory_syncv to i32
  %tmp__Z20test_trajectory_syncv43 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3526, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3527, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3528, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3529, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3530, i32 0, i32 0))
  %tobool75__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv43 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3531, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3532, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3533, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3534, i32 0, i32 0))
  %conv76__Z20test_trajectory_syncv = zext i1 %tobool75__Z20test_trajectory_syncv to i32
  %and77__Z20test_trajectory_syncv = and i32 %conv76__Z20test_trajectory_syncv, %conv74__Z20test_trajectory_syncv
  call void @stg_update_op(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3535, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3536, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3537, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3538, i32 0, i32 0))
  %tobool78__Z20test_trajectory_syncv = icmp ne i32 %and77__Z20test_trajectory_syncv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3539, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3540, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3541, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3542, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3543, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3544, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3545, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3546, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3547, i32 0, i32 0))
  %frombool79__Z20test_trajectory_syncv = zext i1 %tobool78__Z20test_trajectory_syncv to i8
  store i8 %frombool79__Z20test_trajectory_syncv, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_store_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3548, i32 0, i32 0))
  call void @stg_end_test()
  %tmp__Z20test_trajectory_syncv44 = load i8, i8* %oracle__Z20test_trajectory_syncv, align 1
  call void @stg_update_load_i8(i8* %oracle__Z20test_trajectory_syncv, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3550, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3551, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3552, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3553, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3554, i32 0, i32 0))
  %tobool80__Z20test_trajectory_syncv = trunc i8 %tmp__Z20test_trajectory_syncv44 to i1
  call void @stg_record_test(i1 zeroext %tobool80__Z20test_trajectory_syncv)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3555, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3556, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3557, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_t1_saturationf(float %t1) #0 {
entry:
  %t1.addr__Z18test_t1_saturationf = alloca float, align 4
  %trajectory__Z18test_t1_saturationf = alloca %class.VelocitySmoothing, align 4
  %acceleration__Z18test_t1_saturationf = alloca float, align 4
  %maxAcceleration__Z18test_t1_saturationf = alloca float, align 4
  store float %t1, float* %t1.addr__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %t1.addr__Z18test_t1_saturationf, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3558, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3559, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3560, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3561, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3562, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3563, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3564, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3565, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3566, i32 0, i32 0))
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3567, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @3568, i32 0, i32 0))
  store float 0.000000e+00, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3569, i32 0, i32 0))
  store float 6.000000e+00, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_store_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3570, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf = bitcast float* %acceleration__Z18test_t1_saturationf to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z18test_t1_saturationf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %tmp__Z18test_t1_saturationf1 = bitcast float* %maxAcceleration__Z18test_t1_saturationf to i8*
  call void @stg_symbolic_variable(i8* %tmp__Z18test_t1_saturationf1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z18test_t1_saturationf2 = bitcast float* %acceleration__Z18test_t1_saturationf to i8*
  %tmp__Z18test_t1_saturationf3 = load float, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3575, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_t1_saturationf2, float %tmp__Z18test_t1_saturationf3)
  %tmp__Z18test_t1_saturationf4 = bitcast float* %maxAcceleration__Z18test_t1_saturationf to i8*
  %tmp__Z18test_t1_saturationf5 = load float, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3578, i32 0, i32 0))
  call void @stg_input_float(i8* %tmp__Z18test_t1_saturationf4, float %tmp__Z18test_t1_saturationf5)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3579, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3580, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3581, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3582, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0x404B9999A0000000)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3583, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @3584, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3585, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3586, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3587, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3588, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 6.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3589, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3590, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3591, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3592, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3593, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3594, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3595, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3596, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf6 = load float, float* %acceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %acceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3598, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3599, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3600, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3601, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3602, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf6)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3603, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3604, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf7 = load float, float* %maxAcceleration__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %maxAcceleration__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3606, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3607, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3608, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3609, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3610, i32 0, i32 0))
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf7)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @3611, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3612, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3613, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3614, i32 0, i32 0))
  %call__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3615, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3616, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3617, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3618, i32 0, i32 0))
  %call1__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3619, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @3620, i32 0, i32 0))
  %tmp__Z18test_t1_saturationf8 = load float, float* %t1.addr__Z18test_t1_saturationf, align 4
  call void @stg_update_load_float(float* %t1.addr__Z18test_t1_saturationf, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3622, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3623, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3624, i32 0, i32 0))
  %call2__Z18test_t1_saturationf = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3625, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @3626, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3627, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3628, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3629, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3630, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3631, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3632, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3633, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3634, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3635, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3636, i32 0, i32 0))
  %call3__Z18test_t1_saturationf = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %trajectory__Z18test_t1_saturationf, float %call__Z18test_t1_saturationf, float %call1__Z18test_t1_saturationf, float %tmp__Z18test_t1_saturationf8, float %call2__Z18test_t1_saturationf)
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @3637, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3638, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3639, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3640, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3641, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #6 {
entry:
  %retval_main = alloca i32, align 4
  %argc.addr_main = alloca i32, align 4
  %argv.addr_main = alloca i8**, align 8
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3642, i32 0, i32 0))
  store i32 %argc, i32* %argc.addr_main, align 4
  call void @stg_update_store_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @3643, i32 0, i32 0))
  store i8** %argv, i8*** %argv.addr_main, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3645, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @3646, i32 0, i32 0))
  %call_main = call i32 @_Z18test_t1_saturationf(float 0xC01DAE1480000000)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3647, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3648, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3649, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3650, i32 0, i32 0))
  %call1_main = call i32 @_Z18test_t1_saturationf(float 0x401DAE1480000000)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3651, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3652, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3653, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3654, i32 0, i32 0))
  %call2_main = call i32 @_Z18test_t1_saturationf(float 0.000000e+00)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3655, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3656, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3657, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @3658, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3659, i32 0, i32 0))
  ret i32 0
}

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_cast(i8*, i8*, i8*, i8*)

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

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn writeonly }
attributes #6 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!1 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
