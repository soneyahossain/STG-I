; ModuleID = 'PUT.bc'
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

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr = alloca float, align 4
  %initial_vel.addr = alloca float, align 4
  %initial_pos.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %initial_accel, float* %initial_accel.addr, align 4
  store float %initial_vel, float* %initial_vel.addr, align 4
  store float %initial_pos, float* %initial_pos.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_vel_sp = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 0
  store float 0.000000e+00, float* %_vel_sp, align 4
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  store float 2.200000e+01, float* %_max_jerk, align 4
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 2
  store float 8.000000e+00, float* %_max_accel, align 4
  %_max_vel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 3
  store float 6.000000e+00, float* %_max_vel, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %j = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 0
  store float 0.000000e+00, float* %j, align 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  store float 0.000000e+00, float* %a, align 4
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 2
  store float 0.000000e+00, float* %v, align 4
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 3
  store float 0.000000e+00, float* %x, align 4
  %_direction = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  store i32 0, i32* %_direction, align 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %j2 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 0
  store float 0.000000e+00, float* %j2, align 4
  %a3 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 1
  store float 0.000000e+00, float* %a3, align 4
  %v4 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 2
  store float 0.000000e+00, float* %v4, align 4
  %x5 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 3
  store float 0.000000e+00, float* %x5, align 4
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  store float 0.000000e+00, float* %_T1, align 4
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  store float 0.000000e+00, float* %_T2, align 4
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  store float 0.000000e+00, float* %_T3, align 4
  %_local_time = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time, align 4
  %0 = load float, float* %initial_accel.addr, align 4
  %1 = load float, float* %initial_vel.addr, align 4
  %2 = load float, float* %initial_pos.addr, align 4
  call void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this1, float %0, float %1, float %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing5resetEfff(%class.VelocitySmoothing* %this, float %accel, float %vel, float %pos) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %accel.addr = alloca float, align 4
  %vel.addr = alloca float, align 4
  %pos.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %accel, float* %accel.addr, align 4
  store float %vel, float* %vel.addr, align 4
  store float %pos, float* %pos.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %j = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 0
  store float 0.000000e+00, float* %j, align 4
  %0 = load float, float* %accel.addr, align 4
  %_state2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2, i32 0, i32 1
  store float %0, float* %a, align 4
  %1 = load float, float* %vel.addr, align 4
  %_state3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state3, i32 0, i32 2
  store float %1, float* %v, align 4
  %2 = load float, float* %pos.addr, align 4
  %_state4 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4, i32 0, i32 3
  store float %2, float* %x, align 4
  %_state5 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %3 = bitcast %struct.Trajectory* %_state_init to i8*
  %4 = bitcast %struct.Trajectory* %_state5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %this, float %initial_accel, float %initial_vel, float %initial_pos) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %initial_accel.addr = alloca float, align 4
  %initial_vel.addr = alloca float, align 4
  %initial_pos.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %initial_accel, float* %initial_accel.addr, align 4
  store float %initial_vel, float* %initial_vel.addr, align 4
  store float %initial_pos, float* %initial_pos.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %initial_accel.addr, align 4
  %1 = load float, float* %initial_vel.addr, align 4
  %2 = load float, float* %initial_pos.addr, align 4
  call void @_ZN17VelocitySmoothingC2Efff(%class.VelocitySmoothing* %this1, float %0, float %1, float %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  %0 = load float, float* %_max_jerk, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %this, float %max_jerk) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %max_jerk.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %max_jerk, float* %max_jerk.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %max_jerk.addr, align 4
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  store float %0, float* %_max_jerk, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 2
  %0 = load float, float* %_max_accel, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %this, float %max_accel) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %max_accel.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %max_accel, float* %max_accel.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %max_accel.addr, align 4
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 2
  store float %0, float* %_max_accel, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_max_vel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 3
  %0 = load float, float* %_max_vel, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %this, float %max_vel) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %max_vel.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %max_vel, float* %max_vel.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %max_vel.addr, align 4
  %_max_vel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 3
  store float %0, float* %_max_vel, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %j = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 0
  %0 = load float, float* %j, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %this, float %accel) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %accel.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %accel, float* %accel.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %accel.addr, align 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 1
  store float %0, float* %a, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a2 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  store float %0, float* %a2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  %0 = load float, float* %a, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %this, float %vel) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %vel.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %vel, float* %vel.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %vel.addr, align 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 2
  store float %0, float* %v, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v2 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 2
  store float %0, float* %v2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 2
  %0 = load float, float* %v, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %this, float %pos) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %pos.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %pos, float* %pos.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %pos.addr, align 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 3
  store float %0, float* %x, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x2 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 3
  store float %0, float* %x2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 3
  %0 = load float, float* %x, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_vel_sp = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 0
  %0 = load float, float* %_vel_sp, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  %0 = load float, float* %_T1, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  %0 = load float, float* %_T2, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  %0 = load float, float* %_T3, align 4
  ret float %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %this) #1 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  %0 = load float, float* %_T1, align 4
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  %1 = load float, float* %_T2, align 4
  %add = fadd float %0, %1
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  %2 = load float, float* %_T3, align 4
  %add2 = fadd float %add, %2
  ret float %add2
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this, float %a0, float %j_max, float %T1, float %a_max) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %a0.addr = alloca float, align 4
  %j_max.addr = alloca float, align 4
  %T1.addr = alloca float, align 4
  %a_max.addr = alloca float, align 4
  %accel_T1 = alloca float, align 4
  %T1_new = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %a0, float* %a0.addr, align 4
  store float %j_max, float* %j_max.addr, align 4
  store float %T1, float* %T1.addr, align 4
  store float %a_max, float* %a_max.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %a0.addr, align 4
  %conv = fpext float %0 to double
  %1 = load float, float* %a_max.addr, align 4
  %conv2 = fpext float %1 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), double %conv, double %conv2)
  %2 = load float, float* %a0.addr, align 4
  %3 = load float, float* %j_max.addr, align 4
  %4 = load float, float* %T1.addr, align 4
  %mul = fmul float %3, %4
  %add = fadd float %2, %mul
  store float %add, float* %accel_T1, align 4
  %5 = load float, float* %T1.addr, align 4
  store float %5, float* %T1_new, align 4
  %6 = load float, float* %accel_T1, align 4
  %7 = load float, float* %a_max.addr, align 4
  %cmp = fcmp ogt float %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load float, float* %a_max.addr, align 4
  %9 = load float, float* %a0.addr, align 4
  %sub = fsub float %8, %9
  %10 = load float, float* %j_max.addr, align 4
  %div = fdiv float %sub, %10
  store float %div, float* %T1_new, align 4
  %11 = load float, float* %accel_T1, align 4
  %conv3 = fpext float %11 to double
  %12 = load float, float* %T1_new, align 4
  %conv4 = fpext float %12 to double
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), double %conv3, double %conv4)
  br label %if.end17

