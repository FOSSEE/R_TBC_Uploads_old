# Chapter 2
# Example 2.30 page no. 57 from the pdf..
# Probability Using Law of Large Numbers and using union property..


#to find the probability the sum of die roll (ROLLED TWICE) is 7 or 11
#Using law of large numbers..

a <- c(1:6)

b <- sample(a,200000,replace=T) + sample(a,200000,replace=T)   # b is a sample of sum of 2 die rolls, with 10^6 times trials


cat("The approximate value of probability of getting the sum as either 7 or 11 is",sum(b==7|b==11)/200000)



# This is approximate as the textbook and standard answer is 2/9, if we increase the number of trials then we would get very close to the final answer..
# A word of note- I have skipped some problems as you may have seen, as many problems are of same type just the numbers are changed, the concept is same, so I solved the relevant questions.


