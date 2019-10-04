#Ex5.24, Page 223

n<-25
u<-28000
s<-5000

#E(Mean)
print(paste("E(Mean)=",u))

#E(T0)
t<-n*u
print(paste("E(T0)=",t))

#Standard deviation of mean
sm<-s/sqrt(n)
print(paste("SD of mean:",sm))

#Standard deviation of T0
st<-s*sqrt(n)
print(paste("SD of T0:",st))

#When sample size increases to n=100
print(paste("When n=100:"))
n<-100
#E(Mean)
print(paste("E(Mean)=",u))

#E(T0)
t<-n*u
print(paste("E(T0)=",t))

#Standard deviation of mean
sm<-s/sqrt(n)
print(paste("SD of mean:",sm))

#Standard deviation of T0
st<-s*sqrt(n)
print(paste("SD of T0:",st))

