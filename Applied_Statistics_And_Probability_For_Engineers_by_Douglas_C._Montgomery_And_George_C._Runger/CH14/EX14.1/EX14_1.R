#Aircraft Primer Paint(pg no. 586)

foo = function()
{
  n = 3
  a = 3
  b = 2
  dripping = matrix(c(4.0,4.5,4.3,5.6,4.9,5.4,3.8,3.7,4.0),nrow = 3,ncol = 3,byrow = TRUE)
  spraying = matrix(c(5.4,4.9,5.6,5.8,6.1,6.3,5.5,5.0,5.0),nrow = 3,ncol = 3,byrow = TRUE)
  types = c(28.7,34.1,27.0)
  methods = c(40.2,49.6)
  interaction = c(12.8, 15.9, 15.9, 18.2, 11.5, 15.5)
  
  total = sum(dripping) + sum(spraying)
  
  Yijk = sum(dripping^2) + sum(spraying^2)
  SSt = Yijk - (total^2/(a*b*n))
  cat("SSt =",SSt,"\n")
  
  Yi = sum(types^2)
  SStypes = (Yi/(b*n)) - (total^2/(a*b*n))
  cat("SStypes =",SStypes,"\n")
  
  Yj = sum(methods^2)
  SSmethods = (Yj/(a*n)) - (total^2/(a*b*n))
  cat("SSmethods =",SSmethods,"\n")
  
  Yij = sum(interaction^2)
  SSinteraction = (Yij/n) - (total^2/(a*b*n)) - SStypes - SSmethods
  cat("SSinteraction =",SSinteraction,"\n")
  
  SSe = SSt - SStypes - SSmethods -SSinteraction
  cat("SSe =",SSe,"\n")
  
  f2 = qf(0.05, df1=2, df2=12, lower.tail = FALSE)
  f1 = qf(0.05, df1=1, df2=12, lower.tail = FALSE)
  
  f0_types = (SStypes/2)/(SSe/12)
  f0_methods = (SSmethods/1)/(SSe/12)
  f0_interaction = (SSinteraction/2)/(SSe/12)
  
  if(f2<f0_types)
  {
    print("the main effects of primer type affect adhesion force")
  }
  else
  {
    print("the main effects of primer type do not affect adhesion force")
  }
  
  if(f1<f0_methods)
  {
    print("the main effects of application method affect adhesion force")
  }
  else
  {
    print("the main effects of application method do not affect adhesion force")
  }
  
  if(f2<f0_interaction)
  {
    print("there is indication of interaction between these factors")
  }
  else
  {
    print("there is no indication of interaction between these factors")
  }
}
foo()