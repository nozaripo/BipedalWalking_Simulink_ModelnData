% Script_Data
% 
% This file is used to generate variables and objects into the workspace
% that are going to be used by the simulation
% 
% Run this code before running the simulation

%% Import the data

% Start by importing your own data for "Time" and "Traj";
%       "Time": nx1 Vector of Time in long format; "n":number of time points
%       "Traj": nx6 matrix of joint angles in degrees;
%
% For your data, set: 
%       Traj = [ [Left_Hip], [Left_Knee], [Left_Ankle], ...
%               [Right_Hip], [Right_Knee], [Right_Ankle] ]
% 
% Angle Conventions:
%       Hip Flexion +
%       Knee Flexion +
%       Ankle Dorsiflexion +


% Input your data here:
% Time = 
% Traj = 

% Here I use my exemplary data;
[Time, Traj] = Example_Trajectories;
% [Time, Traj] = Example_Trajectories1;



%% Transform the data for use in the model
[joint_angles, init, init_vel, theta0, init_height, ...
    Vx_init, Vz_init] = Joint_Angle_Transform(Time, Traj);


%% Treadmill belt speeds 
% average belt speed:    V_treadmill = ( V_right + V_left ) / 2
% belt speed difference: split_belt  =   V_right - V_left
V_treadmill = 0.90;         % average belt speed
split_belt = 0;             % belt speed difference


%% Actuator type; 
Control_Method = 'Perfect_Position';    % Perfect Position Control
% Control_Method = 'Motor_Torque';      % PID-tracking Motor Control

switch Control_Method
    case 'Perfect_Position'
        actuatorType = 1;
    case 'Motor_Torque'
        actuatorType = 3;
end



%% Optional chunk to call the outputs of the simulations

% mdlName = 'Biped_Model.slx'  % model name

% simulation_output will be a structure containing all the outputs of the simulation
% simulation_output = sim(mdlName,'SrcWorkspace','current');







%% Secondary functions; You can modify parts of Joint_Angle_Transform

function [joint_angles, init, init_vel, theta0, init_height, Vx_init, Vz_init] = Joint_Angle_Transform(Time, Traj)

% change deg to rad
joint_angles = (pi/180)*Traj;

% initial joint angles and angular velocities
init = -joint_angles(1,:);
vel = diff(joint_angles)./diff(Time);
init_vel = -vel(1,:);

% some changes to format the trajectories compatible with model config
joint_angles(:,[1,3,4,6])= -joint_angles(:,[1,3,4,6]);
% uncomment the line below to avoid hyper-extension
joint_angles(:,[2,5]) =  max(joint_angles(:,[2,5]),0);
joint_angles = joint_angles(:,end:-1:1);

% initial torso pitch and COM height
theta0 = (init(1)+init(3)); % Torso's initial pitch; set to straight up for now;
% theta0 = 0;
init_height = 38*2*cos(init(3))+3.0; % initial CoM height; set for the foot to be touching the walkway
% init_height = 38*(cos(init(1)) + cos(init(1)-init(2))) + 3.0; % initial CoM height; set for the foot to be touching the walkway

% initial translational velocities of the torso CoM
Vx_init = 0;
Vz_init = 0;

end



function [Time, Traj] = Example_Trajectories

tt1 = 16700;
di = 209;
tt2 = tt1 + di;
shift0 = ceil(di/4);

St = load('Exemplary_Data.mat');
freq = 1;
L_Hip_Angle = lowpass(St.Baseline.L_Hip_Angle(tt1:tt2,1),freq,100);
L_Hip_Angle = L_Hip_Angle - L_Hip_Angle(1,1);
L_Knee_Angle = lowpass(St.Baseline.L_Knee_Angle(tt1:tt2,1),freq,100);
L_Ankle_Angle = lowpass(St.Baseline.L_Ankle_Angle(tt1:tt2,1),freq,100);
R_Hip_Angle = circshift(L_Hip_Angle, shift0);
R_Knee_Angle = circshift(L_Knee_Angle, shift0);
R_Ankle_Angle = circshift(L_Ankle_Angle, shift0);

Traj = [L_Hip_Angle L_Knee_Angle L_Ankle_Angle R_Hip_Angle R_Knee_Angle R_Ankle_Angle];

Time = (0:.01:.01*209)';

end

function [Time, Traj] = Example_Trajectories1

tt1 = 16700;
di = 209;
tt2 = tt1 + di;
shift0 = ceil(di/4);

St = load('Exemplary_Data.mat');
freq = 1;
L_Hip_Angle = lowpass(St.Baseline.L_Hip_Angle(tt1:tt2,1),freq,100);
L_Hip_Angle = L_Hip_Angle;
L_Knee_Angle = lowpass(St.Baseline.L_Knee_Angle(tt1:tt2,1),freq,100);
L_Ankle_Angle = lowpass(St.Baseline.L_Ankle_Angle(tt1:tt2,1),freq,100);
R_Hip_Angle = circshift(L_Hip_Angle, shift0);
R_Knee_Angle = circshift(L_Knee_Angle, shift0);
R_Ankle_Angle = circshift(L_Ankle_Angle, shift0);

Traj = [L_Hip_Angle L_Knee_Angle L_Ankle_Angle R_Hip_Angle R_Knee_Angle R_Ankle_Angle];

Time = (0:.01:.01*209)';

end