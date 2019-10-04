#page no.409
#problem 23
#formula used: an = ar^(n-1) 
#              S2inf=a/(1-r)
#function:
S2inf= function(a,r)
  {return(a/(1-r))}

#given:
seq = c(3,1,1/3) # GP sequence to infinity.......
a = seq[1] #1st term of sequence
r = seq[2]/seq[1]
sum_inf = S2inf(a,r) #sum to infinity
print(sum_inf)
