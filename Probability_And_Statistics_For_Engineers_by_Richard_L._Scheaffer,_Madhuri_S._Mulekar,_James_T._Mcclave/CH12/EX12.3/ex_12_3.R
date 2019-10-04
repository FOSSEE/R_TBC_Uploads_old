#H0 : mua =mub =muc
#H1 : At least two group means are different

a =c( 82, 114, 90, 80, 88, 93, 80, 105, 128, 90, 130, 110, 133, 130, 104, 156, 128, 151, 140 )
b =c(rep(1,8),rep(2,7),rep(3,4))
dat =data.frame(a,b)

x =lm(a~factor(b),data = dat)
summary(x)

c <- aov(a~factor(b),data = dat)
summary(c)

cat("The p-value for the F-test is < 0.0001, which means we would reject the null hypothesis of equal population mean scores for three groups of managers and conclude that at least two groups differ in their mean scores. ")

