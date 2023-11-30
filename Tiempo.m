%%% GRAFIQUE LA EVOLUCION DE LA POSICION DE UN PUNTO DE LA MEMBRANA EN
%%% p=0.5 para 0<=t<=1m

clear all;
clc;

c=1;
t=linspace(0,c,80);
p=0.5;
A=0.01;


Om=O_m(t);

delta=delta(Om,c,A);

U_pt=U2(p,t,delta,Om);

U_pt=transpose(U_pt);


figure;

plot(t,U_pt)
xlabel("Tiempo (s)")
ylabel("Magnitud de U(0.5,t)")
title("Estado de la Onda en 0,5 metros entre 0<t<1s")




