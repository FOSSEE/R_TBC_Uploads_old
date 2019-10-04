X<-c(65.2, 67.1, 69.4, 78.2, 74, 80.3)
Y<-c(59.4, 72.1, 68, 66.2, 58.5)
Z = append(X,Y)
Z = sort(Z);
n=  length(X);
q = length(Z)
T = 0;
for (i in 1:n){
  test = X[i];
  for (j in 1:q){
    if(test== Z[j]){
      T = T+ j;
    }
  }
}

cat("The test statistic is ",T)