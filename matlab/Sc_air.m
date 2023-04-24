function out = Sc_air(T)
%function that solves for Schmidt number 
%DAB = mass diffusion rate
%T=Twater/Tair/2
out = my_air/(rho_air * DAB)