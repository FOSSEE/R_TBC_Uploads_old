#Ex6.14, Page 257
#Answers may vary slightly due to rounding off of values

goals<-c(0,1,2,3,4,5,6,7,8,9,10)
freq<-c(29,71,82,89,65,45,24,7,4,1,3)

#Mean
m<-weighted.mean(goals,freq)
print(paste("Mean=",m))

#To find sum of x^2
ms<-weighted.mean(goals^2,freq)
print(paste("Sum of x^2/frequency=",ms))

#To find alpha
p_cap<-m/(ms-(m^2))
print(paste("Alpha:",p_cap))

#To find beta
r_cap<-(m^2)/(ms-(m^2)-m)
print(paste("Beta:",r_cap))

