#Page number--6.12
#Example number--6.3
#LOAD PACKAGE---->prob

s=tosscoin(4)
s

n.o.h=c(4,3,3,3,3,2,2,2,2,2,2,1,1,1,1,0)
data.frame(s,n.o.h)
PX0=1/6;PX1=4/16;PX2=6/16;PX3=4/16;PX4=1/16

#Probability Distribution
x=c(0,1,2,3,4)
px=c(PX0,PX1,PX2,PX3,PX4)
data.frame(x,px)
EX=sum(x*px)
EX


