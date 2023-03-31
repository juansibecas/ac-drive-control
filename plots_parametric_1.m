path = 'images/1/';
%Curva T-w
figure(1)
plot(T_m, w_m)
grid on
xlabel("Torque electromagnético(N*m)")
ylabel("Velocidad angular(rad/s)")
title("Curva T-w")
saveas(figure(1), strcat(path, 'Curva Tw.jpg'))

%Vq vs Vd
figure(2)
plot(Vq_applied, Vd_applied)
grid on
xlabel("Vq(V)")
ylabel("Vd(V)")
title("Vd vs Vq aplicada")
saveas(figure(2), strcat(path, 'Vq Vd param.jpg'))

%Iq vs Id
figure(3)
plot(Iq, Id)
grid on
xlabel("Iq(A)")
ylabel("Id(A)")
title("Id vs Iq")
saveas(figure(3), strcat(path, 'Iq Id param.jpg'))