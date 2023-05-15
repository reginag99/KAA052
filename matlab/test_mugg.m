clear; clc; clf; close  all
%S=readtable("small_beaker_3.txt");
T_mugg0 = 65+273.15;
%m0 = S{1,3}*10^-3;
r_outer = 70*10^-3;
r_inner = 65*10^-3;


T0 = [T_mugg0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = [0 5000]
%t_span = [0:30:length(S{1})];



%T-plots
[t,T] = ode45(@dT_dt_mugg,t_span,T0);

plot(t,(T(:,1)-273.15)); hold on;
%a=S{:,2}+273.15;
%plot(t,a);
legend('Model Twater (K)','Exp Twater (K)'); 
temp=T(:,1);
%mass=T(:,2);
%mass plots