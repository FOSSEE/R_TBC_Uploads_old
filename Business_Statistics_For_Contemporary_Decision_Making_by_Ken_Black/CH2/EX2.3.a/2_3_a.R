# Bar Graph :

Inventary_shrinkage <- c("Employee theft","Shoplifting","Administartive error","Vendor fraud")

Annual_amount <- c(17918.6, 15191.9,7617.6,2553.6) 

data <- data.frame(Inventary_shrinkage,Annual_amount)

Proportion <- data$Annual_amount/sum(data$Annual_amount)

Percent <- Proportion*100

data <- cbind(data,Proportion,Percent)

Degree <- data$Proportion*360

data<-cbind(data,Degree)

library(ggplot2)

ggplot(data,aes(x=data$Inventary_shrinkage,y=data$Annual_amount))+geom_bar(stat = "identity")
