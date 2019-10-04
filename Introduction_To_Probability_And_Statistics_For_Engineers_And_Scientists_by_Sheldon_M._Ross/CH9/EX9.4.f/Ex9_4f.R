x<-c(60, 62, 64, 65, 66, 67, 68, 70, 72, 74)
y<-c(63.6, 65.2, 66, 65.5, 66.9, 67.1, 67.4, 68.3, 70.1, 70)
x0 = 68;
xbar = mean(x);
ybar= mean(y);
n= 10;
SxY = 0
for (i in 1:n){
  SxY = SxY + (x[i]*y[i]) - (xbar*ybar);
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
tvalue= qt(0.975, n-2);
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
intvl = A + (B*x0);
change = sqrt(((n+1)/n)+(((x0-xbar)^2)/Sxx))* sqrt(SSR/(n-2))*tvalue;
intvl1 = intvl - change;
intvl2= intvl + change;
cat("The 95% confidence interval is ",intvl1, "to ", intvl2)