# Statistics for Management and Economics by Gerald Keller
# Chapter 4: Numerical Descriptive Techniques
# Example 4.1 on Pg 99
# Mean Time Spent on the Internet 

Internet_hours <- c(0, 7, 12, 5, 33, 14, 8, 0, 9, 22)

#manually computing the sample mean of Internet hours
mean1 <- sum(Internet_hours)/length(Internet_hours)

#computing mean using function
mean2 <- mean(Internet_hours)

#Answer: sample mean is 11

#End