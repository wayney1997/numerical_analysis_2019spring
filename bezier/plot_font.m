clear all

figure; hold on
axis([1 700 0 700])

load T.txt
nb=size(T,1);

tic
for k=1:nb
    Bzr(T(k,:),10);
%    pause(0.1)
end
toc
