#Arsenic in Drinking Water(Pg no.387)

foo = function()
{
  X1bar = 12.5
  X2bar = 27.5
  std_dev1 = 7.63
  std_dev2 = 15.3
  n1 = 10
  n2 =10
  
  v = ((std_dev1^2/n1)+(std_dev2^2/n2))^2 / (((std_dev1^2/n1)^2/(n1-1))+((std_dev2^2/n2)^2/(n2-1)))
  v = round(v)
  v
  
  statistic = (X1bar - X2bar)/sqrt((std_dev1^2/n1)+(std_dev2^2/n2))
  cat("t-statistic = ",round(statistic, digits = 2),"\n")
  l1 = qt(0.025, df = 13)
  
  if(statistic<l1)
  {
    print("Null hypothesis rejected")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()