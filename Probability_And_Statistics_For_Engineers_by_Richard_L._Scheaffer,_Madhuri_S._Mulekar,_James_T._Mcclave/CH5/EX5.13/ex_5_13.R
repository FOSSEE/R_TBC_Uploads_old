#a
cat("The probability of exactly 3 out of 10 plants calling in orders is ", 
    dbinom(3,10,prob = 0.2))

#b
# The probability of at most 3 out of 10 plants calling in orders = P(Y<=3) = p(0)+p(1)+p(2)+p(3)
cat("The probability of at most 3 out of 10 plants calling in orders is " ,  pbinom(3,10,prob = 0.2))

#c
#  The probability of at least 3 out of 10 plants calling in orders = 1- P(Y<3)
cat(" The probability of at least 3 out of 10 plants calling in orders is" , 1-  pbinom(2,10,prob = 0.2))


  