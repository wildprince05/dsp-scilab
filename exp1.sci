clc;
clear;
close;

// Continuous time signal generation

// -------------------- Impulse Signal --------------------
t = -5:5;
[r, c] = size(t);
delta = [zeros(1, (c-1)/2), 1, zeros(1, (c-1)/2)];

subplot(4,2,1);
plot(t, delta);
xlabel('Time (s)');
ylabel('Amplitude');
title('Impulse Signal');

// -------------------- Step Signal --------------------
A = 2;
t1 = 0:0.01:10;
[r1, c1] = size(t1);
u = A * ones(1, c1);

subplot(4,2,2);
plot(t1, u);
xlabel('Time (s)');
ylabel('Amplitude');
title('Step Signal');

// -------------------- Ramp Signal --------------------
A = 2;
t2 = 0:0.01:10;
r = A * t2;

subplot(4,2,3);
plot(t2, r);
xlabel('Time (s)');
ylabel('Amplitude');
title('Ramp Signal');

// -------------------- Parabolic Signal --------------------
A = 3;
t3 = 0:0.01:2;
p = (A * t3.^2) / 2;

subplot(4,2,4);
plot(t3, p);
xlabel('Time (s)');
ylabel('Amplitude');
title('Parabolic Signal');

// -------------------- Sinusoidal Signal --------------------
t4 = 0:0.001:1;
f = 2;
Sin_Sig = A * sin(2 * %pi * f * t4);

subplot(4,2,5);
plot(t4, Sin_Sig);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sinusoidal Signal');

// -------------------- Cosine Signal --------------------
t5 = 0:0.01:1;
f1 = 3;
Cos_Sig = A * cos(2 * %pi * f1 * t5);

subplot(4,2,6);
plot(t5, Cos_Sig);
xlabel('Time (s)');
ylabel('Amplitude');
title('Cosine Signal');

// -------------------- Exponential Signal --------------------
t6 = 0:0.01:1;
A2 = 2;
b = 2;
Exp_Sig = A2 * %e .^ (b * t6);

subplot(4,2,7);
plot(t6, Exp_Sig);
xlabel('Time (s)');
ylabel('Amplitude');
title('Exponential Signal');

// -------------------- (Optional) Empty Slot --------------------
subplot(4,2,8);
xtitle("Continuous Time Signals Overview");
