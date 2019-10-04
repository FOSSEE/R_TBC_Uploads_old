c1=-round(qnorm(0.975),2)
c2=round(qnorm(0.975),2)
s1=5.62*5.62
s2=4.83*4.83
n1=n2=50
x1=88.42
x2=80.61
z=(x1-x2)/sqrt(s1/n1 + s2/n2)
if(z>c2 || z<c1)
  l<-paste("Null hypothesis rejected. There is enough evidence to support the claim that the means are not equal. Hence, there is a significant difference in the rates. ")
l