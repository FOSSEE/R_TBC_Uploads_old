#Propellant Burning Rate(Pg no. 324)

foo = function()
{
  n = 25
  mean = 50
  std_dev = 2
  Xbar = 51.3
  alpha = 0.05
  statistic = (Xbar-mean)/(std_dev/sqrt(n))
  z = qnorm(alpha/2,0,1,lower.tail = FALSE)
  p_value = 2*(1-pnorm(statistic,0,1))
  if(p_value < alpha)
  {
    print("Null hypothesis is rejected")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()
