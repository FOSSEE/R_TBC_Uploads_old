#Page.No 7.7 

class_intervals <-c(5,9,10,14,15,19,20,24,25,29)
frequency<-c(2,4,5,7,2)
HS<-max(class_intervals)   #Highest score
LS<-min(class_intervals)   # Lowest score

Coef.R<-(HS-LS)/(HS+LS)

cat("The coefficient of Range is",Coef.R)