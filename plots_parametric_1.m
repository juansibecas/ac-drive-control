path = 'images/1/';
% %Curva T-w
% figure(1)
% plot(T_m, w_m)
% grid on
% xlabel("Torque electromagnético(N*m)")
% ylabel("Velocidad angular(rad/s)")
% title("Curva T-w")
% saveas(figure(1), strcat(path, 'Curva Tw.jpg'))

%Vq vs Vd
figure(2)
plot(Vq_applied, Vd_applied)
grid on
xlabel("Vq(V)")
ylabel("Vd(V)")
title("Vd vs Vq")
saveas(figure(2), strcat(path, 'Vq Vd param.jpg'))

%Iq vs Id
figure(3)
plot(Id, Iq)
grid on
xlabel("Id(A)")
ylabel("Iq(A)")
title("Iq vs Id")
saveas(figure(3), strcat(path, 'Iq Id param.jpg'))