#page no.409
#problem 22
#formula used: an = ar^(n-1) 
#              sum = a(1-r^n)/(1-r)
#function:
Sn= function(a,r,nn) #function to find ---> sum of n-terms
{return(a*(1-r^n)/(1-r))}

#given:
seq = c(72.0,57.6,46.08) # GP sequence given
a = seq[1] #1st term of sequence
r = seq[2]/seq[1] # common ratio of sequence
n = 9 # 9 terms
sum_n = Sn(a,r,n) #sum of 9 terms
print(sum_n)