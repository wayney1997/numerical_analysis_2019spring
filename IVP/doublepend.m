function doublepend(T,S)

%S=[pi/3 -1 pi/4 0];
t=0;
dt=0.01;

x1=cos(S(1)-pi/2); y1=sin(S(1)-pi/2);
x2=x1+cos(S(3)-pi/2); y2=y1+sin(S(3)-pi/2);

figure; hold on; axis([-2 2 -2 2])
H2=plot(x2,y2,'o');
H1=plot(x1,y1,'o');
rod1=line('xdata',[0 x1],'ydata',[0 y1]);
rod2=line('xdata',[x1 x2],'ydata',[y1 y2]);


N=T/dt;

for k=1:N
	S=RK4(t,S,dt);
	t=t+dt;
	
	x1=cos(S(1)-pi/2); y1=sin(S(1)-pi/2);
	x2=x1+cos(S(3)-pi/2); y2=y1+sin(S(3)-pi/2);
%	plot(x2,y2,'o')
%	plot(x1,y1,'o')
	set(H2,'xdata',x2,'ydata',y2)
	set(H1,'xdata',x1,'ydata',y1)
	set(rod1,'xdata',[0 x1],'ydata',[0 y1]);
	set(rod2,'xdata',[x1 x2],'ydata',[y1 y2]);

	pause(0.01)
end

end

%==========================

function Z=RK4(t,S,dt)

k1=FF(t,S);
k2=FF(t+dt/2, S+k1*dt/2);
k3=FF(t+dt/2, S+k2*dt/2);
k4=FF(t+dt, S+k3*dt);

Z=S+dt*(k1+2*k2+2*k3+k4)/6;

end

%==========================

function F=FF(t,S) % S=[theta v_theta omega v_omega]

g=9.8;

F(1)=S(2);
F(2)=-3*g*sin(S(1))-g*sin(S(1)-2*S(3))-2*sin(S(1)-S(3))*(cos(S(1)-S(3))*S(2)^2+S(4)^2);
F(2)=F(2)/(2+2*sin(S(1)-S(3))^2);
F(3)=S(4);
F(4)=2*sin(S(1)-S(3))*(2*g*cos(S(1))+2*S(2)^2+cos(S(1)-S(3))*S(4)^2);
F(4)=F(4)/(2+2+2*sin(S(1)-S(3))^2);


end
