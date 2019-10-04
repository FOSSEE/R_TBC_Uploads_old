#Ex5.29, Page 231
#Answers may vary slightly due to rounding off of values

a1<-3.00
a2<-3.20
a3<-3.40

#Mean
u1<-1000
u2<-500
u3<-300

#Standard deviation
s1<-100
s2<-80
s3<-50

#Y=3.0X1+3.20X2+3.40X3
EY<-a1*u1+a2*u2+a3*u3
VY<-(a1^2)*(s1^2)+(a2^2)*(s2^2)+(a3^2)*(s3^2)
sY<-sqrt(VY)
print(paste("E(Y)=$",EY))
print(paste("V(Y)=$",VY))
print(paste("sY=$",sY))