clc;
clear;
close;

// Input sequence
x = input('Enter the sequence x[n]: ');

// Auto-correlation
y = xcorr(x, x);

// Time indices
nx = 0:length(x)-1;
ny = -(length(x)-1):(length(x)-1);

// -------------------- Plot Input --------------------
subplot(2,1,1);
plot2d3(nx, x);
ylabel('Amplitude');
xlabel('n');
title('Input Sequence x[n]');
xgrid();

// -------------------- Plot Output --------------------
subplot(2,1,2);
plot2d3(ny, y);
ylabel('Amplitude');
xlabel('Lag (n)');
title('Auto-correlation r_{xx}[n]');
xgrid();

// Display result
disp('Auto-correlation result rxx[n] = ', y);
