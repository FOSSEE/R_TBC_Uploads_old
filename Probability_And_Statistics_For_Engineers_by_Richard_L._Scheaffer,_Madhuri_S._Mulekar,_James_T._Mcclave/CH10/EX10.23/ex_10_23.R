#H0 : mu1 - mu2 =D0
#H1 : mu1 - mu2 not=D0

C1 = c( 5.83, 5.66, 4.75, 3.00, 3.37, 3.63, 4.00, 4.63, 4.25, 4.13 )
C2 = c( 3.38, 2.81, 7.00, 1.50, 5.88, 5.25, 4.08, 7.63, 4.50, 4.88 )

p_value= t.test(C1,C2)$p.value
alpha= 0.05
if(p_value>alpha)
{
  cat("Hypothesis accepted")
}else{
  cat("Hypothesis is rejected")
}

