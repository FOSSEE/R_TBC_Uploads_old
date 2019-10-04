
# Chapter 2
# Example 2.19c page no. 48 from the pdf..
# Permutation Problem..

# NUmber of ways to elect two officers from 50 people if B and C (2 individuals from 50 ) will only work together
# 2 cases . First, if B and C are elected 

cat("The number of ways to select B and C both from 50 are",2) # if B treasurer and C president and vice versa..

a <- 2

# Second case: if B and C are not chosen so election done from rest 48 people.

cat("The number of selections when B and C are not chosen are",factorial(48)/factorial(46)) #48P2

b <- factorial(48)/factorial(46)

cat("The total number of choices in this case is",a+b)

