
# Chapter 14
# Example 14.4 page no. 581 from the pdf..
# Anova for 3 factor experiment..

m1 <- c(10.7,10.3,11.2,10.9,10.5,12.2,10.8,10.2,11.6,12.1,11.1,11.7,11.3,10.5,12.0,11.5,10.3,11.0)

m2 <- c(11.4,10.2,10.7,9.8,12.6,10.8,11.8,10.9,10.5,11.3,7.5,10.2,11.5,10.5,10.2,10.9,9.9,11.5)

m3 <- c(13.6,12.0,11.1,10.7,10.2,11.9,14.1,11.6,11.0,11.7,11.5,11.6,14.5,11.5,11.5,12.7,10.9,12.2)


obs <- c(m1,m2,m3)

operator <- c(rep(1,18),rep(2,18),rep(3,18))

catalyst <- c(rep(1:3,18))

a <- c(rep("15 min",3),rep("20 min",3))

washing_time <- c(rep(a,9))

dat <- data.frame(obs,operator,catalyst,washing_time)

d <- aov(obs~(factor(operator)*factor(catalyst)*factor(washing_time)),data = dat)

print("The Analysis of Variance Table is shown as follows:")

summary(d)


