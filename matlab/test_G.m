clear;clc;clf;
T_water0 = 273.15+70;
m0 = 125.81*10^-3;
r_outer = 70*10^-3;
r_inner = 63*10^-3;

T0 = [T_water0,m0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = [0:30:2250];


[t,T] = ode45(@dT_dt_G,t_span,T0);
subplot(2,2,1)
plot(t,T(:,1))
legend('Twater'); hold on;
S=readtable("small_beaker_1.txt")
plot(t,S(:,2)+273,15);
legend('T_water_exp'); hold on;



subplot(2,2,2)
plot(t,T(:,2))
legend('Mass')


