#Ex11.3, Page 424
#Answers may vary slightly due to rounding off of values

#To create data frame
brand<-rep(c("I","II","III"),4)
WT<-rep(c("1","2","3","4"),each=3)  #WT<-Washing treatment
col_change<-c(0.97,0.77,0.67,0.48,0.14,0.39,0.48,0.22,0.57,0.46,0.25,0.19)

df1<-data.frame(brand,WT,col_change)
print(df1)

#To display ANOVA table
a<-aov(col_change~brand+WT,data=df1)
print(a)
cat("\nSummarized table:\n")
print(summary(a))

#Diagnostic plots
model<-lm(col_change~brand+WT,data=df1)
par(mfrow=c(1,2))
qqnorm(model$residuals,datax=TRUE,main="Normal probability plot",ylab="Residual",xlab="Percent")
qqline(model$residuals,datax=TRUE)

plot(df1$col_change,resid(model),main="Residual plot",xlab="Fitted value",ylab="Residual")
abline(0,0)
