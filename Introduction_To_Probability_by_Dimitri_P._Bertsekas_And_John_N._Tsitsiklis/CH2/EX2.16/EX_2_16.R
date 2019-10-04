#EX_2_16
#page 34
install.packages("prob")
library(prob)
PXx<-numeric(3)
PXAx<-numeric(3)
toss<-matrix(nrow=4,ncol=4)
p<-numeric(4)
mat<-matrix(nrow=3,ncol=3)
coin<-c("H","T")
toss<-expand.grid(coin,coin)
toss#gives the sample space of all combination of 2 independent toss
table(toss)
nrow(toss)#gives number of rows
ncol(toss)
probspace(toss)#gives the probability of each sample in sample space
mat<-noorder(probspace(toss))#table the repeating probabilty

mat[3]#takes the probabilty
#Let X be the number of heads and 
#function to calculate  the PMF of x
pxx<-function(x)
{
  if(x==0)
  {
    return(1/4)
  }else if(x==1){
    return(0)
  }else if(x==2){
    return(1/2)
  }
}
#function to calculate the conditional PMF 
pxax<-function(x)
{
  if(x==0)
  {
    return(1/2)
  }else if(x==1){
    return(0)
  }else if(x==2){
    return(1/2)
  }
}
#loop to print the PMF(x)
for(i in 1:3)
{
  PXx[i]<-pxx(i-1)
  PXAx[i]<-pxax(i-1)
}
PXx#print the PMF(x)
PXAx#print the conditonal PMF(X|A)