if.else:                                          ; preds = %entry
  %13 = load float, float* %accel_T1, align 4
  %14 = load float, float* %a_max.addr, align 4
  %sub6 = fsub float -0.000000e+00, %14
  %cmp7 = fcmp olt float %13, %sub6
  br i1 %cmp7, label %if.then8, label %if.else15

if.then8:                                         ; preds = %if.else
  %15 = load float, float* %accel_T1, align 4
  %conv9 = fpext float %15 to double
  %16 = load float, float* %T1_new, align 4
  %conv10 = fpext float %16 to double
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), double %conv9, double %conv10)
  %17 = load float, float* %a_max.addr, align 4
  %sub12 = fsub float -0.000000e+00, %17
  %18 = load float, float* %a0.addr, align 4
  %sub13 = fsub float %sub12, %18
  %19 = load float, float* %j_max.addr, align 4
  %div14 = fdiv float %sub13, %19
  store float %div14, float* %T1_new, align 4
  br label %if.end

if.else15:                                        ; preds = %if.else
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %20 = load float, float* %T1_new, align 4
  ret float %20
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this, float %a0, float %v3, float %j_max, float %a_max) #0 align 2 {
entry:
  %retval = alloca float, align 4
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %a0.addr = alloca float, align 4
  %v3.addr = alloca float, align 4
  %j_max.addr = alloca float, align 4
  %a_max.addr = alloca float, align 4
  %delta = alloca float, align 4
  %sqrt_delta = alloca float, align 4
  %T1_plus = alloca float, align 4
  %T1_minus = alloca float, align 4
  %T3_plus = alloca float, align 4
  %T3_minus = alloca float, align 4
  %T1 = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %a0, float* %a0.addr, align 4
  store float %v3, float* %v3.addr, align 4
  store float %j_max, float* %j_max.addr, align 4
  store float %a_max, float* %a_max.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %a0.addr, align 4
  %mul = fmul float 2.000000e+00, %0
  %1 = load float, float* %a0.addr, align 4
  %mul2 = fmul float %mul, %1
  %2 = load float, float* %j_max.addr, align 4
  %mul3 = fmul float 4.000000e+00, %2
  %3 = load float, float* %v3.addr, align 4
  %mul4 = fmul float %mul3, %3
  %add = fadd float %mul2, %mul4
  store float %add, float* %delta, align 4
  %4 = load float, float* %delta, align 4
  %cmp = fcmp olt float %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load float, float* %delta, align 4
  %6 = call float @llvm.sqrt.f32(float %5)
  store float %6, float* %sqrt_delta, align 4
  %7 = load float, float* %a0.addr, align 4
  %sub = fsub float -0.000000e+00, %7
  %8 = load float, float* %sqrt_delta, align 4
  %mul5 = fmul float 5.000000e-01, %8
  %add6 = fadd float %sub, %mul5
  %9 = load float, float* %j_max.addr, align 4
  %div = fdiv float %add6, %9
  store float %div, float* %T1_plus, align 4
  %10 = load float, float* %a0.addr, align 4
  %sub7 = fsub float -0.000000e+00, %10
  %11 = load float, float* %sqrt_delta, align 4
  %mul8 = fmul float 5.000000e-01, %11
  %sub9 = fsub float %sub7, %mul8
  %12 = load float, float* %j_max.addr, align 4
  %div10 = fdiv float %sub9, %12
  store float %div10, float* %T1_minus, align 4
  %13 = load float, float* %a0.addr, align 4
  %14 = load float, float* %j_max.addr, align 4
  %div11 = fdiv float %13, %14
  %15 = load float, float* %T1_plus, align 4
  %add12 = fadd float %div11, %15
  store float %add12, float* %T3_plus, align 4
  %16 = load float, float* %a0.addr, align 4
  %17 = load float, float* %j_max.addr, align 4
  %div13 = fdiv float %16, %17
  %18 = load float, float* %T1_minus, align 4
  %add14 = fadd float %div13, %18
  store float %add14, float* %T3_minus, align 4
  store float 0.000000e+00, float* %T1, align 4
  %19 = load float, float* %T1_plus, align 4
  %cmp15 = fcmp oge float %19, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %20 = load float, float* %T3_plus, align 4
  %cmp16 = fcmp oge float %20, 0.000000e+00
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %21 = load float, float* %T1_plus, align 4
  store float %21, float* %T1, align 4
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %if.end
  %22 = load float, float* %T1_minus, align 4
  %cmp18 = fcmp oge float %22, 0.000000e+00
  br i1 %cmp18, label %land.lhs.true19, label %if.end22

