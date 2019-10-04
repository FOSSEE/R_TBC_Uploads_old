##Example 13.7.1 Pg.699
##Kolmogorov Smirnov Goodness of fit test

values <- c(75,84,80,77,68,87,92,77,92,86,78,76,80,81,72,77,92,80,80,77,77,92,68,87,84,75,78,80,80,77,72,81,76,78,81,86)
ks.test(values, "pnorm", mean(values), sd(values), alternative = "two.sided")

#pvalue > 0.05, hence sample would have come from normal distribution


