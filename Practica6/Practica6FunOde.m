%Práctica 6
%funcion ODE
%%Ricardo Yahir Sanchez Mendoza 222834347

function dz = Pract6(t,z)
%Variables
L=2e-3;
R=10;
C=10e-6;
Vin=32;
dt=0.4;

%Vector de variables de estado
dz = zeros(2,1);


dz(1)=(   (z(2)/C) -   (z(1)/(R*C)) );
dz(2)=( (Vin/L)*dt  -  ( (1/L) *z(1) )  );