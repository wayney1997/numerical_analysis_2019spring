clear all
close all

x=0; y=0; %ini position
vx=4; vy=4; %ini velocity

m=1; g=9.8;
dt=0.01;

h=plot(x,y,'ro');
axis([0 4 -0.02 1])

for k=1:300
    x=x+dt*vx;
    y=y+dt*vy;
    vx=vx+dt*0;
    vy=vy+dt*(-m*g);
    
    set(h,'xdata',x,'ydata',y);
    if(mod(k,3)==0) pause(0.03); end
    if(y<0) break; end
end
