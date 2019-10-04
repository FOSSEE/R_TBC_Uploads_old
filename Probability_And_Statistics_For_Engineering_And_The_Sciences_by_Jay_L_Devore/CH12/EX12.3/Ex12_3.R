#Ex12.3, Page 474
#Answers may slightly vary due to rounding off of probabilities

y<- function(x) (65-1.2*x)
sd<-8

#P(time-to-failure exceeds 50 when applied stress is 20)
x1<-20
mu1<-y(x1)
q<-50
P1<-1-pnorm(q,mu1,sd)
print(paste("Probability that the time-to-failure>50 when applied stress=20):",P1))

#P(time-to-failure exceeds 50 when applied stress is 25)
x2<-25
mu2<-y(x2)
q<-50
P2<-1-pnorm(q,mu2,sd)
print(paste("Probability that the time-to-failure>50 when applied stress=25):",P2))

#Let Y1<-observation made with x=25 and Y2<-observation made with x=24
#Mean value
X1<-25
X2<-24
E<-y(X1)-y(X2)
#Variance
V<-sd^2+sd^2
SD<-sqrt(V)
#Probability that Y1 exceeds Y2
P3<-1-pnorm(0,E,V)
print(paste("P(Y1>Y2):",P3))
