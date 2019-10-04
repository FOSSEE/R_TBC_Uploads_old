#EX_2_13
#page 31
#x travel time of given message
#y the length of the given message
py<-function(y)
{
  if(y==100)
  {
    return(5/6)
  }else if(y==10^4){
    return(1/6)
  }
}#function to calculate the PMF (y)
pxy<<-function(x)
{
  if(x==0.01)
  {
    return(1/2)
  }else if(x==0.1){
    return(1/3)
  }else if(x==1){
    return(1/6)
  }
}#function to calculate the PMF(x,10^2)
PXY<-function(x)
{
 if(x==1)
 {
   return(1/2)
 }else if(x==10){
   return(1/3)
 }else if(x==100){
   return(1/6)
 }
}#function to calcualte the PMF(x,10^4)
#using the probability formula calculated each probability
px0.01<-py(100)*pxy(0.01)
px0.01
px0.1<-py(100)*pxy(0.1)
px0.1
px1<-(py(100)*pxy(1))+py(10^4)*PXY(1)
px1