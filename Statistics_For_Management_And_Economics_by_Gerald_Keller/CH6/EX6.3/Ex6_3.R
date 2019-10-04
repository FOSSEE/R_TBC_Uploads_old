# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.3 on Pg. 185
# Determinants of Success among Mutual Fund Managers-Part 3


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

#determine whether A1 and B1 are independent

p_A1_given_B1 =  p_A1_B1/ (p_A2_B1 + p_A1_B1)
p_A1 = p_A1_B1 + p_A1_B2

cat("P(A1/B1) =", p_A1_given_B1)
cat("P(A1) =", p_A1)

if(p_A1 == p_A1_given_B1)
{cat("A1 and B1 are independent since P(A1/B1) and P(A1) have same value")}else
    {cat("A1 and B1 are not independent since P(A1/B1) and P(A1) do not have same value")}

#End
