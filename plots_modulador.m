path = 'images/3/Inversor/';

%Tensiones consigna abc en t
figure(1)
plot(t, Va, t, Vb, t, Vc)
grid on
legend("Va", "Vb", "Vc")
xlabel("Tiempo(s)")
ylabel("Tensiones abc(V)")
title("Tensiones abc consigna")
ylim([-27 27])
saveas(figure(1), strcat(path, 'Tensiones abc consigna.jpg'))

%Tensiones moduladas abc en t
figure(2)
plot(t, Va_m, t, Vb_m, t, Vc_m)
grid on
legend("Va", "Vb", "Vc")
xlabel("Tiempo(s)")
ylabel("Tensiones abc(V)")
title("Tensiones abc moduladas")
saveas(figure(2), strcat(path, 'Tensiones abc moduladas.jpg'))

%seguimiento de la consigna
figure(3)
yyaxis left
plot(t, theta_m)
grid on
ylabel("Posicion angular(rad)")
ylim([-500 2000])

yyaxis right
plot(t, w_m)
ylabel("Velocidad angular(rad/s)")
ylim([-500 2000])

yyaxis left
title("Posicion y velocidad")
xlabel("Tiempo(s)")
legend("theta_m", "w_m")
saveas(figure(3), strcat(path, 'Posicion y Velocidad.jpg'))