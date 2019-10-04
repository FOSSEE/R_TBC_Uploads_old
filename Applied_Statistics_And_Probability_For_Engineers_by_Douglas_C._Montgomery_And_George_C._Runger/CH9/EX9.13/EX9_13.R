#Power Supply Distribution-Continuous Distribution(Pg no. 352)

foo = function()
{
  alpha = 0.05
  obsv_freq = c(12,14,12,13,12,11,12,14)
  ans = chisq.test(obsv_freq)
  statistic = ans$statistic
  
  x = qchisq((1-alpha),5)
  
  if(statistic<x)
  {
    print("Unable to reject the null hypothesis")
  }
  else
  {
    print("Null hypothesis is rejected")
  }
}
foo()