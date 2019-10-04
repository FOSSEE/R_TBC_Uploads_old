s<-c(0.0002, 0.0002, 0.0005, 0.0005, 0.001, 0.001)
r<-c(0.2, 0.5, 0.2, 0.5, 0.2, 0.5)
u<-c(0.25, 0.5, 0.4, 0.75, 0.5, 1)
logs=log10(s)
logr=log10(r)
logu=log10(u)
m<-matrix(0,nrow = 6,ncol = 3)
for (i in 1:6){
  m[i,1]=1
  m[i,2]=logs[i]
  m[i,3]=logr[i]
}
a=qr.solve(m,transpose(logu))
cat("alpha=",10^a[1],"sigma=",a[2],"rho=",a[3])