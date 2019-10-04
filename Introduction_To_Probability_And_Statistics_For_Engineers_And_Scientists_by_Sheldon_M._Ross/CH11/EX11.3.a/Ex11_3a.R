Y<-c(8, 0, 0, 1, 3, 4, 0, 2, 12, 5, 1, 8, 0, 2, 0, 1, 9, 3, 4, 5, 3, 3, 4, 7, 4, 0, 1, 2, 1, 2)
weeks = 30;
lamda = sum(Y)/weeks;
p = matrix(0,5,1);
p[1] = ppois(0, lamda); 
p[2] = ppois(1, lamda) - p[1];
p[3] = ppois(3, lamda) - ppois(1, lamda);
p[4] = ppois(5, lamda) - ppois(3, lamda);
p[5] = 1 - ppois(5, lamda);

X = matrix(0,5,1);
for (i in 1:30){
  if(Y[i]==0){
    X[1] = X[1] +1;
  } else if(Y[i]==1){
    X[2] = X[2] +1;
  } else if(Y[i]==2){
    X[3] = X[3] +1;
  } else if(Y[i]==3){
    X[3] = X[3] +1;
  } else if(Y[i]==4){
    X[4] = X[4] +1;
  } else if(Y[i]==5){
    X[4] = X[4] +1;
  } else if(Y[i]>5){
    X[5] = X[5] +1;
  }
}

T= 0;
npi = weeks * p;
for (i in 1:5){
  T = T + ((X[i]-npi[i])^2)/npi[i]
}
cat("T is",T)
pvalue = 1- pchisq(T, 3)
cat("The p-value is",pvalue)
cat("Hypothesis of an underlying poisson distribution is rejected")