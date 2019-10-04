
# Chapter 8
# Example 8.4 page no. 234 from the pdf..
# Central Limit Theorem..

# given - bulb life normally distributed, mean= 800 ,,sd= 40

# prob. that average life is less than 775hrs for a random sample of 16 bulbs..

sd <- 40

n <- 16

# Using central limit theorem..

# sampling distribution..

sam_mean <- 800

sam_sd <- sd/sqrt(n)

cat("The probability that the random sample of 16 have average lifetime less than 775hrs is",pnorm(775,sam_mean,sam_sd))