land.lhs.true19:                                  ; preds = %if.else
  %23 = load float, float* %T3_minus, align 4
  %cmp20 = fcmp oge float %23, 0.000000e+00
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true19
  %24 = load float, float* %T1_minus, align 4
  store float %24, float* %T1, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true19, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then17
  %25 = load float, float* %a0.addr, align 4
  %26 = load float, float* %j_max.addr, align 4
  %27 = load float, float* %T1, align 4
  %28 = load float, float* %a_max.addr, align 4
  %call = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %this1, float %25, float %26, float %27, float %28)
  store float %call, float* %T1, align 4
  %29 = load float, float* %T1, align 4
  %call24 = call float @_ZN4math3maxIfEET_S1_S1_(float %29, float 0.000000e+00)
  store float %call24, float* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %30 = load float, float* %retval, align 4
  ret float %30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3maxIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this, float %T1, float %T3, float %a0, float %v3, float %j_max) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %T1.addr = alloca float, align 4
  %T3.addr = alloca float, align 4
  %a0.addr = alloca float, align 4
  %v3.addr = alloca float, align 4
  %j_max.addr = alloca float, align 4
  %T2 = alloca float, align 4
  %den = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %T1, float* %T1.addr, align 4
  store float %T3, float* %T3.addr, align 4
  store float %a0, float* %a0.addr, align 4
  store float %v3, float* %v3.addr, align 4
  store float %j_max, float* %j_max.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  store float 0.000000e+00, float* %T2, align 4
  %0 = load float, float* %a0.addr, align 4
  %1 = load float, float* %j_max.addr, align 4
  %2 = load float, float* %T1.addr, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  store float %add, float* %den, align 4
  %3 = load float, float* %den, align 4
  %call = call float @_ZN4math5abs_tIfEET_S1_(float %3)
  %cmp = fcmp ogt float %call, 0x3E80000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  %4 = load float, float* %T1.addr, align 4
  %mul3 = fmul float -5.000000e-01, %4
  %5 = load float, float* %T1.addr, align 4
  %mul4 = fmul float %mul3, %5
  %6 = load float, float* %j_max.addr, align 4
  %mul5 = fmul float %mul4, %6
  %7 = load float, float* %T1.addr, align 4
  %8 = load float, float* %T3.addr, align 4
  %mul6 = fmul float %7, %8
  %9 = load float, float* %j_max.addr, align 4
  %mul7 = fmul float %mul6, %9
  %sub = fsub float %mul5, %mul7
  %10 = load float, float* %T1.addr, align 4
  %11 = load float, float* %a0.addr, align 4
  %mul8 = fmul float %10, %11
  %sub9 = fsub float %sub, %mul8
  %12 = load float, float* %T3.addr, align 4
  %mul10 = fmul float 5.000000e-01, %12
  %13 = load float, float* %T3.addr, align 4
  %mul11 = fmul float %mul10, %13
  %14 = load float, float* %j_max.addr, align 4
  %mul12 = fmul float %mul11, %14
  %add13 = fadd float %sub9, %mul12
  %15 = load float, float* %T3.addr, align 4
  %16 = load float, float* %a0.addr, align 4
  %mul14 = fmul float %15, %16
  %sub15 = fsub float %add13, %mul14
  %17 = load float, float* %v3.addr, align 4
  %add16 = fadd float %sub15, %17
  %18 = load float, float* %den, align 4
  %div = fdiv float %add16, %18
  store float %div, float* %T2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load float, float* %T2, align 4
  %call17 = call float @_ZN4math3maxIfEET_S1_S1_(float %19, float 0.000000e+00)
  ret float %call17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math5abs_tIfEET_S1_(float %val) #1 {
entry:
  %val.addr = alloca float, align 4
  store float %val, float* %val.addr, align 4
  %0 = load float, float* %val.addr, align 4
  %cmp = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load float, float* %val.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load float, float* %val.addr, align 4
  %sub = fsub float -0.000000e+00, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %1, %cond.true ], [ %sub, %cond.false ]
  ret float %cond
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this, float %T1, float %a0, float %j_max) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %T1.addr = alloca float, align 4
  %a0.addr = alloca float, align 4
  %j_max.addr = alloca float, align 4
  %T3 = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %T1, float* %T1.addr, align 4
  store float %a0, float* %a0.addr, align 4
  store float %j_max, float* %j_max.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %a0.addr, align 4
  %1 = load float, float* %j_max.addr, align 4
  %div = fdiv float %0, %1
  %2 = load float, float* %T1.addr, align 4
  %add = fadd float %div, %2
  store float %add, float* %T3, align 4
  %3 = load float, float* %T3, align 4
  %call = call float @_ZN4math3maxIfEET_S1_S1_(float %3, float 0.000000e+00)
  ret float %call
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %this, float %vel_setpoint) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %vel_setpoint.addr = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %vel_setpoint, float* %vel_setpoint.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %vel_setpoint.addr, align 4
  %_max_vel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 3
  %1 = load float, float* %_max_vel, align 4
  %sub = fsub float -0.000000e+00, %1
  %_max_vel2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 3
  %2 = load float, float* %_max_vel2, align 4
  %call = call float @_ZN4math9constrainIfEET_S1_S1_S1_(float %0, float %sub, float %2)
  %_vel_sp = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 0
  store float %call, float* %_vel_sp, align 4
  %_local_time = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 10
  store float 0.000000e+00, float* %_local_time, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %3 = bitcast %struct.Trajectory* %_state_init to i8*
  %4 = bitcast %struct.Trajectory* %_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 16, i1 false)
  %call3 = call i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this1)
  %_direction = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  store i32 %call3, i32* %_direction, align 4
  %_direction4 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  %5 = load i32, i32* %_direction4, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this1)
  br label %if.end

if.else:                                          ; preds = %entry
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  store float 0.000000e+00, float* %_T3, align 4
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  store float 0.000000e+00, float* %_T2, align 4
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  store float 0.000000e+00, float* %_T1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math9constrainIfEET_S1_S1_S1_(float %val, float %min_val, float %max_val) #1 {
entry:
  %val.addr = alloca float, align 4
  %min_val.addr = alloca float, align 4
  %max_val.addr = alloca float, align 4
  store float %val, float* %val.addr, align 4
  store float %min_val, float* %min_val.addr, align 4
  store float %max_val, float* %max_val.addr, align 4
  %0 = load float, float* %val.addr, align 4
  %1 = load float, float* %min_val.addr, align 4
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, float* %min_val.addr, align 4
  br label %cond.end4

