#Cement Hydration(Pg no. 391)

X1bar = 90.0
X2bar = 87.0

s1 = 5.0
s2 = 4.0

n1 = 10
n2 = 15

sp = sqrt((((n1-1)*s1^2)+((n2-1)*s2^2))/(n1+n2-2))
sp

t = qt(0.025,23,lower.tail = FALSE)
t
lim1 = X1bar-X2bar-(t*sp*sqrt((1/n1)+(1/n2)))
lim2 = X1bar-X2bar+(t*sp*sqrt((1/n1)+(1/n2)))

cat("The 95% confi dence interval is found as",round(lim1, digits = 2),"<= u-u0 <=",round(lim2, digits = 2))

# The answer may slightly vary due to rounding off values