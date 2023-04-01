%%
clc
clear

change_simulink_stupid_cache_directory();

%% paramsy
block_mass      = 1; %   [ kg ]
b_damp_const    = 0.6;
k_spring_const  = 2;

%% symulacja
% out = sim('a1_1_model.slx');
% 
% tout        = out.tout;
% input       = out.simout.signals.values(:, 1);
% response    = out.simout.signals.values(:, 2);

%% Zmiana tłumienia b
fig = figure(1);
% fig.MenuBar = "none";
% fig.WindowStyle = "docked";
ax = subplot(1, 1, 1);
hold(ax, 'on');

for b=0.1:0.2:1.1
    b_damp_const = b;
    out = sim('a1_1_model.slx');
    
    tout        = out.tout;
    input       = out.simout.signals.values(:, 1);
    response    = out.simout.signals.values(:, 2);

    sp = plot(tout, response);
    sp.DisplayName = sprintf("b = %2.2f", b);
    sp.LineWidth = 1.5;
    sp.Color(4) = 0.5;
end
plot(tout, input, 'DisplayName', 'Input', 'LineStyle', '--');
grid(ax, 'on');
legend(ax);








