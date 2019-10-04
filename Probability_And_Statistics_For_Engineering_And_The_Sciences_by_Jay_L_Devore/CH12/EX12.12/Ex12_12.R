#Ex12.12, Page 496
#Answers may vary slightly due to rounding off of values

x<-c(42.2,42.6,43.3,43.5,43.7,44.1,44.9,45.3,45.7,45.7,45.9,46.0,46.2,46.2,46.8,46.8,47.1,47.2)
y<-c(44,44,44,45,45,46,46,46,47,48,48,48,47,48,48,49,49,49)
data1<-data.frame(x,y)

model<-lm(y~x,data=data1)
cat("Regression model:\n")
print(summary(model))

#To display ANOVA table
a<-aov(model)
cat("ANOVA table:\n")
print(summary(a))
