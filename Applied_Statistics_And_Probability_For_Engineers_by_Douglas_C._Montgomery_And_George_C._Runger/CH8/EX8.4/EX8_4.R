#The Exponential Distribution(Pg no. 278)

x = c(2.84,2.37,7.52,2.76,3.83,1.32,8.43,2.25,1.63,0.27)
n = length(x)
df = 2*n #degrees of freedom
Cl = qchisq(0.025,20,lower.tail = TRUE)
Cu = qchisq(0.025,20,lower.tail = FALSE)
x_sum = sum(x)

upper_bound = Cu/(2*x_sum)
lower_bound = Cl/(2*x_sum)

cat("The 95% two-sided CI on lambda is",round(lower_bound,digits = 4),"<= lambda <=",round(upper_bound,digits = 4))

# The values may slightly vary due to rounding off of values