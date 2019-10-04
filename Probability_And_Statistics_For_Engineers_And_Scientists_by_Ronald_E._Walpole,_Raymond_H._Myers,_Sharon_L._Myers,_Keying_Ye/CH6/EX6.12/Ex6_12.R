
# Chapter 6
# Example 6.12 page no.184 from the pdf..
# Applications of Normal Distribution..

# to find the % of resistance exceeding 43 ohms from example 6.11, if resistance is measured to the nearest ohm.

# mean resistance = 40, sd= 2, normal distribution..

# here we will assign measurement of 43 ohms to all resistors whose value are greater than 43 and lesser than 43.5


cat("The difference between resistance that exceed 43 ohms and that exceeds beyond 43 is",-pnorm(43.5,mean = 40,sd=2,lower.tail = F)+pnorm(43,mean = 40,sd=2,lower.tail = F),"so this value in %age represents all resistance grater than 43 and less than 43.5 that are now being recorded as 43ohms")
