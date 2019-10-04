
# Chapter 12
# Example 12.3 page no. 449 from the pdf..
# Linear regression model using matrices..

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

# final answer..
cat("The regression line is",sol[1,1],"+",sol[2,1],"*x1",
    sol[3,1],"*x2",sol[4,1],"*x3")








