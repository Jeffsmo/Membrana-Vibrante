%%%% Graficar la evolucion U(P,T) en tiempo 0<t<1 y espacio 0<p<1

clear all;
clc;

c=1;
t=0.5;
p=linspace(0,c,20);
theta=linspace(0,2*pi,20);
x=p.*cos(theta');
y=p.*sin(theta');


A=0.01;


Om=O_m(t);

delta=delta(Om,c,A);

U_pt=U3(p,t,delta,Om);

U_pt=transpose(U_pt);


figure;

surf(x,y,U_pt')
