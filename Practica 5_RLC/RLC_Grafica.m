%Práctica 5
%Ricardo Yahir Sanchez Mendoza 222834347
% Modelado del sistema en Variables de estado

[t,x] = ode45(@RLC , [0 0.001], [0 0])
%  ode45(función, tiempo de muestreo, condiciones iniciales)
figure(1)
plot(t,x(:,1));
grid on;

title("Voltaje")
