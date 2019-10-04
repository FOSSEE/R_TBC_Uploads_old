#Ex5.1, Page 194

m<-matrix(c(0.20,0.05,0.10,0.15,0.20,0.30),nrow=2,ncol=3)
rownames(m)<-c("100","250")
colnames(m)<-c("0","100","200")
print(m)

#To find P(Y>=100)
prob<-m[1,2]+m[1,3]+m[2,2]+m[2,3]
print(paste("P(Y>=100)=",prob))