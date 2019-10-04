# Exponential Distribution : f(x) = lambda * e^-lambda*x

# Probability of right tail exponential distribution : P(x>=x0) = e^-lambda*x0

l = 1.38 # lambda
mean = 1/l 
mean
x0 = .75

# P(x>=x0) :
P <- exp(-l*x0)
P

# for x0 = 0.75, Probability < x0 :
Prob = 1-P
Prob