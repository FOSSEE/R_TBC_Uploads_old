#Tensile Strength ANOVA(Pg no. 546)

foo = function()
{
  obs1 = c(7,12,14,19)
  obs2 = c(8,17,18,25)
  obs3 = c(15,13,19,22)
  obs4 = c(11,18,17,23)
  obs5 = c(9,19,16,18)
  obs6 = c(10,15,18,20)
  
  N = 24
  n = 6
  
  M = matrix(c(obs1,obs2,obs3,obs4,obs5,obs6), nrow = 4, ncol = 6, byrow = FALSE)
  M
  y_total = sum(M)
  
  sum_y_sqr = sum(M^2)
  
  SSt = sum_y_sqr - y_total^2/N
  SSt
  
  sum_row1 = sum(M[1,])
  sum_row2 = sum(M[2,])
  sum_row3 = sum(M[3,])
  sum_row4 = sum(M[4,])
  
  SStreatments = ((sum_row1^2+sum_row2^2+sum_row3^2+sum_row4^2)/n) - y_total^2/N
  SStreatments
  
  SSe = SSt - SStreatments
  SSe
  
  f = qf(0.01, df1=3, df2=20, lower.tail = FALSE)
  f0 = (SStreatments/3)/(SSe/20)
  
  if(f<f0)
  {
    print("Null hypothesis is rejected and conclude that hardwood concentration in the pulp significantly affects the mean strength of the paper")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()

concn = c(5,10,15,20)
obs1 = c(7,12,14,19)
obs2 = c(8,17,18,25)
obs3 = c(15,13,19,22)
obs4 = c(11,18,17,23)
obs5 = c(9,19,16,18)
obs6 = c(10,15,18,20)

df = data.frame("concn" = concn, "obs1" = obs1, "obs2" = obs2, "obs3" = obs3, "obs4" = obs4, "obs5" = obs5, "obs6" = obs6)
df$concn = factor(df$concn)
