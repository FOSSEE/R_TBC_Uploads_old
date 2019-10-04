X<-c(36.1, 40.2, 33.8, 38.5, 42, 35.8, 37, 41, 36.8, 37.2, 33, 36)
n = length(X);
uo = 40;
Xbar=mean(X);
sd = sqrt(var(X));
T = sqrt(n)*(Xbar - uo)/sd;
Tvalue = qt(0.05,n-1);
cat("The T value is ",T)
if(T<Tvalue){
  cat("Null hypothesis is rejected at 5% level of significance")
}else{
  cat("Null hypothesis is  accepted at 5% level of significance")
}

cat("P value of the test data",pnorm(T,0,1))
'
There is a mismatch between book answer for the P value of the test data.
'