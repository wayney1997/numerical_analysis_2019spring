function plot_direcf

FF=inline('0*t+t.*y.*(2-y)');

[t,y]=meshgrid([0:0.1:4],[0:0.1:2]);

u=ones(size(t));
v=FF(t,y);

norm=sqrt(1+v.^2);

h=quiver(t,y,u./norm, v./norm,'showarrowhead','off')
