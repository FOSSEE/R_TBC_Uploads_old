#H0 : muD=0
#H1 : muD not=0

E = c( 2727.6, 2902.6, 2463.1 ,3744.5 ,3855.3, 3807.3, 3610.1 ,3596.3 ,3457.0 ,3507.1, 3184.2, 3104.7 )
A = c( 2741.0 ,2885.0 ,2476.0 ,3745.0 ,3862.0 ,3812.0 ,3609.0 ,3568.0 ,3465.0 ,3541.0 ,3213.0, 3092.0)

alpha= 0.05
p_value=t.test(E,A,paired = TRUE)$p.value
if(p_value>alpha)
{
  cat("Null Hypothesis accepted")
}else{
  cat("Hypothesis is rejected")
}

