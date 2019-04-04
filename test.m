x=5/2;
c=log(1);
% getting coefficients by Newton forms
c=[c -(newton_eval(c,0,2)-log(2))/(2-1)];
c=[c -(newton_eval(c,1,3)-log(3))/(3-1)/(3-2)];
c=[c -(newton_eval(c,[1 2],4)-log(4))/(4-1)/(4-2)/(4-3)];

newton_eval(c,[1 2 3],x)

