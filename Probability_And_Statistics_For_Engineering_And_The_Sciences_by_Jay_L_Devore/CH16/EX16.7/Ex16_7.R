#Ex16.7, Page 670
#Answers may slightly vary due to rounding off of values

#Package to be installed: qcc(Quality control charts)
library(qcc)

x<-c(7,10,9,12,13,6,13,7,5,11,8,10,13,9,21,10,6,8,3,12,7,11,14,10)

#To find the sum of x values
xi<-sum(x)
xbar<-mean(x)
print(paste("Sum of x values:",xi))
print(paste("Mean of x values:",xbar))

#To find control limits
LCL<-xbar-3*sqrt(xbar)
UCL<-xbar+3*sqrt(xbar)
print(paste("LCL:",LCL))
print(paste("UCL:",UCL))

#To display c chart
q1<-qcc(x,sizes=length(x),type="c")
print(summary(q1))

#From the chart, the 15th value lies above the UCL
#Eliminating that observation......
xbar1<-(sum(x)-x[15])/(length(x)-1)
print(paste("Mean value when the 15th value is eliminated:",xbar1))
LCL1<-xbar1-3*sqrt(xbar1)
UCL1<-xbar1+3*sqrt(xbar1)
print(paste("Control limits when 15th value is eliminated:"))
print(paste("New LCL value:",LCL1))
print(paste("New UCL value:",UCL1))

#Remaining 23 observation lie within control lines (in-control)
