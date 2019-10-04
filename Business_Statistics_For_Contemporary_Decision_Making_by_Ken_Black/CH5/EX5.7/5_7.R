# Poission formula : P(x) =lamda^x*e^-lamda/x!

l <- 3.2 # lamda
# x>7 customers/4 minutes

# through in build function of poission in r:
dpois(8,lambda = 3.2) # x=8

# x = 8 through formula :
x = 8
pd_8 <- (l^x*exp(-l))/factorial(x)
pd_8

# x = 9 through formula :
x = 9
pd_9 <- (l^x*exp(-l))/factorial(x)
pd_9

# x = 10 through formula :
x = 10
pd_10 <- (l^x*exp(-l))/factorial(x)
pd_10

# x = 11 through formula :
x = 11
pd_11 <- (l^x*exp(-l))/factorial(x)
pd_11

# x = 12 through formula :
x = 12
pd_12 <- (l^x*exp(-l))/factorial(x)
pd_12

# x = 13 through formula :
x = 13
pd_13 <- (l^x*exp(-l))/factorial(x)
pd_13

# Poission distribution for x>=8
sum(pd_8,pd_9,pd_10,pd_11,pd_12,pd_13)

