#Example 4.4, Page 139*
#n=10,M=5,N=25

#f(x)>=0
#Area under density curve
a<-(1/360)*360

#P(90<=X<=180)
f1<-function(x) {(x^0)/360}
p1<-integrate(f1,lower=90,upper=180)
print(paste("Probability that angle is between 90 and 180 is",p1$value))

#P(0<=X<=90)+P(270<=X<360)
f2<-function(x) {(x^0)/360}
p2<-integrate(f2,lower=0,upper=90)
f3<-function(x) {(x^0)/360}
p3<-integrate(f3,lower=270,upper=360)
p4<-p2$value+p3$value
print(paste("P(angle of occurrence is within 90 degrees of reference line)=",p4))
