clear all
format long
f=inline('x^3-2*x-5');

x0=0;
x1=i;

for k=1:20
    x = x1 - f(x1)*(x0-x1)/(f(x0)-f(x1))
    temp=x1;
    x1=x;
    x0=temp;
    if(abs(f(x))<10^(-15)) break; end
end
