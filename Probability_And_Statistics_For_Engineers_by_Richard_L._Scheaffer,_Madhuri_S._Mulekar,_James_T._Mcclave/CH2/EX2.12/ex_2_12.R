x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- lm(y~x)
coef = coefficients(pol)

#a
cat("beta1 : ",coef[2])
cat("y intercept i.e beta0: ",coef[1])

#b
cat("Peak power load increased by :", 5*coef[2]," megawatts when the maximum temperature increases by 5°F. ")

#c
cat("y = ",coef[1]," + ",coef[2],"x")

# Straight-line fit to power load and temperature data
abline(pol)
