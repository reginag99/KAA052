function out = h(T_water_glas, betag_v2, L, Pr_air)%D = diameter of the beaker
%calculate heat transfer coefficient. Referenses are to the book
%"fundamentals of momentum, heat and masstransfer"

T_air = 273.15+25;
deltaT = T_water - T_air;
Gr = betag_v2 *L^3*deltaT;%s.306
Ra = Gr * Pr_air; % eq 19-3

if (10^5<Ra) && (Ra<2*10^7) %s.302
    C = 0.54;
    x = 1/4;
elseif (2*10^7<Ra) && (Ra<3*10^(10))
    C = 0.14;
    x = 1/3;
end

out = C*Ra^x*k_air/L;

end