# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.2 on Pg. 184
# Determinants of Success among Mutual Fund Managers-Part 2

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

#Find P(A1/B2)

p_A1_given_B2 =  p_A1_B2/ (p_A2_B2 + p_A1_B2)
#Answer: P(A1/B2) = 0.3494

cat("34.9% of all mutual funds that do not outperform the market are managed by top-20 MBA program graduates.")

#End