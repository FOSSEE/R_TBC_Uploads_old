
# to find the probability that three bulbs have no defects, one has a type A defect, and two have type B defects out of 6
# bulbs chosen from a lot

# Using multinomial distribution

p_bulb <- c(0.70,0.20,0.10)

# No. of bulbs chosen without defect, with defect A, with defect B are:
x <- c(3,1,2)

cat(" the probability that three bulbs have no defects, one has a type A defect, and two have type B defects is",
    dmultinom(x,6,p_bulb))