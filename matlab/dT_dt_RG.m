function dT_dt = dT_dt_RG(t,T)
%Variabler
T_surf = T(1);
T_water = T(2);
m = T(3);
%dT_dr = T(3);


%def av konstanter
k_glas = 0.9;
r_outer = 70*10^-3;
r_inner = 63*10^-3;
betag_v2 = 1.327*10^8;
Pr_air = 0.708;
sigma = 5.67*10^-8;
eps = 0.95;
D_AB = 1; %ändraaaaaaaa plz
R = 8.3145;
M = (1.0079*2 + 16)*10^-3;
T_air = 300;

L_water=125.81*10^-3/(rho_water(273.15+78.6)*2*r_inner*pi);
A_surf = r_outer*2*pi*L_water;
A_top = r_inner^2*pi;
h_surf = h(T_surf,betag_v2,L_water,Pr_air);
h_top = h(T_water,betag_v2,2*r_inner,Pr_air);
k_c = h_top*(Sc_air((T_water + T_air)/2, D_AB)*Pr_air)^(-2/3)/(cp_water(T_water)*rho_water((T_water+T_air)/2));
c_surf = p_water(T_air)/(R*T_air);
c_bulk = rho_water(T_water)/M;

%derivator
dTsurf_dt = k_glas*2*pi*L_water*(T_surf-T_water)/log(r_outer/r_inner); %-k_glas*A_surf*dT_dr;
dTwater_dt = (h_surf*A_surf*(T_surf-T_air) + h_top*A_top*(T_water-T_air)+sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L_water);  %(-dTsurf_dt+h_surf*A_surf*(T_surf-T_air) + h_top*A_top*(T_water-T_air)+sigma*eps*A_surf*(T_surf^4 - T_air^4))/(rho_water(T_water)*cp_water(T_water)*r_inner*2*pi*L);
dm_dt = k_c*(c_surf-c_bulk);
%dT_dr = (T_surf-T_water)/(r_outer-r_inner);

dT_dt = [dTsurf_dt;dTwater_dt;dm_dt];%[dTsurf_dt;dTwater_dt; dT_dr];
end