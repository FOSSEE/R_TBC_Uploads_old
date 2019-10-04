# to find the confidence interval of the given data.. 

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line_eq <- lm(y~x,data=pol)


cat("The 95% confidence interval for beta0(i.e intercept) in the regression line is",confint(line_eq,'x',level=0.95))
