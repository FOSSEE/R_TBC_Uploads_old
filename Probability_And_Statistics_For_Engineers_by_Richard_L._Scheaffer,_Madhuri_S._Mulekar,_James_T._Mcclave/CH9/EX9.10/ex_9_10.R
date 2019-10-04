#Determining sample size 
#Given , confidence limit =90%
#Because no prior knowledge of p is available, use p= 0.5

alpha=1-0.90
B =0.05
p=0.5
a <- qnorm(alpha/2,lower.tail = F)

cat("A random sample of at least ",round(((a/B)^2)*p*(1-p))," workers is required in order to estimate the true proportion favoring 
    the revised policy to within 0.05. ")
