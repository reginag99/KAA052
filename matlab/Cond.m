function fun = Cond(T_surf,T_water,T_air,L,betag_v2)

k_glas = 0.78;
betag_v2 = 1.327*10^8;
%Pr_air = pr_air(T_air,T_water);
sigma = 5.67*10^-8;
eps = 0.95;
r_outer = 70*10^-3;
r_inner = 63*10^-3;

A_surf = r_outer*2*pi*L;
A_top = r_inner^2*pi;



fun=(-k_glas*2*pi*L*(T_surf-T_water)/log(r_outer/r_inner))-(h_cyl(T_surf,T_air,betag_v2,L,r_outer)*A_surf*(T_surf-T_air))-sigma*eps*A_surf*(T_surf^4 - T_air^4);

end