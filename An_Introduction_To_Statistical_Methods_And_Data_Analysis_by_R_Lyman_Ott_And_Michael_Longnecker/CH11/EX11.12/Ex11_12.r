
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(1.4,2.3,3.1,4.2,5.1,5.8,6.8,7.6,8.7,9.5)
xbar=mean(x)
# Apply the lm() function.
relation <- lm(y~x)
print(summary(relation))
 
# linear regression model : y=.9012*x+.4934
 mod=lm(x~y)
 predict(mod,data.frame(y=4),interval = "prediction",level = 0.95)
 #  the 95% prediction limits for x are 3.65 to 4.13
 
 