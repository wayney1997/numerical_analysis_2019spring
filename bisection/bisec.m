function bisec=bisec(n)
f = inline('cos(x)-x');
a=0; b=pi/2;

for k=1:n
	c=(a+b)/2;
		if(f(c)>0)	a=c;
		else b=c;
		end
end

fval=f(c)
