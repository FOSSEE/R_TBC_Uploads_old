#page no. 40
#problem 21
#formula used:(new value/100-+change%)*100%
#function:
original_value_profit = function(new,change) #new----> new value, change in percentage
{
  return((new/(100+change))*100)
  
}

#given:
c = 40 #change in percentage (profit)
SP = 630# selling price ---->new value
result = original_value_profit(SP,c) #cost to dealer
print(result)