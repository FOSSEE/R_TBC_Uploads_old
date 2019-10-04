#Ex1.19, Page 40

obs<-c(40,52,55,60,70,75,85,85,90,90,92,94,94,95,98,100,115,125,125)

#To find five-number summary
print(summary(fivenum(obs)))

boxplot(obs,horizontal=TRUE,xlab="Depth",main="Boxplot of the corrosion data")