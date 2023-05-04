clear;clc;clf;
T_water0 = 273.15+78.6;
m0 = 125.81*10^-3;
r_outer = 70*10^-3;
r_inner = 63*10^-3;

T0 = [T_water0,m0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = [0:30:2250];

S=readtable("small_beaker_1.txt");

%T-plots
[t,T] = ode45(@dT_dt_G,t_span,T0);
subplot(2,1,1)
plot(t,T(:,1)); hold on;
a=S{:,2}+273.15;
plot(t,a);
legend('Model Twater (K)','Exp Twater (K)'); 

%mass plots

subplot(2,1,2)
plot(t,T(:,2)); hold on;
legend('Mass')

m=S{:,3}*10^-3;
plot(t,m); 
legend('Model mass(g)','Exp mass(g)');

%ser bra ut, men hon skulle rekommendera att vi lägger till
%värmeöverföring från avdunstningen
