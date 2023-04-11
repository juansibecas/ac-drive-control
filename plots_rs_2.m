path = 'images/2/';

%Consigna de velocidad con Rs variable
figure(2)
plot(t, w_m, t, w_consigna)
grid on
ylabel("Velocidad angular(rad/s)")
xlabel("Tiempo(s)")
yyaxis right
plot(t, T)
ylabel("Temperatura(°C)")
legend("w_m", "w_m consigna", "Temperatura")
title("Seguimiento de consigna de velocidad Tmod (Rs variable)")
saveas(figure(2), strcat(path, 'Consigna Velocidad Rs variable.jpg'))