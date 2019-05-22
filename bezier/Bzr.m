function Bzr(f,n)

P(1,:)=f(1:2);
P(2,:)=f(3:4);
P(3,:)=f(5:6);
P(4,:)=f(7:8);

tn=linspace(0,1,n);

b=zeros(n,2);

for k=1:n
    t=tn(k);
    b(k,:)=t^3*P(1,:) + 3*t^2*(1-t)*P(2,:) + 3*t*(1-t)^2*P(3,:)+ (1-t)^3*P(4,:);
end

plot(b(:,1),b(:,2))
