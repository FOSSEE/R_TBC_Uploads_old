require(OptionPricing)
c=BS_EC(K=54, r = 0.07, sigma = 0.3, T = 5/12, S0 = 50)
c[1]
y <- function(y) (BS_EC(K=54, r = 0.07, sigma = y, T = 5/12, S0 = 50)[1]-2.846575)
h<-Vectorize(y)
uniroot(y,c(-1,1))

f <- Vectorize(function(y) (BS_EC(K=54, r = 0.07, sigma = y, T = 5/12, S0 = 50)[1]-2.846575))
curve(f)