# Probabilities in Uniform Distribution : P(x) = x2-x1 / b-a  where: a<=x1<=x2<=b

b = 39
a = 27

f_x = 1/(b-a) # f(x)
f_x

u <- (a+b)/2 #mean
u 

sd <- (b-a)/sqrt(b-a)  # standard deviation
sd

# P(30 <= x <= 35) :
P = (35-30)/(39-27)
P

# P(x<30) :
P1 = (30-27)/(39-27)
P1