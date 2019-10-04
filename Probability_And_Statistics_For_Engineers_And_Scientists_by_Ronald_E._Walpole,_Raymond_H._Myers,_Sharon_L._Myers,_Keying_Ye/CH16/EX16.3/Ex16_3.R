
# Chapter 16
# Example 16 page no. 661 from the pdf..
#use signed rank test to test the hypothesis..

#NULL H0:mu=1.8
#alternate: mu!= 8

dat <- c(1.5,2.2,0.9,1.3,2.0,1.6,1.8,1.5,2.0,1.2,1.7)

wilcox.test(dat,alternative = "two.sided",mu=1.8)


cat("The p-vaue is more than 0.05,we don't reject null and conclude median operating time not significantly different from 1.8hrs")




