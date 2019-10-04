#page no. 38
#problem 15
#function:
percent_change = function(n,o) #n----> new value, o----> original value
{
  return(percent((n-o)/o))
}
#given:
new_value = 52 #resistor value
original_value = 45 #resistor value increases 
change = percent_change(new_value,original_value)
print(change)