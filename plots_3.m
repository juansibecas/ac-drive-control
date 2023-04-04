path = 'images/3/';
%seguimiento de la consigna
figure(1)
plot(t, theta_m, t,theta_c, t,w_m, t,w_c)
grid on
legend("theta medido", "theta consigna", "w medido", "w consigna")
xlabel("Tiempo(s)")
ylabel("Posicion (rad)-Velocidad (rad/s)")
title("Seguimiento de la Consigna")
saveas(figure(1), strcat(path, 'Seguimiento de la Consigna.jpg'))


%error de posicion
figure(2)
dif_theta=theta_c-theta_m;

plot(t,dif_theta)
grid on
xlabel("Tiempo(s)")
ylabel("Error posicion (rad/s)")
title("theta consigna - theta medido")
saveas(figure(2), strcat(path, 'Error Posicion.jpg'))

%error velocidad
figure(3)
dif_w=w_c-w_m;

plot(t,dif_w)
grid on
xlabel("Tiempo(s)")
ylabel("Posicion (rad)-Velocidad (rad/s)")
title("w consigna - w medido")
saveas(figure(3), strcat(path, 'Error Velocidad.jpg'))

%error de posicion acercamiento
figure(4)

[~, i_min] = min(abs(t - 1.95));
[~, i_max] = min(abs(t - 2.015));

plot(t(i_min:i_max),dif_theta(i_min:i_max));
grid on
xlabel("Tiempo(s)")
ylabel("Error Posicion (rad/s)")
title("theta consigna - theta medido")
saveas(figure(4), strcat(path, 'Error Posicion ampliado.jpg'))

%error de velocidad acercamiento
figure(5)

plot(t(i_min:i_max),dif_w(i_min:i_max));
grid on
xlabel("Tiempo(s)")
ylabel("Error Velocidad (rad/s)")
title("w consigna - w medido")
saveas(figure(5), strcat(path, 'Error Velocidad ampliado.jpg'))

