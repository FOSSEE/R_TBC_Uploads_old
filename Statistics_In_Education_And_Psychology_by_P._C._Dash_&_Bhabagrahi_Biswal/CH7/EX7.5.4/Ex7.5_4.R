#Page.No 7.6

class_intervals <-c(10,14,15,19,20,24,25,29,30,34)
frequency<-c(2,8,6,2,2)
HS<-max(class_intervals)   # highest score
LS<-min(class_intervals)   #Lowest score

Coef.R<-(HS-LS)/(HS+LS)

cat("The coefficient of Range is",Coef.R)