clc;
clear;
close;

// Input sequences
x = input('Enter the sequence x[n]: ');
z = input('Enter the sequence z[n]: ');

// Cross-correlation
y1 = xcorr(x, z);   // r_xz[n]
y2 = xcorr(z, x);   // r_zx[n]

// Time indices
nx = 0:length(x)-1;
nz = 0:length(z)-1;
ny = -(max(length(x), length(z)) - 1):(max(length(x), length(z)) - 1);

// -------------------- Plot x[n] --------------------
subplot(2,2,1);
plot2d3(nx, x);
ylabel('Amplitude');
xlabel('n');
title('Input x[n]');
xgrid();

// -------------------- Plot z[n] --------------------
subplot(2,2,2);
plot2d3(nz, z);
ylabel('Amplitude');
xlabel('n');
title('Input z[n]');
xgrid();

// -------------------- Plot r_xz[n] --------------------
subplot(2,2,3);
plot2d3(ny, y1);
title('Cross-correlation r_{xz}[n]');
ylabel('Amplitude');
xlabel('Lag (n)');
xgrid();

// -------------------- Plot r_zx[n] --------------------
subplot(2,2,4);
plot2d3(ny, y2);
title('Cross-correlation r_{zx}[n]');
ylabel('Amplitude');
xlabel('Lag (n)');
xgrid();

// Display results
disp('r_xz[n] = ', y1);
disp('r_zx[n] = ', y2);
