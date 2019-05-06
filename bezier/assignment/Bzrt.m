function Bzrt(P,n)
% P : initial control points
% n : input parameter for desired accuracy

for i=1:n
	for j=1:2^(i-1)
	  Q(8*j-7:8*j,1:2) = Mid(P(4*j-3:4*j,1:2));
	end
	P = Q ;
end

size(P,1)

plot(P(:,1),P(:,2),'o-')

%P 

%i=1 1
%P(1:8,1:2)=Mid(P(1:4,1:2))

%i=2 2 2^1
%P(1:8,1:2)=Mid(P(1:4,1:2))
%P(9:16,1:2)=Mid(P(5:8,1:2))

%i=3 4 2^2
%P(1:8,1:2)=Mid(P(1:4,1:2))
%P(9:16,1:2)=Mid(P(5:8,1:2))
%P(17:24,1:2)=Mid(P(9:12,1:2))
%P(25:32,1:2)=Mid(P(13:16,1:2))


%i=4 8 2^3
%P(1:8,1:2)=Mid(P(1:4,1:2))
%P(9:16,1:2)=Mid(P(5:8,1:2))
%P(17:24,1:2)=Mid(P(9:12,1:2))
%P(25:32,1:2)=Mid(P(13:16,1:2))

