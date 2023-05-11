function dm_dt = dm_dt_test(t,m)

%variabler
m_water = m;

h_top = h(T_water,betag_v2,2*r_inner,Pr_air);
k_c = h_top * Sc_air(T_)



%derivator

dm_dt = k_c*(c_surf-c_bulk);

