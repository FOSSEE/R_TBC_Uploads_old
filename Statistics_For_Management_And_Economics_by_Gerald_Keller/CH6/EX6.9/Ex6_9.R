# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.9 on Pg. 199
# Should an MBA Applicant Take a Preparatory Course? 

#A1 = GMAT score is 650 or more
#A2 = GMAT score less than 650 
#B = Take preparatory course 

#Given:
#P(B given A1) = .52
#P(A1) = p_A1 = 0.1
#P(B given A2) = .23

#Find P(A1/B)

p_A1 = 0.1
p_A2 = 1 - p_A1
p_B_given_A1 = 0.52
p_B_given_A2 = 0.23

#BAYE'S Rule:
#P(A1 given B) =  P(A1)*P(B given A1) / (P(A1)*P(B given A1) + P(A2)*P(B given A2))

p_A1_given_B = (p_A1*p_B_given_A1) / (p_A1*p_B_given_A1 + p_A2*p_B_given_A2)
#Answer: 0.2007722

#End
