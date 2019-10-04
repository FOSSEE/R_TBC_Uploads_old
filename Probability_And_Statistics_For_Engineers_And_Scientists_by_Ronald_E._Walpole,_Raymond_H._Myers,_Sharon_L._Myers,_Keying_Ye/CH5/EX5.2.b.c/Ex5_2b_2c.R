
# Chapter 5
# Example 5.2b and 5.2c page no. 146 from the pdf..
# Binomial Distribution Problem..

# to find probability that from 3 to 8 survive in a sample of 15 people from a rare blood disease which have the probability of recovering from it 0.4.

cat("The probability that from 3 to 8 survive is",pbinom(8,15,0.4)-pbinom(2,15,0.4))

# the answer in the textbook is 0.8779 which is rounded off to the answer I got here..

#to find probability that exactly 5 survive in a sample of 15 people from a rare blood disease which have the probability of recovering from it 0.4.

cat("The probabilty that exactly 5 survive is",dbinom(5,15,0.4))

# the answer in the textbook is rounded off to 0.1859 and the deviation from the answer in both cases is less than 2%..








