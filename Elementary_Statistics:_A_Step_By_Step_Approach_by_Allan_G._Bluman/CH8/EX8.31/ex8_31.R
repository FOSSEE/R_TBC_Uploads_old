mu1=200
n=10
x=198.2
s=3.3
sq=round(sqrt(n),4)
z=(x-mu1)*sq/s
c2=round(-qt(0.025,9),3)
c1=-round(-qt(0.025,9),3)
if(z>c1 || z<c2)
  l<-paste("Null hypothesis accepted")else
    l<-paste("Null hypothesis rejected")
l
m1=x-round((c2*s/sq),3)
m2=x+round((c2*s/sq),3)
p<-paste("confidence interval is between",round(m1,1),"and",round(m2,1))
p