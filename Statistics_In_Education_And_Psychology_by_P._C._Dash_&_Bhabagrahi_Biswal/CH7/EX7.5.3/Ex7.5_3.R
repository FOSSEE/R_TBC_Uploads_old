#Page.No 7.6

scores<-c(10,20,30,40,50,60,65,66,70,80)
hs<-max(scores)
ls<-min(scores)
Coef.R<-(hs-ls)/(hs+ls)
cat("The coefficient of Range is",Coef.R)
