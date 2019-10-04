#The yields of chemical rection is as 
op<-c(5.57,5.76,4.18,4.64,7.02,6.62,6.33,7.24,
  5.57,7.89,4.67,7.24,6.43,5.59,5.39)
#(a) Obtain the maximum likelihood estimates of the mean yield and the variance
mean=mean(op)
cat(mean,"gal")
var=(1/length(op))*sum((op-mean)^2)
var
#Obtain the maximum likelihood estimate of the coefficient of variation ??/??
cat("coefficient is : ",sqrt(var)/mean)