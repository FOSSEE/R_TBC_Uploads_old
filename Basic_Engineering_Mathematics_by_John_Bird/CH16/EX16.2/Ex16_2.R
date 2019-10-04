#page no. 142
#problem 2
#function used: exp()

exp_add = function(x,y)
{
  return(exp(x)+exp(y))
}


exp_sub = function(x,y)
{
  return(exp(x)-exp(y))
}

#given:
a = 0.25 #powers of exp
b = -0.25
cal = 5*(exp_sub(a,b)/exp_add(a,b)) # evaluate
print(cal)