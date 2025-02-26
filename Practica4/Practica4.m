%Práctica 3
%Ricardo Yahir Sanchez Mendoza 222834347
% Modelado del sistema en Variables de estado
clear all
[t,x]=ode45(@Practica4FunOde,[0 10],[0 2]);
%  ode45(función, tiempo de muestreo, condiciones iniciales)
figure(1)
plot(t,x(:,1));
grid on
hold on
title("Posición angular");
xlabel("Tiempo");
ylabel("Theta");


figure(2)
plot(t,x(:,2));
grid on
title("Velocidad ");
xlabel("Tiempo");
ylabel("Rad/seg");

