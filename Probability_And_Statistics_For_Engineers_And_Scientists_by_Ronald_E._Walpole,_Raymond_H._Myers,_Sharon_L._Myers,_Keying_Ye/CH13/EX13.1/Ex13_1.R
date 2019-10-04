
# Chapter 13
# Example 13.1 page no. 513 from the pdf..
# One way ANOVA..

# H0: mu1=mu2=mu3=mu4=mu5
# H1 : atleast two of means not equal..

a <- c(551,457,450,731,499,632,595,580,508,583,633,517,639,615,511,573,648,677,417,449,517,438,415,555,563,631,522,613,656,679)

b <- c(rep(1,6),rep(2,6),rep(3,6),rep(4,6),rep(5,6))

dat <- data.frame(a,b)

c <- aov(a~factor(b),data = dat)

summary(c)

cat("Since the p-value is 0.00875 we reject null hypothesis and and conclude aggregates don't have same mean absorption")

