function dT_dt = dT_dt_RG(t,T)
%Variabler
T_water = T;

%def av konstanter
k_glas = 0.78;
L=0.5;
betag_v2 = 1.327*10^8;
Pr_air = 0.708;
sigma = 5.67*10^-8;
eps = 0.95;
r_outer = 70*10^-3;
r_inner = 63*10^-3;
T_air = 300;

A_surf = r_outer*2*pi*L;
A_top = r_inner^2*pi;

T0=[T_water-5];%initial guess for T_surf
options = optimoptions('fsolve','Display','none');
T_surf=fsolve(@(T_surf)Cond(T_surf,T_water),T0,options);


h_surf = h(T_surf,betag_v2,L,Pr_air);
h_top = h(T_water,betag_v2,2*r_inner,Pr_air);

%derivator
dTwater_dt =(-h_surf*A_surf*(T_surf-T_air) -h_top*A_top*(T_water-T_air) -sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L);  %(-dTsurf_dt+h_surf*A_surf*(T_surf-T_air) + h_top*A_top*(T_water-T_air)+sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L);
dT_dt = [dTwater_dt];
end