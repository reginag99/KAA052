function fun = Cond(T_surf,T)

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

h_surf = h(T_surf,betag_v2,L,Pr_air);
h_top = h(T,betag_v2,2*r_inner,Pr_air);

fun=(-k_glas*2*pi*L*(T_surf-T)/log(r_outer/r_inner))-(h_surf*A_surf*(T_surf-T_air))-sigma*eps*A_surf*(T_surf^4 - T_air^4);

end