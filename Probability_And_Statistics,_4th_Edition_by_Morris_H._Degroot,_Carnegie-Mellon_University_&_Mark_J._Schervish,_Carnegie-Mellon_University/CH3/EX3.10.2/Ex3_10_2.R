# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 189

# Let the possible values for state at time "n+1" be stored in the vector 'X_n_1' and for state at time "n" be stored in the vector 'X_n'.

X_n<-c(1,2)
X_n_1<-c(1,2)

# Let the probability for all possible combination of states be given by the function 'Pr'.

Pr<-function(a,b)
{
  if(a!=b)
    return(2/3)
  else
    return(1/3)
}

# Probability for value of state at time -
# 1) "n+1"=1 given "n"=1

print(Pr(1,1))

# 2) "n+1"=2 given "n"=1

print(Pr(2,1))

# 3) "n+1"=1 given "n"=2

print(Pr(1,2))

# 4) "n+1"=2 given "n"=2

print(Pr(2,2))

# The answer may slightly vary due to being represented as a real number rather than a fraction.