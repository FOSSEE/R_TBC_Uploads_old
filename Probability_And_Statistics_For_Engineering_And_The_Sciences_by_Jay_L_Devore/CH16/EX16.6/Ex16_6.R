#Ex16.6, Page 669
#Answers may vary slightly due to rounding off of values

#Package to be installed: qcc(Quality control charts)
library(qcc)

Dayi<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25)
xi<-c(7,4,3,6,4,9,6,7,5,3,7,8,4,6,2,9,7,6,7,11,6,7,4,8,6)
pi<-c(0.07,0.04,0.03,0.06,0.04,0.09,0.06,0.07,0.05,0.03,0.07,0.08,0.04,0.06,0.02,0.09,0.07,0.06,0.07,0.11,0.06,0.07,0.04,0.08,0.06)
data1<-data.frame(xi,pi)

#Sum of pi values
p<-sum(pi)
print(paste("Sum of pi values:",p))
pbar<-mean(pi)
print(paste("Mean of p values:",pbar))

#To find control limits
LCL<-pbar-3*sqrt(pbar*(1-pbar)/100)
UCL<-pbar+3*sqrt(pbar*(1-pbar)/100)
print(paste("LCL:",LCL))
print(paste("UCL:",UCL))

#To display p chart
q1<-qcc(data1,sizes=length(Dayi),type="p")
print(summary(q1))
