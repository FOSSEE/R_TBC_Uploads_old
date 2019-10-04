#Ex11.11, Page 447
#Answers may vary from textbook values

library(nlme)
library(multcomp)

#Dependent variable
data<-c(7.38,7.15,6.75,8.05,5.65,6.00,5.39,8.16,5.64,6.45,5.44,6.55,5.03,4.96,6.34,6.31,7.27,5.93,5.50,5.78,5.31,5.46,6.54,8.02,5.01,6.24,7.81,6.05,7.03,5.80,6.79,5.06,8.05,5.51,5.96,6.61)

#Repeated measures
##B(Columns)
B<-factor(rep(c("1","2","3","4","5","6"),each=6))

##A(Rows)
A<-factor(rep(c("I","II","III","IV","V","VI"),6))

df1<-data.frame(A,B,data)
print(df1)

#To create ANOVA table
#using aov() function
cat("\nUsing aov():\n")
a1<-aov(data~A+Error(B/A),data=df1)
print(summary(a1))

#using lme()
cat("\nUsing lme():\n")
model<-lme(data~A,random=~1|B/A,data=df1)
a2<-anova(model)
print(a2)

#Tukey test
print(summary(glht(model,linfct=mcp(A="Tukey"))))

