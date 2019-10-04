#Ex11.7, Page 435

AggCont<-rep(c("38","41","44"),each=6)
AsphGr<-rep(c("PG58","PG64","PG70"),6)
data<-c(0.835,0.855,0.815,0.845,0.865,0.825,0.822,0.832,0.800,0.826,0.836,0.820,0.785,0.790,0.770,0.795,0.800,0.790)
df1<-data.frame(AggCont,AsphGr,data)
print(df1)

#To find mean for corresponding content data
cat("\nCoarse aggregate content(%) mean values:\n")
m1<-tapply(df1$data,list(AggCont),mean)
print(m1)

#To find mean of corresponding Asphalt binder grade data
cat("\nAsphalt binder grade mean values:\n")
m2<-tapply(df1$data,list(AsphGr),mean)
print(m2)


#To display ANOVA table
model<-lm(data~AsphGr+AggCont+AsphGr:AggCont)
a<-aov(data~AsphGr+AggCont+AsphGr:AggCont)
print(a)
print(summary(a))

#To display interaction plots(Thermal diffusivity data is not given)
interaction.plot(AggCont,AsphGr,response=data)

#Plots for checking normality and constant variance assumptions
par(mfrow=c(1,2))
qqnorm(model$residuals,datax=TRUE,main="Normal probability plot",ylab="Residual",xlab="Percent")
qqline(model$residuals,datax=TRUE)

plot(df1$data,resid(model),main="Residual plot",xlab="Fitted value",ylab="Residual")
abline(0,0)
