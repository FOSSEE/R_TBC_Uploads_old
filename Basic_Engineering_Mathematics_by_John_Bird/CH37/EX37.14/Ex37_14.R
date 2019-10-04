#page no. 406
#problem 14
#formula used: Sn = (n/2)*(2a+(n-1)d) -->sum of n terms in AP
#               a = [2*Sn/n-(n-1)d]/2
#function:
find = function(Sn,n,d)
{
  return((((2*Sn)/n)-((n-1)*d))/2)
}
#given:
S7 = 35 #sum of 7 terms
n = 7 # number of terms
d = 1.2 # common difference
find_a = find(S7,n,d) # first term of sequence
print(find_a)