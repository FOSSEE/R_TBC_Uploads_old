#Yield from a Catalyst(Pg no. 384)

foo  = function()
{
  catalyst1 = c(91.50,94.18,92.18,95.39,91.79,89.07,94.72,89.21)
  catalyst2 = c(89.19,90.95,90.46,93.21,97.19,97.04,91.07,92.75)
  ans = t.test(catalyst1,catalyst2)
  statistic = ans$statistic
  cat("t-statistic =",round(statistic, digits = 2),"\n")
  
  l1 = qt(0.40, df = 14, lower.tail = FALSE)
  l2 = qt(0.25, df = 14, lower.tail = FALSE)
  
  if(l1<abs(statistic) && abs(statistic)<l2)
  {
    print("Unable to reject the null hypothesis")
  
  }
  else
  {
    print("Null hypothesis rejected")
  }
}
foo()