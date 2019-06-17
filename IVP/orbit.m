function orbit(endt)

t=0;
S=[1 1 0 1];
dt=0.1;

figure; hold on; axis([-2 2 -2 2])
H=plot(S(1),S(3),'bo');

for k=1:dt:endt
  S2=RK4(t,S,dt);
  t2=t+dt;
  set(H,'xdata',S(1),'ydata',S(3))
  plot([S(1) S2(1)], [S(3),S2(3)], 'k');
  S=S2;
  t=t2;
 %  pause(1/200)
 % plot(cos(S(1)-pi/2), sin(S(1)-pi/2),'o')
 %set(H,'xdata', cos(S(1)-pi/2),'ydata' , sin(S(1)-pi/2))
 % pause(1/32)
  %t(k+1)=t(k)+dt;
  %y(k+1,:)=RK2(t(k),y(k,:),dt);
end

end

%------------------------------------

function y2 = RK4(t,S,h)
k1=FF(t,S);
g=S+h/2*k1;
k2=FF(t+h/2,g);
g=S+h/2*k2;
k3=FF(t+h/2,g);
g=S+h*k3;
k4=FF(t+h,g);

y2=S+h*(k1+2*k2+2*k3+k4)/6;

end

%------------------------------------

function y2 = RK2(t,S,h)
k1=FF(t,S);
g=S+h*k1;
k2=FF(t+h,g);
y2=S+h*(k1+k2)/2;

end

%------------------------------------

function F=FF(t,S)
R=sqrt(S(1)^2+S(3)^2);
F(1)=S(2);
F(2)=-S(1)/R;
F(3)=S(4);
F(4)=-S(3)/R;


end

