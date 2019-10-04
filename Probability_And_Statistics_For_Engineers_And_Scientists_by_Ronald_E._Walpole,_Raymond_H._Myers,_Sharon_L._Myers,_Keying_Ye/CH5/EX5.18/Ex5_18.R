
# Chapter 5
# example 5.18, page no. 162 from the pdf..
# Poisson Distribution Problem..

# avg no. of oil takers arriving each day = 10,
# facilities at port can handle 15 tankers per day.
# to find the prob. that on a given day tankers have to be turned away..


cat("The probability that on a given day tankers have to be turned away is",ppois(15,10,lower.tail = F))





