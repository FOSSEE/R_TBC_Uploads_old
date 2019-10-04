#Shear Strength of Steel Girder(Pg no. 401)

foo = function()
{
  km = c(1.186,1.151,1.322,1.339,1.200,1.402,1.365,1.537,1.559)
  lm = c(1.061,0.992,1.063,1.062,1.065,1.178,1.037,1.086,1.052)
  ans = t.test(km,lm, alternative = "two.sided", paired = TRUE)
  statistic = ans$statistic
  print(statistic)
  alpha = 0.05
  p_value = ans$p.value
  
  if(p_value<alpha)
  {
    print("the strength prediction methods yield different results")
  }
  else
  {
    print("the strength prediction methods yield similar results")
  }
}
foo()