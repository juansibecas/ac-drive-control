path = 'images/1/';
caso = "field forcing"; %cambiar forcing por weakening para cada caso
%T_m vs T_m_LTI
figure(1)
plot(t, T_m, t, T_m_LTI)
grid on
xlabel("Tiempo(s)")
ylabel("Torque electromagnético(N*m)")
legend(caso, "Normal")
title(strcat("Comparación de Torque - ", caso))
saveas(figure(1), strcat(path, "Comparación de Torque - ", caso, ".jpg"))


%w_m vs w_m_LTI
figure(2)
plot(t, w_m, t, w_m_LTI)
grid on
xlabel("Tiempo(s)")
ylabel("Velocidad angular(rad/s)")
legend(caso, "Normal")
title(strcat('Comparación de Velocidad angular - ', caso))
saveas(figure(2), strcat(path, "Comparación de Velocidad angular - ", caso, ".jpg"))

%Temperatura
figure(3)
plot(t, T);
grid on
xlabel("Tiempo(s)")
ylabel("Temperatura(°C)")
title(strcat("Evolución de Temperatura en ", caso))
saveas(figure(3), strcat(path, "Evolución de Temperatura en ", caso, ".jpg"))