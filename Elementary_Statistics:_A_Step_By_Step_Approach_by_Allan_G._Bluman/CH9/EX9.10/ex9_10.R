p1=0.45
n1=200
p2=0.35
n2=200
x1=p1*n1
x2=p2*n2
p=(x1+x2)/(n1+n2)
q=1-p
c1=round(qnorm(0.995),2)
c2=-round(qnorm(0.995),2)
z=round((p1-p2)/sqrt(p*q*(1/n1+1/n2)),1)
if(z>c1 || z<c2)
  l<-paste("Null hypothesis rejected") else
    l<-paste("Null hypothesis accepted. There is not enough evidence to support the claim that there is a difference in proportions.")
l