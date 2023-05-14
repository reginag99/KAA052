function out = dTwater_dt(k_glas,r_outer,r_inner,L,beta)
A_glas = r_outer.*2*pi*L;
h_surf = h(T_surf,betag_v2,L,Pr_air)
dTwater_dt = (-dTsurf_dt(k_glas,A_glas)+h_surf.*A_surf(T_surf-T_air) + h_top.*A_top.*(T_water-T_air)+sigma*eps*A_surf.*(T_surf - T_air))/(rho_water.*cp_water);

end