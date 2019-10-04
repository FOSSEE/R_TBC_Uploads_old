#H0 :muD >=0
#H1 :muD < 0

A = c(38.25,31.68,26.24,41.29,44.81,46.37,35.42,38.41,42.68,46.71,29.20,30.76)
B = c(38.25,31.71,26.25,41.33,44.80,46.39,35.46,38.42,42.70,46.76,29.18,30.79)

p_value= t.test(A,B,paired = TRUE,alternative = "less")$p.value

alpha= 0.05
if(p_value>alpha)
{
  cat("Null Hypothesis accepted")
}else{
  cat("Hypothesis is rejected")
}


