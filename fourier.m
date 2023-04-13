function [] = fourier(x, t, tf) %TODO X SCALING
fs = length(t)/tf;
L = length(t);
f = fs*(0:(L/2))/L;

fx = fft(x);

P2 = abs(fx/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

plot(f, P1)
end