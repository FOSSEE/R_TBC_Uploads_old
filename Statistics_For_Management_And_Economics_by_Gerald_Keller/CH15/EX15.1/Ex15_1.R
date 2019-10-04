# Statistics for Management and Economics by Gerald Keller
# Chapter 15: CHI-SQUARED TESTS
# Example 15.1 on Pg 598
# Testing Market Shares 

#Null Hypothesis, Ho: p1 = .45, p2 = .40, p3 = .15
#Alternative Hypothesis, H1: At least one pi is not equal to its specified value

fabric <- c(102, 82, 16)
chi <- chisq.test(fabric, p = c(.45, .40, .15))
chi$statistic
chi$p.value #its less than 0.05 implying one can reject the Null hypothesis

tabchi <- qchisq(.95, df=2)

if(chi$statistic > tabchi)
{
  print("Advertising campaigns do have an effect. NUll Hypothesis is rejected.")
} else 
{
  print("Advertising campaigns do NOT have an effect.")
}

#End
