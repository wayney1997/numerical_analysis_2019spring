clear all

f=inline('x.^3-2*i*x-5');
df=inline('3*x^2-2*i');

x=10+i;
plot(real(x),imag(x),'*'); hold on
for k=1:200
    x1=x-f(x)/df(x);
    plot(real([x x1]),imag([x x1]),'o-')
    x=x1;
end
plot(real(x),imag(x),'+'); hold on 

zero=x
fval=f(x)
