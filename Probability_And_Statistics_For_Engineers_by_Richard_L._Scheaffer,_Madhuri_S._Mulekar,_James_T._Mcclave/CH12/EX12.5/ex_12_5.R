#H0 : mu1 =mu2
#H1 : mu1 not= mu2 

a =c(253,261,258,255,256,264,265,261,257,256)
b =c(rep(1,5),rep(2,5))
dat =data.frame(a,b)
c <- aov(a~factor(b),data = dat)
summary(c)

t.test(a[1:5],a[6:10],alternative = "two.sided",var.equal = TRUE,mu=0,conf.level = 0.05)

# t=-1.768 and F value = 3.125 which is equal to t^2.

cat("Because p-value = 0.1151 is larger than , we fail to reject the null (using either test) and conclude that there is no evidence of significant difference between the mean UTI for wires provided by the two suppliers")


