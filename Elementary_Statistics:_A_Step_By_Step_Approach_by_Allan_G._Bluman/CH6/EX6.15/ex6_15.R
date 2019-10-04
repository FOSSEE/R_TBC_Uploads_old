x=224
m=218.4
s=25
n=40
z1=(x-m)/s
l<-paste("the probability that a person selected at random consumes less than 224 pounds per year is",round(pnorm(z1)*100,1),"%")
l
z2=(x-m)/(s/sqrt(n))
l<-paste("the probability that the mean of a sample of 40 individuals is less than 224 pounds per year is",round(pnorm(z2)*100,1),"%")
l