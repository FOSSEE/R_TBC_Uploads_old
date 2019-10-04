#page no. 366
#problem 7

n = 40 #total number of components
n_d = 5 # number of defective components
n_g = n - n_d #number of good components

probability <-function(a,b)
{
  prob = a/b
  return(prob)
}

prob_def = probability(n_d,n)
print(prob_def)
prob_good = probability(n_g,n)
print(prob_good)
#part(a)
#with replacement (probability of one defective component )
prob_a = (prob_def * prob_good) + (prob_good * prob_def)
print(prob_a)

#part(b)
#without replacement(probability of one defective component) 
prob_b = (prob_def * probability(n_g,n-1))+(prob_good * probability(n_d,n-1))
print(prob_b)