cond.false:                                       ; preds = %entry
  %3 = load float, float* %val.addr, align 4
  %4 = load float, float* %max_val.addr, align 4
  %cmp1 = fcmp ogt float %3, %4
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  %5 = load float, float* %max_val.addr, align 4
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  %6 = load float, float* %val.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond = phi float [ %5, %cond.true2 ], [ %6, %cond.false3 ]
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5 = phi float [ %2, %cond.true ], [ %cond, %cond.end ]
  ret float %cond5
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_ZN17VelocitySmoothing16computeDirectionEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc = alloca float, align 4
  %direction = alloca i32, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %call = call float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this1)
  store float %call, float* %vel_zero_acc, align 4
  %_vel_sp = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 0
  %0 = load float, float* %_vel_sp, align 4
  %1 = load float, float* %vel_zero_acc, align 4
  %sub = fsub float %0, %1
  %call2 = call i32 @_ZN6matrix4signIfEEiT_(float %sub)
  store i32 %call2, i32* %direction, align 4
  %2 = load i32, i32* %direction, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  %3 = load float, float* %a, align 4
  %call3 = call i32 @_ZN6matrix4signIfEEiT_(float %3)
  store i32 %call3, i32* %direction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %direction, align 4
  ret i32 %4
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing32updateDurationsMinimizeTotalTimeEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %jerk_max_T1 = alloca float, align 4
  %delta_v = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_direction = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  %0 = load i32, i32* %_direction, align 4
  %conv = sitofp i32 %0 to float
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  %1 = load float, float* %_max_jerk, align 4
  %mul = fmul float %conv, %1
  store float %mul, float* %jerk_max_T1, align 4
  %_vel_sp = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 0
  %2 = load float, float* %_vel_sp, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 2
  %3 = load float, float* %v, align 4
  %sub = fsub float %2, %3
  store float %sub, float* %delta_v, align 4
  %_state2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2, i32 0, i32 1
  %4 = load float, float* %a, align 4
  %5 = load float, float* %delta_v, align 4
  %6 = load float, float* %jerk_max_T1, align 4
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 2
  %7 = load float, float* %_max_accel, align 4
  %call = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %this1, float %4, float %5, float %6, float %7)
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  store float %call, float* %_T1, align 4
  %_T13 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  %8 = load float, float* %_T13, align 4
  %_state4 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a5 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4, i32 0, i32 1
  %9 = load float, float* %a5, align 4
  %10 = load float, float* %jerk_max_T1, align 4
  %call6 = call float @_ZN17VelocitySmoothing9computeT3Efff(%class.VelocitySmoothing* %this1, float %8, float %9, float %10)
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  store float %call6, float* %_T3, align 4
  %_T17 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  %11 = load float, float* %_T17, align 4
  %_T38 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  %12 = load float, float* %_T38, align 4
  %_state9 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a10 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state9, i32 0, i32 1
  %13 = load float, float* %a10, align 4
  %14 = load float, float* %delta_v, align 4
  %15 = load float, float* %jerk_max_T1, align 4
  %call11 = call float @_ZN17VelocitySmoothing9computeT2Efffff(%class.VelocitySmoothing* %this1, float %11, float %12, float %13, float %14, float %15)
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  store float %call11, float* %_T2, align 4
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define float @_ZN17VelocitySmoothing19computeVelAtZeroAccEv(%class.VelocitySmoothing* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %vel_zero_acc = alloca float, align 4
  %j_zero_acc = alloca float, align 4
  %t_zero_acc = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 2
  %0 = load float, float* %v, align 4
  store float %0, float* %vel_zero_acc, align 4
  %_state2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2, i32 0, i32 1
  %1 = load float, float* %a, align 4
  %call = call float @_ZN4math5abs_tIfEET_S1_(float %1)
  %cmp = fcmp ogt float %call, 0x3E80000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  %_state4 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a5 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state4, i32 0, i32 1
  %2 = load float, float* %a5, align 4
  %call6 = call i32 @_ZN6matrix4signIfEEiT_(float %2)
  %sub = sub nsw i32 0, %call6
  %conv = sitofp i32 %sub to float
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  %3 = load float, float* %_max_jerk, align 4
  %mul = fmul float %conv, %3
  store float %mul, float* %j_zero_acc, align 4
  %_state7 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a8 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state7, i32 0, i32 1
  %4 = load float, float* %a8, align 4
  %sub9 = fsub float -0.000000e+00, %4
  %5 = load float, float* %j_zero_acc, align 4
  %div = fdiv float %sub9, %5
  store float %div, float* %t_zero_acc, align 4
  %_state10 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v11 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state10, i32 0, i32 2
  %6 = load float, float* %v11, align 4
  %_state12 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a13 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state12, i32 0, i32 1
  %7 = load float, float* %a13, align 4
  %8 = load float, float* %t_zero_acc, align 4
  %mul14 = fmul float %7, %8
  %add = fadd float %6, %mul14
  %9 = load float, float* %j_zero_acc, align 4
  %mul15 = fmul float 5.000000e-01, %9
  %10 = load float, float* %t_zero_acc, align 4
  %mul16 = fmul float %mul15, %10
  %11 = load float, float* %t_zero_acc, align 4
  %mul17 = fmul float %mul16, %11
  %add18 = fadd float %add, %mul17
  store float %add18, float* %vel_zero_acc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load float, float* %vel_zero_acc, align 4
  %conv19 = fpext float %12 to double
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), double %conv19)
  %13 = load float, float* %vel_zero_acc, align 4
  ret float %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZN6matrix4signIfEEiT_(float %val) #1 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca float, align 4
  store float %val, float* %val.addr, align 4
  %0 = load float, float* %val.addr, align 4
  %cmp = fcmp olt float 0x3E80000000000000, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load float, float* %val.addr, align 4
  %cmp1 = fcmp olt float %1, 0x3E80000000000000
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this, float %j, float %a0, float %v0, float %x0, float %t, i32 %d) #1 align 2 {
entry:
  %retval = alloca %struct.Trajectory, align 4
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %j.addr = alloca float, align 4
  %a0.addr = alloca float, align 4
  %v0.addr = alloca float, align 4
  %x0.addr = alloca float, align 4
  %t.addr = alloca float, align 4
  %d.addr = alloca i32, align 4
  %jt = alloca float, align 4
  %t2 = alloca float, align 4
  %t3 = alloca float, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %j, float* %j.addr, align 4
  store float %a0, float* %a0.addr, align 4
  store float %v0, float* %v0.addr, align 4
  store float %x0, float* %x0.addr, align 4
  store float %t, float* %t.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load i32, i32* %d.addr, align 4
  %conv = sitofp i32 %0 to float
  %1 = load float, float* %j.addr, align 4
  %mul = fmul float %conv, %1
  store float %mul, float* %jt, align 4
  %2 = load float, float* %t.addr, align 4
  %3 = load float, float* %t.addr, align 4
  %mul2 = fmul float %2, %3
  store float %mul2, float* %t2, align 4
  %4 = load float, float* %t2, align 4
  %5 = load float, float* %t.addr, align 4
  %mul3 = fmul float %4, %5
  store float %mul3, float* %t3, align 4
  %6 = load float, float* %jt, align 4
  %j4 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval, i32 0, i32 0
  store float %6, float* %j4, align 4
  %7 = load float, float* %a0.addr, align 4
  %8 = load float, float* %jt, align 4
  %9 = load float, float* %t.addr, align 4
  %mul5 = fmul float %8, %9
  %add = fadd float %7, %mul5
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval, i32 0, i32 1
  store float %add, float* %a, align 4
  %10 = load float, float* %v0.addr, align 4
  %11 = load float, float* %a0.addr, align 4
  %12 = load float, float* %t.addr, align 4
  %mul6 = fmul float %11, %12
  %add7 = fadd float %10, %mul6
  %13 = load float, float* %jt, align 4
  %mul8 = fmul float 5.000000e-01, %13
  %14 = load float, float* %t2, align 4
  %mul9 = fmul float %mul8, %14
  %add10 = fadd float %add7, %mul9
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval, i32 0, i32 2
  store float %add10, float* %v, align 4
  %15 = load float, float* %x0.addr, align 4
  %16 = load float, float* %v0.addr, align 4
  %17 = load float, float* %t.addr, align 4
  %mul11 = fmul float %16, %17
  %add12 = fadd float %15, %mul11
  %18 = load float, float* %a0.addr, align 4
  %mul13 = fmul float 5.000000e-01, %18
  %19 = load float, float* %t2, align 4
  %mul14 = fmul float %mul13, %19
  %add15 = fadd float %add12, %mul14
  %20 = load float, float* %jt, align 4
  %mul16 = fmul float 0x3FC5555560000000, %20
  %21 = load float, float* %t3, align 4
  %mul17 = fmul float %mul16, %21
  %add18 = fadd float %add15, %mul17
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %retval, i32 0, i32 3
  store float %add18, float* %x, align 4
  %22 = bitcast %struct.Trajectory* %retval to { <2 x float>, <2 x float> }*
  %23 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %22, align 4
  ret { <2 x float>, <2 x float> } %23
}

