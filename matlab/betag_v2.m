function out = betag_v2(T)
x = [250,260,280,300,320,340,360,400];
y = [4.638,2.573, 1.815, 1.327, 0.9942, 0.7502, 0.5828, 0.3656]*10^8;
plot(y,x)
p = polyfit(x,y,4)
out = p(1) + p(2)*T + p(3)*T^2 + p(4)*T^3+p(5)*T^4;
end



%obs ej klar! 