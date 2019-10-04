
# Chapter 11
# Example 11.3 page no. 404 from the pdf..
# Hypothesis Testing On Slope Of Regression Line..

# to test the hypothesis of beta1 slope of regression line..
# Null - beta1 = 1.0, alternative < 1.0

x <- c(3,7,11,15,18,27,29,30,30,31,31,32,33,33,34,36,36,36,37,38,39,39,39,40,41,42,42,43,44,45,46,47,50)

y <- c(5,11,21,16,16,28,27,25,35,30,40,32,34,32,34,37,38,34,36,38,37,36,45,39,41,40,44,37,44,46,46,49,51)

pol <- data.frame(x,y)

l <- lm(y~x,data = pol)

coefficients(l)

p_value <- function(reg_m,conum,val){
  
  coefi <- coef(summary(reg_m))
  t <- (coefi[conum,1]-val)/coefi[conum,2]
  pt(abs(t),reg_m$df.residual,lower.tail= F)
  
}
cat("Since the p value is",p_value(l,2,1)," less than 0.05 suggesting strong evidence that beta1 < 1.0")


# an alternate method is to use the library car and the use linearHypothesis function, since this is one sided hypothesis
# we need to divide the result by 2 as the function does 2 sided hypothesis..
# If "car" package not installed can be installed by install.packages("car")

library(car)
linearHypothesis(l,hypothesis.matrix = c(0,1),rhs = 1)/2
print("Using linearHypothesis function also we get the same result and we can derive the same inference as before.")


