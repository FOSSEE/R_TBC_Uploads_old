designation<-c(8,5)
gender<-c(10,3)
repnf<-7
reppf<-3
repnm<-designation[1]-repnf
pr<-(designation[1]+gender[2]-repnm)/sum(designation)
n<-paste("The probability that selected staff is",round(pr, digits=2))
n