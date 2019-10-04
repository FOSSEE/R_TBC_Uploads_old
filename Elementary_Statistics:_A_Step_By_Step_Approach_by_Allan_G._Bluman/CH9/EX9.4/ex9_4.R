c1=-round(qt(0.975,7),3)
c1
c2=round(qt(0.975,7),3)
s1=38*38
s2=12*12
n1=8
n2=10
x1=191
x2=199
z=(x1-x2)/sqrt(s1/n1 + s2/n2)
z
if(z>c2 || z<c1)
  l<-paste("Null hypothesis rejected.") else
    l<-paste("Null hypothesis accepted.There is not enough evidence to support the claim that the average size of the farms is different. ")
l
#qf function with alpha=0.05 and df=7 doesnt give 2.365
