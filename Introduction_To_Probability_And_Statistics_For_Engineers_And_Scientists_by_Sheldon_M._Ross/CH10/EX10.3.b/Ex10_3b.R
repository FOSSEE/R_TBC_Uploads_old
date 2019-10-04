Xijold<-matrix(c(220, 251, 226, 246, 260, 244, 235, 232, 242, 225, 252, 272, 250, 238, 256),nrow = 3,ncol = 5,byrow = TRUE)
Xij = Xijold - 220;
m=3;
n=5;
Xidot = matrix(0,3,1);
for (i in 1:m){
  for (j in 1:n){
    Xidot[i]=Xidot[i] + Xij[i,j]
  }
}
Xidot = Xidot/n;
Xdotdot = sum(Xidot)/m;
SSb=0;
for (i in 1:m){
  SSb = SSb + (Xidot[i]-Xdotdot)^2
}
SSb = SSb*n;
Xijsquared = Xij^2;
SSW = sum(Xijsquared) - (m*n*(Xdotdot^2)) - SSb;
sigma1 = SSW/((n*m)-m);
sigma2 = SSb/(m-1);
TS = sigma2/sigma1;
cat("Value of the test statistic is",TS)