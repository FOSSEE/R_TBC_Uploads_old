#Ex1.15, Page 30
#Answers may vary slightly due to rounding off of values

data<-c(62.3,62.8,63.6,65.2,65.7,66.4,67.4,68.4,68.8,70.8,75.7,79.0)

dotplot(data,xlab="Duration")

n<-length(data)
n1<-data[n/2]
n2<-data[(n/2)+1]
med<-(n1+n2)/2
print(paste("Median:",med))

max<-max(data)
#If maximum value is omitted
data1<-data[1:length(data)-1]
mean1<-mean(data1)
print(paste("Mean when maximum value,",max,"is omitted:",mean1))