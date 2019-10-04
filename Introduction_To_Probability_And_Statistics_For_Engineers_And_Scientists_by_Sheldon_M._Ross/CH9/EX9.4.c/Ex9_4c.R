x<-c(60, 62, 64, 65, 66, 67, 68, 70, 72, 74)
y<-c(63.6, 65.2, 66, 65.5, 66.9, 67.1, 67.4, 68.3, 70.1, 70)
plot(x,y,xlab ="Father's Height",ylab = "Son's Height")
xbar = mean(x)
ybar= mean(y)
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
cat("A is",A);
cat("B is",B);
p= seq(60,72,0.1)
q= A + B*p;
lines(p,q)
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
ts = sqrt(((n-2)*Sxx)/SSR)*(B-1)
ts
tvalue= qt(0.99,n-2)
tvalue
if(ts<(-1*tvalue)){
  cat("Null hypotheis is rejected at 1% level of significance")
} else{
  cat("Null hypotheis is accepted at 1% level of significance")
}