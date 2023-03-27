%% Plot of temperature at h=H/4 for different radius
r0 = [79.3 78.0 76.7 74.9 73.80];
t0=[1 2 3 4 5];
r2=[72.6 71.8 70.7 69.9 68.6];
t2=[6 7 8 9 10];
rr=[67.6 66.9 65.8 65.0 64.4];
tr=[11 12 13 14 15];
%subplot(2,2,1);
plot(t0,r0,'r'); hold on;
plot(t2,r2,'g'); hold on;
plot(tr,rr,'b'); hold on;
legend('r=0','r=R/2','r=R');
xlabel('Time (min)');
ylabel('Temperature (C)');
hold off;
title('Plot of temperature at h=H/4 for different radius');
%% Plot of temperature at h=H/2 for different radius
clear;clc;
r0 = [63.9 63.4 63.0 62.4 61.9];
t0=[16 17 18 19 20];
r2=[ 61.5 61.0 60.5 60.3 59.6];
t2=[ 21 22 23 24 25];
rr=[ 59.1 58.5 57.8 57.3 56.5];
tr= [26 27 28 29 30];
%subplot(2,2,2);
plot(t0,r0,'r'); hold on;
plot(t2,r2,'g'); hold on;
plot(tr,rr,'b'); hold on;
legend('r=0','r=R/2','r=R');
xlabel('Time (min)');
ylabel('Temperature (C)');
hold off;
title('Plot of temperature at h=H/2 for different radius');
%% Plot of temperature at h=H for different radius
clear;clc;
r0 = [56.1 55.4 55.0 54.5 53.9];
t0=[31 32 33 34 35];
r2=[52.5 52.2 52.0 51.6 51.2];
t2=[36 37 38 39 40];
rr=[50.7 50.4 49.3 49.1 48.6];
tr=[41 42 43 44 45];
%subplot(2,2,3);
plot(t0,r0,'r'); hold on;
plot(t2,r2,'g'); hold on;
plot(tr,rr,'b'); hold on;
legend('r=0','r=R/2','r=R');
xlabel('Time (min)');
ylabel('Temperature (C)');
hold off;
title('Plot of temperature at h=H for different radius');