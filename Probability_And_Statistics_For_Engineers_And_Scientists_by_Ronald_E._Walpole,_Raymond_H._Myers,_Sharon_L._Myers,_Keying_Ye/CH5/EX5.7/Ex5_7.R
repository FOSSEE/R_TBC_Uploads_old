
# Chapter 5
# Example 5.7 page no. 150 from the pdf..
# Multinomial Distribution..

# to find the prob. of 6 randomly arriving planes which are distributed in 3 runways and each have a ideal arriving prob.

p_runways <- c(2/9,1/6,11/18)

# prob. of runway 1 :2 
        #  runway 2: 1
        #  runway 3 : 3 

x <- c(2,1,3)   # a particular case of the distrbution of 6 randomly arriving, written in a vactor 

# this is the case of multinomial distribution

cat("The probability of this type of distribution of 6 randomly arriving airplanes is",dmultinom(x,6,p_runways))




