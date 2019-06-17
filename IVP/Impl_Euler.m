clear all

%y'=10*(1-y)

w=1/2; t=0;
h=0.18;

figure; hold on

% Explicit Euler
for k=1:100
    w2=w+h*10*(1-w);
    t2=t+h;
    plot([t t2],[w,w2],'b')
    w=w2; t=t2;
end


%Implicit Euler
w=1/2; t=0;
trace=animatedline('color','r');
addpoints(trace,t,w);
for k=1:100
    w=1/(1+10*h)*w+10*h/(1+10*h);
    t=t+h;
    addpoints(trace,t,w);
end
