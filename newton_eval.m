function y=newton_eval(a,p,x) % a p : vector , x : scalar

y=a(size(a,2));
%Horner method using nested forms 

for k = size(a,2)-1:-1:1 
    y = y*(x-p(k))+a(k);
end
