#Ex5.2, Page 195

m<-matrix(c(0.20,0.05,0.10,0.15,0.20,0.30),nrow=2,ncol=3)
rownames(m)<-c("100","250")
colnames(m)<-c("0","100","200")
print(m)
cat("\n")

px_100<-apply(m,1,sum)[1]
px_250<-apply(m,1,sum)[2]
cat("px(100)=",px_100,"\n")
cat("px(250)=",px_250,"\n\n")

cat("Marginal pmf of X:\n")
cat("p(x)=",px_100,"when x=100,250\n")
cat("p(x)=0 otherwise\n\n")

py_0<-apply(m,2,sum)[1]
py_100<-apply(m,2,sum)[2]
py_200<-apply(m,2,sum)[3]
cat("py(0)=",py_0,"\n")
cat("py(100)=",py_100,"\n")
cat("py(200)=",py_200,"\n\n")

cat("Marginal pmf of Y:\n")
cat("p(y)=",py_0,"when y=0,100\n")
cat("p(y)=",py_200,"when y=200\n")
cat("p(y)=0 otherwise\n\n")

#To find P(Y>=100)
prob<-py_100+py_200
cat("P(Y>=100)=",prob)
