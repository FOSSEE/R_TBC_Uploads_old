#Ex3.26, Page 113

x<-0:3
w<-c(0.1,0.2,0.3,0.4)

#Mean, m = sum of (xp(x))
m<-weighted.mean(x,w)
print(paste("Mean, E(X)=",m))

#To find E(X^2)
e<-weighted.mean(x^2,w)
print(paste("E(X^2)=",e))

#To find V(X)
v<-e-(m^2)
print(paste("V(X)=",v))

#Profit function, h(X)=800X-900
#Variance
print(paste("Variance=",(800^2)*v))

#Standard deviation
print(paste("Standard deviation =",sqrt((800^2)*v)))