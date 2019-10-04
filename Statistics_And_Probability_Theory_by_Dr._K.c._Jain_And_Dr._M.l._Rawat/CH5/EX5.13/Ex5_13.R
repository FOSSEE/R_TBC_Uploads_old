#Example_13 chapter 5 page no. 222
u= 65
sd= sqrt(25)
q = pnorm(70,u, sd)
p=1-q
cat("prob 2 out of 3 have more than 70 marks",dbinom(2,3,p))
#book has error in the answer