
# Chapter 2
# Example 2.37 page no. 66 from the pdf..
# Independence and Multiplication Rule..


# bag1 = 4 white and 3 black balls
#bag2= 3 white and 5 black balls
# to dind probability of ball drawn from 2nd bag is black ? given a ball drawn from first is unseen and dropped in second bag

p_b1 <- 3/7
p_w1 <- 4/7

p_b2_b1 <- 6/9  # if first black ball dropped in second bag
p_b2_w1 <- 5/9  # if first white ball drawn is dropped into second bag..

# Using independence and multiplicative rule

cat("The probability that the second ball drawn is black in this case is",p_b1*p_b2_b1+p_w1*p_b2_w1)










