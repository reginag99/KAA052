clear,clc
T_surf0 = 273.15+60;
T_water0 = 273.15+78.6;
m0 = 125.81*10^-3;
r_outer = 70*10^-3;
r_inner = 63*10^-3;

T0 = [T_surf0, T_water0,m0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = linspace(0,100);


[t,T] = ode45(@dT_dt_RG,t_span,T0);
plot(t,T)
legend('Tsurf','Twater')%('Tsurf','Twater','dTdr')


