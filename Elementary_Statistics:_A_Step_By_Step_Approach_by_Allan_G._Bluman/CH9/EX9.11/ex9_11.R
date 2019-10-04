x1=12
n1=34
x2=17
n2=24
p1=round(x1/n1,2)
q1=1-p1
p2=round(x2/n2,2)
q2=1-p2
p=(x1+x2)/(n1+n2)
q=1-p
c1=round(qnorm(0.975),2)
lo=(p1-p2)-(c1*sqrt((p1*q1)/n1 + (p2*q2)/n2))
hi=(p1-p2)+(c1*sqrt((p1*q1)/n1 + (p2*q2)/n2))
p<-paste("Confidence intervals are in between",round(hi,3),"and",round(lo,3))
p
if(lo<0 && hi<0)
  l<-paste("Since 0 is not contained in the interval, the decision is to reject the null hypothesis") else
    l<-paste("Null hypothesis accepted")
l