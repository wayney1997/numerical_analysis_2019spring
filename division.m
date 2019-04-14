function division=division(n)
b=1+rand;

x=3/4;

tic
for k=1:n
    x=2*x-b*x*x;
	if(abs(x-1/b)< 2^(-30)) break; end
end 
toc

iter = k
b
b_inv = x
b * b_inv
