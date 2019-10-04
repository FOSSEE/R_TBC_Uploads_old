#Page number--6.11
#Example number--6.1

x=c(-3,6,9)
px=c(1/6,1/2,1/3)
a=data.frame(x,px)
a
#E(X)
EX=sum(a[1:3,1]*a[1:3,2])
EX
#E(X^2)
EX2=sum((a[1:3,1])^2*a[1:3,2])
EX2
#E(2X+1)^2=4*E(X^2)+4*E(X)+1
EX3=4*EX2+4*EX+1
EX3
