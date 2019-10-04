#page no.38
#problem 14
#load package ---->measurements
library(measurements)
#functions:
percent_one_wrt_second = function(x,y)
{
  return(percent(x/y))
}
#given:
t1 = 47 #time in minutes
t2 = 2 #time in hours
t2 = conv_unit(t2,'hr','min')
result = percent_one_wrt_second(t1,t2)
print(result)