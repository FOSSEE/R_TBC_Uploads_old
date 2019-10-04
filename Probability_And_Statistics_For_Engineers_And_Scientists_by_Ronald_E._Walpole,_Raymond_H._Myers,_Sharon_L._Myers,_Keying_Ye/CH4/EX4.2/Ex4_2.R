
# Chapter 4
# Example 4.2 Page no. 113 from the pdf..
# Expected Value Evaluation Problem 

# To find the Expected commission..

p <- 0.7

q <- 0.4

dat <- c(0,1000,1500,2500)

# Distribution..
weights <- c((1-p)*(1-q),p*(1-0.4),(1-p)*q,p*q)

cat("The expected commission is",weighted.mean(dat,weights))




