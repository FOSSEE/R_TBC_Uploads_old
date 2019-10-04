# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 190

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

# "vector" function is used in order to create a vector.
# For more description, type ?vector in the console.
# Let the vector storing probabilities be represented by 'p'.

p<-vector(mode='numeric',length=4)
p[1]=Pr(1,1);
p[2]=Pr(2,1);
p[3]=Pr(1,2);
p[4]=Pr(2,2);

# "matrix" function is used in order to create a vector.
# For more description, type ?matrix in the console.
# Let the Transition Matrix be represented by 'P'.

P<-matrix(p,nrow=2,ncol=2)
print(P)

# The answer may slightly vary due to being represented as a real number rather than a fraction.