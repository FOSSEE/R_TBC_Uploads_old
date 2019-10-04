
# Chapter 2.
# Example 2.34 page no.63 from the pdf..
# Conditional Probability Problem..


p_departs_ontime <-  0.83
P_arrives_ontime <-  0.82
p_departs_arrives_ontime <- 0.78

# to find probability that it arrives on time given it departs in time
# Using conditional probability ..

cat("The probability that the plane arrives on time given that it departs on time is",p_departs_arrives_ontime/p_departs_ontime)

# to find probability that it departs on time given that it arrives on time..

cat("The probability that the plane departs on time given that it arrives on time is",p_departs_arrives_ontime/P_arrives_ontime)



#The answer in the textbook is approximated to 0.94 and 0.95 respectively ..
