function out = dT_dr(T_surf,T_water,r_outer,r_inner);
out = (T_surf-T_water)/(r_outer-r_inner);

end