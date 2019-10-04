##Chapter 17 : Simulation Modelling
##Example 3-3 : Page 691

#Function which returns an erlang distribution
erlang=function(m,lambda){
  R=c(0.0589,0.6733,0.4799)
  y=-log(prod(R))/lambda
  return(y)
}
erlang(3,4)