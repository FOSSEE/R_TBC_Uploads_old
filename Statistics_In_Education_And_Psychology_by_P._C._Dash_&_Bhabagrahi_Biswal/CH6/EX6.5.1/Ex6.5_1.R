# Page.No 6.23-6.24

low_value<-19.5
high_value<-64.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
frequency<-c(1,2,2,7,10,8,5,3,2)
scores<-rep(X_mid,frequency)
cf<-cumsum(frequency)
cpf<-cf/sum(frequency)*100
plot(X_mid,cpf,xlim=c(10,70),ylim = c(0,100),type = "o",xlab = "scores",ylab = "Cumulative percentage frequency",main = "Graphic Representation of percentiles")
abline(h=c(17,25,50,63,75),untf = FALSE)

## Or to make the clear visualization 
abline(h=c(17,25,50,63,75),v=c(33.3,35.5,41,44,47)) 

## to give colours
abline(h=c(17,25,50,63,75),v=c(33.3,35.5,41,44,47),col=c("red","green","blue","orange","yellow"))