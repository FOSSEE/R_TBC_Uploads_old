#page no. 366
#problem 6

n = 40 #total number of components
n_d = 5 # number of defective components
n_g = n - n_d #number of good components

probability <-function(a,b)
{
  prob = a/b
  return(prob)
}

#part(a)
#with replacement (probability of good)
prob_a = probability(n_g,n) * probability(n_g,n)
print(prob_a)

#part(b)
#without replacement(probability of good)
prob_b = probability(n_g,n) * probability(n_g-1,n-1)
print(prob_b)
