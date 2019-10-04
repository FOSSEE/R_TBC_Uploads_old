#Ex3.25, Page 112

#Alternative formula for variance, v= E(X^2)-(m^2)
x<-1:6
w<-c(0.3,0.25,0.15,0.05,0.1,0.15)

#E(X^2)= sum of (X^2)p(X)
e<-weighted.mean(x^2,w)
print(paste("E(X^2)=",e))

#Variance
mean<-weighted.mean(x,w)
print(paste("Variance through alternative formula =",e-(mean^2)))
