##Example 8.3.1 Pg.339
##Ranadomized Block Design - Two way ANOVA

days <- c(7,8,9,10,11,9,9,9,9,12,10,10,12,12,14)
age <- rep(c(1,2,3,4,5),3)
age <- factor(age,labels = c("under 20","20-29","30-39","40-49","50 and over"))
teach <- c(rep(1,5),rep(2,5),rep(3,5))
teach <- factor(teach,labels=c("A","B","C"))
dt = data.frame(days,teach,age)
dt

anova <- aov(days~teach+age)
anova
summary(anova)

#Answers may slightly vary due to approximation