; Function Attrs: noinline optnone ssp uwtable
define void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %this, float %dt, float %time_stretch) #0 align 2 {
entry:
  %this.addr = alloca %class.VelocitySmoothing*, align 8
  %dt.addr = alloca float, align 4
  %time_stretch.addr = alloca float, align 4
  %t_remain = alloca float, align 4
  %t1 = alloca float, align 4
  %ref.tmp = alloca %struct.Trajectory, align 4
  %t2 = alloca float, align 4
  %ref.tmp7 = alloca %struct.Trajectory, align 4
  %t3 = alloca float, align 4
  %ref.tmp20 = alloca %struct.Trajectory, align 4
  %ref.tmp36 = alloca %struct.Trajectory, align 4
  store %class.VelocitySmoothing* %this, %class.VelocitySmoothing** %this.addr, align 8
  store float %dt, float* %dt.addr, align 4
  store float %time_stretch, float* %time_stretch.addr, align 4
  %this1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %this.addr, align 8
  %0 = load float, float* %dt.addr, align 4
  %1 = load float, float* %time_stretch.addr, align 4
  %mul = fmul float %0, %1
  %_local_time = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 10
  %2 = load float, float* %_local_time, align 4
  %add = fadd float %2, %mul
  store float %add, float* %_local_time, align 4
  %_local_time2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 10
  %3 = load float, float* %_local_time2, align 4
  store float %3, float* %t_remain, align 4
  %4 = load float, float* %t_remain, align 4
  %_T1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 7
  %5 = load float, float* %_T1, align 4
  %call = call float @_ZN4math3minIfEET_S1_S1_(float %4, float %5)
  store float %call, float* %t1, align 4
  %_max_jerk = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  %6 = load float, float* %_max_jerk, align 4
  %_state_init = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init, i32 0, i32 1
  %7 = load float, float* %a, align 4
  %_state_init3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %v = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init3, i32 0, i32 2
  %8 = load float, float* %v, align 4
  %_state_init4 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 6
  %x = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state_init4, i32 0, i32 3
  %9 = load float, float* %x, align 4
  %10 = load float, float* %t1, align 4
  %_direction = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  %11 = load i32, i32* %_direction, align 4
  %call5 = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1, float %6, float %7, float %8, float %9, float %10, i32 %11)
  %12 = bitcast %struct.Trajectory* %ref.tmp to { <2 x float>, <2 x float> }*
  %13 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 0
  %14 = extractvalue { <2 x float>, <2 x float> } %call5, 0
  store <2 x float> %14, <2 x float>* %13, align 4
  %15 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %12, i32 0, i32 1
  %16 = extractvalue { <2 x float>, <2 x float> } %call5, 1
  store <2 x float> %16, <2 x float>* %15, align 4
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %17 = bitcast %struct.Trajectory* %_state to i8*
  %18 = bitcast %struct.Trajectory* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 16, i1 false)
  %19 = load float, float* %t1, align 4
  %20 = load float, float* %t_remain, align 4
  %sub = fsub float %20, %19
  store float %sub, float* %t_remain, align 4
  %21 = load float, float* %t_remain, align 4
  %cmp = fcmp ogt float %21, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load float, float* %t_remain, align 4
  %_T2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 8
  %23 = load float, float* %_T2, align 4
  %call6 = call float @_ZN4math3minIfEET_S1_S1_(float %22, float %23)
  store float %call6, float* %t2, align 4
  %_state8 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a9 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state8, i32 0, i32 1
  %24 = load float, float* %a9, align 4
  %_state10 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v11 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state10, i32 0, i32 2
  %25 = load float, float* %v11, align 4
  %_state12 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x13 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state12, i32 0, i32 3
  %26 = load float, float* %x13, align 4
  %27 = load float, float* %t2, align 4
  %call14 = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1, float 0.000000e+00, float %24, float %25, float %26, float %27, i32 0)
  %28 = bitcast %struct.Trajectory* %ref.tmp7 to { <2 x float>, <2 x float> }*
  %29 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %28, i32 0, i32 0
  %30 = extractvalue { <2 x float>, <2 x float> } %call14, 0
  store <2 x float> %30, <2 x float>* %29, align 4
  %31 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %28, i32 0, i32 1
  %32 = extractvalue { <2 x float>, <2 x float> } %call14, 1
  store <2 x float> %32, <2 x float>* %31, align 4
  %_state15 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %33 = bitcast %struct.Trajectory* %_state15 to i8*
  %34 = bitcast %struct.Trajectory* %ref.tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 16, i1 false)
  %35 = load float, float* %t2, align 4
  %36 = load float, float* %t_remain, align 4
  %sub16 = fsub float %36, %35
  store float %sub16, float* %t_remain, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %37 = load float, float* %t_remain, align 4
  %cmp17 = fcmp ogt float %37, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end33

