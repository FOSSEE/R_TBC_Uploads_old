#Estimation of error variance sigma^2

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- lm(y~x+I(x^2))

s= summary(pol)$sigma

cat(" the mean square for error, or MSE= ", s*s)

        