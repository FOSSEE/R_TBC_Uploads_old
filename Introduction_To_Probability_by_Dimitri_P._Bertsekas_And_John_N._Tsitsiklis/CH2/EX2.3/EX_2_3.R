#EX_2_3
#page 14
M<- numeric(9)#created the sample array
x<-numeric(9)
z<- numeric(9)
Z<-numeric(5)
V<- numeric(5)
PMFZ<-numeric(5)
x<-c(-4:4)
#function to create the sample space of PX(x)
PMF<-function(x)
{
  if(1<=x&&x<=9)
  {
    return(1/9)
  }else{
    return(0)
  }
}
for(i in 1:9)
{
  M[i]<-x[i]*PMF(i)
}
Ex<-sum(M)
Ex#the expected valur of Px(x)
#loop to calculate the Z 
for(i in 1:9)
{
  z[i]<-(x[i]-mean)^2
}
Z<-z[5:9]
Z#calculating the sample space of Z
PMFz<-function(z)
{
  if((z==1||z==4||z==9||z==16)&&z!=0)
  {
    return(2/9)
  }else if(z==0){
    return(1/9)
  }else{
    return(0)
  }
}
#loop to print the PMF(z)
for(i in 1:5)
{
  print("PMF(z)") 
 print(PMFz(Z[i]))
}
#loop to calculate the multiplication of each element
for(i in 2:5)
{
  V[i]<- Z[i]*PMFz(1)
}
V
variance<-sum(V)
variance#calcualted total variance

      