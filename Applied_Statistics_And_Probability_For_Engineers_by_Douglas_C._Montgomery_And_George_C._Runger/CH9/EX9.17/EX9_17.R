options(scipen=999)#For disabling scientific notation

#(Pg no. 366)

foo = function()
{
  n = 50
  sample_mean = 79.98
  sample_sd = 0.10
  x = 80 #ohms
  u1 = 80.05
  u2 = 79.95
  error = 0.01 #ohms
  
  t_statistic1 = (sample_mean-80.05)/(sample_sd/sqrt(n))
  p1 = pnorm(t_statistic1,0,1)
  
  t_statistic2 = (sample_mean-79.95)/(sample_sd/sqrt(n))
  p2 = pnorm(t_statistic2,0,1,lower.tail = FALSE)
  
  if(p1<error)
  {
    print("the mean resistance is less than 80.05")
  }
  else
  {
    print("the mean resistance is not less than 80.05")
  }
  
  if(p2<0.025)
  {
    print("the mean resistance is significantly greater than 79.95")
  }
  else
  {
    print("the mean resistance is not greater than 79.95")
  }
}
foo()