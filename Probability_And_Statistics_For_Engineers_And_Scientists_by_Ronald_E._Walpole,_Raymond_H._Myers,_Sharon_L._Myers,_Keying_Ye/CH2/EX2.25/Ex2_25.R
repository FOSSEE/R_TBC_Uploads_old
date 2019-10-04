# Chapter 2
# Example 2.25 page no. 53 from the pdf..
# Probability Using Law of Large Numbers..

# Probability can also be calculated using direct formula(ratio) but the code will be very straight forward..
# Let's look at another way to achieve the same result.
# To find the probability of getting less than 4 in rolling a die, if even number has twice the probability than odd number..

a <- c(1,2,2,3,4,4,5,6,6)

b <- sample(a,10000,replace=T)    # using law of large numbers

cat("The probability of getting a number less than 4 is approximately",sum(b < 4)/10000)

#this answer is slighty different than the answer in textbook which is 0.444. If we increase the number of trials then the probability will be more close to the answer in textbook