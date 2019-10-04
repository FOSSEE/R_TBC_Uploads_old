mu1=5
n=50
x=4.6
s=0.7
sq=round(sqrt(n),3)
z=(x-mu1)*sq/s
c1=-round(qnorm(0.975),2)
c2=round(qnorm(0.975),2)
if(z<c1 || z>c2)
  l<-paste("Null hypothesis rejected")
l
m1=x-(c2*s/sq)
m2=x+(c2*s/sq)
p<-paste("confidence interval is between",round(m1,1),"and",round(m2,1))
p