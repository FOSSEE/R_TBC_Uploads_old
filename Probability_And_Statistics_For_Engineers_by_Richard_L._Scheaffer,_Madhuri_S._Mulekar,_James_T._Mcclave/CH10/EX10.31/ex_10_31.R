#H0 : F(y) is exponential with theeta=2
#H1 : F(y) is not exponential with theeta=2

y = c(0.023,0.406,0.538,1.267,2.343,2.563,3.334,3.491,5.088,5.587)
Fy= 1- exp(-y/2)
n=10
i = 1:10

D_plus = i/n - Fy
D_minus = Fy - (i-1)/n
D = max(max(D_plus),max(D_minus))

# the critical value for a two-sided test with n = 10 and alpha= 0.05 is 0.409.
D0=0.409
if(D0>D){
  cat("Hypothesis is accepeted")
} else{
  cat("Hypothesis is rejected")
}
