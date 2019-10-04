x <- 63;
n <- 100;
alpha <- 0.05;
z <- (x - 0.5 * n)/(0.5 * sqrt(n));
z_expected <- qnorm(1-alpha/2)
if(z == z_expected ){
print("Accept the null hypothesis")
}else{
  print("Reject the null hypothesis and the data provide sufficient evidence")
}
