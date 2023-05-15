clear; clc; clf; close  all
T_mugg0 = 90+273.15;


r_outer = 41*10^-3;
r_inner = 35*10^-3;


T0 = [T_mugg0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = [0 10000];


%T-plots
[t,T] = ode45(@dT_dt_mugg,t_span,T0);

plot(t/3600,(T(:,1)-273.15)); hold on;
yline(50,'r-');

legend('Model Tcup (^oC)'); ylabel('Temperature of cup (^oC)'); xlabel('Time (h)')

% Can we select any start temperature of the coffee?

% How should we present plots of e.g. convection, radiation etc? I've tried
% saving values for all phenomena, but it doesn't save for each time step,
% think it has something to do with the ODE. It is required? 

% Sensitity analysis - we have plotted for different radiuses, heights and
% air temperatures in different intervals to evaluate whether a large
% radius is better etc. Should we analyse those plots or what is required? 