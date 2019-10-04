#page no.406
#problem 12
#formula used: Sn = (n/2)*(2a+(n-1)d) -->sum of n terms in AP
#function:
Sn = function(n,a,d) #function --->sum of n terms
{
  return((n/2)*(2*a+(n-1)*d))
}
#given:
n = 12 
seq = c(5,9,13,17)
a = seq[1] #first term of sequence
d = seq[2]-seq[1] # common difference
sum_ap = Sn(n,a,d) # sum of n-terms 
print(sum_ap)