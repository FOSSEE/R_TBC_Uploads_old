mu=0.40
n=100
p=0.37
q=1-mu
c=qnorm(0.995)
z=(p-mu)/sqrt(mu*q/n)
if((z>-c)&&(z<c))
  l<-paste("Hypothesis rejected") else
    l<-paste("Hypothesis accepted")
l