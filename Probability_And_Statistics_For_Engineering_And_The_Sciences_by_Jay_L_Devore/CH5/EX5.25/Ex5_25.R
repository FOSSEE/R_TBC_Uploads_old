#Ex5.25, Page 224
#Answers may slightly vary due to rounding off of values

n<-5 

#Mean(min)
m<-1.5

#Standard deviation(min)
sd<-0.35

ut<-n*m
print(paste("uT0:",ut))

vt<-n*(sd^2)
print(paste("vT0:",vt))

st<-sqrt(vt)
print(paste("sT0:",st))

#P(6<=T0<=8)
p1<-pnorm(8,mean=ut,sd=st)-pnorm(6,mean=ut,sd=st)
print(paste("P(6<=T0<=8)=",p1))

#Probability that the sample average time is atmost 2 min
u<-1.5
s<-sd/sqrt(n)

#P(Mean<=2.0)
p2<-pnorm(2,mean=u,sd=s)
print(paste("P(Mean<=2)=",p2))