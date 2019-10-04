#Oxygen Purity Tests of Coefficients(Pg no. 442)

foo = function()
{
  alpha = 0.01
  beta1 = 14.947
  S_xx = 0.68088
  sample_var = 1.18
  
  statistic = beta1/sqrt(sample_var/S_xx)
  round(statistic, digits = 2)
  
  t = qt(0.005,18,lower.tail = FALSE)
  round(t,digits = 2)
  
  if(t < statistic)
  {
    print("Null hypothesis is rejected as the test statistic is very far into the critical region")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()