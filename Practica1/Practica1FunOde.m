%funcion ODE Practica 1
%Ricardo Yahir Sanchez Mendoza 222834347
%% ------PRÁCTICA 1. SOLUCIÓN DE SISTEMAS DE ECUACIONES DIFERENCIALES ORDINARIAS CON MATLAB-----
function dz=Pract1(t,z)

%% Parametros del sistema
Ip=0.0079; %kgm^2
Mc=0.7031; %kg
lp=0.3302; %m
Mp=0.23; %kg
Fc=0;%N
Beq=4.3; %Ns/m
g=-9.81; %m/s^2
Bp=0.0024; %Nms/rad

%% Definicion de variables de estado
%Vector de variables de estado
dz = zeros(4,1);

%Definicion variables de estado en la matriz
%En los calculos dz(1)=zpuntio1  dz(2)=zpuntito2 y asi sucesivamente por lo
%que dz es la matriz de las variables de estado
%z(1)=z1  z(2)=z2 z(3)=z3  z(4)=z4 
z1=z(1);
z2=z(2);
z3=z(3);
z4=z(4);

%% Calculos de matriz del sistema en las variables de estado[z3dy z4dy]
m=1/( (Mc+Mp)*lp  + Mc*Mp*(lp^2)  + (Mp^2)*(lp^2)*((sin(z2))^2) );
A= [-(Ip+Mp*(lp^2))*Beq  ,  -(Ip*Mp*lp-(Mp^2)*(lp^3) )*sin(z2)*z4-Mp*lp*cos(z2)*Bp ; -Beq*Mp*lp*cos(z2), -(Mc+Mp)*Bp-(Mp^2)*(lp^2)*sin(z2)*cos(z2)*z4 ];
z=[z3;z4];
C=[(Ip+Mp *(lp^2) )*Fc+(Mp^2)*(lp^2)*g*cos(z2)*sin(z2) ; (Mc+Mp )*Mp*g*lp*sin(z2)+Fc*Mp*lp*cos(z2)];
Z34puntito=m*(A*z+C);

%z3puntito=m*( (Ip+Mp *(lp^2) )*Fc  +  (Mp^2)*(lp^2)*g*cos(z2)*sin(z2)  -(Ip+Mp*(lp^2))*Beq*z3  -(Ip*Mp*lp-(Mp^2)*(lp^3) )*sin(z2)*(z4^2) - Mp*lp*cos(z2)*Bp*z4   );
%z4puntito=m*(  (Mc+Mp )*Mp*g*lp*sin(z2)  -  (Mc+Mp)*Bp*z4  +  Fc*Mp*lp*cos(z2)  -(Mp^2)*(lp^2)*sin(z2)*cos(z2)*(z4^2)  -Beq*Mp*lp*cos(z2)*z3  );

%% Variables de estado derivadas
dz(1)=z3;
dz(2)=z4;
dz(3)=Z34puntito(1);
dz(4)=Z34puntito(2);

%dz(3)=z3puntito;
%dz(4)=z4puntito;