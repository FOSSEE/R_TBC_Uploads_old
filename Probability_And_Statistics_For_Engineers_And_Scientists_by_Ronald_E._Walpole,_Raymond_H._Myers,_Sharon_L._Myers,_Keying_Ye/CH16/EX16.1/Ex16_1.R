
# Chapter 16
# Example 16.1 page no. 658 from the pdf..
# use sign test to test the hypothesis..

# Package used "BSDA", referance- Internet..

install.packages("BSDA")  # package for sign testing

library("BSDA")

#NULL H0:mu=1.8
#alternate: mu!= 8

dat <- c(1.5,2.2,0.9,1.3,2.0,1.6,1.8,1.5,2.0,1.2,1.7)


SIGN.test(dat,md=1.8)

cat("Since The p-value is",SIGN.test(dat,md=1.8)$p.value,"we do not reject the null hypothesis.")






