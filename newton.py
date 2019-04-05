from math import log as log
import time

#Horner; c_i : coeff. , x : eval.
def horner(c,p,x):
   y = c[-1]
   for k in range(len(c)-1,0,-1):
      y = y*(x-p[k-1])+c[k-1]
   return y

#Newton form polynomial evaluation
def newton(p,v,x):
   c=[v[0]]
   for i in range(1,len(p)):
      Q=1
      for j in range(0,i):
         Q=Q*(p[i]-p[j])
      c.extend([(v[i]-horner(c,p,p[i]))/Q])
   print(c)
   return horner(c,p,x)

#print(horner([1,1,1],[1,2],2))
start = time.time()
print(newton([1,2,3,4],[log(1),log(2),log(3),log(4)],2.5))
end = time.time()

print(end-start)
