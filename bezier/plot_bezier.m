clear all

%control points
p0=[0,0]; p1=[1,1]; p2=[1,1]; p3=[0,1];

n=2^5;
t=linspace(0,1,n);

%plotting control points
figure; hold on
plot(p0(1),p0(2),'ko')
plot(p1(1),p1(2),'ko')
plot(p2(1),p2(2),'ko')
plot(p3(1),p3(2),'ko')
plot([p0(1),p1(1)], [p0(2),p1(2)] ,'k')
plot([p1(1),p2(1)], [p1(2),p2(2)] ,'k')
plot([p2(1),p3(1)], [p2(2),p3(2)] ,'k')

indiv=inline('(1-t)*A+t*B','A','B','t');

%plotting Bezier curve
for i=1:n
    
    %calc dividing points
    p01=indiv(p0,p1,t(i));
    p12=indiv(p1,p2,t(i));
    p23=indiv(p2,p3,t(i));
    p012=indiv(p01,p12,t(i));
    p123=indiv(p12,p23,t(i));
    p0123=indiv(p012,p123,t(i));

    %plotting dividing points and segments
    h(1)=plot(p01(1),p01(2),'bo');
    h(2)=plot(p12(1),p12(2),'bo');
    h(3)=plot(p23(1),p23(2),'bo');
    h(4)=plot([p01(1),p12(1)], [p01(2),p12(2)] ,'b');
    h(5)=plot([p12(1),p23(1)], [p12(2),p23(2)] ,'b');

    h(6)=plot(p012(1),p012(2),'go');
    h(7)=plot(p123(1),p123(2),'go');
    h(8)=plot([p012(1),p123(1)], [p012(2),p123(2)] ,'g');

    h(9)=plot(p0123(1),p0123(2),'ro');

    %hide plotted objects for next plotting
    drawnow
    pause(0.3)
    for j=1:9
        set(h(j),'visible','off')
    end

    if(i>1)
        plot([pre(1),p0123(1)], [pre(2),p0123(2)] ,'r');
    end
    pre=p0123;
end
