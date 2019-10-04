x1=12
n1=34
x2=17
n2=24
p1=x1/n1
p2=x2/n2
p=(x1+x2)/(n1+n2)
q=1-p
c1=round(qnorm(0.975),2)
c2=-round(qnorm(0.975),2)
z=round((p1-p2)/sqrt(p*q*(1/n1+1/n2)),1)
if(z>c1 || z<c2)
  l<-paste("There is enough evidence to reject the claim that there is no difference in the proportions of small and large nursing homes with a resident vaccination rate of less than 80%.") else
    l<-paste("Null hypothesis accepted")
l