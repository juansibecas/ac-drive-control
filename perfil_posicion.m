%POSICION TRAPEZOIDAL
fs = 100000;  %sampling f
tt = 15;    %task time
tr1 = 5;    %rise time
tw = 3;     %wait time
tf = tt + tw;
t_sequence = linspace(0, tf, fs*tf+1);
tup1 = 5;
qpeak1 = 2*pi*r;

q_ramp = zeros(1, tr1*fs);
%q RAMP
for i=1:tr1*fs
    q_ramp(i) = qpeak1/tr1 * i/fs;
end

q1 = [zeros(1, tw*fs) q_ramp 2*pi*r*ones(1, tup1*fs) flip(q_ramp) 0];

w1 = [diff(q1)*fs 0];

a1 = [diff(w1)*fs 0];

%VELOCIDAD TRAPEZOIDAL

wmax = 6600*2*pi/60; % rpm to rad/s
wpeak1 = 2*pi*r/tup1; %394 rad/s
%cambiar el % de wmax
wpeak2 = 0.58*wmax;
%
% solve SLE for tr and tup2
% X = [tr, tup2];
A = [1 1;
     2 1];
b = [wpeak1*tup1/wpeak2;
     tup1];
X = cgs(A, b);
tr2 = X(1);
tup2 = X(2);

vw = zeros(1, tw*fs); %wait time at start

%w RAMP
w_ramp = zeros(1, round(tr2*fs));

for i=1:round(tr2*fs)
   w_ramp(i) = wpeak2/tr2 * i/fs;
   if w_ramp(i) > wpeak2
       w_ramp(i) = wpeak2;
   end
end

%w TRAPEZOID
peak_len = tup1*fs - 2*length(w_ramp);
w_trapz = [w_ramp wpeak2*ones(1, peak_len) flip(w_ramp)];

%w SEQUENCE
%              wait time        first trapz     speed = 0           second trapz 
w2 = [zeros(1,tw*fs)    w_trapz         zeros(1, tup1*fs)   -w_trapz 0];

%integrate w to get q
q2 = zeros(1, tf*fs + 1);
for i=2:tf*fs+1
    q2(i) = q2(i-1) + trapz(w2(i-1:i))/(fs*r);
end

%diff w to get acc
a2 = Nderiv2(w2, 1/fs);



%%SUBPLOTS
%%

figure(1)
title("Perfiles de posición trapezoidal vs velocidad trapezoidal")
subplot(3, 2, 1)
plot(t_sequence, q1)
ylabel("q1(rad)")
xlabel("Tiempo(s)")

subplot(3, 2, 3)
plot(t_sequence, w1)
ylabel("w1(rad/s)")
xlabel("Tiempo(s)")

subplot(3, 2, 5)
plot(t_sequence, a1)
ylabel("a1(rad/s^2)")
xlabel("Tiempo(s)")

subplot(3, 2, 2)
plot(t_sequence, q2*r)
ylabel("q2(rad)")
xlabel("Tiempo(s)")

subplot(3, 2, 4)
plot(t_sequence, w2)
ylabel("w2(rad/s)")
xlabel("Tiempo(s)")

subplot(3, 2, 6)
plot(t_sequence, a2)
ylabel("a2(rad/s^2)")
xlabel("Tiempo(s)")

saveas(figure(1), "images/3/Comparacion de perfiles.jpg")


%{
%TRAYECTORIA CON PCHIP
t_d = [0 3 8 13 18 25];
q_d = [0 0 1  1  0  0]*qpeak1;
q_pchip = interp1(t_d, q_d, t_sequence, 'pchip');

%diff q to get w
w_pchip = Nderiv2(q_pchip, 1/fs);

%diff w to get acc
a_pchip = Nderiv2(w_pchip, 1/fs);

figure(2)
subplot(3, 1, 1)
plot(t_sequence, q_pchip)
subplot(3, 1, 2)
plot(t_sequence, w_pchip)
subplot(3, 1, 3)
plot(t_sequence, a_pchip)
%}

function dy = Nderiv2(y,h)
% Compute the second derivative of input vector y, with spacing h
n = length(y);
for i=1:n
    switch i
        case 1
            % use Forward difference equation for y''
            dy(i) =  (-3*y(i)+4*y(i+1)-y(i+2))/(2*h);
        case n
            % use backward difference equation for y''
             dy(i) = (3*y(i)-4*y(i-1)+y(i-2))/(2*h);
        otherwise
            % use central difference equation for y''
            dy(i) =  (y(i+1)-y(i-1))/(2*h);
    end
end
end




