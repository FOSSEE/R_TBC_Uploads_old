c1=-round(qnorm(0.975),2)
c2=round(qnorm(0.975),2)
s1=5.62*5.62
s2=4.83*4.83
n1=n2=50
x1=88.42
x2=80.61
z=1.96
lo=(x1-x2)-(z*sqrt(s1/n1 + s2/n2))
hi=(x1-x2)+(z*sqrt(s1/n1 + s2/n2))
p<-paste("Confidence interval is between",round(lo,2),"and",round(hi,2))
if(lo>0)
  l<-paste("Since the confidence interval does not contain zero, the decision is to reject the null hypothesis, which agrees with the previous result.")else
  l<-paste("Hypothesis accepted")    
p
l
