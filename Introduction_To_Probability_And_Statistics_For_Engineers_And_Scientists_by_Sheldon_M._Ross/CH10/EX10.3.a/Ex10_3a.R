Xij<-matrix(c(220, 251, 226, 246, 260, 244, 235, 232, 242, 225, 252, 272, 250, 238, 256),nrow = 3,ncol = 5,byrow = TRUE)
Xi = matrix(0,3,1);
n= 5;
m=3;
for (i in 1:3){
  for (j in 1:5){
    Xi[i]= Xi[i] + Xij[i,j]
  }
}
Xi
Xi = Xi/n;
SSW= 0;
for (i in 1:3){
  for (j in 1:5){
    SSW = SSW + ((Xij[i,j]-Xi[i])^2)
  }
}
SSW
sigma1 = SSW/((n*m)-m);
Xdotdot = sum(Xi)/m;
new = (Xi - Xdotdot)^2;
SSb= n*sum(new);
sigma2 = SSb/(m-1);
TS = sigma2/sigma1;
cat("Value of the test statistic is",TS)
pvalue = 1 - pf(TS,m-1, ((n*m)-m))
cat("The p-value is",pvalue)
if(pvalue>0.05){
  cat( "Since the p-value is greater than .05, the null hypothesis that the mean mileage is the same for all 3 brands of gasoline cannot be rejected. ")
}