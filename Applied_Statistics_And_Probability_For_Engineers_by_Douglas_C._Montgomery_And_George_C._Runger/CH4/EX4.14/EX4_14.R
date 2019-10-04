#Normally distributed current(Pg no. 124)

mean = 10 #mA
v = 4 #mA^2

#P(9<X<11)
p1 = 1 - pnorm(9, mean ,sqrt(v))
p1

p2 = 1 - pnorm(11, mean, sqrt(v))
p2

result = p1- p2
result

z =2.06
x = z*sqrt(v) + mean
x #mA
#The answer may slightly vary due to rounding off values