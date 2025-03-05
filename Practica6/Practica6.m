%Práctica 6
%Ricardo Yahir Sanchez Mendoza 222834347
% Modelado del sistema en Variables de estado
clear all
[t,z]=ode45(@Practica6FunOde,[0 0.01],[0 0]);
%  ode45(función, tiempo de muestreo, condiciones iniciales)
figure(1)
plot(t,z(:,1));
grid on
hold on
title("Voltaje");
xlabel("Tiempo");
ylabel("Voltios");


figure(2)
plot(t,z(:,2));
grid on
title("Corriente");
xlabel("Tiempo");
ylabel("Amperios");