
# Chapter 9
# Example 9.18 page no. 304 from the pdf..
# to obtain confidence interval of variance 

a <- c(46.4,46.1,45.8,47.0,46.1,45.9,45.8,46.9,45.2,46.0)


c <- qchisq(0.025,df = length(a)-1)
b <- qchisq(0.975,df= 9)

cat("The 95% confidence interval for variance is",var(a)*(length(a)-1)/b,var(a)*(length(a)-1)/c)



