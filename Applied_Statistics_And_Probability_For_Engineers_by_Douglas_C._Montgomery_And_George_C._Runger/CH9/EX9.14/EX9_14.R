#Health Insurance Plan Preference(Pg no. 355)

foo = function()
{
  alpha = 0.05
  n = 500
  u1 = (340/n)
  u2 = (160/n)
  v1 = (200/n)
  v2 = (200/n)
  v3 = (100/n)
  
  O11 = 160
  O12 = 140
  O13 = 40
  O21 = 40
  O22 = 60
  O23 = 60
  
  observed = c(O11,O12,O13,O21,O22,O23)
  observed
  
  E11 = n*u1*v1
  E12 = n*u1*v2
  E13 = n*u1*v3
  E21 = n*u2*v1
  E22 = n*u2*v2
  E23 = n*u2*v3
  
  expected = c(E11,E12,E13,E21,E22,E23)
  expected
  
  r=2
  c=3
  
  df = (r-1)*(c-1) #degrees of freedom
  
  statistic = 0.0
  for(i in 1:6)
  {
    statistic = statistic + ((observed[i]-expected[i])^2)/expected[i]
  }
  statistic
  
  x = qchisq(0.95,df)
  x
  
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
