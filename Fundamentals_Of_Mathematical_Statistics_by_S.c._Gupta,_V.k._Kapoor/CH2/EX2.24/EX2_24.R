#PAGE NUMBER--2.33
#Example number--2.24

marks=c("0-10","10-20","20-30","30-40","40-50","50-60","60-70")
n.o.s=c(6,5,8,15,7,6,3)
mid=seq(5,65,10)
d=(mid-35)/10
fd=n.o.s*d
mean=35+10*(sum(fd))/sum(n.o.s)
l.c.f=cumsum(n.o.s)
a=abs(mid-mean)
b=n.o.s*a
fr.distr=data.frame(marks,mid,n.o.s,d,fd,a,b,l.c.f)
fr.distr

#Part (i)
N=sum(n.o.s)
Q1=20+10*(N/4-11)/8
Q1			#Q1 is deviated because they have taken N/4=12.75 which is 12.5
Q3=40+10/7*(3*N/4-34)
Q3			#Q3 is deviated because they have taken N/4=12.75 which is 12.5

QD=(Q3-Q1)/2
sprintf("Quartile Deviation is : %s",QD)

#Part (ii)
MD=sum(b)/N
MD




	