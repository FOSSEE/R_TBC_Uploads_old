#EX_3_7
#page 15
px<-numeric(10)
#we compute the FX(k)first and then the PMF
#functon to calculate the FX(k)
fx<-function(k)
{
  return((k/10)^3)
}
#function to calculate the FX(k-1)
fx1<-function(k)
{
  return(((k-1)/10)^3)
}
#to print the PMF
for(i in 1:10)
{
  px[i]<-fx(i)-fx1(i)
}
px#PMF calculated 


