#  ANOVA and regression analysis

a =c( 82, 114, 90, 80, 88, 93, 80, 105, 128, 90, 130, 110, 133, 130, 104, 156, 128, 151, 140 )
b =c(rep(1,8),rep(2,7),rep(3,4))
dat =data.frame(a,b)

x =lm(a~factor(b),data = dat)
summary(x)
anova(x)

