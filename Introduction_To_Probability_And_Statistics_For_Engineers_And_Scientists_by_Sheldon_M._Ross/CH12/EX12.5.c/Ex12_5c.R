u = 61;
sigma = 5.454;
r =75;
val = pnorm((r-u)/sigma, 0,1)
if(val>0.5){
  pvalue = 2*(1-val)
} else{
  pvalue = 2*val
}
cat("P-value is",pvalue)