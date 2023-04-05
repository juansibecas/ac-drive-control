wmax = 6600*2*pi/60; % rpm to rad/s

%
wpeak2 = 0.7*wmax;
%

tup1 = 5;
wpeak1 = 2*pi*r/tup1;
% solve SLE for tr and tup2
% X = [tr, tup2];
A = [1 1;
     2 1];
b = [wpeak1*tup1/wpeak2;
     tup1];
X = cgs(A, b);
tr = X(1);
tup2 = X(2);

fs = 1000;  %sampling f
tt = 15;    %task time
tw = 1;     %wait time
tf = tt + tw;
t_sequence = linspace(0, tf, fs*tf);

vw = zeros(1, tw*fs); %wait time at start

%w RAMP
w_rise = zeros(1, round(tr*fs));

for i=1:tr*fs
   w_rise(i) = wpeak2/tr * i/fs;
end

%w TRAPEZOID
w_trapz = zeros(1, tup1*fs);
w_trapz(1:round(tr*fs)) = w_rise;
for i=1:tup2*fs+1
   w_trapz(i+round(tr*fs)) = wpeak2; 
end
w_trapz(1, end-length(w_rise)+1:end) = flip(w_rise);

%w SEQUENCE
%              wait time        first trapz     speed = 0           second trapz 
w_sequence = [zeros(1,tw*fs)    w_trapz         zeros(1, tup1*fs)   w_trapz*-1];

%n = 0.1*fs;   % filter order
%v_sequence = filter(ones(n, 1)/n, 1, v);

%integrate w to get q
q_sequence = zeros(1, tf*fs);
for i=1:tf*fs
    q_sequence(i) = trapz(w_sequence(1:i))/(fs*r);
end
