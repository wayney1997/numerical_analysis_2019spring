clear all

f=inline('x.^3-2*x-5');
df=inline('3*x^2-2');
xt(1)= 2.094551481542327;   
xt(2)=-1.047275740771163 + 1.135939889088928i;
xt(3)=-1.047275740771163 - 1.135939889088928i;

n=250;

rx=linspace(-1.5,2.5,n);
ix=linspace(-1.5,1.5,n);

z=zeros(n,n);

for m=1:n
    for j=1:n
        x=rx(m)+ix(j)*i;
        
        for k=1:25
            x=x-f(x)/df(x);
        end
        
        if(abs(x-xt(1))<10^(-6))
            z(m,j)=1;
        elseif(abs(x-xt(2))<10^(-6))
            z(m,j)=2;
        elseif(abs(x-xt(3))<10^(-6))
            z(m,j)=3;
        end
        
    end
end

z=rot90(z);
figure; imagesc(z)

%0-->[0 0 0] black, 1-->[1 0 0] red, 2-->[0 1 0] green, 3-->[0 0 1] blue
colormap([0 0 0; 1 0 0; 0 1 0; 0 0 1]) 
