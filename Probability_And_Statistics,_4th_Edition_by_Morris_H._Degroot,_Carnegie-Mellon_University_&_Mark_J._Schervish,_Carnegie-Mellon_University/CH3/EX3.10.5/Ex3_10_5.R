# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 191

# "vector" function is used in order to create a vector.
# For more description, type ?vector in the console.
# Let all probabilities be stored initailly in a vactor 'p'.

p<-c(0.1,0.4,0.2,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.4,0.2)

# "matrix" function is used in order to create a vector.
# For more description, type ?matrix in the console.
# Let the Transition Matrix be represented by 'P'.

P<-matrix(p,nrow=6,ncol=6,byrow=TRUE)
print(P)

# (a) Required probability is given as follows -

print(P[6,5])

# (b) Required probability is given as follows -

print(1-P[1,1])