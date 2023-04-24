function out = kc(T,Pr)
%mass transfer coefficient for convective mass transfer between water and
%air 
%cp, rho will be at Twater+Tair/2

out = (h * (Sc_air/Pr)^(-2/3)) / (cp_air * rho_air)