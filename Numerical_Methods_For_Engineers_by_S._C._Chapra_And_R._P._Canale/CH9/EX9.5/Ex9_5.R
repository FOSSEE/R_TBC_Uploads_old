n=3
b<-matrix(c(7.85,-19.3,71.4), nrow = 1, ncol = 3)
a<-matrix(data = c(3, -0.1, -0.2,0.1, 7 ,-0.3,0.3, -0.2, 10),nrow = 3,ncol = 3,byrow = TRUE)
for (k in 1:1){
  for (i in 2:3){
    fact=a[i,k]/a[k,k]
    for (j in 2:3){
      a[i,j]=a[i,j]-fact*a[k,j]
    }
    b[i]=b[i]-fact*b[k]
    print(b)
  }
}
x<-matrix(0,3)
x[3]=b[3]/a[3,3]
for (i in seq(2,1,-1)){
  s=b[i]
  for (j in (i+1):3){
    s=s-a[i,j]*x[j]
    print(s)
  }
  x[i]=b[i]/a[i,i]
}
cat("x1=",x[1],",x2=",x[2],",x3=",x[3])