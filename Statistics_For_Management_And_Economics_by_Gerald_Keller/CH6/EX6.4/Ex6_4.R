# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.4 on Pg. 186
# Determinants of Success among Mutual Fund Managers-Part 4


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

#Find P(A1 or B1) i.e., P(A1 union B1)
#P(A1 or B1) = 1 - P(A2 and B2)

p_A1_or_B1 = 1 - p_A2_B2
#Answer: 0.46

cat("Thus,", paste(round(p_A1_or_B1*100), "%", sep=""),"of mutual funds either outperform the market or are managed by a top-20 MBA program graduate 
    or have both characteristics. ")

#End
