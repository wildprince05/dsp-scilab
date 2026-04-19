clc;
clear;
close;
// Input sequences
x = [1 2 3 4 5];
h = [1 1 1 1];
// Lengths
l = length(x);
m = length(h);
N = max(l, m);
// Zero padding to make equal length
if l < N then
    x = [x, zeros(1, N - l)];
end
if m < N then
    h = [h, zeros(1, N - m)];
end
// Circular Convolution
y = zeros(1, N);
for i = 1:N
    for j = 1:N
        k = i - j + 1;
        if k <= 0 then
            k = k + N;
        end
        y(i) = y(i) + x(j) * h(k);
    end
end
// Time index
n = 0:N-1;
// -------------------- Plot x[n] --------------------
subplot(3,1,1);
plot2d3(n, x);
title('Input Sequence x[n]');
xlabel('n');
ylabel('Amplitude');
xgrid();
// -------------------- Plot h[n] --------------------
subplot(3,1,2);
plot2d3(n, h);
title('Input Sequence h[n]');
xlabel('n');
ylabel('Amplitude');
xgrid();
// -------------------- Plot y[n] --------------------
subplot(3,1,3);
plot2d3(n, y);
title('Circular Convolution y[n]');
xlabel('n');
ylabel('Amplitude');
xgrid();
// Display output
disp('Circular Convolution Output y[n] = ', y);
