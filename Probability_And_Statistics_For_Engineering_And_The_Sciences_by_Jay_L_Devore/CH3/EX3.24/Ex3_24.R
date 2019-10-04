#Ex3.24, Page 111
#Answers may slightly vary due to rounding off of values

w<-c(0.3,0.25,0.15,0.05,0.1,0.15)
x<-c(1,2,3,4,5,6)

#Mean, m= sum of(xp(x))
m<-weighted.mean(x,w)
print(paste("Mean =",m))

#Variance, v= sum of(x-m)p(x) 
v<-weighted.mean((x-m)^2,w)
print(paste("Variance =",v))

#Standard deviation, sd= square root(variance)
print(paste("Standard deviation=", sqrt(v)))

