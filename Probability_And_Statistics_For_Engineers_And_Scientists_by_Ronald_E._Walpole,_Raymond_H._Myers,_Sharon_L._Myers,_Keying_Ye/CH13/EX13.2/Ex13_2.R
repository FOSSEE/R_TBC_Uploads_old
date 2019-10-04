
# Chapter 13
# Example 13.2 page no. 514 from the pdf..
# One way ANOVA..

# NULL : H0: mu1=mu2=mu3=mu4
# alternate : H1: at least two are not equal


a <- c(49.20,44.54,45.80,95.84,30.10,36.50,82.30,87.85,105.00,95.22,97.50,105.00,58.05,86.60,58.35,72.80,116.70,45.15,70.35,77.40,97.07,73.40,68.50,91.85,106.60,0.57,0.79,0.77,0.81,62.10,94.95,142.50,53.00,175.00,79.50,29.50,78.40,127.50,110.60,57.10,117.60,77.71,150.00,82.90,111.50)

b <- c(rep(1,20),rep(2,9),rep(3,9),rep(4,7))

dat <- data.frame(a,b)

c <- aov(a~factor(b),data = dat)  # anova 

summary(c)  # Analysis of Variance table

cat("Since the p-value is 0.022,we reject the null hypothesisand conclude alkaline levels for the four drug groups are not the same")



