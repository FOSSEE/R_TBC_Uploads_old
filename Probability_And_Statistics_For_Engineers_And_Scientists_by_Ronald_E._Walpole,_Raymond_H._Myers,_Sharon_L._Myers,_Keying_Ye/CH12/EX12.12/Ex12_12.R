# Chapter 12
# Example 12.12 page no.492 from the pdf..
# Cp Statistic..

# to find the relationship between sales for a particular year and factor that affect sales..

# Package "leaps" is used if not installed can be done using install.packages("leaps")

library(leaps)

x1 <- c(5.5,2.5,8.0,3.0,3.0,2.9,8.0,9.0,4.0,6.5,5.5,5.0,6.0,5.0,3.5)

x2 <- c(31,55,67,50,38,71,30,56,42,73,60,44,50,39,55)

x3 <- c(10,8,12,7,8,12,12,5,8,5,11,12,6,10,10)

x4 <- c(8,6,9,16,15,17,8,10,4,16,7,12,6,4,4)

y <- c(79.3,200.1,163.2,200.1,146.0,177.7,30.9,291.9,160.0,339.4,159.6,86.3,237.5,107.2,155.0)

dat <- data.frame(x1,x2,x3,x4,y)

# I am comparing on basis of Cp values..

print("The Cp values for all subsets is")

leaps(dat[,1:4],y= dat[,5],names = names(dat)[1:4],method ="Cp")

# if you want to calculate adjusted r -squared or r-squared the code will be same as above just we have to change method = "r2" or method = "adjr2"

print("From Cp values it seems that x1x2x3 model appears quite good and had lowest Cp value")

print("Also You can see Cp for full model = 5.0 from the table in output")

# to obatain PRESS statistic for each model , we can do something like this..

# this is only PRESS for full model..
print("The PRESS for full model x1x2x3x4 is")

model <- lm(y~.,data = dat)

sum((model$residuals/(1-hatvalues(model)))^2)
# like this we can take any model and calculate its PRESS statistic..
# to compare answers from T.B look for Cp stats table and PRESS valuesin the tables and match it, The answer is correct.