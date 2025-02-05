%Práctica 1
%Ricardo Yahir Sanchez Mendoza 222834347

% Modelado del sistema en Variables de estado
%clear all
[t,z] = ode45(@Practica1FunOde,[0 200],[0 deg2rad(1) 0 0]);
%       ode45(función, tiempo de muestreo, condiciones iniciales)

%{
plot(t,z(:,1),'-',t,z(:,2),'-')
grid on
title('Practica 1 con ODE45');
xlabel('Time t');
ylabel('Solucion angulo y distancia');
legend('distancia','angulo')
%}



figure(1)
subplot(2,1,1);
plot(t,z(:,1));
grid on
title('Posicion');
xlabel('Time t');
ylabel('Metros');


subplot(2,1,2);
plot(t,z(:,2));
grid on
title('angulo');
xlabel('Time t');
ylabel('rad');


%{
figure(2)
subplot(2,1,1);
plot(t,z(:,1));
grid on
title('Velocidad');
xlabel('Time t');
ylabel('m/s');


subplot(2,1,2);
plot(t,z(:,2));
grid on
title(' velocidad angular');
xlabel('Time t');
ylabel('grados');
%}