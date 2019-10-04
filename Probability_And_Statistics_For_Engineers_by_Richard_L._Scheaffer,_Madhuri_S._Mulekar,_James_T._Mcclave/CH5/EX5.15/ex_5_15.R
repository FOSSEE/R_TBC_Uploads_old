# a
# The probability that the firm will get none of those contracts = P(X=0)

cat("the probability that the firm will get none of those contracts" ,dbinom(0,8,prob = 0.40))

#b
# The probability that the firm will get five out of eight contracts = P(X=5)
 
cat(" the probability that the firm will get five out of eight contracts", dbinom(5,8,prob = 0.40))

#c
#  The probability that the firm will get all eight contracts

cat(" the probability that the firm will get all eight contracts" , dbinom(8,8,prob = 0.40))