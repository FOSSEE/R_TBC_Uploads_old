
# Application of t distribution
#a
xbar1 <- 2000

mu <- 3000

sd <- 989

n <- 12

t_value = (xbar1-mu)/(sd/sqrt(n))
cat("The required probability is ", pt(t_value, df = n-1))

#b
xbar2 <- 2500

t_value = (xbar2-mu)/(sd/sqrt(n))
cat("The required probability is ", pt(t_value, df = n-1))