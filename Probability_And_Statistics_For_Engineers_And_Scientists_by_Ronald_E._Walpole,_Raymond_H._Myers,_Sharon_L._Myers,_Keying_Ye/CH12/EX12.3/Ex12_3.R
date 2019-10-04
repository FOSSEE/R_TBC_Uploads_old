
# Chapter 12
# Example 12.3 page no. 447 from the pdf..
# Estimate the regression coefficients in polynomial model.

m1 <- c(14.05,14.93,16.56,15.85,22.41,21.66)

m2 <- c(10.55,9.48,13.63,11.75,18.55,17.98)

m3 <- c(7.55,6.59,9.23,8.78,15.93,16.44)

observation <- c(m1,m2,m3)

temp <- c(rep(75,6),rep(100,6),rep(125,6))

m <- c(rep(15,2),rep(20,2),rep(25,2))

ster_time <- rep(m,3)

dat <- data.frame(observation,temp,ster_time)

pol <- lm(observation ~ temp + ster_time + I(temp^2) + I(ster_time^2) + temp*ster_time,data = dat)

c <- coefficients(pol)


cat("The fitted polynomial is",c[1],c[2],"*x1",c[3],"*x2 +",c[4],"*x1^2 +",c[5],"*x2^2 +",c[6],"*x1*x2")


