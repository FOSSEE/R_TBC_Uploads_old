
# Chapter 12
# example 12.5 page no. 456 from the pdf..
# to test the hypothesis on the slope of the regression model..

# Null - beta2 = -2.5
# alternate > -2.5

# solving example 12.4 again..
# linear regression model using matrices..
# given - % survival(y) of certain type of animal semen after storage..
# combinations of concentration of 3 materials used to increase the chance of survival..
# estimate the linear regression  model using the data by matrices form.

y <- c(25.5,31.2,25.9,38.4,18.4,26.7,26.4,25.9,32.0,25.2,39.7,35.7,26.5)

x1 <- c(1.74,6.32,6.22,10.52,1.19,1.22,4.10,6.32,4.08,4.15,10.15,1.72,1.70)

x2 <- c(5.30,5.42,8.41,4.63,11.60,5.85,6.62,8.72,4.42,7.60,4.83,3.12,5.30)

x3 <- c(10.80,9.40,7.20,8.50,9.40,9.90,8.00,9.10,8.70,9.20,9.40,7.60,8.20)

# now forming the matrix,


xxdash <- matrix(c(length(x1),sum(x1),sum(x2),sum(x3),sum(x1),
                   sum(x1*x1),sum(x1*x2),sum(x1*x3),
                   sum(x2),sum(x2*x1),sum(x2*x2),sum(x2*x3),
                   sum(x3),sum(x3*x1),sum(x3*x2),sum(x3*x3)),byrow = T,nrow = 4)

# now forming the matrix xdash_y 


xdash_y <- matrix(c(sum(y),sum(x1*y),sum(x2*y),sum(x3*y)),byrow = T,nrow = 4)

# now solving the matrix equation xxdash*b = xdash_y using solve function in R

sol <- solve(xxdash,xdash_y)

unit <- matrix(c(c(1,0,0,0),c(0,1,0,0),c(0,0,1,0),c(0,0,0,1)),ncol = 4)


# finding inverse of the matrix xxdash..
inv_xxdash <- solve(xxdash,unit)

# final answer..
cat("The regression line is",sol[1,1],"+",sol[2,1],"*x1",
    sol[3,1],"*x2",sol[4,1],"*x3")

# the coefficient of x2 (i.e beta2) is -1.861649 as we can see from the solution..
# now testing our hypothesis..

t.score <- (sol[3,1]+2.5)/(2.073*sqrt(inv_xxdash[3,3]))

cat("The p-value is",pt(t.score,9,lower.tail = F),"we reject the null hypothesis and conclude beta2 > -2.5")

# the answer in the T.B is double the value obtained by computation, 
#I think they took both sided alternative, but we have to take only one sided alternative as our alternative is beta2 > -2.5,
#hence it is one sided and so T.B answer is wrong..
