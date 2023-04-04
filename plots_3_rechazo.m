path = 'images/3/rechazo_perturbaciones/';

%error de posicion
figure(2)

plot(t,theta_m)
grid on
xlabel("Tiempo(s)")
ylabel("Posicion (rad)")
title("Posición")
saveas(figure(2), strcat(path, 'Posicion.jpg'))

%error velocidad
figure(3)

plot(t,w_m)
grid on
xlabel("Tiempo(s)")
ylabel("Velocidad (rad/s)")
title("Velocidad")
saveas(figure(3), strcat(path, 'Velocidad.jpg'))

%Tor que carga vs torque motor
figure(9)

plot(t,T_motor,t,T_carga)
grid on
xlabel("Tiempo(s)")
ylabel("Torque (N.m)")
legend('Torque motor','Torque carga')
title("Torque de motor y de carga")
saveas(figure(9), strcat(path, 'Torques.jpg'))

%error de posicion acercamiento
figure(4)

[~, i_min] = min(abs(t - 0.495));
[~, i_max] = min(abs(t - 0.515));

plot(t(i_min:i_max),T_motor(i_min:i_max),t(i_min:i_max),T_carga(i_min:i_max));
grid on
xlabel("Tiempo(s)")
ylabel("Torque (N.m)")
legend('Torque motor','Torque carga')
title("Torque de motor y de carga - Acercamiento")
saveas(figure(4), strcat(path, 'Toques ampliado.jpg'))
