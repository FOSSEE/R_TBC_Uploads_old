#  binomial distribution problem by using the normal distribution :

x = 12
n = 25
p = .40
q = 1-p

mean = n * p
mean

sd = sqrt(n*p*q)
sd

# test : mean +/- 3sd
test1 <- mean + 3*sd
test2 <- mean - 3*sd
test1 
test2

# test :  2.65 to 17.35 

# z value at x = 12.5
x = 12.5
z = (x-mean)/sd
z

# z value at x = 12.5
x = 11.5
z = (x-mean)/sd
z

#z = 1.02 produces a probability of .3461.
# z = 0.61 produces a probability of .2291.

# The difference in areas yields the following answer:
0.3461 - .2291

