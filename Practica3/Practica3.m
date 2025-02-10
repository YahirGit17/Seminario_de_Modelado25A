%Práctica 3
%Ricardo Yahir Sanchez Mendoza 222834347
% Modelado del sistema en Variables de estado
clear all
[t,x]=ode45(@Practica3FunOde,[0 15],[0 0 0 0]);
%  ode45(función, tiempo de muestreo, condiciones iniciales)
figure(1)
plot(t,x(:,1));
grid on
hold on
title("Posición (en el tiempo)");
xlabel("Tiempo");
ylabel("Desplazamiento");

%{
figure(2)
plot(t,x(:,4));
grid on
title("Velocidad ");
xlabel("Tiempo");
ylabel("Rad/seg");
%}
