#install.packages("OptionPricing")
require(OptionPricing)
C0 = BS_EC(T = 5/12, K = 50, r = 0.1, sigma = 0.3, S0 = 50)
dS = 2
C1 = BS_EC(T = 5/12, K = 50, r = 0.1, sigma = 0.3, S0 = 50+dS)
C0[1]+ C0[2]*dS + 0.5*C0[3]*dS-2

#Answer differs in last line as the value of C0 gamma is different than the book