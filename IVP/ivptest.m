function ivptest(endt)

t=0; dt=0.1;
S=[1 0.1]; % S=[y,y']

figure; hold on;
H=plot(S(1),S(2),'bo');

for k=1:dt:endt
	S2=RK4(t,S,dt);
	t2=t+dt;
	set(H,'xdata',S(1),'ydata',S(2))
	plot([S(1) S2(1)],[S(2) S2(2)], 'k');
	S=S2;
	t=t2;
	pause(1/200)
end

end

%-----------------------

function Z=RK4(t,S,h)

k1=FF(t,S);
g=S+h/2*k1;
k2=FF(t+h/2,g);
g=S+h/2*k2;
k3=FF(t+h/2,g);
g=S+h/2*k3;
k4=FF(t+h,g);

Z=S+h*(k1+2*k2+2*k3+k4)/6;

end

%-----------------------

function F=FF(t,S)

F(1)=S(2);
F(2)=sin(S(2));

end
