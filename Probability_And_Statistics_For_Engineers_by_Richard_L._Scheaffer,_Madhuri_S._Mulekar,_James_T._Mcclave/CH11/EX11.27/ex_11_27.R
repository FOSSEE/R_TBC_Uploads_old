year = c(1970,1975,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999)
suv = c(12.3,19.1,23.8,23.7,22.7,23.9,25.6,27.4,29.1,30.6,32.7,33.3,35.6,38.2,40.9,42.9,44.1,45.6,47.4,49.4,50.5,52.8)

pol <- data.frame(year,suv)

l1 <- lm(suv~year,data = pol)
r1 = summary(l1)$r.squared
fit <- data.frame(year,log(suv))
l2 = lm(log(suv)~year,data=fit)
r2=summary(l2)$r.squared

cat("Fitting log(FC) as a function of year produces a slightly better fit R^2= ",r2*100,"%, than the I modal")


