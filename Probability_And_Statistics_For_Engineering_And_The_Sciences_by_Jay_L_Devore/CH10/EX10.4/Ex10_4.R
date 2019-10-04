#Ex10.4, Page 400
#Answers may vary slightly due to rounding off of values

Mixture1<-c(0.56,1.12,0.90,1.07,0.94)
Mixture2<-c(0.72,0.69,0.87,0.78,0.91)
Mixture3<-c(0.62,1.08,1.07,0.99,0.93)

data1<-data.frame(Mixture1,Mixture2,Mixture3)

I<-3
J<-5

#Numerator
v1<-I-1

#Denominator
v2<-I*(J-1)

alpha<-0.01
#To find F value
F<-qf(1-alpha,v1,v2)
print(paste("Critical value, F:",F))


#To create ANOVA table
mix<-stack(data1)
names(mix)<-c("Degree","Treatment")

a<-aov(Degree~Treatment,data=mix)
print(paste("ANOVA table:"))
a1<-summary(a)
print(a1)
print(paste("f value:",a1[[1]]$F[1]))
