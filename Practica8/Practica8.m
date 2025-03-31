%Práctica 6
%Ricardo Yahir Sanchez Mendoza 222834347
% Modelado del sistema en Variables de estado

[t,x]=ode45(@Practica8FunOde,[0 10],[0 0 0]);
%odea45 (función, tiempo de muestreo, valores iniciales)
%Aqui se crea la figura donde se va a graficar el x con respecto a t
%s y t son parametros que retorna la función ode45

figure(1)
plot(t,(x(:,3)));
grid on
hold on
title("Sistema electromecánico");
xlabel("Tiempo");
ylabel("Rad/seg");

figure(2)
plot(t,(x(:,2)));
grid on
title("Sistema electromecánico");
xlabel("Tiempo");
ylabel("Rotacion Rad");