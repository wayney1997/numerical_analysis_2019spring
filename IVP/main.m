%-------------------------------------------------%

function main(t,Y)

%t=0,y=1;
%t=0; Y=1.5;
endt=4
dt=0.01;


figure; hold on 
plot(t,Y);
direcf;

for n=1:dt:endt
	Y=Rk4(t,Y,dt);
	t=t+dt;
	plot(t,Y,'ro');
end

end

%--------------------------------------------------%

function Z=Rk2(t,Y,dt)

k1 = FF(t,Y);
Y2=Y+k1*dt;
t=t+dt;
k2=FF(t,Y2);
Z=Y+(k1+k2)/2*dt;

end

%--------------------------------------------------%

function Z=Rk4(t,Y,h)

k1=FF(t,Y);
g=Y+h/2*k1;
k2=FF(t+h/2,g);
g=Y+h/2*k2;
k3=FF(t+h/2,g);
g=Y+h*k3;
k4=FF(t+h,g);

Z=Y+h*(k1+2*k2+2*k3+k4)/6;

end

%--------------------------------------------------%

function F=FF(t,Y)

F=t+Y.*(2-Y.^2);

%g=9.8;

%F(1) = Y(2);
%F(2) = sin(2*Y(1));

end

%--------------------------------------------------%

function direcf

%FF=inline('0.*t+y.*(2-y)');

[t,y] = meshgrid([0:0.1:4],[0:0.1:2]);

u=ones(size(t));
v=FF(t,y);

norm=sqrt(1+v.^2);

h=quiver(t,y,u./norm,v./norm,'showarrowhead','off')

end

%--------------------------------------------------

