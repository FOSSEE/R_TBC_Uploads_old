                                  # Page no. : 234 - 236

# Uniform Probability Distribution

a <- 120
b <- 140
fun_over_x <- 1/20   

# Since uniform probability is symmetric we can split it into left and right parts which 
# are symmetric in nature

c <- 130  # (120+140)/2 = 130

# Probability of uniform probability  distribution is the area of the figure (rectangle)

# Area for the left symmetric part of the figure

area <- punif(c,a,b)
area_full <- 2 * area

cat("Probability is",area_full)

# Expected value, Variance and standard Deviation

expected_value <- (a + b) / 2
variance <- (b - a) ** 2 / 12
standard_deviation <- sqrt(variance)

cat("Expected value is",expected_value)
cat("Variance is",variance)
cat("Standard deviation is",standard_deviation)
