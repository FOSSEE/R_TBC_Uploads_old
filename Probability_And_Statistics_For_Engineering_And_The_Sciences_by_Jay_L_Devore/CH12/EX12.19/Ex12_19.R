#Ex12.19, Page 516
#Answers may vary slightly due to rounding off of values

xi<-285.90
xi2<-4409.55
yi<-690.30
yi2<-29040.29
xiyi<-10818.56
r<-0.733
v<-0.935
n<-20
alpha<-0.05

#To find z
zalpha2<-qnorm(1-alpha/2)

#95% interval for muv
c1<-v-zalpha2/sqrt(n-3)
c2<-v+zalpha2/sqrt(n-3)
print(paste("Left endpoint of CI for muv:",c1))
print(paste("Right endpoint of CI for muv:",c2))

#95% interval for rho
l<-(exp(1)^(2*c1)-1)/(exp(1)^(2*c1)+1)
r<-(exp(1)^(2*c2)-1)/(exp(1)^(2*c2)+1)
print(paste("Left endpoint of CI for rho:",l))
print(paste("Right enpoint of CI for rho:",r))
