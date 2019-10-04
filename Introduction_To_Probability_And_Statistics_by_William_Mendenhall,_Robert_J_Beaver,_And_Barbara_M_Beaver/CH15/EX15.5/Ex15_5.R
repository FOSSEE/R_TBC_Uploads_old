x_A <- c(.135,.102,.098,.141,.131,.144)
x_B <- c(.129,.120,.112,.152,.135,.163)
alpha <- 0.10
t0 <- round(qt(1 - alpha/2,5),1)
boxplot(x_A - x_B,horizontal = TRUE,xlab = "Differences")
wilcox.test(x_A,x_B,paired = T)
t_positive <- wilcox.test(x_A,x_B,paired = T)$statistic
t0
t_positive
if(t_positive <= t0){
  print("Reject the null hypothesis so two population frequency distribution of cake densities differ")
}else{
  print("Accept the hypothesis")
}