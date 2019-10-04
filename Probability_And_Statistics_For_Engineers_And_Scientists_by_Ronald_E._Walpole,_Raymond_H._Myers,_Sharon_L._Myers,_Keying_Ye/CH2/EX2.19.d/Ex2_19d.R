
# Chapter 2.
# Example 2.19d page no. 48 from the pdf..
# Permutation Problem..

# Number of ways to select officers from 50 students if D and E(2 individuals from 50 students) will not work together
cat("The number of choices of officers without restriction are",factorial(50)/factorial(48))

a <- factorial(50)/factorial(48)

cat("Number of ways in which D and E are selected are",2) # if D is president and E is treasurer and vice versa

b <- 2

cat("Number of ways in which we can choose officers in this case are",a-b)


