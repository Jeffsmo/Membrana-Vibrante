%%%%     GRAFIQUE EL ESTADO DE LA MEMBRANA PARA t=0.5s con o<=p<=1
clear all;
clc;

c=1;
p=linspace(0,c,80);
%t=0.5;
A=0.01;
theta=linspace(0,2*pi,80);



[R,T]=meshgrid(p,theta);

cs=cos(T);
ss=sin(T);

x=R.*cs;
y=R.*ss;

Om=O_m(R);

delta=delta(Om,c,A);

k=1;

    for t=linspace(0,1,500)
    
    U_pt=U1(R,t,delta,Om);
    
    U_pt=transpose(U_pt);
    
    z=meshgrid(U_pt);
    
    
    surf(x,y,z)
    lighting gouraud
    axis tight
    shading interp
    lighting gouraud
    colormap hot
    % xt=xticks(gca);
    % xt2=compose('%.of\\circw',xt);
    % set(gca,'XTickLabel',xt2)
    set(gca,'Color','k','XColor','W','YColor','W','ZColor','W')
    set(gca,'Clim',[-0.015 0.015])
    set(gcf,'Color','k')
    colorbar('Color','W')
    
    zlim([-0.015 0.015])
    drawnow
    mov(k)=getframe(gcf);
    k=k+1;
    pause(0.01);

    end

   video = VideoWriter('VibracionMembranaCircularHOOT.avi','Motion JPEG AVI');
   open(video)
   writeVideo(video,mov)
   close(video)
