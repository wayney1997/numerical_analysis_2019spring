function newton1d=newton1d(n)

f=inline('x.^3-2*i*x-5');
df=inline('3*x^2-2*i');

x=i;
%plot(real(x),imag(x),'*'); hold on
for k=1:n
    x1=x-f(x)/df(x);
%   plot(real([x x1]),imag([x x1]),'o-')
    x=x1;
end
%plot(real(x),imag(x),'+'); hold on 

fval=f(x)
