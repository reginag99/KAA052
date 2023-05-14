clear; clc; clf; close  all
S=readtable("small_beaker_3.txt");
T_water0 = S{1,2}+273.15;
m0 = S{1,3}*10^-3;


T0 = [T_water0,m0];%[T_surf0, T_water0,(T_surf0-T_water0)/(r_outer-r_inner)];%T_surf, T_water
t_span = S{:,1};
selctiontype = ['T_air', 'r_inner', 'r_outer', 'L'];
Select = 1;
I = 5;


figure("Name", "Variatin of constant  " + selctiontype(Select))
subplot(2,1,1)
xlabel('Time, [s]','FontSize',12,'FontWeight','bold')
ylabel('Temperature, [K]','FontSize',12,'FontWeight','bold')
hold on
subplot(2,1,2)
xlabel('Time, [s]','FontSize',12,'FontWeight','bold')
ylabel('Mass, [g]','FontSize',12,'FontWeight','bold')
hold on

Green_light = [40,180,140];
Green_dark = [15,140,100];

Orange_light = [250,110,15];
Orange_dark = [200,80,0];






for iter = 1:I
    Green_grad = @(iter) Green_light + (Green_dark - Green_light)/I*iter;
    Orange_grad = @(iter) Orange_light + (Orange_dark - Orange_light)/I*iter;

    It_opt = [Select,I,iter];
    [t,T] = ode45(@(t,T) dT_dt_RG2(t,T,It_opt),t_span,T0);
    %T-plots
    subplot(2,1,1)
    plot(t,T(:,1),'Color',Green_grad(iter)); hold on;
    title('Variation analysis, heat transfer')
        
    %mass plots
    subplot(2,1,2)
    plot(t,T(:,2),'Color',Orange_grad(iter)); hold on;
    legend('Mass')
    title('Variation analysis, mass transfer')
end
