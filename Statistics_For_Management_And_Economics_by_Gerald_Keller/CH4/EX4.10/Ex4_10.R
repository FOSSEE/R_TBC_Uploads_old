# Statistics for Management and Economics by Gerald Keller
# Chapter 4: NUMERICAL DESCRIPTIVE TECHNIQUES
# Example 4.10 on Pg. 114
# Using Chebysheff's Theorem to Interpret Standard Deviation 


population_mean <- 28000
population_sd <- 3000

sd2 <- 2 #two standard deviations
sd3 <- 3 #three standard deviations
chebyshev_2 <- 1- 1/(sd2^2)
chebyshev_3 <- 1- 1/(sd3^2)

lower_bound_two_SD <- population_mean - population_sd * sd2 #Answer: $22,000
upper_bound_two_SD <- population_mean + population_sd * sd2 #Answer: $34,000

lower_bound_three_SD <- population_mean - population_sd * sd3 #Answer: $19,000
upper_bound_three_SD <- population_mean + population_sd * sd3 #Answer: $34,000

cat("Given the histogram is NOT bell shaped, we can only apply the Chebyshev's Thoerem and say that:")

cat("1. Atleast", paste(round(chebyshev_2*100,digits=0),"%",sep=""),
    "of the returns on investment lie between", round(lower_bound_two_SD), 
    "and",
    round(upper_bound_two_SD))

cat("2. Atleast", paste(round(chebyshev_3*100,digits=1),"%",sep=""),
    "of the returns on investment lie between", round(lower_bound_three_SD), 
    "and",
    round(upper_bound_three_SD))

#End