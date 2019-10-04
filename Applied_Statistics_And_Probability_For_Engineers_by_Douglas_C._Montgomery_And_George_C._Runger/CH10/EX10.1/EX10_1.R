#Paint Drying Time(Pg no. 377)

foo = function()
{
  X1bar = 121
  X2bar = 112
  std_dev1 = std_dev2 = 8
  n1 = n2 =10
  delta0 = 0
  
  statistic = (X1bar-X2bar-delta0)/sqrt((std_dev1^2/n1)+(std_dev2^2/n2))
  statistic
  
  p = 1 - pnorm(statistic,0,1,lower.tail = TRUE)
  p
  
  if(p<0.05)
  {
    print("Null hypothesis is rejected ")
  }
  else
  {
    print("Null hypothesis is accepted")
  }
}
foo()