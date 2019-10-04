sigma_square <- 100
n <- 10
xbar <- 312
s_square <- 195
x_square <- ((n -1) * s_square)/sigma_square
alpha <- 0.05
df <- n -1
x_square_0.05 <- qchisq(1 - alpha, df)
if(x_square > x_square_0.05){
  print("reject the null hypothesis and the range of concrete strength measurements exceeds the manufacturer's claim")
}else{
  print("accept the null hypothesis")
}