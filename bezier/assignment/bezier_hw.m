function bezier_hw(n)

figure; hold on
axis([1 700 0 700])

load T.txt

tic
for i=1:size(T,1)
	for j=1:4
		P(j,:)=T(i,:)(2*j-1:2*j);
	end

	Bzrt(P,n);
end
toc
