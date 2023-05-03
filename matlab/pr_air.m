function out = pr_air(T_air, T_water)
T = (T_air + T_water)/2;
pr_air = my_air(T)*cp_air(T)/k_air(T);
end