#Ex5.9, Page 201
#Answer may slightly vary due to rounding off of value

#Respective number and probabilities
n<-c(2,5,3)
p<-c(0.25,0.5,0.25)

#Multinomial PMF
m<-dmultinom(n,prob=p)
print(paste("Multinomial PMF:",m))
