x<-c(1, 4, 6, 5, 3, 1.5, 2.5, 3.5)
y<-c(0, 1.3862944, 1.7917595, 1.6094379, 1.0986123, 0.4054641, 0.9162907, 1.2527630)
n=8
fdd = matrix(0,nrow =n,ncol = n)
for (i in 1:n){
  fdd[i,1]=y[i]
}

for (j in 2:n){
  for (i in 1:(n-j+1)){
    fdd[i,j]=(fdd[i+1,j-1]-fdd[i,j-1])/(x[i+j-1]-x[i])
  }
}
xterm=1
yint<-matrix(0,1)
yint[1]=fdd[1,1]

order<-matrix(0,n)
Ea<-matrix(0,n)
for (order in 2:n){
  xterm=xterm*(2-x[order-1])
  yint2=yint[order-1]+fdd[1,order]*xterm
  Ea[order-1]=yint2-yint[order-1]
  yint[order]=yint2
}
cat("F(x)=",yint,"\n","Ea=",Ea)