function test=test(n)

f=inline('exp(-x.^2)*2/sqrt(pi)');
true=erf(1)
x=linspace(0,1,n+1);
sum=0;
tic
a=x(1);
for k=1:n
	b=x(k+1);
	sum = sum + (b-a)*(f(a)+f(b))/2;
	a=b;
end
toc
err1 = sum - true 


sum=0;
for k=1:n;
	a=x(k); b=x(k+1);
	sum = sum + (b-a)*(f(a)+f(b))/2;
end
toc
err2 = sum - true
