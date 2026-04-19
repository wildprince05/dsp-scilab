clc;
clear;
close;

// Input sequence
x = input('Enter the input sequence x[n]: ');
N = length(x);

// -------------------- DFT --------------------
y = zeros(1, N);

for k = 1:N
    for n = 1:N
        y(k) = y(k) + x(n) * exp(-%i * 2 * %pi * (k-1) * (n-1) / N);
    end
end

// Magnitude and Phase
mag = abs(y);
phase = atan(imag(y), real(y)) * (180 / %pi);

// Display results
disp('DFT Sequence Y[k] = ');
disp(y);

disp('Magnitude = ');
disp(mag);

disp('Phase (degrees) = ');
disp(phase);

// -------------------- IDFT --------------------
C = zeros(1, N);

for n = 1:N
    for k = 1:N
        C(n) = C(n) + (1/N) * y(k) * exp(%i * 2 * %pi * (k-1) * (n-1) / N);
    end
end

// Take real part (remove numerical imaginary noise)
C = real(C);

disp('Reconstructed IDFT sequence x[n] = ');
disp(C);

// -------------------- Plotting --------------------
n_axis = 0:N-1;

subplot(2,2,1);
plot2d3(n_axis, x);
title('Input Sequence x[n]');
xlabel('n'); ylabel('Amplitude');

subplot(2,2,2);
plot2d3(n_axis, mag);
title('Magnitude Spectrum |Y[k]|');
xlabel('k'); ylabel('Magnitude');

subplot(2,2,3);
plot2d3(n_axis, phase);
title('Phase Spectrum ∠Y[k]');
xlabel('k'); ylabel('Degrees');

subplot(2,2,4);
plot2d3(n_axis, C);
title('Reconstructed Signal (IDFT)');
xlabel('n'); ylabel('Amplitude');
