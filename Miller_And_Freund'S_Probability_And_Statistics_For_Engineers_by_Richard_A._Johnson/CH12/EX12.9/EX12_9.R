#Find 94% Bonferroni SimultaneousConfidence interval
MSE=0.0237
alpha=0.06
k=3
l.o.c=alpha/k*(k-1)
df=12
t0.01=qt(1-0.01,df=12)
t0.01
MDmu=1.334
Edmu=0.964
PFmu=0.776
n=5
Interval<- function(y1,y2,n1,n2){
  int1=y1-y2+t0.01*sqrt(MSE*((1/n1)+(1/n2)))
  int2=y1-y2-t0.01*sqrt(MSE*((1/n1)+(1/n2)))
  interval<-c(int2," ",int1)
  return (interval)
}
MDED=Interval(MDmu,Edmu,n,n)
MDPF=Interval(MDmu,PFmu,n,n)
EDED=Interval(Edmu,PFmu,n,n)
#There for the interval are as
message(MDED)
message(MDPF)
message(EDED)
