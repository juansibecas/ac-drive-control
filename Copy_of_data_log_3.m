%% Modelo NL + Tmod + PID + Observador
t = out.tout;

%Posicion y velocidad
theta_m = out.PosVel_med.signals(1).values;
w_m = out.PosVel_med.signals(2).values;

%Posicion y velocidad
theta_c = out.PosVel_c.signals(1).values;
w_c = out.PosVel_c.signals(2).values;

%Torques
T_carga = out.Torques.signals(1).values;
T_motor = out.Torques.signals(2).values;

%Pos_Obs
Pos_obs = out.Pos_Obs.signals(1).values;
Pos_est = out.Pos_Obs.signals(2).values;
