X<-c(340, 356, 332, 362, 318, 344, 386, 402, 322, 360, 362, 354, 340, 372, 338, 375, 364, 355, 324, 370)
uo = 350;
Xbar = mean(X);
var =  var(X);
S = sqrt(var)
n = length(X)
T = sqrt(n)*(Xbar - uo)/S;
Tvalue = qt(0.95,n-1)
cat("The T value is ",T)
if(T<Tvalue){
  cat("Null hypothesis is accepted at 10% level of significance")
}else{
  cat("Null hypothesis is not accepted at 10% level of significance")
}
cat("P value of the test data",2*pnorm(-1*T,0,1))