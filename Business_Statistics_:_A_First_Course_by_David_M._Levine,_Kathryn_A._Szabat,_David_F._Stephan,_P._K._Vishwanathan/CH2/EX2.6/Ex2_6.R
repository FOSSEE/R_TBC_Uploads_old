#pie chart
Levels_of_Risk<- c("Low","Average","High")
No_of_funds<- c(212,91,13)
data<- data.frame(Levels_of_Risk,No_of_funds)
Proportion<- data$No_of_funds/sum(No_of_funds)
Percent<- round(Proportion*100,digits=2)
data<- cbind(data,Proportion,Percent)
degree<- data$Proportion*360
data<- cbind(data,degree)
lab<- paste(data$Levels_of_Risk,data$Percent)
lab<- paste(lab,"%")
pie(data$Percent,labels=lab)
