# Chapter 2
# Example 2.24 page no.53 from the pdf..
# Probability Using Normal Method and Law of Large numbers..

# to find probability for atleast one head if a coin  is tossed twice..

# "dplyr" package is used, if not installed can be installed using 
# install.packages("dplyr") , remove comment if you already have..
library(dplyr)      # this package is for data manipulation

a <- c("H","H","T","T")

b <- c("H","T","H","T")

a <- data.frame(a,b)     # making data frame which consists of 2 columns i.e first column and 2nd column
  
c <- a %>% filter(a=="H"| b=="H")

cat("The probability that we get atleast one head in the tosses is",nrow(c)/nrow(a))

# another method to solve the same problem, by using law of large numbers


d <- c("HH","TT","TH","HT")

e <- sample(d,10000,replace = T)

cat("The approximate probability of getting atleast one head in the two tosses is",sum(e=="HH"|e=="HT"|e=="TH")/10000)

# the answer here is near to 0.75 but not exactly 0.75, if we increase the number of trials say 200000 it will be more close to 0.75.
# if we make this say tending to infinity then it will be exactly 0.75..

