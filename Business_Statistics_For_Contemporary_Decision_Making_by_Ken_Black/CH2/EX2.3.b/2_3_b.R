# Pie Chart :

Inventary_shrinkage <- c("Employee theft","Shoplifting","Administartive error","Vendor fraud")

Annual_amount <- c(17918.6, 15191.9,7617.6,2553.6) 

data <- data.frame(Inventary_shrinkage,Annual_amount)

Proportion <- data$Annual_amount/sum(data$Annual_amount)

Percent <- Proportion*100

data <- cbind(data,Proportion,Percent)

Degree <- data$Proportion*360

data<-cbind(data,Degree)

labls <- paste(data$Inventary_shrinkage,data$Percent,sep = "   ")
 
labls <- paste(labls,"%",sep="")

pie(data$Percent, labels = labls)

