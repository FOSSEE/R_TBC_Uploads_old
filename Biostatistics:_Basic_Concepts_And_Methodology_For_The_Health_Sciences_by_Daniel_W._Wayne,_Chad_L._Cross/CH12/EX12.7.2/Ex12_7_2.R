##Example 12.7.2 Pg.647
##Odds ratio

x<-matrix(c(68,3496,64,342),nrow=2,byrow=T)
x
rownames(x)<-c("Never Smoked"," smoked")
colnames(x)<-c("cases","non cases")
print(x)

#install.packages("mosaic")
library(mosaic)

oddsRatio(x)


