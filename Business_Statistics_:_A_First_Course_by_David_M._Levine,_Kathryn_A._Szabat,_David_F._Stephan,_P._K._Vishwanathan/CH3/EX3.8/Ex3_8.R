#Variance = ((Xi-Xbar)^2)/(n-1)
#standard deviation = sqrt(variance)
calories<- c(80,100,100,110,130,190,200)
mean<- mean(calories)
mean
n<- 7
S1<- calories - mean
S1
S2 <- S1^2
S2
sum<-sum(S2)
Sample_variance <- sum/(n-1)
Sample_variance
Standard_deviation<- sqrt(Sample_variance)
Standard_deviation
