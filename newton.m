function y=newton( p , v , x )

c=v(1);
tic
for i=2:1:size(p,2)
  Q = 1;
   for m=1:1:i-1
    Q = Q*(p(i)-p(m));
   end
c(i) = (v(i) - horner(c,p,p(i))) / Q ;
end
c
y=horner(c,p,x)
toc


