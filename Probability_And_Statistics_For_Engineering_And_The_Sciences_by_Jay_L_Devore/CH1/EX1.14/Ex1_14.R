#Ex1.14, Page 29
#Steam and leaf plot differs since number of stem parts=1

library(aplpack)

x<-c(16.1,9.6,24.9,20.4,12.7,21.2,30.2,25.8,18.5,10.3,25.3,14.0,27.1,45.0,23.3,24.2,14.6,8.9,32.4,11.8,28.5)

sl<-stem.leaf(x,unit=0.1,m=1,style="bare")

s<-sum(x)
mean<-s/length(x)
print(paste("Mean value:",mean))
print(paste("The value",sl$upper,"is an outlier"))
print(paste("Mean value when",sl$upper,"is excluded=",(s-45)/(length(x)-1)))