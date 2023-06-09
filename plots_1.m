path = 'images/1/';
%Tensiones abc en t
figure(1)
plot(t, Va, t, Vb, t, Vc)
grid on
legend("Va", "Vb", "Vc")
xlabel("Tiempo(s)")
ylabel("Tensiones abc(V)")
title("Tensiones abc")
saveas(figure(1), strcat(path, 'Tensiones abc.jpg'))

%Tensiones aplicadas qd0 en t
figure(2)
plot(t, Vq_applied, t, Vd_applied, t, V0)
grid on
legend("Vq", "Vd", "V0")
xlabel("Tiempo(s)")
ylabel("Tensiones qd0(V)")
title("Tensiones qd0 aplicadas")
saveas(figure(2), strcat(path, 'Tensiones aplicadas qd0.jpg'))

%Corrientes qd0 en t
figure(3)
plot(t, Iq, t, Id, t, I0)
grid on
legend("Iq", "Id", "I0")
xlabel("Tiempo(s)")
ylabel("Corrientes qd0(A)")
title("Corrientes qd0")
saveas(figure(3), strcat(path, 'Corrientes qd0.jpg'))

%Corrientes abc en t
figure(4)
plot(t, Ia, t, Ib, t, Ic)
grid on
legend("Ia", "Ib", "Ic")
xlabel("Tiempo(s)")
ylabel("Corrientes abc(A)")
title("Corrientes abc")
saveas(figure(4), strcat(path, 'Corrientes abc.jpg'))

%Posicion y velocidad en t NL
figure(5)

yyaxis left
plot(t, theta_m)
grid on
ylabel("Posicion angular(rad)")

yyaxis right
plot(t, w_m)
ylabel("Velocidad angular(rad/s)")
ylim_speed = ylim;

yyaxis left
ylim(ylim_speed) %allign left and right y axis

title("Posicion y velocidad")
xlabel("Tiempo(s)")
legend("theta_m", "w_m")
saveas(figure(5), strcat(path, 'Posicion y Velocidad.jpg'))

%Consignas
figure(6)

yyaxis left
plot(t, Vq, t, Vd)
grid on
ylabel("Tensiones consigna(V)")
ylim_v = ylim;

yyaxis right
plot(t, Tleq*r)
ylabel("Torque de carga(N*m)")
%allign left and right y axis
ylim_torque = ylim;
ylim_torque = [ylim_torque(1) ylim_v(2)];
ylim(ylim_torque)

yyaxis left
ylim(ylim_torque)

title("Entradas y Perturbación")
xlabel("Tiempo(s)")
legend("Vq", "Vd", "Tl")
saveas(figure(6), strcat(path, 'Consignas.jpg'))

%Temperatura
figure(7)
plot(t, T)
grid on
ylabel("Temperatura(°C)")
xlabel("Tiempo(s)")
title("Evolución de Temperatura")
saveas(figure(7), strcat(path, 'Temperatura.jpg'))

%Torque motor y Torque de carga
figure(8)
plot(t, Tleq, t, T_m)
grid on
ylabel('Torque(N*m)')
xlabel('Tiempo(s)')
title('Torque de carga y Torque motor')
legend('Carga', 'Motor')
saveas(figure(8), strcat(path, 'Torque carga motor.jpg'))



