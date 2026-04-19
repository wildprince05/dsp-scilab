clc;
clear;
close;

// Input sequence
x = input('Enter the input sequence x[n]: ');
N = length(x);

// FFT
y = fft(x);

// Magnitude & Phase
mag = abs(y);
phase = atan(imag(y), real(y)) * (180 / %pi);

// Display results
disp('FFT Sequence Y[k] = ');
disp(y);

disp('Magnitude |Y[k]| = ');
disp(mag);

disp('Phase (degrees) = ');
disp(phase);

// IFFT
z = ifft(y);

// Remove small imaginary errors
z = real(z);

disp('Reconstructed IFFT sequence x[n] = ');
disp(z);
