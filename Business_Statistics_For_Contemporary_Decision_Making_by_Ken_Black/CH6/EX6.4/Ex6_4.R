# PROBABILITY OF A UNIFORM DISTRIBUTION

x = 550
mean = 494
sd = 100
lb =.2123  # probability of values between 550 and the mean
ub =.5000  # probability of values less than the mean


# using r function :
pnorm(x, mean, sd)

# Or using normal formula :
z=(x-mean)/sd
z

ub+lb # probability of values 550
 