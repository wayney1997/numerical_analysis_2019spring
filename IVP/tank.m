function tank(distank)

figure; hold on;
axis([0 distank*1.2 -1 distank/2])
plot(distank,0,'ks')

v=calc_velo(distank);

t=0;
S=[0 v*cos(pi/4) 0 v*sin(pi/4)];

dt=0.01;

H=plot(S(1),S(3),'r*');

for k=1:10000
	S=S+FF(t,S)*dt;
	t=t+dt;

	if(mod(k,10)==0)
	set(H,'xdata',S(1),'ydata',S(3))
	drawnow
	pause(dt)
	end
	if(S(3)<0); break; end;
end

function F=FF(t,S)

F(1)=S(2);
F(2)=0;
F(3)=S(4);
F(4)=-9.81;