if.then18:                                        ; preds = %if.end
  %38 = load float, float* %t_remain, align 4
  %_T3 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 9
  %39 = load float, float* %_T3, align 4
  %call19 = call float @_ZN4math3minIfEET_S1_S1_(float %38, float %39)
  store float %call19, float* %t3, align 4
  %_max_jerk21 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 1
  %40 = load float, float* %_max_jerk21, align 4
  %_state22 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %a23 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state22, i32 0, i32 1
  %41 = load float, float* %a23, align 4
  %_state24 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v25 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state24, i32 0, i32 2
  %42 = load float, float* %v25, align 4
  %_state26 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x27 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state26, i32 0, i32 3
  %43 = load float, float* %x27, align 4
  %44 = load float, float* %t3, align 4
  %_direction28 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 5
  %45 = load i32, i32* %_direction28, align 4
  %sub29 = sub nsw i32 0, %45
  %call30 = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1, float %40, float %41, float %42, float %43, float %44, i32 %sub29)
  %46 = bitcast %struct.Trajectory* %ref.tmp20 to { <2 x float>, <2 x float> }*
  %47 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %46, i32 0, i32 0
  %48 = extractvalue { <2 x float>, <2 x float> } %call30, 0
  store <2 x float> %48, <2 x float>* %47, align 4
  %49 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %46, i32 0, i32 1
  %50 = extractvalue { <2 x float>, <2 x float> } %call30, 1
  store <2 x float> %50, <2 x float>* %49, align 4
  %_state31 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %51 = bitcast %struct.Trajectory* %_state31 to i8*
  %52 = bitcast %struct.Trajectory* %ref.tmp20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 16, i1 false)
  %53 = load float, float* %t3, align 4
  %54 = load float, float* %t_remain, align 4
  %sub32 = fsub float %54, %53
  store float %sub32, float* %t_remain, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then18, %if.end
  %55 = load float, float* %t_remain, align 4
  %cmp34 = fcmp ogt float %55, 0.000000e+00
  br i1 %cmp34, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end33
  %_state37 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %v38 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state37, i32 0, i32 2
  %56 = load float, float* %v38, align 4
  %_state39 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %x40 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state39, i32 0, i32 3
  %57 = load float, float* %x40, align 4
  %58 = load float, float* %t_remain, align 4
  %call41 = call { <2 x float>, <2 x float> } @_ZN17VelocitySmoothing12evaluatePolyEfffffi(%class.VelocitySmoothing* %this1, float 0.000000e+00, float 0.000000e+00, float %56, float %57, float %58, i32 0)
  %59 = bitcast %struct.Trajectory* %ref.tmp36 to { <2 x float>, <2 x float> }*
  %60 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %59, i32 0, i32 0
  %61 = extractvalue { <2 x float>, <2 x float> } %call41, 0
  store <2 x float> %61, <2 x float>* %60, align 4
  %62 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %59, i32 0, i32 1
  %63 = extractvalue { <2 x float>, <2 x float> } %call41, 1
  store <2 x float> %63, <2 x float>* %62, align 4
  %_state42 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %this1, i32 0, i32 4
  %64 = bitcast %struct.Trajectory* %_state42 to i8*
  %65 = bitcast %struct.Trajectory* %ref.tmp36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 16, i1 false)
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end33
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr float @_ZN4math3minIfEET_S1_S1_(float %a, float %b) #1 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: noinline optnone ssp uwtable
define void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory) #0 {
entry:
  %trajectory.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %trajectory, %class.VelocitySmoothing** %trajectory.addr, align 8
  %0 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr, align 8
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %0, i32 0, i32 2
  %1 = bitcast float* %_max_accel to i8*
  call void @stg_symbolic_variable(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %trajectory.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %2, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  %3 = bitcast float* %a to i8*
  call void @stg_symbolic_variable(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  ret void
}

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #3

; Function Attrs: noinline optnone ssp uwtable
define void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  %traj.addr = alloca %class.VelocitySmoothing*, align 8
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr, align 8
  %0 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %_max_accel = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %0, i32 0, i32 2
  %1 = bitcast float* %_max_accel to i8*
  %2 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %_max_accel1 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %2, i32 0, i32 2
  %3 = load float, float* %_max_accel1, align 4
  call void @stg_input_float(i8* %1, float %3)
  %4 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %_state = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %4, i32 0, i32 4
  %a = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state, i32 0, i32 1
  %5 = bitcast float* %a to i8*
  %6 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %_state2 = getelementptr inbounds %class.VelocitySmoothing, %class.VelocitySmoothing* %6, i32 0, i32 4
  %a3 = getelementptr inbounds %struct.Trajectory, %struct.Trajectory* %_state2, i32 0, i32 1
  %7 = load float, float* %a3, align 4
  call void @stg_input_float(i8* %5, float %7)
  ret void
}

