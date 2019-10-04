
# Chapter 5
# Example 5.11 page no. 155 from the pdf..
# Mean And Variance Of Hypergeometric Experiment..

# to find the mean and variance of the random variable which has hypergeometric distribution..

# mean..
me <- sum(0:3*dhyper(0:3,3,37,5))

# variance..
v <- sum(0:3*0:3*dhyper(0:3,3,37,5))-me*me

cat("The mean of this experiment is",me,"And Variance is",v)




