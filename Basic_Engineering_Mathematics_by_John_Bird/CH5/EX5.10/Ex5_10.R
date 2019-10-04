#page no.37
#problem 10
#function:
#percentage of given quantity
percent_of_quantity = function(x,y) # x---->percenatge, y----->quantity
{
 return((percent2deci(x))*y)
}

percent2deci = function(x)
{
  return(x/100)
}

#given:
p = 27 #percentage 
n = 65 # amount of money
result = percent_of_quantity(p,n)
print(result)