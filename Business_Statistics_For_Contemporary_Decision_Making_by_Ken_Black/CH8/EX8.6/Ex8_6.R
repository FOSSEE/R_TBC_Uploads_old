
# Confidence to estimate the Population Variance :
# var = ((n-1)*s^2)/(X(a/2))^2 or ((n-1)*s^2)/(X(1-a/2))^2 , df = n-1

s = 1.12
n = 25
df = n-1

a = qchisq(0.975, df=24)
a
b = qchisq(.025, df=24)
b

var_1 = ((n-1)*s^2)/a
var_1

var_2 = ((n-1)*s^2)/b
var_2

