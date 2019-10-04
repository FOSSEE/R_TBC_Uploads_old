# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.7 on Pg. 194
# Applying the Addition Rule 

#A = the household subscribes to the Sun 
#B = the household subscribes to the Post

#Given P(A) = 0.22, P(B) = 0.35 and P(A and B) = 0.06
#Find P(A union B) i.e., P(A or B)

p_A = 0.22
p_B = 0.35
p_A_and_B = 0.06

#Addition rule: P(A union B) = P(A) + P(B) - P(A and B)
p_A_or_B = p_A + p_B - p_A_and_B 
#Answer: 0.51

cat("The probability that a randomly selected household subscribes to either newspaper is", p_A_or_B)

#End
