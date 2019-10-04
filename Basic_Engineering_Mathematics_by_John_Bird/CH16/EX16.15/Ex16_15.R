#page no. 147
#problem 15
#function:
log(exp(1))

find_x = function(l,r)
{
  #apply log on both sides L.H.S and R.H.S
  l = log(l) #r = log(exp(3*x))
             #r = 3*x*log(exp(1)) ------>log(exp(1))=1
             # to find x 
  return(x=l/r)
}

#given:
l = 7/4 # values on L.H.S
r = 3  # exp power and multiple factor of x
result = find_x(l,r)
print(result)