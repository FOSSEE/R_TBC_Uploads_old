
# Chapter 5
# example 5.6, page no. 148 from the pdf..
# Binomial Distribution Problem..

# Note- Example 5.5 not solved as the solution involves only the multiplication of 2 numbers..

# given - p = 0.3, n = 10, binomial distribution


cat("The probability that more than 6 are found to contain the impurity from 10 wells is",1-pbinom(5,10,0.3))

print("As the prob. is 0.0473 approx., this casts considerable doubt on conjecture and suggests that the impurity problem is more severe.")


