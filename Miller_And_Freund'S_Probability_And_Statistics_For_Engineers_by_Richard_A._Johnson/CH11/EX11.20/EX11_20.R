X<-matrix(c(0,1,2,3,4))
X
y<-matrix(c(8,9,4,3,1))
n=5
XbarX<-matrix(c(n,sum(X),sum(X),sum(X^2)),ncol = 2,byrow = TRUE)
XbarX
Inverse=solve(XbarX)
Xbary<-matrix(c(sum(y),sum(X*y)))
Xbary
b=Inverse%*%Xbary
b
message("The Fitted equestion is :  y = ",b[1],"",b[2],"x ")
XX=matrix(c(1,0,1,1,1,2,1,3,1,4),byrow =TRUE,ncol =2)
XX
ybar=XX%*%b
ybar
#So the vector of residuals
result=y-ybar
#The Residual sum of squares is
result2=t(result)
data=result2%*%result
Ssquar=data/(n-1-1)
message(Ssquar)

