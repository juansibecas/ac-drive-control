path = 'images/3/Sensores/';
%Tensiones abc en t
figure(1)
plot(t, Va, t, Vb, t, Vc)
grid on
legend("Va", "Vb", "Vc")
xlabel("Tiempo(s)")
ylabel("Tensiones abc(V)")
title("Tensiones abc con sensores reales")
saveas(figure(1), strcat(path, 'Tensiones abc sensores reales w3.jpg'))

%Corrientes abc en t
figure(2)
plot(t, Ia, t, Ib, t, Ic)
grid on
legend("Ia", "Ib", "Ic")
xlabel("Tiempo(s)")
ylabel("Corrientes abc(A)")
title("Corrientes abc con sensores reales")
saveas(figure(2), strcat(path, 'Corrientes abc sensores reales w3.jpg'))

%Curva T-w
figure(3)
plot(T_motor, w_m)
grid on
xlabel("Torque electromagnético(N*m)")
ylabel("Velocidad angular(rad/s)")
title("Curva T-w con sensores reales")
saveas(figure(3), strcat(path, 'Curva Tw sensores reales w3.jpg'))