
# Chapter 4 
# Example 4.9 page no. 121 from the pdf..
# Variance using Expectation formula..


# calculate variance using expectation formula


# given data 

a <- c(0.51,0.38,0.10,0.01)

# using E[x^2]-(E[X])^2

varia <- weighted.mean(0:3*0:3,a)- (weighted.mean(0:3,a))^2

cat("The value of Variance is:",varia)