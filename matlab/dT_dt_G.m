function dT_dt = dT_dt_G(t,T)
%Variabler
T_water = T;
%m = T(2);

%def av konstanter
k_glas = 0.78;
L=95*10^-3;
betag_v2 = 1.327*10^8;

sigma = 5.67*10^-8;
eps = 0.95;
r_outer = 70*10^-3;
r_inner = 63*10^-3;
T_air = 300;
D_AB = 1; %ändraaaaaaaa plz
R = 8.3145;
M = (1.0079*2 + 16)*10^-3;


A_surf = r_outer*2*pi*L;
A_top = r_inner^2*pi;

L_water=125.81*10^-3/(rho_water(273.15+78.6)*2*r_inner*pi);

T0=[T_water-5];%initial guess for T_surf
options = optimoptions('fsolve','Display','none');
T_surf=fsolve(@(T_surf)Cond(T_surf,T_water,T_air,L),T0,options);
k_c = h_top(T_water,T_air,betag_v2,r_inner)*(Sc_air((T_water + T_air)/2, D_AB)*pr_air(T_air,T_water))^(-2/3)/(cp_water(T_water)*rho_water((T_water+T_air)/2));
c_surf = p_water(T_air)/(R*T_air);
c_bulk = rho_water(T_water)/M;


%derivator
dTwater_dt =(-h_cyl(T_surf,T_air,betag_v2,L,r_outer)*A_surf*(T_surf-T_air) -h_top(T_water,T_air,betag_v2,r_inner)*A_top*(T_water-T_air) -sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L_water);  %(-dTsurf_dt+h_surf*A_surf*(T_surf-T_air) + h_top*A_top*(T_water-T_air)+sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L);
%dm_dt = k_c*(c_surf-c_bulk);

dT_dt = [dTwater_dt];
end