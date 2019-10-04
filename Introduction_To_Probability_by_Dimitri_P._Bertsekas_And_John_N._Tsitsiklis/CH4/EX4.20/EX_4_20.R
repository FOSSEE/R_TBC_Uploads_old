#EX_4_20
#page 24
x<-numeric(3)#initializing the variables
x1<-numeric(3)
Y<-numeric(3)
x<-c(0:2)#sample space of x
fx<-c(1/3,1/3,2/3)#sample space of fx
#function to calculate the sample space of y
y<-function(x)
{
  if(x<1){
    return(1)
  }else if(x>=1){
    return(2)
  }
}
#loop to print the y sample space
for(i in 1:3)
{
  print(y(i-1))
}
Exy<-c(1/2,3/2)#sample space of Exy
#function to calculate the probability of Exy
pExy<-function(Exy)
{
  if(Exy==1/2){
    return(1/3)
  }else if(Exy==3/2){
    return(2/3)
  }
}
MeanExy<-7/6#mean of E(x|y)
varExy<-sum(prod(pExy(1/2),((1/2-MeanExy)^2)),prod(pExy(3/2),((3/2-MeanExy)^2)))#calculating the variance of E(x|y)
varExy
varxy<-1/12
Evarxy<-1/12
varx<-sum(Evarxy,varExy)#calculating the variance of x
varx