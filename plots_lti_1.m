path = 'images/1/';
%Corrientes LTI
figure(1)
plot(t, Iq_LTI, t, Id_LTI)
grid on
xlabel("Tiempo(s)")
ylabel("Corrientes qd0(A)")
title("Corrientes qd0 LTI")
legend("Iq", "Id")
saveas(figure(1), strcat(path, 'Corrientes LTI.jpg'))

%Posicion y velocidad LTI
figure(2)
grid on

yyaxis left
plot(t, theta_m_LTI)
ylabel("Posicion angular(rad)")

yyaxis right
plot(t, w_m_LTI)
ylabel("Velocidad angular(rad/s)")
ylim_speed = ylim;

yyaxis left
ylim(ylim_speed) %allign left and right y axis

title("Posicion y velocidad LTI")
xlabel("Tiempo(s)")
legend("theta_m", "w_m")
saveas(figure(2), strcat(path, 'Posicion y Velocidad LTI.jpg'))