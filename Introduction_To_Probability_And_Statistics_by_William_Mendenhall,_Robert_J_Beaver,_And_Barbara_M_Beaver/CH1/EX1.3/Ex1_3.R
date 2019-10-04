rating<-c("A","B","C","D")
frequency<-c(35,260,93,12)
total<-sum(frequency)
relative_frequency_percent<-c(frequency/total)*100
label<-paste(rating,relative_frequency_percent)
label<-paste(label,"%",sep=" ")
par(mfrow=c(1,2))
pie(relative_frequency_percent,labels = label,clockwise = TRUE)
DF<-data.frame(rating,frequency)
barplot(frequency, ylab="frequency",xlab="rating",names.arg = c("A","B","C","D"))
#The answer may slightly vary due to rounding off values 