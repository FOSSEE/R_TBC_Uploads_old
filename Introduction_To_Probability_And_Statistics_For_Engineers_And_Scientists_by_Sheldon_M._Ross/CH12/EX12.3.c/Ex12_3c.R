n =20;
t =142;
tstar= min(t, (n*(n+1)/2) - t);
P = matrix(1,20,tstar+1);
P[1,1]= 0.5;
P[1,2] = 1;
for (i in 2:20){
  for (j in 1:(tstar+1)){
    if (j-i <1){
      P[i,j] = 0.5*P[i-1, j]
    } else{
      P[i,j] = 0.5*(P[i-1,j-i]+P[i-1,j])
    }
    }
  }
pvalue= 2*P[20,tstar+1];
cat("Pvalue is",pvalue)
cat("Thus the hypothesis that the population distribution is symmetric about 0 is accepted at the alpha = 10% level of significance")