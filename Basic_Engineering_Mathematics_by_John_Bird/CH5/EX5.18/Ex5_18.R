#page no. 39
#problem 18
#function:
per_error = function(err,val) #err-->error, val ---> correct value
{
  return(percent(err/val))
}

#given:
cal_vol = 50 #calculated voltage
ac_vol = 50.4 #actual voltage
error = ac_vol - cal_vol # error in measurements
result = per_error(error,ac_vol) #percentage error
print(result)
