#Ex1.8, Page 15

library(graphics)

data<-c(10.8,6.9,8.0,8.8,7.3,3.6,4.1,6.0,4.4,8.3,8.1,8.0,5.9,5.9,7.6,8.9,8.5,8.1,4.2,5.7,4.0,6.7,5.8,9.9,5.6,5.8,9.3,6.2,2.5,4.5,12.8,3.5,10.0,9.1,5.0,8.1,5.3,3.9,4.0,8.0,7.4,7.5,8.4,8.3,2.6,5.1,6.0,7.0,6.5,10.3)

#To create a stacked dotplot
stripchart(data,method="stack",offset=0.5,pch=20,at=0,main="Dotplot of given data")