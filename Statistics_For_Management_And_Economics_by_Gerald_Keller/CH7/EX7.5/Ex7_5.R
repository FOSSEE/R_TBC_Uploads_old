# Statistics for Management and Economics by Gerald Keller
# Chapter 7: RANDOM VARIABLES AND DISCRETE PROBABILITY DISTRIBUTIONS
# Example 7.5 on Pg. 230
# Bivariate Distribution of the Number of House Sales 


# X = number of houses that Xavier will sell in a month 
# Y = number of houses Yvette will sell in a month. 

# bivariate probability distribution of X & Y
matr=matrix(c(0.12, 0.21, 0.07, 0.42, 0.06, 0.02, 0.06, 0.03, 0.01),3,3)

#Marginal probabilities of Y
Y_marginal <- margin.table(matr, 1) 
Y_marginaltable <- matrix(c(0,1,2, Y_marginal),3,2)
colnames(Y_marginaltable) <- c('Y', 'P(Y)')
rownames(Y_marginaltable) <- c('', '', '')
Y_marginaltable 

#Expected value of Y, E(Y):
Expected_Y = X_marginaltable[1]*Y_marginaltable[4] + Y_marginaltable[2]*Y_marginaltable[5] +
             Y_marginaltable[3]*Y_marginaltable[6]
Expected_Y
#Answer: 0.5

#Variance(Y):
Var_Y = (Y_marginaltable[1]-Expected_Y)^2*Y_marginaltable[4] + 
        (Y_marginaltable[2]-Expected_Y)^2*Y_marginaltable[5] +
        (Y_marginaltable[3]-Expected_Y)^2*Y_marginaltable[6]
Var_Y
#Answer: 0.45

#Standard Deviation of Y
Std_Y = sqrt(Var_Y)
#Answer: 0.6708204

###################################

#Marginal probabilities of X
X_marginal <- margin.table(matr, 2) 
X_marginaltable <- matrix(c(0,1,2, X_marginal),3,2)
colnames(X_marginaltable) <- c('X', 'P(X)')
rownames(X_marginaltable) <- c('', '', '')
X_marginaltable 

#Expected value of X, E(X):
Expected_X = X_marginaltable[1]*X_marginaltable[4] + X_marginaltable[2]*X_marginaltable[5] +
  X_marginaltable[3]*X_marginaltable[6]
Expected_X
#Answer: 0.7

#Variance(X):
Var_X = (X_marginaltable[1]-Expected_X)^2*X_marginaltable[4] + 
  (X_marginaltable[2]-Expected_X)^2*X_marginaltable[5] +
  (X_marginaltable[3]-Expected_X)^2*X_marginaltable[6]
Var_X
#Answer: 0.41

#Standard Deviation of X
Std_X = sqrt(Var_X)
#Answer: 0.6403124


#End