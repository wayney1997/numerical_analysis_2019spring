clear all

f=inline('sin(x)^2');
df=inline('sin(2*x)');

x=1;

for k=1:20
    %x=x-f(x)/df(x) % Newton
    x=x-2*f(x)/df(x) % Known multiplicity = 2  
    if(abs(df(x)) < 10^(-15)) break; end % breaking condition preventing division b zero 
end 