%%forma canonica controlable sensores de corriente y modulador de tensiones
K = 1;      %Gain
wn_c = 8000; %rad/s
e1 = 1;     %damp ratio
num1 = [K];
den1 = [1 2*(e1*wn_c) wn_c^2];
[A1, B1, C1, D1] = tf2ssCCF(num1, den1);
a1c = -A1(2, 2);
a2c = -A1(2, 1);


%%forma canonica controlable sensor de posicion
K = 1;      %Gain
wn_p = 2000; %rad/s
e2 = 1;     %damp ratio
num2 = [K];
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

%%forma canonica controlable modulador de tension
a1m = a1c;
a2m = a2c;
sat = sqrt(2/3)*24; %Vsmax = 24V CA rms

function [A, B, C, D] = tf2ssCCF(num, den)
    G = tf(num, den);
    Gss = canon(G, 'companion'); %observable canonical form
    %controllable canonical form
    A = Gss.A.';
    B = Gss.C.';
    C = Gss.B.';
    D = Gss.D;
end