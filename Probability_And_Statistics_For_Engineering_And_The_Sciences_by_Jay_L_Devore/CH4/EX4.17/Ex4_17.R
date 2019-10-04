#Ex4.17, Page 158
#Answers may slightly vary due to rounding off of values

#P(-1.00<=Z<=1.00)
a<-pnorm(1.00,0,1)-pnorm(-1.00,0,1)
print(paste("P(X is within 1 standard deviation of its mean):",a))

#P(-2.00<=Z<=2.00)
b<-pnorm(2.00,0,1)-pnorm(-2.00,0,1)
print(paste("P(X is within 2 standard deviation of its mean):",b))

#P(-3.00<=Z<=3.00)
c<-pnorm(3.00,0,1)-pnorm(-3.00,0,1)
print(paste("P(X is within 3 standard deviation of its mean):",c))
