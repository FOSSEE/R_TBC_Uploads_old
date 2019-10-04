
# Chapter 5
# problem 5.3 on page 146 of pdf..
# Binomial Distribution Problem..

# given - p = 0.03, n = 20 

cat("The probability that there will be at least one defective item among these 20 is",1- dbinom(0,20,0.03))

# problem 5.3 b part..
# testing of each shipment viewed as a bernoulli trial with p = 0.4562 from previous part..

cat("The probability that there will be exactly 3 shipments each containing at least one defective device among the 20 that are selected and tested from the shipment is",dbinom(3,10,0.4562))


