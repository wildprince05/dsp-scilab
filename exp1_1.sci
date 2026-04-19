clc;
clear;
close;

// -------------------- Unit Impulse Sequence --------------------
n = -2:1:2;
del_discrete = [zeros(1,2), 1, zeros(1,2)];

figure;
subplot(2,3,1);
plot2d3(n, del_discrete);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Unit Impulse Sequence');

// -------------------- Unit Step Sequence --------------------
n1 = 0:1:5;
N = length(n1);
Unit_Step = ones(1, N);

subplot(2,3,2);
plot2d3(n1, Unit_Step);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Unit Step Sequence');

// -------------------- Ramp Sequence --------------------
n2 = 0:1:10;
Unit_ramp = n2;

subplot(2,3,3);
plot2d3(n2, Unit_ramp);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Unit Ramp Sequence');

// -------------------- Exponential Sequence --------------------
a = 0.6;
n3 = 0:1:10;
Exp_seq = a .^ n3;   // element-wise power

subplot(2,3,4);
plot2d3(n3, Exp_seq);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Exponential Sequence');

// -------------------- Sinusoidal Sequence --------------------
n4 = -1:0.1:1;
A6 = 2;
f2 = 1;
Sin_Dis = A6 * sin(2 * %pi * f2 * n4);

subplot(2,3,5);
plot2d3(n4, Sin_Dis);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Discrete Sinusoidal Sequence');

// -------------------- Cosinusoidal Sequence --------------------
Cos_Dis = A6 * cos(2 * %pi * f2 * n4);

subplot(2,3,6);
plot2d3(n4, Cos_Dis);
xlabel('Discrete Time n');
ylabel('Amplitude');
title('Discrete Cosinusoidal Sequence');
