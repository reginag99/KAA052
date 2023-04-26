function out = dTsurf_dt(k_glas, A_glas)
dTsurf_dt = -k_glas*A_glas*dT_dr;
out = [dTsurf_dt]';
end
