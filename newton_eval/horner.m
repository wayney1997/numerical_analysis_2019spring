function y=horner(c,p,x) 

y=c(size(c,2));
%Horner method using nested forms 

for k = size(c,2)-1:-1:1 
    y = y*(x-p(k))+c(k);
end
