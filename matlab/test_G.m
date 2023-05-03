clear,clc
%T_surf0 = 273.15+65;
T_water0 = 273.15+70;
m0 = 125.81*10^-3;
r_outer = 70*10^-3;
r_inner = 63*10^-3;

T0 = [T_water0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = [0 2000];


[t,T] = ode45(@dT_dt_G,t_span,T0);
plot(t,T)
legend('Twater')%('Tsurf','Twater','dTdr')


