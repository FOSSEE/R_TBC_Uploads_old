# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 197

# "vector" function is used in order to create a vector.
# For more description, type ?vector in the console.
# Let all probabilities be stored initailly in a vactor 'p'.

p<-c(0.1,0.4,0.2,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.4,0.2)

# "matrix" function is used in order to create a vector.
# For more description, type ?matrix in the console.
# Let the Transition Matrix be represented by 'P'.

P<-matrix(p,nrow=6,ncol=6,byrow=TRUE)
print(P)

# Let the initial probability vector be represented by 'v'.

v<-c(0.119,0.193,0.186,0.173,0.196,0.133)

# Let vP be stored in the vector 'v_P'.
# "round" function is used for rounding off digits in the resultant vector.
# For more description, type ?round in the console.

v_P=round(v%*%P,digits=3)

# Checking if vP=v.
# Let a variable 'count' be used for comparing the similarity of both vectors.

count<-c(0);
for(i in 1:length(v))
{
  if(v_P[i]==v[i])
  {
    count=count+1;
  }
}
if(count==length(v))
{
  print("'v' is a stationary distribution.")
}