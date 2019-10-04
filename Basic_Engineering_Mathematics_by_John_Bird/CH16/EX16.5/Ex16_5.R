#page no. 143
#problem 5
#function used: factorial()
exp_expansion = function(x)
{
  return(1+(x/1)+(x^2/factorial(2))+(x^3/factorial(3))+(x^4/factorial(4)))
}

#given:
n = -1 #power of exp
val = 3*exp_expansion(n)
print(val)