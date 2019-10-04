
# Chapter 16
# Example 16.6 page no. 668 from the pdf..
# Kruskal-Wallis Test..

# to do hypothesis testing of propellent burning rates for 3 missile system using kruskal wallis test..

#Null: H0: mu1=mu2=mu3
#alternate : the means are not equal.
#alpha = 0.05

m1 <- c(24.0,16.7,22.8,19.8,18.9)

m2 <- c(23.2,19.8,18.1,17.6,20.2,17.8)

m3 <- c(18.4,19.1,17.3,17.3,19.7,18.9,18.8,19.3)

obs <- c(m1,m2,m3)

miss_sys <- c(rep(1,5),rep(2,6),rep(3,8))

kruskal.test(obs,factor(miss_sys))

cat("Since the p-value is",kruskal.test(obs,factor(miss_sys))$p.value,"we failed to reject null that propellent burning rates are same for the 3 missile system")
