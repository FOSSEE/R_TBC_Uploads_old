
# Using exponential distriution

#a
# The probability that any given plant processes more than 5 tons of raw sugar on a given day = P(Y>=5)

mean <- 4
Theeta <- 1/mean
a <- 1 - pexp(5, rate = Theeta)
cat("The probability that any given plant processes more than 5 tons of raw sugar on a given day is", a)

