# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.6 on Pg. 193
# Selecting Two Students with Replacement 

#A is the event that the first student chosen is female 
#B is the event that the second student chosen is also female. 

#Find P(A and B) with replacement

#Given:
number_of_males = 7
number_of_females = 3

p_A = number_of_females/(number_of_females + number_of_males)
p_B = number_of_females/(number_of_females + number_of_males) #with replacement

p_A_and_B = p_A * p_B
#Answer: 0.09

cat("Probability that the two students chosen are female:", p_A_and_B)

#End
