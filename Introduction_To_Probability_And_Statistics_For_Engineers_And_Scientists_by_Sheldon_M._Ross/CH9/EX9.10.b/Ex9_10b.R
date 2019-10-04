x1<-c(679, 1420, 1349, 296, 6975, 323, 4200, 633)
x2<-c(30.4, 34.1, 17.2, 26.8, 29.1, 18.7, 32.6, 32.5)
y = matrix(1,8,1);
n = 8
y<-c(11.6,16.1, 9.3, 9.1, 8.4, 7.7, 11.3, 8.4)
x = matrix(1,8,3);
for (i in 1:8){
  x[i,2]= x1[i];
  x[i,3]= x2[i];
}

pro1 = t(x)
pro2= pro1%*%x;
pro3 = solve(pro2);
pro4 = pro3%*%pro1;
pro5 = pro4%*%y;

B<-matrix(0,3,8)
matrix(1,3,1);
for (i in 1:3){
  B[i,1]= 0;
  for (k in 1:8){
    B[i,1]=B[i,1]+(pro4[i, k]*y[k]);
  }
}
cat(B);
SSR = t(y)
SSR= SSR%*%y;
sub = t(B);
sub = sub%*%t(x);
sub= sub%*%y; 
SSR =SSR[1,1] - sub[1,1];
cat("SSr is",SSR)

k=2;
den = n-k-1;
sigma = SSR/den;
cat("The variance is",sigma)