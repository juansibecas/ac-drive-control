path = 'images/3/Observador/';

%posicion
figure(2)

plot(t,Pos_obs,t,Pos_est)
grid on
xlabel("Tiempo(s)")
ylabel("Posicion (rad)")
title("Posición")
legend('Pocicion','Pocicion estimada')
saveas(figure(2), strcat(path, 'Posiciones.jpg'))

%error de posicion
figure(3)

plot(t,Pos_obs-Pos_est)
grid on
xlabel("Tiempo(s)")
ylabel("Error de estimación (rad)")

title("Error de estimación")
saveas(figure(3), strcat(path, 'Error de estimación.jpg'))

%error de posicion acercamiento
figure(4)

[~, i_min] = min(abs(t - 4.7));
[~, i_max] = min(abs(t - 5.3));

plot(t(i_min:i_max),Pos_obs(i_min:i_max)-Pos_est(i_min:i_max));
grid on
xlabel("Tiempo(s)")
ylabel("Error de estimación (rad)")
ylim([0 1.2e-4])
title("Error de estimación - Acercamiento")
saveas(figure(4), strcat(path, 'Error de estimación ampliado.jpg'))
