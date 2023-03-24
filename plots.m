
%Curva T-w
figure(1)
plot(T_m, w_m)
grid on
xlabel("Torque electromagnético(N*m)")
ylabel("Velocidad angular(rad/s)")
title("Curva T-w")
saveas(figure(1), 'images/Curva Tw.jpg')

%Tensiones abc en t
figure(2)
plot(t, Va, t, Vb, t, Vc)
grid on
legend("Va", "Vb", "Vc")
xlabel("Tiempo(s)")
ylabel("Tensiones abc(V)")
title("Tensiones abc")
saveas(figure(2), 'images/Tensiones abc.jpg')

%Tensiones aplicadas qd0 en t
figure(3)
plot(t, Vq_applied, t, Vd_applied, t, V0)
grid on
legend("Vq", "Vd", "V0")
xlabel("Tiempo(s)")
ylabel("Tensiones qd0(V)")
title("Tensiones qd0 aplicadas")
saveas(figure(3), 'images/Tensiones aplicadas qd0.jpg')

%Corrientes qd0 en t
figure(4)
plot(t, Iq, t, Id, t, I0)
grid on
legend("Iq", "Id", "I0")
xlabel("Tiempo(s)")
ylabel("Corrientes qd0(A)")
title("Corrientes qd0")
saveas(figure(4), 'images/Corrientes qd0.jpg')

%Corrientes abc en t
figure(5)
plot(t, Ia, t, Ib, t, Ic)
grid on
legend("Ia", "Ib", "Ic")
xlabel("Tiempo(s)")
ylabel("Corrientes abc(A)")
title("Corrientes abc")
saveas(figure(5), 'images/Corrientes abc.jpg')

%Posicion y velocidad en t NL
figure(6)
grid on

yyaxis left
plot(t, theta_m)
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
saveas(figure(6), 'images/Posicion y Velocidad.jpg')

%Consignas
figure(7)

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
saveas(figure(7), 'images/Consignas.jpg')

%Temperatura
figure(8)
plot(t, T)
grid on
ylabel("Temperatura(°C)")
xlabel("Tiempo(s)")
title("Evolución de Temperatura")
saveas(figure(8), 'images/Temperatura.jpg')

%Vq vs Vd
figure(9)
plot(Vq_applied, Vd_applied)
grid on
xlabel("Vq(V)")
ylabel("Vd(V)")
title("Vq vs Vd aplicada")
saveas(figure(9), 'images/Vq Vd param.jpg')

%Iq vs Id
figure(10)
plot(Iq, Id)
grid on
xlabel("Iq(A)")
ylabel("Id(A)")
title("Iq vs Id")
saveas(figure(10), 'images/Iq Id param.jpg')
%}
%Corrientes LTI
figure(11)
plot(t, Iq_LTI, t, Id_LTI)
grid on
xlabel("Tiempo(s)")
ylabel("Corrientes qd0(A)")
title("Corrientes qd0 LTI")
legend("Iq", "Id")
saveas(figure(11), 'images/Corrientes LTI.jpg')

%Posicion y velocidad LTI
figure(12)
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
saveas(figure(12), 'images/Posicion y Velocidad LTI.jpg')
