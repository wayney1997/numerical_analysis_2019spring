function y=newton( p , v , x ) % p : base points , v : values corresponding to p , x : evaluation point

n = size(p,2);

c=v(1);

for i=2:1:n
  Q = p(i) - p(1);
   for m=2:1:i-1
    Q = Q*(p(i)-p(m));
   end
c(i) = v(i) - horner(c,p,p(i)) / Q ;
end

y=horner(c,p,x)

