#Normally distributed current(Pg no. 123)

mean = 10 #mA
v = 4 #mA^2
x = 13 #mA

p = 1 - pnorm(x, mean ,sqrt(v))
p

#The answer may slightly vary due to rounding off values