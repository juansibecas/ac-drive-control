path = 'images/1/';
%Corrientes LTI
figure(1)
plot(t, Iq_LTI, t, Id_LTI)
grid on
xlabel("Tiempo(s)")
ylabel("Corrientes qd0(A)")
title("Corrientes qd0 LTI - Id(0)=0.5")
legend("Iq", "Id")
saveas(figure(1), strcat(path, 'Corrientes LTI con Id 05.jpg'))
