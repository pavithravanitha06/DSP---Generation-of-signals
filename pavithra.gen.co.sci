clc;
clear;
close all;
t = -5:0.01:5;
u = t >=0;
r = t .* (t >= 0);
s = sin(2*%pi*t);
e = exp(t);
imp = (t==0);
figure;
subplot(3,2,1);
plot(t,u,'LineWidth',2);
title('Unit Step Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,2,2);
plot(t,r,'LineWidth',2);
title('Ramp Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,2,3);
plot(t,s,'LineWidth',2);
title('Sine Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,2,5);
plot(t,e,'LineWidth',2);
title('Exponential Signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,2,6);
plot(t,imp,'LineWidth',2);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude');
