clear all

f=inline('[2*x^3+y^3+x*y-6; x^3-y^3+x*y-4]');
df=inline('[6*x*2+y 3*y^2+x; 3*x^2+y -3*y^2+x]'); %Jacobian

x=[1 0]';

for k=1:30
    x=x-inv(df(x(1),x(2)))*f(x(1),x(2));
end

zero=x
fval=f(x(1),x(2))
