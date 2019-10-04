#Ex14.12, Page 611

#Package to be installed: DescTools
library(DescTools)

yi<-c(-1.871,-1.404,-1.127,-0.917,-.742,-0.587,-0.446,-0.313,-0.186,-0.062,0.062,0.186,0.313,0.446,0.587,0.742,0.917,1.127,1.404,1.871)
xi<-c(24.46,25.61,26.25,26.42,26.66,27.15,27.31,27.54,27.74,27.94,27.98,28.04,28.28,28.49,28.50,28.87,29.11,29.13,29.50,30.88)

z<-c(NULL)
#To find z percentiles
for(i in 1:length(xi)){
  z[i]<-round(qnorm(1-((i-0.5)/length(xi)),lower.tail=FALSE),digits=2)
}

#Shapiro test is similar to Ryan-Joiner test which is not available in R
t<-shapiro.test(xi)
print(t)

#To create normal probability plot
qqnorm(xi,datax=TRUE,ylab="Voltage",xlab="Probability",main="Normal probability plot")
qqline(xi,datax=TRUE)
