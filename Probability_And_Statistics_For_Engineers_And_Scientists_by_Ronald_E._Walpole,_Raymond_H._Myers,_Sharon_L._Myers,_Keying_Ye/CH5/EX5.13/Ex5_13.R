
# Chapter 5
# Example 5.13 page no. 156 from the pdf..
# Multivariate Hypergeometric Distribution..

# to find the multinomial hypergeometric distribution of the following problem..
# Package Used - "extraDistr" , referance- Internet..

# If you have already installed it remove the command below..
install.packages("extraDistr") # this package contain functions for various types of  prob. distribution 

library("extraDistr")    # to use this package..

#to find the prob. of 1 out 3 , 2 out 0f 4 and 1 out of 3, if 5 people are randomly selected from 10 people

cat("The probability that the 5 randomly selected from 10 has the above distribution is",dmvhyper(matrix(c(1,2,2),ncol = 3),c(3,4,3),5))
