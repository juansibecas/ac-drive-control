%% Modelo NL + Tmod
t = out.tout;
%Tensiones abc
Va = out.Tensiones_abc.signals(1).values;
Vb = out.Tensiones_abc.signals(2).values;
Vc = out.Tensiones_abc.signals(3).values;

%Corrientes abc
Ia = out.Corrientes_abc.signals(1).values;
Ib = out.Corrientes_abc.signals(2).values;
Ic = out.Corrientes_abc.signals(3).values;

%Tensiones qd0 aplicadas
Vq_applied = out.Tensiones_qd0.signals(1).values;
Vd_applied = out.Tensiones_qd0.signals(2).values;
V0 = out.Tensiones_qd0.signals(3).values;

%Corrientes qd0
Iq = out.Corrientes_qd0.signals(1).values;
Id = out.Corrientes_qd0.signals(2).values;
I0 = out.Corrientes_qd0.signals(3).values;

%Subsistema termico
T = out.Subs_Termico.signals(2).values;
Rs_read = out.Subs_Termico.signals(1).values;

%Posicion y velocidad
theta_m = out.Pos_Vel.signals(1).values;
w_m = out.Pos_Vel.signals(2).values;

%Curva T-w
T_m = out.Curva_Tw.signals(1).values;