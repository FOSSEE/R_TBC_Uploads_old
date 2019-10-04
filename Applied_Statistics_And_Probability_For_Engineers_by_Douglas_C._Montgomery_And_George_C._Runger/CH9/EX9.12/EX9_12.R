#Printed Circuit Board Defects-Poisson Distribution(Pg no. 351)

foo = function()
{
  n = 60
  defects = c(0,1,2,3)
  obsv_freq = c(32,15,9,4)
  observed_mean = weighted.mean(defects,obsv_freq)
  
  p1 = dpois(0,lambda = observed_mean)
  p2 = dpois(1,lambda = observed_mean)
  p3 = dpois(2,lambda = observed_mean)
  p4 = 1 - (p1+p2+p3)
  
  obsv_freq = c(obsv_freq[1],obsv_freq[2],(obsv_freq[3]+obsv_freq[4]))
  
  expected_freq = c(n*p1,n*p2,(n*p3+n*p4))
  
  statistic = 0.0
  
  for(i in 1:3)
  {
    statistic = statistic + (((obsv_freq[i] - expected_freq[i])^2)/expected_freq[i])
  }
  statistic
  
  x1 = qchisq(0.9,1)
  x2 = qchisq(0.95,1)
  
  if(x1<statistic && statistic<x2)
  {
    print("Unable to reject the null hypothesis")
  }
  else
  {
    print("Null hypothesis is rejected")
  }
}
foo()