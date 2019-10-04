
# Chapter 12 
# Example 12.13 page no.499 from the pdf..
# Logistic regression model..

x <- c(0.10,0.15,0.20,0.30,0.50,0.70,0.95)

n <- c(47,53,55,52,46,54,52)

y <- c(8,14,24,32,38,50,50)

p <- c(17.0,26.4,43.6,61.5,82.6,92.6,96.2)/100

dat <- data.frame(x,n,y,p)

# making a logistic regression..

model1 <- glm(p~x,data = dat,family = binomial(link = "logit"))
summary(aov(model1))
c <- coefficients(model1)
cat("The beta0 and beta1 for the logistic regression function is",c[1],c[2])

# the answer may vary slightly..