clc;
clear;
close;

// Input sequences
x = input('Enter the sequence x[n]: ');
h = input('Enter the sequence h[n]: ');

// Linear Convolution
y = conv(x, h);

// Time indices
nx = 0:length(x)-1;
nh = 0:length(h)-1;
ny = 0:length(y)-1;

// -------------------- Plot x[n] --------------------
subplot(3,1,1);
plot2d3(nx, x);
xlabel('n');
ylabel('Amplitude');
title('Input Sequence x[n]');
xgrid();

// -------------------- Plot h[n] --------------------
subplot(3,1,2);
plot2d3(nh, h);
xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n]');
xgrid();

// -------------------- Plot y[n] --------------------
subplot(3,1,3);
plot2d3(ny, y);
xlabel('n');
ylabel('Amplitude');
title('Output y[n] = x[n] * h[n]');
xgrid();

// Display results
disp('x[n] = ', x);
disp('h[n] = ', h);
disp('y[n] = ', y);
