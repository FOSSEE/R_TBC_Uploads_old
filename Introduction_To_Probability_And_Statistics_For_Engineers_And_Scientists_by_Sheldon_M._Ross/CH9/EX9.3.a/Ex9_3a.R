x<-c(5, 6, 7, 10, 12, 15, 18, 20)
y<-c(7.4, 9.3, 10.6, 15.4, 18.1, 22.2, 24.1, 24.8)
plot(x,y);

xbar = mean(x);
ybar= mean(y);
n= 8;
SxY = 0;
for (i in (1:n)){
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
p= seq(0,20,0.1)
q= A + B*p;
lines(p,q)

SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
cat("The SSR is",SSR)