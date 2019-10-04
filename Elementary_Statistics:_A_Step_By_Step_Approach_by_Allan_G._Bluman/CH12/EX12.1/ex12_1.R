x<-data.frame("meal"=c(10,12,9,15,13),"exercise"=c(6,8,3,0,2),"diet"=c(5,9,12,8,4))
mo<-c(x$meal,x$exercise,x$diet)
gr<-factor(rep(letters[1:3],each = 5))
fit=aov(formula = mo ~ gr)
anova(fit)

