function y=newton_eval(a,p,x) % a p : vector , x : scalar
n=size(a,2);

q=a(n);
%Horner method
for k = n-1:-1:1 
    q = q*(x-p(k))+a(k);
end

y=q;
