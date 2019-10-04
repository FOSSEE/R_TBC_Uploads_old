#Ex10.10, Page 413

alpha<-0.95
n<-22
J1<-8
J2<-8
J3<-6
I<-3
J<-n-I
MSE<-0.316
Q<-qtukey(alpha,I,J)
xibar<-c(44.71,44.06,45.58)

#To find w12
w12<-Q*sqrt((MSE/2)*(1/J1+1/J2))
print(paste("w12:",w12))
w23<-Q*sqrt((MSE/2)*(1/J2+1/J3))
print(paste("w23:",w23))
w31<-Q*sqrt((MSE/2)*(1/J3+1/J1))
print(paste("w31:",w31))

if(xibar[1]-xibar[2]< w12){
  print(paste("mu1 and mu2 are not significantly different"))
}
if(xibar[2]-xibar[3]< w23){
  print(paste("mu2 and mu3 are not significantly different"))
}
if(xibar[3]-xibar[1]< w31){
  print(paste("mu3 and mu1 are not significantly different"))
}