#Propellant Shear Strength-Wilcoxon Signed-Rank Test(Pg no. 363)
foo = function()
{
  obs = c(2158.7,1678.15,2316.00,2061.30,2207.50,1708.30,1784.70,2575.10,2357.90,2256.70,2156.70,2399.55,1779.80,2336.75,1765.30,2053.50,2414.40,2200.50,2654.20,1753.70)
  alpha = 0.05
  ans = wilcox.test(obs,mu = 2000)
  p_value = ans$p.value
  
  if(p_value<alpha)
  {
    print("Null hypothesis rejected")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()