clc;
clear;
close;

// Inputs
N = input('Enter the filter order (odd number preferred): ');
wc = input('Enter the cutoff frequency (in radians, e.g., %pi/2): ');

a = (N - 1) / 2;

// Ideal impulse response + Windowing
for n = 1:N
    if (n-1 == a) then
        hd(n) = wc / %pi;
    else
        hd(n) = sin(wc * (n-1-a)) / (%pi * (n-1-a));
    end
    
    // Rectangular window
    w(n) = 1;
    
    // Actual filter
    h(n) = hd(n) * w(n);
end

// Frequency response
[m, ph] = frmag(h, 256);
mag = abs(m);

// Convert to dB (avoid log(0))
magdb = 20 * log10(mag + %eps);

// -------------------- Plot Magnitude --------------------
subplot(2,1,1);
plot(ph / %pi, magdb);
xlabel('Normalized Frequency (\times \pi rad/sample)');
ylabel('Magnitude (dB)');
title('Low Pass Filter - Magnitude Response');
xgrid();

// -------------------- Plot Impulse Response --------------------
subplot(2,1,2);
n_axis = 0:N-1;
plot2d3(n_axis, h);
xlabel('n');
ylabel('h[n]');
title('Impulse Response of FIR Filter');
xgrid();
