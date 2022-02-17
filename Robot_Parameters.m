% robotParameters
% Run this file to load the physical and control parameters                                         

%% treadmill parameters
YBT_Par = struct;
YBT_Par.BeltIn = struct;
YBT_Par.BeltIn.length = 3;
YBT_Par.BeltIn.width = 0.4;
YBT_Par.BeltIn.height = 0.2;
YBT_Par.BeltIn.depth = 0.1;
YBT_Par.BeltIn.spd = 0.1;
YBT_Par.BeltIn.dist_from_robot = 0.305;
YBT_Par.BeltIn.offset = [0 1.805 0.15000000000000002];
YBT_Par.BeltIn.Control = struct;
YBT_Par.BeltIn.Control.Delay_on = 0.2;
YBT_Par.BeltIn.Roller = struct;
YBT_Par.BeltIn.Roller.color = [1 1 1];
YBT_Par.BeltOut = struct;
YBT_Par.BeltOut.length = 3;
YBT_Par.BeltOut.width = 0.2;
YBT_Par.BeltOut.height = 0.2;
YBT_Par.BeltOut.depth = 0.1;
YBT_Par.BeltOut.spd = 0.1;
YBT_Par.BeltOut.dist_from_robot = 0.305;
YBT_Par.BeltOut.offset = [0 1.805 0.15000000000000002];
YBT_Par.BeltOut.Control = struct;
YBT_Par.BeltOut.Control.Delay_on = 0.2;
YBT_Par.BeltOut.Roller = struct;
YBT_Par.BeltOut.Roller.color = [1 1 1];
YBT_Par.Cube = struct;
YBT_Par.Cube.d = 0.06;
YBT_Par.Cube.Con = struct;
YBT_Par.Cube.Con.rSph = 0.003;



%% PID gains for position tracking
hip_servo_kd = 30;
hip_servo_ki = 0;
hip_servo_kp = 300;

ankle_servo_kd = 4;
ankle_servo_ki = 0;
ankle_servo_kp = 70;

knee_servo_kd = 30;
knee_servo_ki = 0;
knee_servo_kp = 150;

torso_servo_kp = 1000;
torso_servo_kd = 200;
torso_servo_ki = 0;




%% contact parameters
b = 2000;

contact_damping = 100;
contact_damping = 50;

contact_point_radius = 0.005;

contact_stiffness = 90311;

k_spring = 900;

kf = 0.6;

ks = 7;

linear_contact_flag = 0;

low_rate = -Inf;

mu_k = 0.5;

mu_s = 0.8;

mu_vth = 0.1;

pen_exp = 1.5;

pen_full_damp_F_pla2pla = 0;




%% model physical parameters
ankle_to_midLow = 19;

foot_CoM = [-2 0 0];

foot_density = 2000;

foot_dim = [15 7 3];

foot_mass = 1;

foot_offset = [-4 0 0];

density = 1000;

torso_com = [0 0 0];

torso_dim = [8 30 8];

torso_mass = 27.17;

torso_offset_x = -0.5;

torso_offset_z = -2;

torso_to_hip = 11;

upp_rate = Inf;

upper_leg_CM_offset = 2.55;

upper_leg_inertia = [0.0708 0.0708 0.0001];

upper_leg_length = 38;

upper_leg_mass = 4.7;

upper_leg_radius = 3.5;

knee_to_midUpp = 19;

lower_leg_CM_offset = 2.55;

lower_leg_inertia = [0.0717 0.0717 0.0001];

lower_leg_length = 38;

lower_leg_mass = 2.87;

lower_leg_radius = 3.1;

max_torque = 20;

max_torque_ank = 45;

max_torque_hip = 25;

max_torque_kn = 30;

midLow_to_knee = 19;

midUpp_to_hip = 19;

height_plane = 0.1;

plane_x = 3;

plane_y = 0.3;




%% motor parameters

gear_ratio = 50;

motor_constant = 0.01;

motor_damping = 0;

motor_inductance = 1.2E-6;

motor_inertia = 0;

motor_resistance = 0.1;



%% joints and reference viscoelastic coefficients

joint_damping = 0;

joint_stiffness = 0;

world_damping = 0.25;

world_rot_damping = 0.25;



%% motion input: time constant and derivative coefficient
motion_time_constant = 0.01;

deriv_filter_coeff = 50;

% sca = 1;











