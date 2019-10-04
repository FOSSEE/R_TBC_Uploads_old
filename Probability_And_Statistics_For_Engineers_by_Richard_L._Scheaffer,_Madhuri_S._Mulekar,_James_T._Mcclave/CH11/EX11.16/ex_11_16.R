#H0 : beta1 = beta2 =0
#H1 : at least one of the coefficients is nonzero

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)
n=10
k=2
dof=n- (k+1)
pol <- lm(y~x+I(x^2))
F= summary(pol)$fstatistic["value"]
F
compare = qf(1-0.05,k,dof)

if(F < compare)
{
  cat("Null Hypothesis is accepted")
} else{
  cat("Null Hypothesis is rejected")
}

