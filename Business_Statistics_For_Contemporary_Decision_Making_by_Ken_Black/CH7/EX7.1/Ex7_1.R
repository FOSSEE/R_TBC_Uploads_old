# Z formula for sample means : z = (sample_mean - average)/(standard_dev/sqrt(sample_size))

mean = 448
sd = 21/sqrt(49)
n = 49 # sample size
# sample mean : 441 <= x_bar <= 446
samplemean_l = 441
samplemean_u = 446

a <-pnorm(samplemean_l, mean, sd, lower.tail=FALSE) 
a
b <-pnorm(samplemean_u, mean, sd, lower.tail=FALSE)
b


#  probability of a value being between z = -2.33 and -0.67 is :
prob = a - b
prob

# The probability of a value being between z=2.33 and -0.67 is .2426; that is, 
# there is a 24.26% chance of randomly selecting 49 hourly periods for
# which the sample mean is between 441 and 446 shoppers.
