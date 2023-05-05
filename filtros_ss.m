%%forma canonica controlable sensores de corriente y modulador de tensiones
n = 1;
%%sensor de corriente, wn=10000 es el corte
%%wn=70000 es el corte con inversor
K = 1;      %Gain
wn_c = n*70000; %rad/s
e1 = 1;     %damp ratio
num1 = [K*wn_c^2];
den1 = [1 2*(e1*wn_c) wn_c^2];
[A1, B1, C1, D1] = tf2ssCCF(num1, den1);
a1c = -A1(2, 2);
a2c = -A1(2, 1);


%%forma canonica controlable sensor de posicion wn=15000 es el corte
%%wn=48000 es el corte con inversor
K = 1;      %Gain
wn_p = n*48000; %rad/s
e2 = 1;     %damp ratio
num2 = [K*wn_p^2];
den2 = [1 2*(e2*wn_p) wn_p^2];
[A2, B2, C2, D2] = tf2ssCCF(num2, den2);
a1p = -A2(2, 2);
a2p = -A2(2, 1);


%%forma canonica controlable temperatura
K = 1;
T = 20;
num3 = [K];
den3 = [T 1];
[A3, B3, C3, D3] = tf2ssCCF(num3, den3);
a1t = -A3;

%%forma canonica controlable modulador de tension wn = 12000 es el corte
%%entre que funcione y no funcione
K = 1;      %Gain
wn_m = 12000; %rad/s
e3 = 1;     %damp ratio
num4 = [K*wn_m^2];
den4 = [1 2*(e3*wn_m) wn_m^2];
[A4, B4, C4, D4] = tf2ssCCF(num4, den4);
a1m = -A4(2, 2);
a2m = -A4(2, 1);
sat = sqrt(2/3)*24; %Vsmax = 24V CA rms %30V en bus de continua

function [A, B, C, D] = tf2ssCCF(num, den)
    G = tf(num, den);
    Gss = canon(G, 'companion'); %observable canonical form
    %controllable canonical form
    A = Gss.A.';
    B = Gss.C.';
    C = Gss.B.';
    D = Gss.D;
end