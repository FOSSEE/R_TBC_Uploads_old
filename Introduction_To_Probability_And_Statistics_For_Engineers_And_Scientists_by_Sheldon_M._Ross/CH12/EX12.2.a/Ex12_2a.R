n= 200;
v = 120;
p =0.5;
if(v < (n/2)){
  pvalue = 2*pbinom(v, n, p)
} else{
  pvalue = 2*pbinom(n-v, n, p)
}
cat("Pvalue is ",pvalue)