x<-c(5, 10, 20, 30, 40, 50, 60, 80)
yold<-c(0.061, 0.113, 0.192, 0.259, 0.339, 0.401, 0.461, 0.551)
plot(x, yold);
y = -1*log(1-yold);
plot(x, y);


xbar = mean(x);
ybar= mean(y);
n= 8;

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
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
chat = exp(-1*A);
dhat = 1 - exp(-1*B);
phat = 1 - chat*(1-dhat)^x
pres = yold - phat
cat("chat is",chat);
cat("dhat is",dhat);
cat("phat is",phat);
cat("p - phat, i.e. the residuals are",pres)