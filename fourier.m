function [] = fourier(x, t) %TODO X SCALING
L = length(t);
f = L*(0:(L/2))/L;

fx = fft(x);

P2 = abs(fx/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

plot(f, P1)
end