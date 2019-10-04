Xij<-matrix(c(3.2, 3.4, 3.3, 3.5, 3.4, 3.0, 3.7, 3.3, 2.8, 2.6, 3.0, 2.7),nrow = 3,ncol = 4,byrow = TRUE)
Xi = matrix(0,3,1);
n= 4;
m=3;
for (i in 1:3){
  for (j in 1:4){
    Xi[i]= Xi[i] + Xij[i,j]
  }
}
Xi = Xi/n;
SSW= 0;
for (i in 1:3){
  for (j in 1:4){
    SSW = SSW + ((Xij[i,j]-Xi[i])^2)
  }
}
sigma1 = SSW/((n*m)-m);
Xdotdot = sum(Xi)/m;
new = (Xi - Xdotdot)^2;
SSb= n*sum(new);
sigma2 = SSb/(m-1);
TS = sigma2/sigma1;
cat("Value of the test statistic is",TS)
pvalue = 1 - pf(TS,m-1, ((n*m)-m) );
cat("The p-value is",pvalue)
C = 3.95; #from table A5
W = C*sqrt(SSW/(9*4));
W
cat("Mean1 - Mean2 lies between ", Xi[1]-Xi[2]-W ,"and ", Xi[1]-Xi[2]+W)
cat("Mean1 - Mean3 lies between ", Xi[1]-Xi[3]-W ,"and ", Xi[1]-Xi[3]+W)
cat("Mean2 - Mean3 lies between ", Xi[2]-Xi[3]-W ,"and ", Xi[2]-Xi[3]+W)