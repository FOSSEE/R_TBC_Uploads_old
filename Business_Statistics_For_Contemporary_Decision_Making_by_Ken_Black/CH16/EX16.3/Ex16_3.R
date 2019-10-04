# CHI SQUARE GOODNESS OF FIT TEST example 2 :
p <- c("Milk","non-Milk")
fo <- c(115,435)
fe <- c(93.5,456.5)

# critical value of chi-square :
qchisq(.95, df=1) 

X_1 = (fo[1]-fe[1])^2/fe[1]
X_1

X_2 = (fo[2]-fe[2])^2/fe[2]
X_2

# Observed value of chi-square :
X_sq = X_1 + X_2
X_sq

# This observed chi-square, 5.95, is greater than the critical chi-square value of 3.8415. 
# The decision is to reject the null hypothesis.