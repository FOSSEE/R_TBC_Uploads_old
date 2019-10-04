mu=0.60
n=200
x=128
p=x/n
q=1-mu
c=1.96
z=(p-mu)/sqrt(mu*q/n)
if((z>-c)&&(z<c))
  l<-paste("Hypothesis rejected") else
    l<-paste("Hypothesis accepted")
l