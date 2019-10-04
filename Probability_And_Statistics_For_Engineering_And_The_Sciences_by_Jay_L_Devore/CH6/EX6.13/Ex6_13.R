#Ex6.13, Page 257
#Answers may vary slightly due to rounding off of values

data<-c(152,115,109,94,88,137,152,77,160,165,125,40,128,123,136,101,62,153,83,69)
n<-length(data)

#Mean
m<-mean(data)
print(paste("Mean:",m))

#Sum of x^2
s<-sum(data^2)/n

#alpha
alpha<-(m^2)/(s-(m^2))
print(paste("Alpha:",alpha))

#beta
beta<-(s-(m^2))/m
print(paste("Beta:",beta))