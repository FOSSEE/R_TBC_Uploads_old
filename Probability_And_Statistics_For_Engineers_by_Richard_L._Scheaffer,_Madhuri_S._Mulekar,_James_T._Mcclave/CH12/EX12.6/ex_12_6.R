a =c(36.6,39.2,30.4,37.1,34.1,17.5,20.6,18.7,25.7,22.0,15.0,10.4,18.9,10.5,15.2)
b =c(rep(1,5),rep(2,5),rep(3,5))
dat =data.frame(a,b)

c <- aov(a~factor(b),data = dat)
cat("MSE =" ,anova(c)[["Mean Sq"]][2])

