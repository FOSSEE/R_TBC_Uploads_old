#H0 : beta1 =0
#H1 : beta1 not= 0

#Given, alpha=0.05
x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line_eq <- summary(lm(y~x,data=pol))
t_value =(coefficients(line_eq)[2,1] - 0)/coefficients(line_eq)[2,2]

cat("Since the T value is",t_value," greater than ",qt(1- 0.025,df=10-2,lower.tail = F)," suggesting strong evidence that beta1 < 1.0")
