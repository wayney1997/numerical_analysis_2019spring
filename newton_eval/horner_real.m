function horner_real=horner_real(c,x)

y = x+ c(size(c,2))

for k = size(c,2)-1 : -1 : 1
	y = y * x + c(k) 
end

