f=inline('sin(x)^2');
df=inline('sin(2*x)');
ddf=inline('2*cos(2*x)');

x=rand;

tic 
for i=1:20 % Non-modified Newton
	x = x - f(x)/df(x);
	if(f(x) < 10^(-15)) break; end
end 
toc

tic 
for i=1:20 % Unknown multiplicity modification
	x = x - f(x)*df(x)/(df(x)*df(x)-f(x)*ddf(x));
	if(f(x) < 10^(-15)) break; end
end 
toc

tic 
for i=1:20 % Known multiplicity, Raston 1978 modification
    x=x-2*f(x)/df(x); % known multiplicity = 2  
    if(abs(df(x)) < 10^(-15)) break; end 
end 
toc

