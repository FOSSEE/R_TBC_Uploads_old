#Automobile Engine Controller(Pg no. 346)

foo= function()
{
  x = 4
  n = 200
  p0 = 0.05
  
  statistic = (x - (n*p0))/sqrt(n*p0*(1-p0))
  statistic
  
  p_value = pnorm(statistic,0,1)
  p_value
  
  if(p_value < p0)
  {
    print("Null hypothesis is rejected")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()