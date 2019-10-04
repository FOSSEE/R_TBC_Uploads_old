y1 =c(9,8,8,7)
y2 =c(5,6,3,4)

observations <- c(y1,y2)
A <- c(rep(1,4),rep(2,4))

a <- c(rep(1,2),rep(2,2))

B <- c(rep(a,2))
dat <- data.frame(observations,A,B)
d <- aov(observations~factor(B)*factor(A),data = dat)   

summary(d)
