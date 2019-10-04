y <- c(169.0,218.5,216.5,225.5,229.9,235.0,239.9,247.9,260.0,269.9,234.9,255.0,269.9,294.5,309.9) 
x1 <- c(6,10,10,11,13,13,13,17,19,18,13,18,17,20,21) 
x2 <- c(1,1,1,1,1,2,1,2,2,1,1,1,2,2,2) 
x3 <- c(2,2,3,3,3,3,3,3,3,3,4,4,4,4,4)
x4 <- c(1,2,2,2,1.7,2.5,2,2.5,2,2,2,2,3,3,3)
k <- 4
r <- 1
df = data.frame(y, x1, x2, x3, x4) 
df
model <- lm(y~x1+x2+x3+x4, data = df)
model
summary(model)
aov(model)
summary(aov(model))
sr <- (summary(aov(model)))
model1 <- lm(y ~ x1)
model1
aov(model1)
s <- (summary(aov(model1)))
s
sse1 <- s[[1]][[2]][[2]]
sse2 <- sr[[1]][[2]][[5]]
sse2
mse2 <- sr[[1]][[3]][[5]]
mse2
f <- round(((sse1 - sse2) / ((k - r))/mse2),1)
cat("test statistics is",f)
alpha <- 0.05
critical_value_f <- qf(1 - alpha, df1 = 3, df2 = 10)
critical_value_f
if(f > critical_value_f){
  print("reject the null hypothesis")
}else{
  print("cannot reject null hypothesis")
}
#The results may slightly vary due to rounding off values 
