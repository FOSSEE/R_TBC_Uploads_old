#install.packages("Deriv")
library(Deriv)

#Reaction time(Pg no. 113)

#P(X<200)
f = function(x){1-(exp(-(0.01*x)))}
f(200)
#The answer may slightly vary due to rounding off values