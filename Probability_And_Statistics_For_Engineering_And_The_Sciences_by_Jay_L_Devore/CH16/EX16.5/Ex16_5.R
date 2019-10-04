#Ex16.5, Page 665
#Answers may vary slightly due to rounding off of values

#Package to be installed: qcc(Quality control charts)
library(qcc)

des_dim<-c(200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000)
obs1<-c(12,6,5,19,9,9,8,4,11,13,10,8,14,7,14,10,7)
obs2<-c(17,9,9,6,14,15,11,14,14,9,14,9,7,9,5,12,11)
obs3<-c(6,17,15,11,9,8,12,11,7,9,8,4,9,12,8,10,15)
mean<-c(11.7,10.7,9.7,12.0,10.7,10.7,10.3,9.7,10.7,10.3,10.7,7.0,10.0,9.3,9.0,10.7,11.0)
range<-c(11,11,10,13,5,7,4,10,7,4,6,5,7,5,9,2,8)
st_dev<-c(5.51,5.69,5.03,6.56,2.84,3.79,2.08,5.13,3.51,2.31,3.06,2.65,3.61,2.52,4.58,1.15,4.00)
data1<-data.frame(obs1,obs2,obs3)

n<-3
b3<-1.693
c3<-0.888

#To find sum of range values
ri<-sum(range)
rbar<-mean(range)

#To find control limits
UCL<-rbar+n*c3*rbar/b3
print(paste("LCL:",LCL))
print(paste("UCL:",UCL))

#To display X-bar chart (can only be displayed separately by using run method)
q1<-qcc(data1,type="xbar")
print(summary(q1))

#To display R chart (can only be displayed separately by using run method)
q2<-qcc(data1,type="R")
print(summary(q2))

