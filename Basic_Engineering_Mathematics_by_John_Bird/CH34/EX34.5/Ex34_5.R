# page no. 365
#problem 5
#given:
n = 100 #total number of capacitors
n_t = 73 # capacitors within req. tolerance values
n_bt = 17 # capacitors within req. tolerance values below
n_at = n-(n_t+n_bt) #capacitors within req. tolerance values above

probability <-function(a,b)
{
  prob = a/b
  return(prob)
}

#part(a) ----> probability with replacement
prob_n_t = probability(n_t,n) * probability(n_t,n)
print(prob_n_t)

# part(b) ------> probability one below and second above tolerance values
# without replacement
prob_a_b = probability(n_bt,n) * probability(n_at,n-1)
print(prob_a_b)