# Statistics for Management and Economics by Gerald Keller
# Chapter 4: NUMERICAL DESCRIPTIVE TECHNIQUES
# Example 4.9 on Pg. 113
# Using the Empirical Rule to Interpret Standard Deviation 


population_mean <- 0.1
population_sd <- 0.08
sd1 <- 1
sd2 <- 2
sd3 <- 3

lower_bound_one_SD <- population_mean - population_sd * sd1 #Answer: 2%
upper_bound_one_SD <- population_mean + population_sd * sd1 #Answer: 18%
probability_within_bounds1 <- pnorm(upper_bound_one_SD, population_mean, population_sd) - pnorm(lower_bound_one_SD, population_mean, population_sd)
#Answer: 68%

lower_bound_two_SD <- population_mean - population_sd * sd2 #Answer: -6%
upper_bound_two_SD <- population_mean + population_sd * sd2 #Answer: 26%
probability_within_bounds2 <- pnorm(upper_bound_two_SD, population_mean, population_sd) - pnorm(lower_bound_two_SD, population_mean, population_sd)
#Answer: 95%

lower_bound_three_SD <- population_mean - population_sd * sd3 #Answer: -14%
upper_bound_three_SD <- population_mean + population_sd * sd3 #Answer: 34%
probability_within_bounds3 <- pnorm(upper_bound_three_SD, population_mean, population_sd) - pnorm(lower_bound_three_SD, population_mean, population_sd)
#Answer: 99.7%

cat("Given the histogram is bell shaped, we can apply the Empirical Rule and say that:")
cat("1. Approximately", paste(round((probability_within_bounds1)*100,digits=0),"%",sep=""),
    "of the returns on investment lie between", paste(round((lower_bound_one_SD)*100,digits=0),"%",sep=""), 
    "and",
    paste(round((upper_bound_one_SD)*100,digits=0),"%",sep=""))

cat("2. Approximately", paste(round((probability_within_bounds2)*100,digits=0),"%",sep=""),
    "of the returns on investment lie between", paste(round((lower_bound_two_SD)*100,digits=0),"%",sep=""), 
    "and",
    paste(round((upper_bound_two_SD)*100,digits=0),"%",sep=""))

cat("3. Approximately", paste(round((probability_within_bounds3)*100,digits=1),"%",sep=""),
    "of the returns on investment lie between", paste(round((lower_bound_three_SD)*100,digits=0),"%",sep=""), 
    "and",
    paste(round((upper_bound_three_SD)*100,digits=0),"%",sep=""))

#End