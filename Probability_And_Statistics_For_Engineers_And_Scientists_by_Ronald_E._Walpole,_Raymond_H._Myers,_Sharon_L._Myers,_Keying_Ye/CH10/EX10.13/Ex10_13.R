
# Chapter 10
# example 10.13 page no. 368 from the pdf..
# To do Hypothesis Testing for 2 variances..

# refer example 10.6 for value of 2 variances
# Null - sig1^2 = sig2^2
#alternaitive - sig1^2 != sig2^2

s1_sq <- 16

s2_sq <- 25


# null reject if f <0.34 or f > 3.11..
ifelse(s1_sq/s2_sq < qf(0.05,11,9) | s1_sq/s2_sq > qf(0.95,11,9),print("The null hypothesis is rejected and conclude there is sufficient evidence that variance differ"),print("Do not reject null hypothesis and conclude that there is insufficient evidence that the variances differ."))

