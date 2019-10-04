#Ex5.15, Page 208

x<-c(100,250)
y<-c(0,100,200)

m1<-matrix(c(0.20,0.05,0.10,0.15,0.20,0.30),nrow=2,ncol=3)
rownames(m1)<-c("100","250")
colnames(m1)<-c("0","100","200")
print(m1)
cat("\n")

m2<-matrix(c(0.5,0.5),nrow=1,ncol=2)
rownames(m2)<-c("p(x)")
colnames(m2)<-c("100","250")
print(m2)
cat("\n")

m3<-matrix(c(0.25,0.25,0.5),nrow=1,ncol=3)
rownames(m3)<-c("p(y)")
colnames(m3)<-c("0","100","200")
print(m3)
cat("\n")

x1<-c(0.5,0.5)
j<-1
mu_x<-0

for(i in x){
  if(j<=length(x1)){
    mu_x<-mu_x+i*x1[j]
    j=j+1
  }
}
cat("mu_X=",mu_x,"\n\n")

y1<-c(0.25,0.25,0.5)
k<-1
mu_y<-0

for(i in y){
  if(k<=length(y1)){
    mu_y<-mu_y+i*y1[k]
    k=k+1
  }
}
cat("mu_Y=",mu_y,"\n\n")

p<-c(0.2,0.1,0.20,0.05,0.15,0.30)
sum<-0
k<-1
for(i in x){
  for(j in y){
    if(k<=length(p)){
      sum=sum+(i-175)*(j-125)*p[k]
      k=k+1
    }
  }
}
print(paste("Cov(X,Y):",sum))