declare void @stg_input_float(i8*, float) #3

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %traj) #0 {
entry:
  %traj.addr = alloca %class.VelocitySmoothing*, align 8
  %oracle = alloca i8, align 1
  store %class.VelocitySmoothing* %traj, %class.VelocitySmoothing** %traj.addr, align 8
  call void @stg_pause_recording()
  store i8 1, i8* %oracle, align 1
  %0 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %call = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %0)
  %1 = load %class.VelocitySmoothing*, %class.VelocitySmoothing** %traj.addr, align 8
  %call1 = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %1)
  %cmp = fcmp ogt float %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_resume_recording()
  %2 = load i8, i8* %oracle, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

declare void @stg_pause_recording() #3

declare void @stg_resume_recording() #3

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z23test_initial_conditionsv() #0 {
entry:
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %acceleration = alloca float, align 4
  %result = alloca i8, align 1
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store float 0.000000e+00, float* %acceleration, align 4
  %0 = bitcast float* %acceleration to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %1 = bitcast float* %acceleration to i8*
  %2 = load float, float* %acceleration, align 4
  call void @stg_input_float(i8* %1, float %2)
  %3 = load float, float* %acceleration, align 4
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory, float %3)
  %call = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  store i8 1, i8* %result, align 1
  %call1 = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory)
  %conv = fpext float %call1 to double
  %cmp = fcmp une double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory)
  %conv3 = fpext float %call2 to double
  %cmp4 = fcmp une double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i8 0, i8* %result, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %call7 = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory)
  %conv8 = fpext float %call7 to double
  %cmp9 = fcmp une double %conv8, 0.000000e+00
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i8 0, i8* %result, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  %call12 = call float @_ZNK17VelocitySmoothing14getCurrentJerkEv(%class.VelocitySmoothing* %trajectory)
  %conv13 = fpext float %call12 to double
  %cmp14 = fcmp une double %conv13, 0.000000e+00
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  store i8 0, i8* %result, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %call17 = call float @_ZNK17VelocitySmoothing8getVelSpEv(%class.VelocitySmoothing* %trajectory)
  %conv18 = fpext float %call17 to double
  %cmp19 = fcmp une double %conv18, 0.000000e+00
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i8 0, i8* %result, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
  %call22 = call float @_ZNK17VelocitySmoothing18getCurrentVelocityEv(%class.VelocitySmoothing* %trajectory)
  %conv23 = fpext float %call22 to double
  %cmp24 = fcmp une double %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i8 0, i8* %result, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21
  %call27 = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory)
  %conv28 = fpext float %call27 to double
  %cmp29 = fcmp une double %conv28, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i8 0, i8* %result, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %call32 = call float @_ZNK17VelocitySmoothing12getTotalTimeEv(%class.VelocitySmoothing* %trajectory)
  %call33 = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory)
  %call34 = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory)
  %add = fadd float %call33, %call34
  %call35 = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory)
  %add36 = fadd float %add, %call35
  %cmp37 = fcmp une float %call32, %add36
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end31
  store i8 0, i8* %result, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end31
  call void @stg_end_test()
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 1
}

declare void @stg_begin_test() #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_getter_setterv() #0 {
entry:
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %maxAcceleration = alloca float, align 4
  %oracle = alloca i8, align 1
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store float 6.000000e+00, float* %maxAcceleration, align 4
  %0 = bitcast float* %maxAcceleration to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %1 = bitcast float* %maxAcceleration to i8*
  %2 = load float, float* %maxAcceleration, align 4
  call void @stg_input_float(i8* %1, float %2)
  %3 = load float, float* %maxAcceleration, align 4
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory, float %3)
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory, float 0x404B9999A0000000)
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory, float 6.000000e+00)
  call void @_ZN17VelocitySmoothing18setCurrentPositionEf(%class.VelocitySmoothing* %trajectory, float 1.000000e+00)
  store i8 1, i8* %oracle, align 1
  %call = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory)
  %cmp = fcmp une float %call, 0x404B9999A0000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %oracle, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory)
  %cmp2 = fcmp une float %call1, 6.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %oracle, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call float @_ZNK17VelocitySmoothing9getMaxVelEv(%class.VelocitySmoothing* %trajectory)
  %cmp6 = fcmp une float %call5, 6.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i8 0, i8* %oracle, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %call9 = call float @_ZNK17VelocitySmoothing18getCurrentPositionEv(%class.VelocitySmoothing* %trajectory)
  %cmp10 = fcmp une float %call9, 1.000000e+00
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i8 0, i8* %oracle, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  call void @stg_end_test()
  %4 = load i8, i8* %oracle, align 1
  %tobool = trunc i8 %4 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z17test_T1_edge_casev() #0 {
