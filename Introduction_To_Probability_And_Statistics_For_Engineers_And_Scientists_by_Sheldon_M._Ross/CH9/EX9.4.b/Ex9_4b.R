x<-c(45, 50, 55, 60, 65, 70, 75)
y<-c(24.2, 25.0, 23.3, 22.0, 21.5, 20.6, 19.8)
xbar = mean(x);
ybar= mean(y);
n= 7;
SxY = 0;
for (i in 1:n){
  SxY = SxY + (x[i]*y[i]) - (xbar*ybar)
}

Sxx = 0;
for (i in 1:n){
  Sxx= Sxx + (x[i]*x[i]) - (xbar*xbar);
}
SYY = 0;
for (i in 1:n){
  SYY = SYY + (y[i]*y[i]) - (ybar*ybar);
}
B = SxY/Sxx;
A = ybar - (B*xbar);
cat("A is",A);
cat("B is",B);

SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
cat("The SSR is",SSR)

tvalue= qt(0.975, 5);
cat("tvalue is",tvalue);

k = sqrt(SSR/((n-2)*Sxx))*tvalue;
int1 = B + k;
int2= B-k;
cat("The 95% confidence interval is ",int2, "to ", int1)