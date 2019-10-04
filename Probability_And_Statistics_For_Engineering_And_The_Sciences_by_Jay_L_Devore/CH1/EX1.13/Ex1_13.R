#Ex1.13, Page 23
#Answers may vary slightly due to rounding off of values

Rating<-c("A","B","C","D","F","Don't know")
Frequency<-c(478,893,680,178,100,172)
Relative_frequency<-Frequency/sum(Frequency)
df1<-data.frame(Rating,Frequency,Relative_frequency)
print(df1)

print(paste("Total frequency:",sum(Frequency)))
print(paste("Total relative frequency:",sum(Relative_frequency)))

barplot(df1$Relative_frequency,space=1,names.arg=df1$Rating,ylim=c(0,0.4),xlab="Rating",ylab="Relative Frequency",main="Chart of relative frequency vs. rating")