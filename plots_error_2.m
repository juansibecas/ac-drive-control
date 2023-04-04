path = 'images/2/';
%Posicion y velocidad en Tmod con error
figure(1)

yyaxis left
plot(t, theta_m)
grid on
ylabel("Posicion angular(rad)")

yyaxis right
plot(t, w_m)
ylabel("Velocidad angular(rad/s)")

title("Posicion y velocidad con error")
xlabel("Tiempo(s)")
legend("theta_m", "w_m")
saveas(figure(1), strcat(path, 'Posicion y Velocidad con error.jpg'))

%Consigna de velocidad
figure(2)
plot(t, w_m, t, w_consigna)
grid on
ylabel("Velocidad angular(rad/s)")
xlabel("Tiempo(s)")
legend("w_m", "w_m consigna")
title("Seguimiento de consigna de velocidad Tmod")
saveas(figure(2), strcat(path, 'Consigna Velocidad con error.jpg'))