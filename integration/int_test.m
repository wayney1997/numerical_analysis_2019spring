function int_test=int_test(n)

f=inline('exp(-x.^2)*2/sqrt(pi)');
true=[erf(1) erf(1) erf(1)];
% erf(1) = 2/sqrt(pi)*\int_0^1 e^(-x^2)
x=linspace(0,1,n+1);

sum=[0 0 0];

a=x(1);
for k=1:n 
 b=x(k+1); 
 sum(1)=sum(1)+(b-a)*(f(a)+f(b))/2; % Trapezoidal rule with duplicated calculation reductioni
 a=b;
end

for k=1:n
 a=x(k); b=x(k+1); m=(a+b)/2; 
 sum(2)=sum(2)+(b-a)*f(m); % Midpoint rule
end

for k=1:n
 a=x(k); b=x(k+1); m=(a+b)/2;
 sum(3)=sum(3)+(b-a)*(f(a)+4*f(m)+f(b))/6; % Simpson rule
end

err=abs(sum-true)
