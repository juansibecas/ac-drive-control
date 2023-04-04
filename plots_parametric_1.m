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
plot(Va, Vb)
grid on
xlabel("Va(V)")
ylabel("Vb(V)")
title("Vb vs Va")
saveas(figure(2), strcat(path, 'Va Vb param.jpg'))

%Iq vs Id
figure(3)
plot(Ia, Ib)
grid on
xlabel("Ia(A)")
ylabel("Ib(A)")
title("Ib vs Ia")
saveas(figure(3), strcat(path, 'Ia Ib param.jpg'))