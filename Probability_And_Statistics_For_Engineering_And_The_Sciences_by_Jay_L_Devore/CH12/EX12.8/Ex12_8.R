#Ex12.8, Page 484
#Answers may vary slightly due to rounding off of values

x<-c(12,30,36,40,45,57,62,67,71,78,93,94,100,105)
y<-c(3.3,3.2,3.4,3.0,2.8,2.9,2.7,2.6,2.5,2.6,2.2,2.0,2.3,2.1)
data1<-data.frame(x,y)

#To display ANOVA table
model<-lm(y~x)
print(summary(model))
a<-aov(model,data=data1)
cat("ANOVA table:\n")
print(summary(a))
