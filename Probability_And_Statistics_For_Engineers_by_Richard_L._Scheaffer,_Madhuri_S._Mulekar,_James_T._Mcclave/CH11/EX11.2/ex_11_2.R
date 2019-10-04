x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)
n=length(x)

pol <- data.frame(x,y)

line_eq <- lm(y~x,data=pol)

cat("s=",summary(line_eq)$sigma)
