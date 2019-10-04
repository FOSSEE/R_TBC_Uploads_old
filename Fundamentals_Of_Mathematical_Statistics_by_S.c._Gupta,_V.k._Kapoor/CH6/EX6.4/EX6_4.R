#Page number--6.13
#Example number--6.4

PX0=choose(3,2)/choose(10,2)
PX1=choose(7,1)*choose(3,1)/choose(10,2)
PX2=choose(7,2)/choose(10,2)

x=c(0,1,2)
px=c(PX0,PX1,PX2)
#Probability Distribution
a=data.frame(x,px)
a
EX=sum(x*px)
EX
