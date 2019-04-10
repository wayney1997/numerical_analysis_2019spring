f=inline('exp(-x.^2)*2/sqrt(pi)');
true=erf(1);
tic
n=20;
x=linspace(0,1,n+1);

sum=0;
for k=1:n
	sum = sum + (x(k+1)-x(k))*(f(x(k))+f(x(k+1)))/2;
end
toc
sum
true
err=abs(sum-true)

