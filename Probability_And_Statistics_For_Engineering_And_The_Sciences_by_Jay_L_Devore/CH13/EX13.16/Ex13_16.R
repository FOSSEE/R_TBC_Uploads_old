#Ex13.16, Page 566
#Answers may slightly vary due to rounding off of values

Observation<-1:30
x1<-c(8,2,7,10,7,7,7,5,4,5,8,2,4,6,10,4,4,10,5,8,10,2,6,7,5,8,4,6,4,7)
x2<-c(4,4,4,7,4,7,13,4,7,1,10,4,10,7,13,10,13,10,4,13,1,13,13,1,13,1,1,1,1,10)
x3<-c(100,180,180,120,180,180,140,160,140,100,140,100,180,120,180,160,100,120,100,140,180,140,180,120,140,160,180,160,100,100)
x4<-c(1,7,1,5,5,1,1,7,3,7,3,3,3,7,3,5,7,7,1,1,1,1,7,7,1,7,7,1,1,7)
y<-c(1.4,2.2,4.6,4.9,4.6,4.7,4.6,4.5,4.8,1.4,4.7,1.6,4.5,4.7,4.8,4.6,4.3,4.9,1.7,4.6,2.6,3.1,4.7,2.5,4.5,2.1,1.8,1.5,1.3,4.6)
x12<-x1^2
x22<-x2^2
x32<-x3^2
x42<-x4^2
x1x2<-x1*x2
x1x3<-x1*x3
x1x4<-x1*x4
x2x3<-x2*x3
x2x4<-x2*x4
x3x4<-x3*x4
df1<-data.frame(Observation,x1,x2,x3,x4,y)
print(df1)

#To find estimate for reduced model
cat("\nReduced model:\n")
m1<-lm(y~x1+x2+x3+x4)
print(summary(m1))

#To find estimate for full model
cat("Full model:\n")
m2<-lm(y~(x1+x2+x3+x4+x12+x22+x32+x42+x1x2+x1x3+x1x4+x2x3+x2x4+x3x4))
print(summary(m2))

#H0: beta5=beta6=.....=beta14=0
#Ha: at least one among beta5,....beta14 is not 0
n<-30
k<-14
l<-4
alpha<-0.01
#To find F value
Fval<-qf(1-alpha,df1=k-l,df2=n-(k+1))
cat("F value:",Fval,"\n")

#Unexplained variation for the full model
SSEk<-sum(resid(m2)^2)

#Unexplained variation for the reduced model
SSEl<-sum(resid(m1)^2)

#f value
f<-((SSEl-SSEk)/(k-l))/(SSEk/(n-(k+1)))
cat("f value:",f,"\n")

if(f>=Fval) cat("H0 is rejected since",f,">=",Fval)
