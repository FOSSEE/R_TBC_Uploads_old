
# Chapter 14
# Example 14.6 page no. 589 from the pdf..
# Factorial Experiments for Random Effects..

# to determine which are the important sources of variation in an industrial process

op1 <- c(66.9,68.3,69.0,69.3,68.1,67.4,69.8,70.9,67.2,67.7,67.5,71.4)

op2 <- c(66.3,68.1,69.7,69.4,65.4,66.9,68.8,69.6,65.8,67.6,69.2,70.0)

op3 <- c(65.6,66.0,67.1,67.9,66.3,66.9,66.2,68.4,65.2,67.3,67.4,68.7)


obs <- c(op1,op2,op3)

operator <- c(rep(1,12),rep(2,12),rep(3,12))

batch <- c(rep(1:4,9))


dat <- data.frame(obs,operator, batch)

print("The analysis of variance table for this example is:")

summary(aov(obs~factor(operator)+ factor(batch) + factor(batch)*factor(operator)),data = dat)
# interaction in this case is the product of operator and batch components.



