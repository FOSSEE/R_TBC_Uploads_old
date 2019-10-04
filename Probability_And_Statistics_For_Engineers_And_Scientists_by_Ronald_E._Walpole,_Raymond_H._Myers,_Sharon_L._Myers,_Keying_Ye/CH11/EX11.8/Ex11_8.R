
# Chapter 11
# Example 11.8 page no. 420 from the pdf..
# Computation of Lack of Fit Sum of Squares..

# to do lack of fit test 

# to do lack of fit test I used the package "alr3", referance - Internet
# using only anova shows the regression and error, not lack of fit and pure error so I used this package

install.packages("alr3")   # Remove it if you have already Installed the package..

library("alr3")

y <- c(77.4,76.7,78.2,84.1,84.5,83.7,88.9,89.2,89.7,94.8,94.7,95.9)

x <- c(150,150,150,200,200,200,250,250,250,300,300,300)

dat <- data.frame(y,x)

c <- lm(y~x,data=dat)

cat("The following table shows analysis of variance on temperature field data")

pureErrorAnova(c)
