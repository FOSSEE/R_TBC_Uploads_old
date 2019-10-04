#EX_3_4
#page 8
#function to calculate the gx
gx<-function(x)
{
  if(x<=1/3)
  {
    return(1)
  }else if(x>1/3){
    return(2)
  }
}
#function to calcualte the PMF Py
pY<-function(gx)
{
  if(gx==1)
  {
    return(1/3)
  }else if(gx==2){
    return(2/3)
  }
}
#to calcualte the E(Y)
EY<-sum(pY(1)*gx(1/3),pY(2)*gx(2/3))
EY

