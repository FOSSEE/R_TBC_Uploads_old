##Chapter 15 : Markov Chain
##Example 3-1 : Page 598

##Editing mistake in textbook
##The last element of P should be one as (sum over j)(p)=1 for all i
P=matrix(c(0.2,0.5,0.3,0,0.5,0.5,0,0,1),nrow = 3,byrow = T)
library(expm)
P%^%100