#EX_4_4
#page 4
#function to calculate the exponential randm variable of x
exponential_transform<-function(l,s){
  return(l/l-s)
}
#function to calculate the exponential transform of y
y<-function(a,b,l,s)
{
  (exp(1)^b*s)*l/l-a*s
}
print("l/l-s")
exponential_transform(1,0)#printing the both transform by giving certain values
y(2,3,1,1)

