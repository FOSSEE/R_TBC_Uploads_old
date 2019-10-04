# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 193

# Let the values of transition matrix be stored in the vector 'p' and the transition matrix be represented by 'P'.
# For converting a vector into matrix, "matrix" function in used. Final values are saved in the matrix 'f'.
# For description of this function, type ?matrix in the console.

p<-c(0.9,0.1,0.6,0.4)
P<-matrix(p,nrow=2,ncol=2,byrow=TRUE)

# Let 'Pr' represents the probability of state at "n+2" time given the state at "n" time.
# State at "n+2" time be represented by 'n_2' and at "n" time by 'n'.

Pr<-function(n_2,n)
{
  return(P[n,1]*P[1,n_2]+P[n,2]*P[2,n_2])
}

# Probability for '1' as "n+2" time and "n" time state.

print(Pr(1,1))

# Probability for '1' as "n+2" time and '2' as "n" time state.

print(Pr(1,2))

# Probability for '1' as "n+2" time and "n" time state.

print(Pr(2,2))