White =c(23,24)
Black =c(9,6)
Asian =c(7,6)
Hispanic =c(13,12)
gender =c(2,1)
df =data.frame(White,Black,Asian,Hispanic,gender)
means<-aggregate(df,by=list(df$gender),mean)
means<-means[,2:length(means)]
library(reshape2)
means.long<-melt(means,id.vars="gender")
library(ggplot2)
ggplot(means.long,aes(x=variable,y=value,fill=factor(gender)))+
  geom_bar(stat="identity",position="dodge")+
  scale_fill_discrete(name="Gender",
                      breaks=c(1,2),
                      labels=c("Men", "Women"))+
  xlab("Category")+ylab("Mean Percentage")
