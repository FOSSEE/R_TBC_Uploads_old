#Page.No 7.7

frequency<-c(2,2,3,3)
scores<-c(10,14,15,19,20,24,25,29)
HS<-max(scores)  #Highest score
LS<-min(scores)  #Lowest score

Coef.R<-(HS-LS)/(HS+LS)

cat("The coefficient of Range is",Coef.R)