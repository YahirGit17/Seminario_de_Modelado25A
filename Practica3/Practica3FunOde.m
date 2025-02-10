%Práctica 3
%funcion ODE
%%Ricardo Yahir Sanchez Mendoza 222834347

function dy = Pract3(t,y)
%Variables
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z1 = .05*sin(.5*pi*t);
z2 = .05*sin(20*pi*t);

%Vector de variables de estado
dy = zeros(4,1);

dy (1) = y(2);
dy (2) = ((f-b1*y(2)+b1*y(4)-k1*y(1)+k1*y(3))/(m1));
dy (3) = y(4);
dy (4) = ((-f+k2*z2+b1*y(2)-b1*y(4)+k1*y(1)-(k1+k2)*y(3))/(m2));
