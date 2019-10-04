#Ex9.6, Page 358
#Answers may vary slightly due  to rounding off of values

Fabric_type<-c('Cotton','Triacetate')
Sample_size<-c(10,10)
Sample_mean<-c(51.71,136.14)
Sample_standard_deviation<-c(.79,3.59)
data<-data.frame(Sample_size,Sample_mean,Sample_standard_deviation,row.names=Fabric_type)
print(data)

#Assigning values to variables
s1<-Sample_standard_deviation[1]
s2<-Sample_standard_deviation[2]

xbar<-Sample_mean[1]
ybar<-Sample_mean[2]

m<-Sample_size[1]
n<-Sample_size[2]

#To find df
num<-((s1^2/m)+(s2^2/n))^2
denom<-((s1^2/m)^2)/(m-1)+((s2^2/n)^2)/(n-1)
df<-num/denom
print(paste("df:",df))

#To find t value
alpha<-0.05
t<-qt(1-alpha/2,df=m-1)
print(paste("t:",t))

#To find intervals
l<-xbar-ybar-t*sqrt((s1^2/m)+(s2^2/n))
r<-xbar-ybar+t*sqrt((s1^2/m)+(s2^2/n))
print(paste("Left endpoint of interval:",l))
print(paste("Right endpoint of interval:",r))

print(paste("The true average porosity of the triacetate fabric is greater than that of the cotton fabric by between",round(-r,digits=2),"and",round(-l,digits=2),"cm^3/cm^2/sec"))