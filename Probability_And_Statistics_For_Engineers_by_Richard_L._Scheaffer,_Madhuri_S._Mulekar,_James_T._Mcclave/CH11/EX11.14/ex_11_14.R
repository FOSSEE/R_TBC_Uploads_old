x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- lm(y~x+I(x^2))
coef = coefficients(pol)

cat("load =", coef[1]," ",coef[2],"temperature  +",coef[3],"temp^2")

cat("The SSE for this best line of fit is equal to ", anova(pol)["Residuals","Sum Sq"])
