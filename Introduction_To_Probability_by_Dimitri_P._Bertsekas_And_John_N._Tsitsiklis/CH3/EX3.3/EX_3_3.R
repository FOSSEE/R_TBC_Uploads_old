#EX_3_3
#page 6
#function to print the sample space of fX(x)
fx<-function(x)
  {
    if(0<x&&x<=1)
      {
        return(1/(sqrt(x)*2))
      }
    else
      {
        return(0)
      }
}
FX<-c(fx(0),fx(1))
FX #PDF of random variable x
int<-integrate(fx,0,1)
int$value#PDF of fX(x)