entry:
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %T1 = alloca float, align 4
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  call void @_Z24make_trajectory_symbolicP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  call void @stg_begin_test()
  call void @_Z22stg_initial_trajectoryP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  %call = call float @_ZN17VelocitySmoothing9computeT1Effff(%class.VelocitySmoothing* %trajectory, float 0x3FF19999A0000000, float 0x3FF3333340000000, float -1.000000e+00, float 5.000000e+00)
  store float %call, float* %T1, align 4
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z14test_edge_casev() #0 {
entry:
  %retval = alloca i32, align 4
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %acceleration = alloca float, align 4
  %maxAcceleration = alloca float, align 4
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store float 0x3E80000000000000, float* %acceleration, align 4
  %call = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory)
  store float %call, float* %maxAcceleration, align 4
  %0 = bitcast float* %acceleration to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %1 = bitcast float* %maxAcceleration to i8*
  call void @stg_symbolic_variable(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %2 = bitcast float* %acceleration to i8*
  %3 = load float, float* %acceleration, align 4
  call void @stg_input_float(i8* %2, float %3)
  %4 = bitcast float* %maxAcceleration to i8*
  %5 = load float, float* %maxAcceleration, align 4
  call void @stg_input_float(i8* %4, float %5)
  %6 = load float, float* %maxAcceleration, align 4
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory, float %6)
  %7 = load float, float* %acceleration, align 4
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory, float %7)
  %call1 = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory, float 0x3E80000000000000)
  %call2 = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  %call3 = call float @_ZNK17VelocitySmoothing5getT1Ev(%class.VelocitySmoothing* %trajectory)
  %cmp = fcmp une float %call3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call float @_ZNK17VelocitySmoothing5getT2Ev(%class.VelocitySmoothing* %trajectory)
  %cmp5 = fcmp une float %call4, 0.000000e+00
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %call8 = call float @_ZNK17VelocitySmoothing5getT3Ev(%class.VelocitySmoothing* %trajectory)
  %cmp9 = fcmp une float %call8, 0.000000e+00
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then6, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z10test_velspf(float %velsp) #0 {
entry:
  %velsp.addr = alloca float, align 4
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %acceleration = alloca float, align 4
  %maxAcceleration = alloca float, align 4
  %dt = alloca float, align 4
  %nb_steps = alloca i32, align 4
  %i = alloca i32, align 4
  store float %velsp, float* %velsp.addr, align 4
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store float 0.000000e+00, float* %acceleration, align 4
  store float 6.000000e+00, float* %maxAcceleration, align 4
  %0 = bitcast float* %acceleration to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory, float 0x404B9999A0000000)
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory, float 6.000000e+00)
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory, float 0.000000e+00)
  %1 = load float, float* %maxAcceleration, align 4
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory, float %1)
  %2 = load float, float* %acceleration, align 4
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory, float %2)
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 1.000000e+00)
  call void @stg_begin_test()
  %3 = bitcast float* %acceleration to i8*
  %4 = load float, float* %acceleration, align 4
  call void @stg_input_float(i8* %3, float %4)
  %5 = load float, float* %velsp.addr, align 4
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory, float %5)
  %call = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  store float 0x3FB99999A0000000, float* %dt, align 4
  store i32 3, i32* %nb_steps, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nb_steps, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZN17VelocitySmoothing10updateTrajEff(%class.VelocitySmoothing* %trajectory, float 0x3FB99999A0000000, float 1.000000e+00)
  call void @stg_begin_test()
  %8 = bitcast float* %acceleration to i8*
  %call1 = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory)
  call void @stg_input_float(i8* %8, float %call1)
  %9 = load float, float* %maxAcceleration, align 4
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory, float %9)
  %10 = load float, float* %acceleration, align 4
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory, float %10)
  %11 = load float, float* %velsp.addr, align 4
  call void @_ZN17VelocitySmoothing15updateDurationsEf(%class.VelocitySmoothing* %trajectory, float %11)
  %call2 = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z18test_t1_saturationf(float %t1) #0 {
entry:
  %t1.addr = alloca float, align 4
  %trajectory = alloca %class.VelocitySmoothing, align 4
  %acceleration = alloca float, align 4
  %maxAcceleration = alloca float, align 4
  store float %t1, float* %t1.addr, align 4
  call void @_ZN17VelocitySmoothingC1Efff(%class.VelocitySmoothing* %trajectory, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store float 0.000000e+00, float* %acceleration, align 4
  store float 6.000000e+00, float* %maxAcceleration, align 4
  %0 = bitcast float* %acceleration to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  %1 = bitcast float* %maxAcceleration to i8*
  call void @stg_symbolic_variable(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.8, i32 0, i32 0), double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %2 = bitcast float* %acceleration to i8*
  %3 = load float, float* %acceleration, align 4
  call void @stg_input_float(i8* %2, float %3)
  %4 = bitcast float* %maxAcceleration to i8*
  %5 = load float, float* %maxAcceleration, align 4
  call void @stg_input_float(i8* %4, float %5)
  call void @_ZN17VelocitySmoothing10setMaxJerkEf(%class.VelocitySmoothing* %trajectory, float 0x404B9999A0000000)
  call void @_ZN17VelocitySmoothing9setMaxVelEf(%class.VelocitySmoothing* %trajectory, float 6.000000e+00)
  call void @_ZN17VelocitySmoothing18setCurrentVelocityEf(%class.VelocitySmoothing* %trajectory, float 0.000000e+00)
  %6 = load float, float* %acceleration, align 4
  call void @_ZN17VelocitySmoothing22setCurrentAccelerationEf(%class.VelocitySmoothing* %trajectory, float %6)
  %7 = load float, float* %maxAcceleration, align 4
  call void @_ZN17VelocitySmoothing11setMaxAccelEf(%class.VelocitySmoothing* %trajectory, float %7)
  %call = call float @_ZNK17VelocitySmoothing22getCurrentAccelerationEv(%class.VelocitySmoothing* %trajectory)
  %call1 = call float @_ZNK17VelocitySmoothing10getMaxJerkEv(%class.VelocitySmoothing* %trajectory)
  %8 = load float, float* %t1.addr, align 4
  %call2 = call float @_ZNK17VelocitySmoothing11getMaxAccelEv(%class.VelocitySmoothing* %trajectory)
  %call3 = call float @_ZN17VelocitySmoothing18saturateT1ForAccelEffff(%class.VelocitySmoothing* %trajectory, float %call, float %call1, float %8, float %call2)
  %call4 = call zeroext i1 @_Z27check_kinematic_constraintsP17VelocitySmoothing(%class.VelocitySmoothing* %trajectory)
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  ret i32 1
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #5 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @_Z10test_velspf(float -1.000000e+00)
  %call1 = call i32 @_Z10test_velspf(float 0.000000e+00)
  %call2 = call i32 @_Z10test_velspf(float 1.000000e+00)
  ret i32 0
}

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
