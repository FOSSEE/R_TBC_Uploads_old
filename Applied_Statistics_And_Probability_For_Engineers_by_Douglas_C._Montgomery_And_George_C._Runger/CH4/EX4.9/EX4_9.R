#Uniform current(Pg no. 117)

# P {4.95<X<5}
integrand <- function(x) {5}
P = integrate(Vectorize(integrand),lower = 4.95,upper = 5.0)
P

a=4.9
b=5.1

u = (a+b)/2 # expectation in mA
u
v = ((0.2)^2)/12 #variance in mA^2
v
sd = sqrt(v) #standard deviation in mA
sd

#The answer may slightly vary due to rounding off values

