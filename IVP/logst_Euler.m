clear all

f=inline('0*t+y*(2-y)');

%true sol graph
y=inline('2./(1+exp(-2*t))');
t=linspace(0,1,200);

figure; hold on
plot(t,y(t))

%Euler method
N=10; 
h=1/N;

w=1; 
t=0;
plot(t,w,'r.')
for k=1:N
    w=w+h*f(t,w);
    t=t+h;
    plot(t,w,'r.')
end

err=abs(w-y(1))