#Page number--10.18
#Example number--10.14

n=100
v=c(-2,-1,0,1,2,3)
g=c(8,19,35,22,10,6)
a=v^2*g
uf=c(-19,0,31,56)
u2f=c(19,0,31,112)
suvf=c(9,0,13,30)
meanU=sum(uf)/n
meanV=sum(v*g)/n
covUV=1/n*sum(suvf)-meanU*meanV
s.dU=sqrt(1/n*sum(u2f)-meanU^2)
s.dU
s.dV=sqrt(1/n*sum(a)-meanV^2)
s.dV
rUV=covUV/(s.dU*s.dV)
rUV

