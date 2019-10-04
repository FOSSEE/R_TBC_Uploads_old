y<-c(79.2, 64.0, 55.7, 56.3, 58.6, 84.3, 70.4, 61.3, 51.3, 49.8)
x1<-c(0.02, 0.03, 0.03, 0.04, 0.10, 0.15, 0.15, 0.09, 0.13, 0.09)
x2<-c(1.05, 1.20, 1.25, 1.30, 1.30, 1.00, 1.10, 1.20, 1.40, 1.40)
tvalue= 2.365;
x = matrix(1,10,3);
for (i in 1:10){
  x[i,2]= x1[i]
  x[i,3]= x2[i]
}

pro1 = t(x)
pro2= pro1%*%x
pro3 = solve(pro2)
pro4 = pro3%*%pro1
pro5 = pro4%*%y
B= matrix(1,3,1)

for (i in 1:3){
  B[i,1]= 0
  for ( k in 1:10){
    B[i,1]= B[i,1]+(pro4[i, k]*y[k])
  }
}

SSR = t(y)
SSR= SSR%*%y
sub = t(B)
sub = sub%*%t(x)
sub= sub%*%y
SSR =SSR[1,1] - sub[1,1]
cat("SSr is",SSR)

smallx<-c(1, 0.15, 1.15)
product = smallx %*% B
n = 10;
k=2;
val= sqrt(SSR/(n-k-1));

pro5 = smallx %*% pro3
pro6 = pro5 %*% (smallx)
pro7 = val*sqrt(pro6)*tvalue

up = product + pro7;
low = product - pro7; 
cat(" 95% confidence interval is from ",low,"to",up)