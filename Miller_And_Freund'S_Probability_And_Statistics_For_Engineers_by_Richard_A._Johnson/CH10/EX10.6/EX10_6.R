#a)
#install.packages("binom") #package
library(binom)
binom.test(4, 34, conf.level=0.95, p=.3,alternative = 'less')
cat("The P-value = 0.0117 provides quite strong evidence against the null
hypothesis H0 : p = 0.3 and in favor of the alternative that the probability is
less than 0.3.")
#b)level of significance for the test
#Alternative test P<0.3
pbinom(5, 34,0.3)#P(X<= 5)
