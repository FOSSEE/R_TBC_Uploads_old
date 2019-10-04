
# Chapter 4 
# Example 4.19 page no. 129 from the pdf..
# Expectation Value of Linear Combination Of Random Variables..


# finding expected value using properties..


a <- c(1/3,1/2,0,1/6)

# find E[(X-1)^2]

# E[X^2-2X+1]

#E[X]
ex <- weighted.mean(0:3,a)

#E[X^2]
ex2 <- weighted.mean(0:3*0:3,a) 

# using properties

cat("The Expected Value of Y =(X-1)^2 is:",1*ex2 -2*ex +1)
