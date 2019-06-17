function pend
int = [0 10];
dt=.05;

n=round((int(2)-int(1))/dt); % plot n points in total

t=0;
S=[pi/3,-0.1];

figure; hold on; axis([-2 2 -2 1])
H=plot(cos(S(1)-pi/2), sin(S(1)-pi/2),'o')

for k=1:n
  S=RK4(t,S,dt);
  t=t+dt;
  plot(cos(S(1)-pi/2), sin(S(1)-pi/2),'o')
  set(H,'xdata', cos(S(1)-pi/2),'ydata' , sin(S(1)-pi/2))
  pause(1/32)
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
g=9.81;length=0.51;
F(1) = S(2);
F(2) = -(g/length)*sin(S(1));

end

%------------------------------------

function F=FFF(t,S)

F(1)=S(2);
F(2)=-S(1);
F(3)=S(4);
F(4)=-S(3);


end

