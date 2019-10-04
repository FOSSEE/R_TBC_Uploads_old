#page no. 366
#problem 9


b = 74 #no. of brass washers
s = 86 #no. of steel washers
a = 40 #no. of aluminium washers
t = b+s+a # total no. of washers
a_n = t - a # no. of not aluminium washers

prob<-function(a,b)
{
  probability = a/b
  return(probability)
}
# probability without replacement that no aluminium washer drwan
prob_n_alum = prob(a_n,t) *prob(a_n-1,t-1)*prob(a_n-2,t-2) 
print(prob_n_alum)
