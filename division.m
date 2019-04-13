function division=division(n)
b=sqrt(2);

x=3/4;
err=0;

for k=1:n
    x=2*x-b*x*x;
end 

err=abs(x-1/b)
