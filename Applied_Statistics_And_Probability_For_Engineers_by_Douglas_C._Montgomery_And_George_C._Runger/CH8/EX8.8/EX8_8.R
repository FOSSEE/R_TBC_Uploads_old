#Crankshaft Bearings(Pg no. 292)

n = 85
x = 10
p = round(x/n, digits = 2)
p
z = round(qnorm(0.025,lower.tail = FALSE),digits = 2)
z

p_min = p - (z*sqrt((p*(1-p))/n))
p_max = p + (z*sqrt((p*(1-p))/n))

cat("A 95% two-sided confi dence interval for p is",round(p_min,digits = 4),"<= p <=",round(p_max,digits = 4))

# The answer given in the textbook is wrong for the upper bound