#EX_3_5
#page 10
lamda<-1/10
px<-function(a,lamda)
{
  return(exp(1)^(-lamda*a))
}
#function to calculate the probability
PX<-function(x)
{
  if(1/4<=x||x<=3/4)
    {
      return(px(1/4,1/10)-px(3/4,1/10))
    }
}
PX(1/4)#probabilty of meteorite lands between 6 am and 6 pm on the first day