# Probability battery exceeding lifetime of 4 hours is 0.135

# a
 cat("probability that only one battery lasts 4 hours or more is ",  dbinom(1,3,prob = 0.135))
 
#b
# probability that at least one battery lasts 4 hours or more = P(Y>=1)= 1- P(Y=0)
 no_battery <- dbinom(0,3,prob = 0.135)
 cat(" probability that at least one battery lasts 4 hours or more is " , 1- no_battery)
                      