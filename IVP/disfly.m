function [dis t]=disfly(v)

t=0;
S=[0 v*cos(pi/4) 0 v*sin(pi/4)];

dt=0.01;

for k=1:10000
	S=S+FF(t,S)*dt;
	t=t+dt;
	if (S(3)<0) 
		dis = S(1);
		return
	end
end

function F=FF(t,S)

F(1)=S(2);
F(2)=0;
F(3)=S(4);
F(4)=-9.8;

