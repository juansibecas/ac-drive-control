path = 'images/3/';

%temperatura en 600s
figure(1)
plot(t, T, t_esc, T_esc)
grid on
xlabel("Tiempo(s)")
ylabel("Temperatura(°C)")
legend("Tl = 0", "Tl = Tlmax")
title("Evolución de temperatura")
saveas(figure(1), strcat(path, 'Temperatura 600s comparacion.jpg'))

figure(2)
plot(t, Rs_read, t_esc, Rs_esc)
grid on
xlabel("Tiempo(s)")
ylabel("Resistencia del bobinado(Ohm)")
legend("Tl = 0", "Tl = Tlmax")
title("Variación de la Resistencia del bobinado")
saveas(figure(2), strcat(path, 'Resistencia 600s comparacion.jpg'))