# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.1 on Pg. 182
# Determinants of Success among Mutual Fund Managers-Part 1


#Denote:
#A1 = Fund manager graduated from a top-20 MBA program 
#A2 = Fund manager did not graduate from a top-20 MBA program 
#B1 = Fund outperforms the market 
#B2 = Fund does not outperform the market 

#Given:
#P(A1 and B1) = 0.11 
#P(A2 and B1) = 0.06 
#P(A1 and B2) = 0.29 
#P(A2 and B2) = 0.54

p_A1_B1 = 0.11
p_A2_B1 = 0.06
p_A1_B2 = 0.29
p_A2_B2 = 0.54

#P(A1) = P(A1 and B1) + P(A1 and B2)
p_A1 = p_A1_B1 + p_A1_B2
#Answer: P(A1) = 0.4

#P(A2) = P(A2 and B1) + P(A2 and B2)
p_A2 = p_A2_B1 + p_A2_B2
#Answer: P(A2) = 0.6

#P(B1) = P(A2 and B1) + P(A1 and B1)
p_B1 = p_A2_B1 + p_A1_B1
#Answer: P(B1) = 0.17

#P(B2) = P(A2 and B2) + P(A1 and B2)
p_B2 = p_A2_B2 + p_A1_B2
#Answer: P(B2) = 0.83


#End