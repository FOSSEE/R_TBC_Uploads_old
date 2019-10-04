#Wire Bond Strength One-Sided Coefficient Test(Pg no. 501)

foo = function()
{
  beta2 = 0.012528
  std_err = 0.002793
  
  statistic = (beta2 - 0.01)/std_err
  statistic
  
  t0 = qt(0.25,22,lower.tail = FALSE)
  t0
  t1 = qt(0.10,22,lower.tail = FALSE)
  t1
  
  p_max = 1 - pnorm(t0,0,1)
  p_min = 1 -pnorm(t1,0,1)
  
  p = 1 - pnorm(statistic,0,1)
  p
  
  if(p_min<p && p<p_max)
  {
    print("One cannot conclude that the coefficient exceeds 0.01 at common levels of significance")
  }
  else
  {
    print("One can conclude that the coefficient exceeds 0.01 at common levels of significance")
  }
}
foo()