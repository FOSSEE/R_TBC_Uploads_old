x1 =c(14.05,14.93,16.56,15.85)
x2 =c(10.55,9.48,13.63,11.75)
x3 =c(7.55,6.59,9.23,8.78)

observations <- c(x1,x2,x3)
A <- c(rep(1,4),rep(2,4),rep(3,4))
a <- c(rep(1,2),rep(2,2))

B <- c(rep(a,3))

dat <- data.frame(observations,A,B)

d <- aov(observations~factor(A)*factor(B),data = dat)   

summary(d) # analysis of variance table..
