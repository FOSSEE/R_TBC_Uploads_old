#Ex15.5, Page 638
#Answers may vary slightly due to rounding off of values

Allergics<-c(67.6,39.6,1651.0,100.0,65.9,1112.0,31.0,102.4,64.7)
Nonallergics<-c(34.3,27.3,35.4,48.1,5.2,29.1,4.7,41.7,48.0,6.6,18.9,32.4,45.5)

m<-length(Allergics)
n<-length(Nonallergics)

#H0: mu1-mu2=0

new<-c(Allergics,Nonallergics)

#To find rank of combined vectors
r<-rank(new)
s<-0
for(i in 1:length(Allergics)){
  s<-s+r[i]
}
print(paste("Rank sum of allergics:",s))

#To find mean and variance of W
mu_w<-(m+n+1)*m/2
print(paste("Mean of W:",mu_w))
var_w<-m*n*(m+n+1)/12
print(paste("Variance of W:",var_w))

#To find test statistic value
z<-(s-mu_w)/sqrt(var_w)
print(paste("Test statistic value:",z))

alpha<-0.01
z1<-qnorm(alpha/2)

if(z>=z1 || z<=z1)  print(paste("H0 is rejected")) else print(paste("H0 is not rejected"))

