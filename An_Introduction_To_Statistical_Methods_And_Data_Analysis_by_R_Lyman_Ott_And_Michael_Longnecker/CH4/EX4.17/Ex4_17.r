# variable y  with normal distribution N(??, ??), where ??=70 and ?? = 13
#  the probability that a measurement will be less than 60 is given by 
pnorm(60,mean =70,sd=13)
#  probability that a randomly selected vehicle will have emission levels greater than 90 ppb
pnorm(90,mean =70,sd=13,lower.tail = FALSE)
# the probability that a randomly selected vehicle will have emission levels between 60 and 90 ppb
pnorm(90,mean =70,sd=13)-pnorm(60,mean =70,sd=13)

