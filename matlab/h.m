function out = h(T_water, betag_v2, L, Pr_air)%D = diameter of the beaker
T_air = 273.15+25;
deltaT = T_water - T_air;
Gr = betag_v2 *L^3*deltaT;
Ra = Gr * Pr_air;

if (10^5<Ra) && (Ra<2*10^7)
    C = 0.54;
    x = 1/4;
elseif (2*10^7<Ra) && (Ra<3*10^(10))
    C = 0.14;
    x = 1/3;
end

out = C*Ra^x*k_air/L;

end