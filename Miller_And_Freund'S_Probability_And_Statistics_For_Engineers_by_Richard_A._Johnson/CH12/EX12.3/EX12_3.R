#EXAMPLE 3
#Confidence intervals
#Given
MSE=0.0234
dfE=12
n=5
MDmu=1.334
Edmu=0.964
PFmu=0.776
x=#The Three confidence intervals become
t0.025=-1*qt(0.025,dfE)
Interval<- function(y1,y2,n1,n2){
  int1=y1-y2+(t0.025*sqrt((MSE)*((1/n1)+(1/n2))))
  int2=y1-y2-t0.025*sqrt(MSE*((1/n1)+(1/n2)))
  interval<-c(int2," ",int1)
  return (interval)
}
MDED=Interval(MDmu,Edmu,n,n)
MDPF=Interval(MDmu,PFmu,n,n)
EDPF=Interval(Edmu,PFmu,n,n)
message(MDED)
message(MDPF)
message(EDPF)
message("The resin MD has a higher bond strength than the other two, which cannot be distinguished")