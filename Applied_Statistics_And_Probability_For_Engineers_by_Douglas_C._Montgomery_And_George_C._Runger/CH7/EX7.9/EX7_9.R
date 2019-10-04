#Gamma Distribution Moment Estimators(Pg no. 258)

n = 8
x = 21.65
y = 6639.40 #sum of square of individual samples

r = x^2/(((1/n)*y)-(x)^2)
r

lamda = x/(((1/n)*y)-(x)^2)
round(lamda,digits = 4)

# The answer may slightly vary due to rounding off of values