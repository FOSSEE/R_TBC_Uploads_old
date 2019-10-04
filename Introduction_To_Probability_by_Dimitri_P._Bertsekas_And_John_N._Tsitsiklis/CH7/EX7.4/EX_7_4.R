#EX_7_4
#page 6
#polling
PMnp<-function(n,e)
{
  return(1/(4*n*e^2))
}#function to calculate the chebyshev inequality
PMnp(100,0.1)
PMnp(1000000,0.01)# calculated the chebyshev inequality  