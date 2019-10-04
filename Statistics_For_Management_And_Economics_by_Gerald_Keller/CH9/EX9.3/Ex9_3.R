# Statistics for Management and Economics by Gerald Keller
# Chapter 9: Sampling Distributions
# Example 9.3 on Pg 328
# Starting Salaries of MBAs 

# Given starting salaries of MBAs at WLU, X1  ~ Normal(62000,14500)
mu1 = 62000
sd1 = 14500
v1 = sd1^2
n1 = 50

# Given starting salaries of MBAs at UWO, X2 ~ Normal(60000,18300)
mu2 = 60000
sd2 = 18300
v2 = sd2^2
n2 = 60

# find probability that the sample mean starting salary of WLU graduates will exceed that of the UWO graduates
# i.e., find P (X1 - X2 > 0) denoted by 'p'
#we know X1-X2 ~ N(mu1-mu2, sqrt(v1/n1 + v2/n2))
p = 1 - pnorm(0, mean=mu1-mu2, sd=sqrt((v1/n1)+(v2/n2)))
cat("P(X1 - X2 > 0):", p)

#Answer:  0.7386917

#End