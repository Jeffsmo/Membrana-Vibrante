%%%%     GRAFIQUE EL ESTADO DE LA MEMBRANA PARA t=0.5s con o<=p<=1

clear all;
clc;

c=1;
p=linspace(0,c,80);
t=0.5;
A=0.01;
theta=linspace(0,2*pi,80);



[R,T]=meshgrid(p,theta);

cs=cos(T);
ss=sin(T);

x=R.*cs;
y=R.*ss;

Om=O_m(R);

delta=delta(Om,c,A);

    U_pt=U1(R,t,delta,Om);
    
    U_pt=transpose(U_pt);
    
    z=meshgrid(U_pt);
    
    
    surf(x,y,z)
    lighting gouraud
    axis tight
    shading interp
    lighting gouraud
    colormap hot




