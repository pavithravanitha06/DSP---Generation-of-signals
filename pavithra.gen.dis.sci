// Generation of Discrete-Time Signals without stem()
clc;
clear;
clf;
// Define range
n = -10:10;

// 1. Unit Impulse Signal
impulse = zeros(1, length(n));
impulse(n == 0) = 1;

// 2. Unit Step Signal
step = zeros(1, length(n));
step(n >= 0) = 1;

// 3. Unit Ramp Signal
ramp = zeros(1, length(n));
ramp(n >= 0) = n(n >= 0);

// 4. Exponential Signal
expo = zeros(1, length(n));
expo(n >= 0) = (0.8).^n(n >= 0);

// 5. Sinusoidal Signal
sine = sin(0.2 * %pi * n);

// Plot all signals using plot2d3
subplot(3,2,1);
plot2d3(n, impulse);
title("Unit Impulse Signal");
xlabel("n"); ylabel("Amplitude");

subplot(3,2,2);
plot2d3(n, step);
title("Unit Step Signal");
xlabel("n"); ylabel("Amplitude");

subplot(3,2,3);
plot2d3(n, ramp);
title("Unit Ramp Signal");
xlabel("n"); ylabel("Amplitude");

subplot(3,2,4);
plot2d3(n, expo);
title("Exponential Signal");
xlabel("n"); ylabel("Amplitude");

subplot(3,2,5);
plot2d3(n, sine);
title("Sinusoidal Signal");
xlabel("n"); ylabel("Amplitude");
