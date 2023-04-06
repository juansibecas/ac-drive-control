path = 'images/3/';

%temperatura en 600s
figure(1)
yyaxis left
plot(t, T)
grid on
xlabel("Tiempo(s)")
ylabel("Temperatura(°C)")
title("Subsistema Térmico sin escalón de torque")

yyaxis right
plot(t, Rs_read)
ylabel("Resistencia del bobinado(Ohm)")
saveas(figure(1), strcat(path, 'Temperatura 600s sin escalon.jpg'))