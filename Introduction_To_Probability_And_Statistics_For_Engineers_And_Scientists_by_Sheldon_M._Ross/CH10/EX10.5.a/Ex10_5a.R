X<-matrix(c(53, 35, 31, 37, 40, 43, 36, 34, 17, 21, 30, 18, 47, 37, 17, 31, 45, 26, 55, 31, 17, 23, 43, 37, 40, 32, 19, 26, 45, 37, 52, 42, 20, 27, 26, 32, 39, 28, 21, 21, 36, 28, 40, 32, 21, 21, 36, 35),nrow =8,ncol = 6, byrow = TRUE)
m= 8;
n = 6;
Xidot = matrix(0,8,1);

for (i in 1:8){
  for (j in 1:6){
    Xidot[i]=Xidot[i] + X[i,j]
  }
}
Xidot = Xidot/6;
Xjdot = matrix(0,6,1);

for (j in 1:6){
  for (i in 1:8){
    Xjdot[j]=Xjdot[j] + X[i,j]
  }
}

Xjdot = Xjdot/8;
Xdotdot = sum(Xidot)/8;
new = (Xidot - Xdotdot)^2;
SSr = n*sum(new);
new1 = (Xjdot - Xdotdot)^2;
SSc = m*sum(new1);
SSe = 0;
for (i in 1:m){
  for (j in 1:n){
    SSe = SSe + (X[i,j]-Xidot[i]-Xjdot[j]+ Xdotdot)^2
    }
}

N =(m-1)*(n-1)
TS1 = SSr*N/((m-1)*SSe) 
TS2 = SSc*N/((n-1)*SSe)
pvaluec = 1- pf(TS1, m-1, N)
pvaluer = 1- pf(TS2, n-1, N)
cat("The value of the F-statistic for testing that there is no row effect is",TS1)
cat("The p-value for testing that there is no row effect is",pvaluec)
cat("The value of the F-statistic for testing that there is no column effect is",TS2)
cat("The p-value for testing that there is no column effect is",pvaluer)