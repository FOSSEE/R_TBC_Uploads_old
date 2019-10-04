#Ex7.4, Page 273
#Answers may slightly vary due to rounding off of values

#For 95% CI
z<-qnorm(1-(0.05/2))

sd<-25
w<-10

n<-(2*z*sd/w)^2
print(paste("Sample size necessary for CI to have width 10 is ",n,"and thus approx. 97"))
