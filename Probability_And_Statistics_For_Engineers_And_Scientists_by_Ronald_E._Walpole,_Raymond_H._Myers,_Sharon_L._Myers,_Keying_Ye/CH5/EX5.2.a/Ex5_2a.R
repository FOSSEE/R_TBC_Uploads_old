
# Chapter 5 
# Example 5.2a page no. 146 from the pdf..
# Binomial Distribution Problem..

# to find probability that atleast 10 survive in a sample of 15 people from a rare blood disease which have the probability of recovering from it 0.4.

cat("The probability of atleast 10 will survive from a sample of 15 people is ", 1-pbinom(9,size = 15,prob= 0.4))

#this problem can also be solved by dbinom function but we need to do it from 0 to 9 so pbinom function is simple to use in this example..

#The answer in the book is approximated to 0.0338.
