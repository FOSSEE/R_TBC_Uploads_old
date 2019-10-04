# Statistics for Management and Economics by Gerald Keller
# Chapter 4: Numerical Descriptive Techniques
# Example 4.11 on Pg 118
# Percentiles of Time Spent on Internet 

Internet_hours <- c(0, 7, 12, 5, 33, 14, 8, 0, 9, 22)

quantile(Internet_hours, probs = c(.25, .50, .75), type=6)

#Answer: 25%   50%    75% 
        #3.75  8.50  16.00 

#End