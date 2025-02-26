%Práctica 4
%funcion ODE
%%Ricardo Yahir Sanchez Mendoza 222834347

function dx = Pract4(t,x)
%Variables
m = 10;
r = 0.05;
k = 100;

%Vector de variables de estado
dx = zeros(2,1);

dx (1) = x(2);
dx (2) = ( -2*k*(r^2)*x(1) )/(3*m*(r^2));