#PAGE NUMBER--2.31
#Example number--2.23

m.g=c("0-10","10-20","20-30","30-40","40-50","50-60","60-70")  	#Marks Group
f=c(4,8,11,15,12,6,3)
l.c.f=cumsum(f)									#Less than cumulative frequency
m.c.f=rev(cumsum(rev(f)))
data.distr=data.frame(m.g,f,l.c.f,m.c.f)					#More than cumulative frequency
data.distr
#For lower quartile (Q1)
N=sum(f)
Q1=20+10/11*(N/4-l.c.f[2])
Q1
#For middle quartile (Q2)                   
Q2=30+10/15*(N/2-l.c.f[3])							#Median
Q2
#For upper quartile (Q3)
Q3=40+10/12*(3*N/4-l.c.f[4])
Q3
x=seq(10,70,10)
plot(x,l.c.f,xlab="MARKS",ylab="No. of Students",main="Cumulative frequency curve",col="red")
sp=spline(x,l.c.f,n=20)
plot(x,m.c.f,xlab="MARKS",ylab="No. of Students",main="Cumulative frequency curve",col="red")
spl=spline(x,m.c.f,n=20)
lines(spl,col="blue")
lines(sp,col="green")
locator()

