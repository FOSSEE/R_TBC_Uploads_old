#page no.38
#problem 12
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
cost = 190 #base price of ipod  
VAT = 20 # VAT percentage
VAT1 = percent_of_quantity(VAT,cost)
result = VAT1 + cost #total cost of iPod (VAT+BASE price)
print(result)