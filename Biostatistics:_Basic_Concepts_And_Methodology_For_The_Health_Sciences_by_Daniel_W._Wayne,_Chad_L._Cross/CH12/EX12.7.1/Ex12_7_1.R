##Example 12.7.1 Pg.644
##Relative risk 

x<-matrix(c(18,199,22,216),nrow=2,byrow=T)
x
rownames(x)<-c("Not exercising","Extreme exercising")
colnames(x)<-c("cases","non cases")
print(x)

#install.packages("mosaic")
library(mosaic)

relrisk(x)




