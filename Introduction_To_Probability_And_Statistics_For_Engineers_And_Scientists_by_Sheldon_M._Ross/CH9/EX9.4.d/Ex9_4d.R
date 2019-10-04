x<-c(121, 96, 85, 113, 102, 118, 90, 84, 107, 112, 95, 101)
y<-c(104, 91, 101, 110, 117, 108, 96, 102, 114, 96, 88, 106)

plot(x,y,xlab = "Deaths in 1988",ylab = "Deaths in 1989");

xbar = mean(x);
ybar= mean(y);
n= 12;

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
cat("B is",B)