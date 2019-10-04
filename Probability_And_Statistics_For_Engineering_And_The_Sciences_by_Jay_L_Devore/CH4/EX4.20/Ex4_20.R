#Ex4.20, Page 161
#Answers may vary slightly due to rounding off of values

n<-50
p<-25/100
q<-1-p
m<-12.5
sd<-3.06
x<-n*p
y<-sqrt(n*p*q)
z<-n*q
if(x>=10 && z>=10){
  #P(X<=10)
  a<-pnorm(10+0.5,mean=x,sd=y)
  print(paste("P(X<=10)=",a))
  
  #P(5<=X<=15)
  b<-pnorm(15+0.5,mean=x,sd=y)-pnorm(5-0.5,mean=x,sd=y)
  print(paste("P(5<=X<=15)=",b))
}