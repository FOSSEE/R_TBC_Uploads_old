                                 # Page no. : 745 - 747

# Multiple Regression Approach to Experimental Design

A <- c(58,64,55,66,67)
B <- c(58,69,71,64,68)
C <- c(48,57,59,47,49)

DF <- data.frame(A,B,C)

newA <- c(1,1,1,1,1,0,0,0,0,0,0,0,0,0,0)
newB <- c(0,0,0,0,0,1,1,1,1,1,0,0,0,0,0)
y <- c(58,64,55,66,67,58,69,71,64,68,48,57,59,47,49)

DF2 <- data.frame(newA, newB, y)

regressor <- lm(y ~ newA + newB, data = DF2)
summary(regressor)

cat("Equation is y = ",regressor$coefficients[1],"+",regressor$coefficients[2],"A +",
    regressor$coefficients[3],"B")