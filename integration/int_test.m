clear all

f=inline('exp(-x.^2)*2/sqrt(pi)');
true=[erf(1) erf(1) erf(1)];

n=1000; 
x=linspace(0,1,n+1);
tic
sum=[0 0 0];
for k=1:n
    a=x(k); b=x(k+1); m=(a+b)/2;
    sum(1)=sum(1)+(b-a)*(f(a)+f(b))/2; %trapezoidal rule
    sum(2)=sum(2)+(b-a)*f(m); %midpoint rule
    sum(3)=sum(3)+(b-a)*(f(a)+4*f(m)+f(b))/6; %Simpson rule
end
toc

sum
err=abs(sum-true)
err_r=[1 err(2)/err(1) err(3)/err(1)]
