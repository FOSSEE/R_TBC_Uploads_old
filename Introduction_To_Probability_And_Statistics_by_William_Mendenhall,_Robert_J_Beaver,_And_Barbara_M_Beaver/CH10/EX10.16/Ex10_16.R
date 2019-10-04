x1bar <- 302
x2bar <- 3.0
s1_square <- 1.04
s2_square <- 0.51
n1 <- n2 <- 25
f <- (s1_square / s2_square)
df1 <- df2 <- n1 - 1
f_0.050 <- qf(1 - 0.050,df1,df2)
f_0.025 <- qf(1 - 0.025,df1,df2)
if(f > f_0.050 & f < f_0.025){
  print("p-value lies between 0.025 and 0.05 and hence at 5% level null hypothesis is rejected")
}else{
  print("null hypothesis is accepted")
}