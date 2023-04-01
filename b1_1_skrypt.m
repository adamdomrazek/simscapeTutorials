%
%   PID + model simscape 
%

%%
clc
clear

change_simulink_stupid_cache_directory();

%% paramsy
block_mass      = 1; %   [ kg ]
b_damp_const    = 0.6;
k_spring_const  = 2;

%% pid
Kp = 100;
Ki = 100;
Kd = 20;
Dfilter_cooef = 100;

%% symulacja
out = sim('a1_1_model.slx');









