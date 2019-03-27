clear all

b=sqrt(2);

x=3/4;
err=0;

for k=1:20
    x=2*x-b*x*x
    err=abs(x-1/b)
   % if(err<10^(-15))
   %     print(k)
   % end
end 