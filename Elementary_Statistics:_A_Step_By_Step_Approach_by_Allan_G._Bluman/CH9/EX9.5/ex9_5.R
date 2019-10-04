c2=round(qt(0.975,7),3)
c2
s1=38*38
s2=12*12
n1=8
n2=10
x1=191
x2=199
lo=(x1-x2)-(c2*sqrt(s1/n1 + s2/n2))
hi=(x1-x2)+(c2*sqrt(s1/n1 + s2/n2))
p<-paste("Confidence interval is between",round(lo,2),"and",round(hi,2))
if(lo<0 && hi>0)
  l<-paste("Since 0 is contained in the interval, the decision is to not reject the null hypothesis")else
    l<-paste("Hypothesis rejected")    
p
l
#qf doesn't give the exact answer as in the tb